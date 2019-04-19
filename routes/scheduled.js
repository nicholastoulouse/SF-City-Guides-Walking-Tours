var router = require('express').Router();
var connection = require('../config/connection')
var moment = require('moment');

router.get('/:tour_id', function (req, res) {
    console.log(" req.query.tour_id is ", req.params.tour_id);
    connection.query('SELECT st.id, scheduled, cancellation, firstname, lastname, email, walktitle, neighborhood, description, bio, mediawikiURL FROM scheduled_tours AS st INNER JOIN users AS u INNER JOIN tours AS t WHERE st.id=? AND st.user_id = u.id AND st.tour_id = t.id', [req.params.tour_id], function (error, results, fields) {
        if (error) res.send(error)
        else {
            console.log("All scheduled tours for tour number", req.params.tour_id, ":", results);
            res.render("pages/scheduled", {scheduled: results});
        }
    });
});

router.get('/confirmation/:id', function(req, res) {

    if(!req.session.em){ 
        res.redirect('/users/signin');
    } else {
        console.log("the session variable is ", req.session.em); 
        connection.query('SELECT t.walktitle, t.latitude, t.longitude, t.mediawikiURL, t.meeting_spot, t.description, t.neighborhood, st.scheduled, st.user_id, st.guidenote FROM tours AS t INNER JOIN scheduled_tours AS st WHERE t.id=(SELECT tour_id FROM scheduled_tours WHERE id=?)', [req.params.id], function(error, tourinfo, fields){
            console.log("confirmation page tour info ", tourinfo[0]);
            connection.query("SELECT firstname, lastname, bio FROM users WHERE category='guide' AND id=?", [tourinfo[0].user_id], function(error, result){
                
                var time = tourinfo[0].scheduled.toString().slice(0, -5); // Removes the .000Z of 2019-05-01T18:00:00.000Z
                tourinfo[0].scheduled = moment(time).format('LLLL');

                var picFileName = '/images/' +  tourinfo[0].neighborhood.replace(/\s/g, '').toLowerCase() + '.jpg';
                var info = {...tourinfo[0], ...result[0], ...{pic: picFileName}};
                console.log(info);

                
                res.render('pages/confirmation', {tourinfo: info});
            });
        });
    }
})

module.exports = router;