// var express = require('express')
// var app = express()
// Same as:
// var app = require('express')();

var router = require('express').Router()
var mysql = require('mysql')
var connection = mysql.createConnection({
    host     : '127.0.0.1',
    user     : 'root',
    password : 'codingIsfun',
    database : 'walking_tours_db'
   });
   
   connection.connect();

router.get('/', function(req, res){
    
    console.log("inside tours")
    res.send("/tours");
    // connection.query('SELECT * FROM tours', function (error, results, fields){
    //     // if (error) res.send(error)
    //     // else {
    //         // res.json(results)
           
            
    //     // }
    // });
    
    // res.render("pages/tours");
    
    // change pwd or do any processing then call next to go to the next middleware
});

module.exports = router;