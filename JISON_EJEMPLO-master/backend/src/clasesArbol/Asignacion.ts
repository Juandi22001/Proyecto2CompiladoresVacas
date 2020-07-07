
import {Node} from '../Abstract/Node';

export class Asigna extends Node {

    Nombre: String;
    contenido :Array <Node>;
    
constructor ( linea:Number,columna:Number , Nombre:string ,  contenido :Array < Node>){
super(linea,columna);
this.Nombre=Nombre;
this.contenido=contenido;
}
execute(){
    
}


}

