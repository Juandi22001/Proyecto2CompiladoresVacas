
import {Node} from '../Abstract/Node';

export class DecFor extends Node {

Variable :Array <Node>;
    Tipo:Node;
TipoV :Array<Node>;
Nombre:String;
constructor ( linea:Number,columna:Number ,Tipo:Node, Nombre:String,Variable :Array <Node>){
super(linea,columna);

this.Variable=Variable;
this.Nombre=Nombre;
this.Tipo=Tipo;
}
execute(){
    
}


}

