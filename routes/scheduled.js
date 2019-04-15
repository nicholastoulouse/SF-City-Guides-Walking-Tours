var router = require('express').Router();
var connection = require('../config/connection')

router.get('/:tour_id', function (req, res) {

    connection.query('SELECT * FROM scheduled_tours WHERE id=?', [req.param.tour_id], function (error, results, fields) {
        console.log(results);
        if (error) res.send(error)
        else {
            res.render("pages/scheduled", {scheduled: results});
        }
    });
});

module.exports = router;