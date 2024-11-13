FROM node:20

WORKDIR /app

COPY package.json ./

ARG NODE_ENV=production
ENV NODE_ENV=$NODE_ENV

RUN npm install

COPY . .

EXPOSE 3000
CMD [ "node", "index.js" ]
