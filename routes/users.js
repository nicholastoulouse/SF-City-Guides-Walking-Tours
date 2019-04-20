var router = require('express').Router()
var connection = require('../config/connection')
var express = require('express');


router.use(express.urlencoded({ extended: true }));

router.get('/signup', function(req, res){
    res.render("pages/signup");
}); 

router.post('/signup', function(req, res){
    console.log(req.body)
    connection.query('INSERT INTO users SET ?', {...req.body, category: 'user'}, function(error,result){
    if (error) 
            res.send(error)
        else 
            res.redirect("/users/signin")
    }); 
}); 

router.get('/signin', function(req, res){
    res.render("pages/signin");
}); 

router.post('/signin', function(req, res){
    // res.send("/users"); // ought to go to signin.ejs
    connection.query('SELECT * FROM users WHERE email=? AND pwd=?', [req.body.email, req.body.pwd], function(error,results){
        if (error) 
            res.send(error)
        else {
            if (results[0]){ // a record was found
                req.session.em = results[0].email;
                req.session.isguide = (results[0].category === 'guide')? true : false; 
                console.log("session is: ", req.session.em, "redirect to: ", req.session.redirectTo);
                if (req.session.redirectTo)
                    res.redirect(req.session.redirectTo) 
                else if (req.session.isguide) 
                    res.redirect('/scheduled/guidestours')
                else res.redirect('/');
            } else{
                res.redirect('/users/signin')
            }
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

// HERE WE ARE SIGNING UP FOR A TOUR AND OUGHT TO BE REDIRECTED TO THE CONFIRMATION PAGE
router.get('/confirmation/:id', function(req, res){
    console.log("You are in the confirmation id route now");
    if (!req.session.em) {
        req.session.redirectTo = req.originalUrl;
        console.log(req.session.redirectTo, "req dot path is ", req.path);
        res.redirect('/users/signin');
    } else {
        console.log(req.session.redirectTo);
        // store the user signing up for that scheduled tour in the attendees table
        connection.query('INSERT INTO attendees(user_id, scheduled_tours_id) VALUES ((SELECT id FROM users WHERE email=?), ?)', [req.session.em, req.params.id], function(error, results, fields){
            if (error) 
                res.send(error)
            else 
                res.redirect('/scheduled/confirmation/' + req.params.id)
        });
        // res.send('hit the target');
    }
});

module.exports = router;