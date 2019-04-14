// var express = require('express')
// var app = express()
// Same as:
// var app = require('express')();

var router = require('express').Router();
var connection = require('../config/connection')

router.get('/', function (req, res) {

    // console.log("inside tours")
    // res.send("/tours");
    connection.query('SELECT * FROM tours', function (error, results, fields) {
        if (error) res.send(error)
        else {
            // res.json(results)
            console.log(results)
            res.render("pages/tours", {tours: results}); // {results} == {results: results} == {"results": results}
        }
    });
});

module.exports = router;