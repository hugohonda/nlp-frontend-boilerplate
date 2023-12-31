# development
FROM node:19.4-alpine as develop-stage
WORKDIR /app
COPY ./package*.json ./
RUN yarn global add @quasar/cli
COPY . .

# build stage
FROM develop-stage as build-stage
RUN yarn
RUN quasar build

# production
FROM nginx:1.23.3-alpine as production-stage
COPY --from=build-stage /app/dist/spa /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
