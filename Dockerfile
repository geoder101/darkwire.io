FROM mhart/alpine-node:6.4

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY package.json /usr/src/app/
RUN npm install

EXPOSE 3000

COPY . /usr/src/app
RUN npm run bundle

CMD [ "npm", "start" ]