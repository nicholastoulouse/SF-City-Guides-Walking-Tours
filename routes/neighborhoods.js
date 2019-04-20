var router = require('express').Router();
var connection = require('../config/connection')

router.get('/', function (req, res) {
    connection.query('SELECT DISTINCT neighborhood FROM tours', function(error, results, fields){
        if (error) res.send(error)
        else {
            console.log(results)
            // res.json(results)
            res.render("pages/neighborhoods", {results:results}); // {results} == {results: results} == {"results": results}  
        }
    })
   
});

// router.get('/:neighborhood', function (req, res) {

//     // console.log("inside tours")
//     // res.send("/tours");
//     connection.query('SELECT * FROM tours GROUP BY', function (error, results, fields) {
//         if (error) res.send(error)
//         else {
//             res.render("pages/neighborhoods", {tours: results}); // {results} == {results: results} == {"results": results}
//         }
//     });
// });

module.exports = router;

// the query:
//SELECT DISTINCT neighborhoods FROM tours;
//  SELECT * FROM tours AS t INNER JOIN scheduled_tours AS st ON t.id=st.tour_id WHERE t.neighborhood='Presidio' ORDER BY neighborhood;