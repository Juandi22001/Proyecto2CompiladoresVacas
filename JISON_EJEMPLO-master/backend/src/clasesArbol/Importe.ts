/*

 ESTA CLASE ES UN NODO DE LA GRAMATICA (del ATS)
 Y EXTIENDE DE NODE QUE VIENE DE LA CARPETA ABSTRACT

*/
import { Node } from '../Abstract/Node';


export class Importe extends Node {
    id:string;
    constructor(line: Number, column: Number  , id_ :string){
        super(line , column);
        this.id = id_;
    }

   execute(){

   }
}