FROM node:6-alpine


RUN mkdir /app
WORKDIR /app

COPY package*.json /app/

RUN npm install

COPY src /app/src

EXPOSE 3000

CMD [ "npm", "start" ]

