// var express = require('express')
// var app = express()
// Same as:
// var app = require('express')();

var router = require('express').Router()

router.get('/', function(req, res){
    console.log("inside home")
    // Change this path to res.render("pages/tours") once you have an index page.
    res.redirect("/tours"); 
});

module.exports = router;