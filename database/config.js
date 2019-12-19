var mysql = require('mysql');
const connection = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: '',
    database: 'nodejs_rest'
});

//Connection Method
connection.connect(function(err) {
    if (err) {
        console.error('Connection Error: ' + err.stack);
        return;
    }

    console.log('Connect  ' + connection.threadId);
});

module.exports = connection;