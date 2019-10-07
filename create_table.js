var db = require("./db_config");

db.connect(function(err) {
    if (err) throw err;
    
    let sql = `CREATE TABLE products 
    (
        id int NOT NULL AUTO_INCREMENT,
        nama VARCHAR(255), 
        harga VARCHAR(255),
        deskripsi TEXT,
		urlgambar TEXT,
        PRIMARY KEY (id)
    )`;
    db.query(sql, function (err, result) {
        if (err) throw err;
        console.log("Table created");
    });
});