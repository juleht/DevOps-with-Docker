###################################
# this is Dockerfile for frontend #
###################################
## build 
## install node
FROM node:16-alpine AS build_stage

## working directory
WORKDIR /usr/src/app

## copy project to working directory
COPY material-applications/example-frontend .

## environment
ENV REACT_APP_BACKEND_URL=http://localhost:8080

## install packeges and build
RUN npm install && \
    npm run build && \
    rm -rf /tmp/* /var/cache/apk/* /root/.npm /usr/src/app/node_modules

## run
FROM node:16-alpine

## working directory
WORKDIR /usr/src/app

## copy build assets from the builder stage
COPY --from=build_stage /usr/src/app/build /usr/src/app/build

## install serve globally
RUN npm install -g serve

#expose port
EXPOSE 5000

## serve the built assets
CMD ["sh", "-c", "serve -s -l 5000 build"]
