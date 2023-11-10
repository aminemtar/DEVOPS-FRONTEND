# stage 1
FROM node:latest as node
WORKDIR /usr/local/app
RUN npm install -g @angular/cli 
COPY . . 