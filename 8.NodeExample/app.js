///////////////////app.js//////////////////////
///////////Jorge Izquierdo @izqui9/////////////
///////////////////////////////////////////////


var express = require("express");
var app = express.createServer();
//app.use(express.bodyParser());
app.configure(function(){

	app.use(require('connect').bodyParser());

});

var array = [{
	
	title: "Ejemplo 1",
	detail: "DETALLE 1"

}, 
{
	
	title : "Ejemplo 2",
	detail: "DETALLE 2"
}];
app.get('/all', function (req,res){
	
	console.log("get request");
	res.send(array);
});

app.post('/new', function (req,res){
	
	console.log("new post rerquest"+req.body);
	array.push({"title":req.query.title, "detail":req.query.detail});

	res.send("ok");

});

app.listen(8080);
console.log("Up and running");