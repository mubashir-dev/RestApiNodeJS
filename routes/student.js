var express = require('express');
var router = express.Router();
var db = require("../database/config");
var bodyParser = require('body-parser');

router.use(bodyParser.json()); // for parsing application/json

/* GET Student listing. */
router.get('/', function(req, res, next) {
    var sql = "SELECT *FROM student";
    db.query(sql, function(err, result, fields) {
        if (err)
            console.log(err);
        res.json(result);

    });

});

//Single User Student Listing//
router.get('/:id', function(req, res, next) {
    var id = req.params.id;
    var sql = "SELECT *FROM student WHERE id = " + id;
    db.query(sql, function(err, result, fields) {
        if (err) throw err;
        console.log(result);
        res.json(result);

    });

});

//Insert Student Recored //
router.post('/create', function(req, res, next) {
    var name = req.body.name;
    var father_name = req.body.father_name;
    var program = req.body.program;
    var email = req.body.email;
    var address = req.body.address;
    var contact = req.body.contact;
    //Sql Query
    var sql = `INSERT INTO student (name,father_name,program,contact,email,address) VALUES ("${name}","${father_name}","${program}","${contact}","${email}","${address}")`;
    db.query(sql, function(err, result) {
        if (err) {
            console.log(err);
            res.status(500).send({ error: 'Something failed!' })
        }
        res.json({ 'status': 'success' });
    });
});

//Update Student Recored//
//Insert Student Recored //
router.put('/update/:id', function(req, res, next) {
    var id = req.params.id;
    var name = req.body.name;
    var father_name = req.body.father_name;
    var program = req.body.program;
    var email = req.body.email;
    var address = req.body.address;
    var contact = req.body.contact;
    //Sql Query
    var sql = `UPDATE student SET name="${name}",father_name="${father_name}",program="${program}",contact="${contact}",email="${email}",address="${address}" WHERE id=` + id;
    db.query(sql, function(err, result) {
        if (err) {
            console.log(err);
            res.status(500).send({ error: 'Something failed!' })
        }
        res.json({ 'status': 'Update Recored' });
    });
});


//Delete Student Recored//
router.delete('/delete/:id', function(req, res, next) {
    var id = req.params.id;
    var sql = "DELETE FROM student WHERE id = " + id;
    db.query(sql, function(err, result) {
        if (err)
            console.log(err);
        res.json({ "success": "Recored Delete" });

    });

});
module.exports = router;