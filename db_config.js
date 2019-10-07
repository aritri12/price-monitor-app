var mysql = require('mysql');

var db = mysql.createConnection({
    host: "localhost",
    user: "root",
    password: "",
    database: "furniture_product"
});



module.exports = db;


/*
db.connect(function(err) {
    if (err) throw err;
    console.log("Connected!");
});
*/