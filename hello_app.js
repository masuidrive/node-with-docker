var redis = require('redis');
var client = redis.createClient(process.env.REDIS_HOST, process.env.REDIS_PORT);

var express = require('express');
var app = express();

app.get('/', function (req, res) {
  client.get('counter', function (error, buffer) {
    res.send('Hello World!');
  });
});

app.listen(3000, function () {
  console.log('Example app listening on port 3000!');
});
