var express = require('express');
var router = express.Router();
var connection = require('../config/connection')
var moment = require('moment');

router.use(express.urlencoded({ extended: true }));

router.post('/newtour', function(req, res, next) {
    if(!req.session.em){ 
        res.redirect('/users/signin');
    } else {
        console.log("*****In new tour route - req.body follows: *****", req.body);
        var ntd = req.body; // new tour data
        var dt = req.body.newtourdate + ' ' + req.body.newtourtime;
        var uid = parseInt(ntd.user_id);
        var tid = parseInt(ntd.tour_id);
        console.log("guide note****** ", req.body.guidenote);
        connection.query('INSERT INTO scheduled_tours (tour_id, user_id, scheduled, guidenote) VALUES (?, ?, ?, ?)', [tid, uid, dt, ntd.guidenote], function(error, didInsert, fields){
            if (error) 
                res.send(error);
            else { 
                console.log("did insert ", didInsert);
                res.redirect('/scheduled/guidestours');
            }
        });
    };
});

router.get('/guidestours', function(req, res) {

    if(!req.session.em){ 
        res.redirect('/users/signin');
    } else {
        connection.query('SELECT category, id, firstname, lastname FROM users WHERE email=?', [req.session.em], function(error, isguide, fields){
            if(isguide[0].category=='guide'){
                    connection.query("SELECT id, walktitle FROM tours", function(error, alltours, fields){
                        connection.query('SELECT st.scheduled, st.cancellation, t.walktitle FROM scheduled_tours AS st INNER JOIN tours AS t WHERE st.user_id=? AND st.tour_id=t.id', [isguide[0].id], function(error, allguidetours, fields){
                            console.log('all guide tours', allguidetours[0]);
                            allguidetours.forEach((t) => {
                                var timeformatted = moment(t.scheduled.toString().slice(0, -5)).format('LLLL'); 
                                t.scheduled = timeformatted.replace(" GMT-0700 (Pacific Daylight Time)", "");
                            });
                            console.log('******* Data for all guides scheduled tours *****', allguidetours);
                            res.render('pages/guidespage', {alltours: alltours, allguidetours: allguidetours, firstname:isguide[0].firstname, lastname:isguide[0].lastname, guideid:isguide[0].id});
                        })
                    });
            }
        })
    }
})

router.get('/:tour_id', function (req, res) {
    console.log(" req.query.tour_id is ", req.params.tour_id);
    connection.query('SELECT st.id, st.scheduled, st.cancellation, u.firstname, u.lastname, u.email, u.bio, t.walktitle, t.neighborhood, t.description, t.mediawikiURL FROM scheduled_tours AS st INNER JOIN users AS u ON st.user_id=u.id INNER JOIN tours AS t ON st.tour_id=t.id WHERE t.id=?', [req.params.tour_id], function (error, results, fields) {
        if (error) res.send(error)
        else {
            console.log("******RESULTS******", results);
            results = results.map(st => {
                var time = st.scheduled.toString().slice(0, -5); // Removes the .000Z of 2019-05-01T18:00:00.000Z
                st.scheduled = moment(time).format('LLLL');
                return st; 
        })
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
                console.log("***** tour info follows: *****", info);
                res.render('pages/confirmation', {tourinfo: info});
            });
        });
    }
})

module.exports = router;