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
//app.engine(hbs.extname, hbs.engine);
//app.engine('.hbs', expressHbs({extname: '.hbs' }));
//app.engine('.hbs', expressHbs({ defaultLayout: 'layout', extname: '.hbs' }));
app.engine('handlebars', hbs.engine);
app.set('view engine', 'hbs'); 

 

var http = require('http');
var request = require('request');
var cheerio = require('cheerio');

//const express = require('express');
const exphbs = require('express-handlebars');
const Handlebars = require('handlebars');
const HandlebarsIntl = require('handlebars-intl');

//set views file
app.set('views',path.join(__dirname,'views'));
//set view engine
app.use(bodyParser.urlencoded({ extended: false }));
//set public folder as static folder for static file
app.use(express.static('public'));


//var app = express();

//var hbs = exphbs.create({extname: '.handlebars'});
//app.engine(hbs.extname, hbs.engine);
//app.set('view engine', hbs.extname);

/*Handlebars.registerHelper('json', function(context) {
    return JSON.stringify(context);
 });
*/
Handlebars.registerHelper('splitTitle', function(title) {
  var t = title.split("a");
  return t[1] + " <br/> " + t[0];
});
Handlebars.registerHelper('trimString', function(passedString, startstring, endstring) {
      var theString = passedString.substring( startstring, endstring );
      return theString;
      //return new Handlebars.SafeString(theString)
});

//
//app.set('view engine', 'handlebars');
//app.engine('handlebars', engines.handlebars);

//
 //ini tambahan
    /*hbs.registerHelper('trimString', function(passedString, startstring, endstring) {
      var theString = passedString.substring( startstring, endstring );
        return new Handlebars.SafeString(theString)
    });*/



//route untuk halaman home
app.get('/fikri',(req, res) => {
  //render file index.hbs

  
  var phantom = require("phantom");
  var _ph, _page, _outObj;

  phantom.create().then(function(ph){
      _ph = ph;
      return _ph.createPage();
  }).then(function(page){
      _page = page;
      return _page.open('https://fabelio.com/ip/gracie-tv-credenza.html');
  }).then(function(status){
      //console.log(status);
      return _page.property('content')
  }).then(function(content){
      //console.log(content);
      var gambarr = $('.logo img').attr('src');

      console.log(gambar);

      _page.close();
      _ph.exit();
  }).catch(function(e){
     console.log(e); 
  });

  res.render('index',{
    name : "M Fikri"
  });
});
 

//route untuk manampilkan form
app.get('/',(req, res) => {
  //render file form.hbs
  res.render('form');
});

app.get('/product/:productId', function (req, res) {
  //console.log({{req.params}});
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

  //res.send(req.params)
})


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
              helpers: {
                 foo: function () { return 'foohhhh.'; }
              }
            });
        });
    });


    //res.render('viewall');
})

//route untuk submit form
app.post('/',(req, res) => {
  //render file form.hbs
  console.log(req.body.textname);
  var urlinput = req.body.textname;
  //let data = {linktersimpan: req.body.textname}
  //console.log(data);
  request(urlinput, function (error, response, html) {
    if (!error && response.statusCode == 200) {
      var $ = cheerio.load(html);
    console.log("+++++++++++++++++++");
    //console.log($);
    //console.log($.root().html());
    var nama = $('span[class=base]').html();
    var harga = $('span[class=price]').html();


    var cobaKuy = $('div.yotpo.yotpo-main-widget').attr('data-image-url');
    console.log(cobaKuy);
    console.log("+++++++++++++++++++");

    //var cobaKUY = $('.f-blue img').attr('src');
    //var href = $('img.fotorama__img').attr('src');
    var href = $('img.fotorama__img').attr('src');

    var deskripsi = $('#description').text();
    var urlgambar = "kosong";
    //var urlgambar = $('.fotorama__img').find('img').attr('src');
    //var href = $('div.fotorama__stage__frame.fotorama__active.fotorama_horizontal_ratio.fotorama__loaded.fotorama__loaded--img').attr('href');

    //var href = $('.fotorama__stage__frame.fotorama__active .fotorama_horizontal_ratio.fotorama__loaded.fotorama__loaded--img').attr('href');
    var source = $('.product-media__wrapper img').attr('src');
    //var source = $('.logo img').attr('src');
    //var source = $
    //var source = document.getElementsByClassName("fotorama__img'");
    //alert("The source of the image is " + source);
    //$('.thumbnail img').attr('src');
    //var href = $('img[src$=".jpg"]');

    console.log(source);
    console.log(nama);
    console.log(harga);
    console.log(deskripsi);
    //console.log(urlgambar);
    console.log(href);

    var mysql = require('mysql');
    var db = mysql.createConnection({
        host: "localhost",
        user: "root",
        password: "",
        database: "furniture_product"
    });

    db.connect(function(err) {
        if (err) throw err;
        
        let sql = "INSERT INTO products (nama, harga, deskripsi, urlgambar) VALUES ('"+nama+"','"+ harga+"','"+ deskripsi+"','"+ cobaKuy+"')";

       // var values = ['${nama}', 'harga', 'deskripsi'];
        db.query(sql, function (err, result) {
            if (err) throw err;
            console.log("1 record inserted");
        });
    });
            
    //server.listen(8000);
          res.render('index',{
          //ambil value dari textname
          
          name : nama,
          harga : harga,
          deskripsi : deskripsi,
          urlgambar : cobaKuy
        });
    }
  });

  



});
 
app.listen(8000, () => {
  console.log('Server is running at port 8000');
});