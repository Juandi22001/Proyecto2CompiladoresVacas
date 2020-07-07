
import {Node} from '../Abstract/Node';

export class FunctionVacio extends Node {
       Tipo:any;
    Nombre: String;
    contenido :Array <Node>;
constructor ( linea:Number,columna:Number ,Tipo:any, Nombre:string , contenido :Array <Node>){
super(linea,columna);
this.Nombre=Nombre;
this.contenido=contenido;
this.Tipo=Tipo;

}
execute(){
    
}


}

