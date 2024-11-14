FROM node:20

WORKDIR /app

COPY package.json package-lock.json ./

ARG NODE_ENV
ENV NODE_ENV=$NODE_ENV

ARG CONTAINER_PORT
ENV CONTAINER_PORT=$CONTAINER_PORT

RUN if [ "$NODE_ENV" = "development" ]; then \
      npm install; \
    else \
      npm install --only=production; \
    fi

COPY . .

EXPOSE $CONTAINER_PORT

