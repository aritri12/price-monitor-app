var http = require('http');


var request = require('request');
var cheerio = require('cheerio');

//https://www.digitalocean.com/community/tutorials/how-to-use-node-js-request-and-cheerio-to-set-up-simple-web-scraping
//https://cheerio.js.org

request('https://fabelio.com/ip/dabi-sofa-bed.html', function (error, response, html) {
  if (!error && response.statusCode == 200) {
    var $ = cheerio.load(html);
	var nama = $('span[class=base]').html();
	var harga = $('span[class=price]').html();
	var deskripsi = $('#description').text();
	console.log(nama);
	console.log(harga);
	console.log(deskripsi);
	
	var server = http.createServer(function (req, res) {
    //res.end(deskripsi);
	    res.writeHead(200, {'Content-Type': 'text/html'});
		res.write('Hello <b>World</b>!' + deskripsi);
		res.end();
	});
	
	server.listen(8000);

  }
});




console.log("server running on http://localhost:8000");

