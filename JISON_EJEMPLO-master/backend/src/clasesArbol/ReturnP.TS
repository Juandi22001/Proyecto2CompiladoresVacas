
import {Node} from '../Abstract/Node';

export class ReturnPs extends Node {

    Nombre: String;
    Exp:Node;
constructor ( linea:Number,columna:Number , Nombre:string , Exp:Node){
super(linea,columna);
this.Nombre=Nombre;
this.Exp=Exp;
}
execute(){
}
Prueba(){

console.log("adentro");
}

}

