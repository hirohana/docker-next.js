FROM node:lts-alpine3.18

RUN mkdir /app
COPY . /app
WORKDIR /app

RUN apk update