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
            res.render("pages/tours", {tours: results}); // {results} == {results: results} == {"results": results}
        }
    });
});

//  tours will detect a session and if not, we redirect to another page - the signup page
// after signing up to that page.
// store his last position in the server in a session. How would you do this.
router.get('/:tour_id', function(req, res){
    console.log(req.params.tour_id);
    res.send("/users"); // goes to signin.ejs
}); 

module.exports = router;