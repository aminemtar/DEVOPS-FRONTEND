# stage 1
FROM node:latest as node
WORKDIR /app

COPY . .
RUN npm install
RUN npm run build 

# stage 2
FROM nginx:alpine
COPY --from=node /usr/local/app/dist/summer-workshop-angular .