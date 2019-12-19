var express = require('express');
var router = express.Router();
var db = require("../database/config");
/* GET All Student Data Point. */
router.get('/', function(req, res, next) {
    var sql = "SELECT *FROM student";
    db.query(sql, function(err, result, fields) {
        if (err) throw err;
        console.log(result);
        res.json(result);

    });
});

module.exports = router;