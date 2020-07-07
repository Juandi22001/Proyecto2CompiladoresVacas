
import {Node} from '../Abstract/Node';

export class WHILES extends Node {

    Nombre: String;
    contenido :Array <Node>;
    
Condition :Node;
constructor ( linea:Number,columna:Number , Nombre:string ,  Condition:Node,contenido :Array <Node>){
super(linea,columna);
this.Nombre=Nombre;
this.contenido=contenido;
this.Condition=Condition;
}
execute(){
    
}


}

