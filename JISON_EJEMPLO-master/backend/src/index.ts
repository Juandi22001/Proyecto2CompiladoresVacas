import express from 'express';
import fs from 'fs';

//----------- TRAYENDO MI JISON PARSER :3  ------------
const analizador_jison = require('./Grammar/Grammar_P1');

const s = require('./Simbols/Tree')
//----------------------------------------

const ayuda= analizador_jison.Parser("void main(){ }");
console.log(ayuda+" ");
var bodyParser = require("body-parser");
const cors = require('cors');
const app = express();
const port = 4002;
const aux= s.instrucctions;
app.use(cors());
app.use(bodyParser.urlencoded({ extended: false }));
app.use(express.static(__dirname + '/public'));
app.set('view engine', 'ejs');
console.log(s.instrucctions);  


app.set('views', __dirname);
app.use(express.urlencoded());
app.use(express.json());
app.use(bodyParser.json());
app.listen(port, err => {
/*hola como estas?*/

  return console.log(` PORT:${port} `);
});
var a = new Array();
a[0]="s";
a[1]="s";
const efe = JSON.stringify(a);
const efe2= JSON.parse(efe);

console.log(efe);
app.get('/', (req, res) => {
  res.render('views/index', {
    entrada: '',
    consola: [],
    errores: []
  });
})


// LLAMADA DE EJEMPLO

app.post('/ejemplo', (req, res) => {
  console.log("REALIZANDO LA PETICION DESDE EL FORMULARIO QUE SE ENCUENTRA EN la carpeta VIEWS por medio de un Form \n\n\n");
  const entrada = req.body.entrada;

  console.log("-------------INICIA EL ARBOL----------------");

  console.log("-------------¿QUE TIENE PRINT CONSOLA?------");

  console.log("--------------------------------------------");
  console.log("ok");
});



















































