var express = require('express');
var app = express();

// If I have 5 routes, I'll get all of them!
var routes = require("./routes"); // ("./routes/index.js");

// set the view engine to ejs
app.set('view engine', 'ejs');

// middleware will handle some parts and it's not the end of the route
app.use('/users', routes.users); // app.use why? b/c we are not using app.get: pass the control from this mod to the next one

app.use('/', routes.home);
// until you put res.send or res.render or res.json you're still in the middle

// the last route will be a 404 error

app.listen(3000, function(){
	console.log('listening on 3000');
});