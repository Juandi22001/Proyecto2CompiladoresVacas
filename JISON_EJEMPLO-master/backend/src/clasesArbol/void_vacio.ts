
import {Node} from '../Abstract/Node';

export class void_vacio extends Node {

    Nombre: String;
    contenido :Array <Node>;
constructor ( linea:Number,columna:Number , Nombre:string , contenido :Array <Node>){
super(linea,columna);
this.Nombre=Nombre;
this.contenido=contenido;

}
execute(){
    
}


}

