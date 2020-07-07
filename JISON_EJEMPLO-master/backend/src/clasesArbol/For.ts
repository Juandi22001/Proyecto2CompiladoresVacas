
import {Node} from '../Abstract/Node';
const a= require('../index');



    export class Fors extends Node {
        condition: Node;
        List: Array<Node>;
        Dec_for : Node;
        Incre_decre: Node; 
        Nombre:String;
        /**
         * @constructor 
         * @param condition Condicion que debe ser tipo boolean
         * @param List Lista de instrucciones a ejecutar mientras la condicion sea verdadera
         * @param line Linea de la sentencia while
         * @param column 
         */
        constructor(Nombre:String,Dec_for:Node ,  condition: Node , Incre_decre :Node , List: Array<Node>, line: Number, column: Number) {
            super( line, column);
            this.Dec_for = Dec_for; 
            this.Incre_decre = Incre_decre; 
            this.condition = condition;
            this.List = List;
            this.Nombre=Nombre;
        }
execute(){
}
Prueba(){

console.log("adentro");
}

}

