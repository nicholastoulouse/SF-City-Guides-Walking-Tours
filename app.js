require('dotenv').config()
var express = require('express');
var app = express();
var cookieParser = require('cookie-parser');
var session = require('express-session');
//allow sessions
app.use(session({ secret: 'app', cookie: { maxAge: 1*1000*60*60*24*365 }}));
//maxAge
    //Specifies the number (in milliseconds) to use when calculating the Expires Set-Cookie attribute. This is done by taking the current server time and adding maxAge milliseconds to the value to calculate an Expires datetime. By default, no maximum age is set.
app.use(cookieParser());
// If I have 5 routes, I'll get all of them!
var routes = require("./routes"); // ("./routes/index.js");
// set the view engine to ejs
app.set('view engine', 'ejs');
app.use(express.static('public'));


// middleware will handle some parts and it's not the end of the route
app.use('/users', routes.users); // app.use why? b/c we are not using app.get: pass the control from this mod to the next one
app.use('/tours', routes.tours);
app.use('/scheduled', routes.scheduled);
app.use('/', routes.home);

// until you put res.send or res.render or res.json you're still in the middle

// the last route will be a 404 error

app.listen(3000, function(){
	console.log('listening on 3000');
});