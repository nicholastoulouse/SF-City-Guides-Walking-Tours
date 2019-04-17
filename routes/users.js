// var express = require('express')
// var app = express()
// Same as:
// var app = require('express')();

var router = require('express').Router()
var connection = require('../config/connection')
var express = require('express');

router.use(express.urlencoded({ extended: true }));

router.get('/signup', function(req, res){
    // res.send("/users"); // goes to signin.ejs
    // sign them in somehow
    console.log("sign them up or log them in first, then go to the scheduled tour to register that user.")
    res.render("pages/signup");
}); 

router.post('/signup', function(req, res){
    // res.send("/users"); // goes to signin.ejs
    // sign them in somehow
    console.log("sign them up or log them in first, then go to the scheduled tour to register that user.")
    console.log(req.body)
    // connection.query('INSERT INTO users(firstname, lastname, mobilephone, email, password, category) VALUES (?)', [req.body.firstname,req.body,lastname,req.body.mobilephone,req.body.email,req.body.password,'user'], function(error, results, fields){
    connection.query('INSERT INTO users SET ?', {...req.body, category: 'user'}, function(error,result){
    if (error) 
            res.send(error)
        else 
            res.redirect("/users/signin")
    }); 
}); 

router.get('/signin', function(req, res){
    // res.send("/users"); // goes to signin.ejs
    // sign them in somehow
    console.log("sign them up or log them in first, then go to the scheduled tour to register that user.")
    res.render("pages/signin");
}); 
router.post('/signin', function(req, res){
    // res.send("/users"); // goes to signin.ejs
    // sign them in somehow
    console.log("sign them up or log them in first, then go to the scheduled tour to register that user.")
    res.render("pages/signin");
}); 

// router.get('/signup/:tour_id', function(req, res){
//     console.log(req.params.tour_id);
//     res.send("/users"); // goes to signin.ejs
// }); 

router.get('/', function(req, res){
    res.send("/users"); // goes to signin.ejs
    // change pwd or do any processing then call next to go to the next middleware
});

module.exports = router;