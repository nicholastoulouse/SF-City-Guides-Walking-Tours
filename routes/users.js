// var express = require('express')
// var app = express()
// Same as:
// var app = require('express')();

var router = require('express').Router()

router.get('/', function(req, res){
    res.send("/users"); // goes to signin.ejs
    // change pwd or do any processing then call next to go to the next middleware
});

module.exports = router;