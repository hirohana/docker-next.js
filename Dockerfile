FROM node:lts-alpine3.18

RUN apk update && apk add git vim curl

WORKDIR /app

RUN npx create-next-app@latest . \
      --typescript --tailwind --eslint --app --src-dir \
      --import-alias --use-pnpm

RUN git init

COPY .env /app/ 

COPY ./.vscode/launch.json /app/.vscode/

WORKDIR /