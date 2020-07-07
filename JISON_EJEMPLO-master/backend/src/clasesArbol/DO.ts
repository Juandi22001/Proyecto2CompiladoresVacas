
import {Node} from '../Abstract/Node';

export class DOs extends Node {

    Nombre: String;
    contenido :Array <Node>;
    NombreWhile:String;
Condition :Array<Node>;
constructor ( linea:Number,columna:Number , Nombre:string , contenido :Array <Node>, NombreWhile:String, Condition:Array<Node>){
super(linea,columna);
this.Nombre=Nombre;
this.contenido=contenido;

this.NombreWhile=NombreWhile;

this.Condition=Condition;
}
execute(){
    
}


}

