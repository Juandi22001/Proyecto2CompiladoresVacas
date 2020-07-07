
import {Node} from '../Abstract/Node';
const a= require('../index');

export class Main extends Node {

    Nombre: String;
    contenido :Array <Node>;
constructor ( linea:Number,columna:Number , Nombre:string , contenido :Array <Node>){
super(linea,columna);
this.Nombre=Nombre;
this.contenido=contenido;
a.a="ser"; 
}
execute(){
}
Prueba(){


}

}

