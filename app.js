var express = require('express');
var app = express();
// If I have 5 routes, I'll get all of them!
var routes = require("./routes"); // ("./routes/index.js");

app.listen(3000, function(){
	console.log('listening on 3000');
});