// var express = require('express')
// var app = express()
// Same as:
// var app = require('express')();

var router = require('express').Router()

router.get('/', function(req, res){
    console.log("inside home")
    res.render("pages/index");
    // change pwd or do any processing then call next to go to the next middleware
});

module.exports = router;