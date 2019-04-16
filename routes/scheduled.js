var router = require('express').Router();
var connection = require('../config/connection')

router.get('/:tour_id', function (req, res) {
    console.log(" req.query.tour_id is ", req.params.tour_id);
    connection.query('SELECT scheduled, cancellation, firstname, lastname, email, walktitle, neighborhood, description, bio, mediawikiURL FROM scheduled_tours AS st INNER JOIN users AS u INNER JOIN tours AS t WHERE st.id=? AND st.user_id = u.id AND st.tour_id = t.id', [req.params.tour_id], function (error, results, fields) {
        if (error) res.send(error)
        else {
            console.log("results ", results);
            res.render("pages/scheduled", {scheduled: results});
        }
    });
});

module.exports = router;