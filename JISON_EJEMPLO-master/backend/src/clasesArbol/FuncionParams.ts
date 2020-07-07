
import {Node} from '../Abstract/Node';

export class FuncionParams extends Node {

    Nombre: String;
    contenido :Array <Node>;
    tipo:any;
    params :Array<Node>
constructor ( linea:Number,columna:Number ,tipo:any, Nombre:string ,  params:Array<Node>,contenido :Array <Node>){
super(linea,columna);
this.Nombre=Nombre;
this.contenido=contenido;
this.params=params;
this.tipo=tipo;
}
execute(){
    
}


}

