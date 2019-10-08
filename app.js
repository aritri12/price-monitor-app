//use path module
const path = require('path');
//use express module
const express = require('express');
//use hbs view engine
//const hbs = require('hbs');
const expressHbs = require('express-handlebars');

var hbs = expressHbs.create({
    // Specify helpers which are only registered on this instance.
    helpers: {
        foo: function () { return 'FOO!'; },
        bar: function () { return 'BAR!'; }
    }
});

//use bodyParser middleware
const bodyParser = require('body-parser');
const app = express();

//set app engine
app.engine('handlebars', hbs.engine);
app.set('view engine', 'hbs'); 

var http = require('http');
var request = require('request');
var cheerio = require('cheerio');

//set handlebars
const exphbs = require('express-handlebars');
const Handlebars = require('handlebars');
const HandlebarsIntl = require('handlebars-intl');

//set views file
app.set('views',path.join(__dirname,'views'));

//set view engine
app.use(bodyParser.urlencoded({ extended: false }));

//set public folder as static folder for static file
app.use(express.static('public'));

//route to display form 
app.get('/',(req, res) => {
  res.render('form');
});

//route untuk submit form (insert product)
app.post('/',(req, res) => {
  console.log(req.body.textname);
  var urlinput = req.body.textname;

  request(urlinput, function (error, response, html) {
    if (!error && response.statusCode == 200) {
      var $ = cheerio.load(html);    
      var nama = $('span[class=base]').html();
      var harga = $('span[class=price]').html();
      var deskripsi = $('#description').text();
      var urlgambar = $('div.yotpo.yotpo-main-widget').attr('data-image-url');

    var mysql = require('mysql');
    var db = mysql.createConnection({
        host: "localhost",
        user: "root",
        password: "",
        database: "furniture_product"
    });

    db.connect(function(err) {
        if (err) throw err;
        
        let sql = "INSERT INTO products (nama, harga, deskripsi, urlgambar) VALUES ('"+nama+"','"+ harga+"','"+ deskripsi+"','"+ urlgambar+"')";
        db.query(sql, function (err, result) {
            if (err) throw err;
            console.log("1 record inserted");
        });
    });            
        res.render('index',{          
            name : nama,
            harga : harga,
            deskripsi : deskripsi,
            urlgambar : urlgambar
        });
      }
   });
  });

//route to product detail page
app.get('/product/:productId', function (req, res) {
  var productId = req.params.productId;
  var mysql = require('mysql');
  var db = mysql.createConnection({
    host: "localhost",
    user: "root",
    password: "",
    database: "furniture_product"
  });
  db.connect(function(err) {
        if (err) throw err;
        let sql = "SELECT * FROM products WHERE id = '" + productId + "'";
        db.query(sql, function (err, result) {
          if (err) throw err;
          if (result)
            console.log(result);
            res.render('detailproduct', {
              data: result,
            });
        });
    });
})

//route to all product list page
app.get('/list', function (req, res) {
    var mysql = require('mysql');
    var db = mysql.createConnection({
        host: "localhost",
        user: "root",
        password: "",
        database: "furniture_product"
    });

    db.connect(function(err) {
        if (err) throw err;
        let sql = "SELECT * FROM products";
        db.query(sql, function (err, result) {
          if (err) throw err;
          if (result)
            console.log(result);
            res.render('viewall', {
              data: result,
            });
        });
    });
})
 
app.listen(8000, () => {
  console.log('Server is running at port 8000');
});
