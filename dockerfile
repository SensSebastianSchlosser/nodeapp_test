# Dockerfile

FROM node:20

WORKDIR /app

COPY package.json package-lock.json ./

ARG NODE_ENV
ENV NODE_ENV=$NODE_ENV

RUN if [ "$NODE_ENV" = "development" ]; then \
      npm install; \
    else \
      npm install --only=production; \
    fi

COPY . .

EXPOSE 9000

