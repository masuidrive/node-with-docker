FROM node:4.4.7

WORKDIR /usr/src/app
RUN mkdir -p /usr/src/app
ADD package.json /usr/src/app/package.json
RUN npm install -g

COPY . /usr/src/app
CMD npm run server
