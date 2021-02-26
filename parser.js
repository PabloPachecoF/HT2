//Iniciando fs
var file_select = require('fs');

//Llamado a la gramatica
var parser = require('./Gramatica');

//Lectura de archivo
file_select.readFile('./entrada.txt', (err, data) => 
{
    if(err)
    {
        throw err;
    }
    else
    {
        parser.parse(data.toString());
    }
})