
import {Node} from '../Abstract/Node';
const a= require('../index');

export class Relational extends Node {

   Operador: String;
 right : Node;
  left : Node;
constructor ( left:Node,Operador:string , right:Node,  linea:Number,columna:Number){
super(linea,columna);
this.Operador=Operador;
this.right=right;
this.left=left;


}
execute(){
}
Prueba(){

console.log("adentro");
}

}

