const http = require('http');
const { parse } = require('querystring');
var request = require('request');
var cheerio = require('cheerio');


const server = http.createServer((req, res) => {
    if (req.method === 'POST') {
        let body = '';
		req.on('data', chunk => {
			body += chunk.toString(); // convert Buffer to string
		});
		req.on('end', () => {
			console.log(parse(body).alamaturl);
			var alamaturl = parse(body).alamaturl;
			res.end(alamaturl);
		});
    }
    else {
      res.end(`
        <!doctype html>
        <html>
        <body>
            <form action="/" method="post">
                <input type="text" name="alamaturl" /><br />
             
                <button>SUBMIT</button>
            </form>
        </body>
        </html>
      `);
    }
});

request('https://fabelio.com/ip/dabi-sofa-bed.html', function (error, response, html) {
  if (!error && response.statusCode == 200) {
    var $ = cheerio.load(html);

	var deskripsi = $('#description').text();
	console.log(deskripsi);	
	var server = http.createServer(function (req, res) {
	    res.writeHead(200, {'Content-Type': 'text/html'});
		res.write('Hello <b>World</b>!' + deskripsi);
		res.end();
	});
	
	server.listen(8000);

  }
});
server.listen(3000);