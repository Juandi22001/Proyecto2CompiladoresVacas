
import {Node} from '../Abstract/Node';


export class LlamadaV extends Node {

    Nombre: String;

    Lista:Node;

constructor ( linea:Number,columna:Number , Nombre:string,Lista:Node ){
super(linea,columna);
this.Nombre=Nombre;
this.Lista=Lista;
}
execute(){
}
Prueba(){

console.log("adentro");
}

}

