
import {Node} from '../Abstract/Node';

export class DECLA extends Node {

Variable :Array <Node>;
    
TipoV :Array<Node>;
constructor ( linea:Number,columna:Number ,   TipoV:Array<Node>,Variable :Array <Node>){
super(linea,columna);

this.Variable=Variable;
this.TipoV=TipoV;
}
execute(){
    
}


}

