require('dotenv').config()
var express = require('express');
var app = express();

// If I have 5 routes, I'll get all of them!
var routes = require("./routes"); // ("./routes/index.js");

// set the view engine to ejs
app.set('view engine', 'ejs');
app.use(express.static('public'));

// Start Test
// var mysql = require('mysql')
// var connection = mysql.createConnection({
//     host     : '127.0.0.1',
//     user     : 'root',
//     password : 'codingIsfun',
//     database : 'walking_tours_db'
//    });
   
//    connection.connect();

// app.get('/tours', function(req, res){
    
//     console.log("inside tours")
//     // res.send("/tours");
//     connection.query('SELECT * FROM tours', function (error, results, fields){
// 		console.log(results)
// 		if (error) res.send(error)
//         else {
// 			// res.json(results)
// 			res.render("pages/tours", {
// 				results: results
// 			});
           
            
//         }
//     });
    
   
    
//     // change pwd or do any processing then call next to go to the next middleware
// });
// End Test


// middleware will handle some parts and it's not the end of the route
app.use('/users', routes.users); // app.use why? b/c we are not using app.get: pass the control from this mod to the next one
app.use('/tours', routes.tours);
app.use('/', routes.home);

// until you put res.send or res.render or res.json you're still in the middle

// the last route will be a 404 error

app.listen(3000, function(){
	console.log('listening on 3000');
});