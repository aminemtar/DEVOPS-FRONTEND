# stage 1
FROM node:latest as node
WORKDIR /usr/local/app

COPY ./ /usr/local/app/
RUN npm install
RUN npm run build --prod

# stage 2
FROM nginx:alpine
COPY --from=node /usr/local/app/dist/summer-workshop-angular /usr/share/nginx/html