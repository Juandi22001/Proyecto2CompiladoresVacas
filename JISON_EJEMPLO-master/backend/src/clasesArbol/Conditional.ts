
import {Node} from '../Abstract/Node';
const a= require('../index');

export class Conditional extends Node {

   Operador: String;
 right : Node;

constructor (Operador:string , right:Node,  linea:Number,columna:Number){
super(linea,columna);
this.Operador=Operador;
this.right=right;



}
execute(){
}
Prueba(){

console.log("adentro");
}

}

