
import {Node} from '../Abstract/Node';

export class breaks extends Node {

    Nombre: String;
constructor ( linea:Number,columna:Number , Nombre:string ){
super(linea,columna);
this.Nombre=Nombre;
}
execute(){
}
Prueba(){

console.log("adentro");
}

}

