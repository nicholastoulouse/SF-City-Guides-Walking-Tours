// var express = require('express')
// var app = express()
// Same as:
// var app = require('express')();

var router = require('express').Router()

router.get('/signup', function(req, res, next){
    // res.send("/users"); // goes to signin.ejs
    // sign them in somehow
    console.log("sign them up or log them in first, then go to the scheduled tour to register that user.")
    next();
}); 

router.get('/signup/:tour_id', function(req, res){
    console.log(req.params.tour_id);
    res.send("/users"); // goes to signin.ejs
}); 

router.get('/', function(req, res){
    res.send("/users"); // goes to signin.ejs
    // change pwd or do any processing then call next to go to the next middleware
});

module.exports = router;