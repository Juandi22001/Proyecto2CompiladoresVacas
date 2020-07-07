/*

 ESTA CLASE ES UN NODO DE LA GRAMATICA (del ATS)
 Y EXTIENDE DE NODE QUE VIENE DE LA CARPETA ABSTRACT

*/
import { Node } from '../Abstract/Node';

export class Clase extends Node {
    id:string;
    contenido:Array<Node>;
    constructor(line: Number, column: Number  , id_nombre_clase :string  , contenido: Array<Node> ){
        super(line , column);
        this.id = id_nombre_clase;
        this.contenido = contenido;
    }
   execute(){
   }
}