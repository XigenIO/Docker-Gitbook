FROM node:alpine as gitbook

RUN yarn global add gitbook-cli

WORKDIR /app