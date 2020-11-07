FROM node:12.19.0-alpine as node

WORKDIR /usr/src/app

COPY package.json /usr/src/app

RUN npm install

COPY . /usr/src/app

EXPOSE 5000

CMD [ "node","index.js" ]