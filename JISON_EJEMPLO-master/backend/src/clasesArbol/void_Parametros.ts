
import {Node} from '../Abstract/Node';

export class void_parametros extends Node {

    Nombre: String;
    contenido :Array <Node>;
    
    params :Array<Node>;
constructor ( linea:Number,columna:Number , Nombre:string ,  params:Array<Node>,contenido :Array <Node>){
super(linea,columna);
this.Nombre=Nombre;
this.contenido=contenido;
this.params=params;
}
execute(){
    
}


}

