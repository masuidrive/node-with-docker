FROM node:4.4.7

WORKDIR /usr/src/app
RUN mkdir -p /usr/src/app
ADD package.json /usr/src/app/package.json
RUN npm install --global

COPY . /usr/src/app
EXPOSE 3000
CMD npm run server
