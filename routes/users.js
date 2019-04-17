// var express = require('express')

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
    connection.query('SELECT * FROM users WHERE email=? AND pwd=?', [req.body.email,req.body.pwd], function(error,results){
        if (error) 
            res.send(error)
        else {
            // res.redirect("/users")
            if (results[0]){
                console.log(results[0]);
                req.session.em = results[0].email;
                res.redirect(req.session.redirectTo)

            } else{
                res.redirect('/users/signin')
            }
                
            // req.session.na
        }
                
    }); 
}); 

// router.get('/signup/:tour_id', function(req, res){
//     console.log(req.params.tour_id);
//     res.send("/users"); // goes to signin.ejs
// }); 

router.get('/', function(req, res){
    res.send(req.session.em); // goes to signin.ejs
    // change pwd or do any processing then call next to go to the next middleware
});

router.get('/signup/:id', function(req, res){

    if (!req.session.em) {
        req.session.redirectTo = req.originalUrl;
        res.redirect('/users/signin');
    } else {
        console.log(req.session.redirectTo);
        // store the user for that tour in sql
        connection.query('INSERT INTO attendees(user_id, scheduled_tours_id) VALUES ((SELECT id FROM users WHERE email=?), ?)', [req.session.em, req.params.id], function(error, results, fields){
            if (error) 
                res.send(error)
            else 
                res.redirect('/scheduled/confirmation/' + req.params.id)
        });
        // res.send('hit the target');
    }

    console.log(req.path)
    // change pwd or do any processing then call next to go to the next middleware
});



module.exports = router;