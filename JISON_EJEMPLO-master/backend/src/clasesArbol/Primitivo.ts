
import {Node} from '../Abstract/Node';
const a= require('../index');

export class Primitivo extends Node {

    Nombre: String;

constructor ( linea:Number,columna:Number , Nombre:string ){
super(linea,columna);
this.Nombre=Nombre;

a.a="ser";
}
execute(){
}
Prueba(){

console.log("adentro");
}

}

