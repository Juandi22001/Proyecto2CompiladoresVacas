
import {Node} from '../Abstract/Node';

export class Switchs extends Node {

    Nombre: String;
    contenido :Array <Node>;
    
Condition :Array<Node>;
constructor ( linea:Number,columna:Number , Nombre:string ,  Condition:Array<Node>,contenido :Array <Node>){
super(linea,columna);
this.Nombre=Nombre;
this.contenido=contenido;
this.Condition=Condition;
}
execute(){
    
}


}

