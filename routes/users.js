// var express = require('express')
// var app = express()
// Same as:
// var app = require('express')();

var router = require('express').Router()

router.use('/signin', function(req, res){
    res.render("signin"); // goes to sign-in.ejs
});

module.exports = router;