const express = require('express')
const app = express()
const mysql = require('mysql')

app.get('/', function(req, res) {
	var connection = mysql.createConnection({
	  host     : 'localhost',
	  user     : 'devuser',
	  password : 'password',
	  database : 'bestby'
	});

	connection.connect();

	connection.query('SELECT * FROM Item', function (error, results, fields) {
	  if (error) throw error;
	  console.log(results);
	  res.send(results);
	});

	connection.end();

});

app.listen(3000, () => console.log('Example app listening on port 3000!'))

