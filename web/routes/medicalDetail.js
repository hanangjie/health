/**
 * Created by hzw on 2016/6/29.
 * connect 342782880
 */
var express = require('express');
var mysql = require('mysql');
var router = express.Router();


router.get('/:id', function(req, res, next) {

    var client = mysql.createConnection({
        host: 'localhost',
        user: 'root',
        password: '',
        database:'data',
        port: 3306
    });

    client.connect();
    client.query(
        "select * from medicalhtml where medicalId="+req.params.id,
        function selectCb(err, results, fields) {
            if (err) {
                console.log(err)
            }
            if(results)
            {
                res.send(results[0].html)
                next();
            }

        }
    );
    //res.render('index', { title: 'Express' });
});

module.exports = router;