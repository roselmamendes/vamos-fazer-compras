FROM node:8

RUN mkdir -p /usr/src/app

WORKDIR /usr/src

COPY package.json /usr/src/

RUN npm install && npm cache clean --force

COPY . /usr/src/app

WORKDIR /usr/src/app

EXPOSE 8080

CMD ["npm", "start"]