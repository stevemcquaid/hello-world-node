// Call the console.log function.
console.log("Hello World");

// var express = require('express');

// Constants
var DEFAULT_PORT = 8888;
var PORT = process.env.PORT || DEFAULT_PORT;

// App
var app = express();
app.get('/', function (req, res) {
  res.send('Hello World\n');
});

app.listen(PORT)
console.log('Running on http://localhost:' + PORT);
