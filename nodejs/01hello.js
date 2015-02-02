// OPTION 1 

var http = require('http');
var url = require('url');

var server = http.createServer(function(request, response) {
  console.log("SERVER ON");
  var path = url.parse(request.url).pathname;
  switch(path) {
    case '/':
      response.writeHead(200, {'Content-Type': 'text/html'});
      response.write("HELLO WORLD")
        break;
    default:
      response.writeHead(404);
      response.write('404: Error!')
  }
  response.end();
});
server.listen(3000);
console.log("HELLO WORLD");

// OPTION 2

var server = require('express') ();
var http = require('http').createServer(server);

server.get('/', function(request, response) {
  response.send('<h1>HELLO WORLD</h1>')
});

http.listen(3000, function() {
  console.log('Listening on port 3000')
});
