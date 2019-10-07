var http = require('http');
var qs = require('querystring');
var fs = require('fs');

http.createServer(function (req, res) {

    if(req.url === "/search/" && req.method === "POST"){
        // tampilkan form login
        fs.readFile("search.html", (err, data) => {
            if (err) { // kirim balasan error
                res.writeHead(404, {'Content-Type': 'text/html'});
                return res.end("404 Not Found");
            } 
            // kirim form login_form.html
            res.writeHead(200, {'Content-Type': 'text/html'});
            res.write(data);
			
				var server = http.createServer(function (req, res) {
				//res.end(deskripsi);
					res.writeHead(200, {'Content-Type': 'text/html'});
					res.write('Hello <b>World</b>!' + data);
					res.end();
				});
				
				server.listen(8000);
	
            return res.end();
        });
    }
  
}).listen(8000);

console.log('server is running on http://localhost:8000');