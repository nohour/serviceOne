'use strict';
var express = require('express');
var app = express();
var PORT = 3100;
var os = require('os')

app.get('/', function (req, res) {
	let str = 'It is a Test Api Hello world running on container: ' + os.hostname()
	res.send(str);
	
});

app.use(express.static(__dirname + '/public'));

app.listen(PORT, function () {
	console.log('Express server started on port ' + PORT + '!');
});