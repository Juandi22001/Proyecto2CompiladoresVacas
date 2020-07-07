
import {Node} from '../Abstract/Node';
import {GraficaArbolAts} from '../Grafica/Grafica'
import { Tree } from "../Simbols/Tree";
export class IFS extends Node {

   
        condition: Node;
        IfList: Array<Node>;
        ElseList: Array<Node>;
    
        /**
         * @constructor Crea el nodo instruccion para la sentencia IF
         * @param condition Condicion que debe ser tipo boolean
         * @param IfList Lista de instrucciones a ejecutar en caso la condicion sea verdadera
         * @param ElseList Lista de instrucciones a ejecutar en caso la condicion sea falsa
         * @param line Linea de la sentencia if
         * @param column Columna de la sentencia if
         */
    
    
        constructor(condition: Node, IfList: Array<Node>, ElseList: Array<Node>, line: Number, column: Number) {
            super( line, column);
            this.condition = condition;
            this.IfList = IfList;
            this.ElseList = ElseList;
        }
    
execute(){
    //primero metemmos las sentencias y sus condiciones
    GraficaArbolAts.add("<li data-jstree='{ \"opened\" : true }'>SENTENCIA_IF (linea:"+this.line+")\n");
    GraficaArbolAts.add("<ul>\n");
    GraficaArbolAts.add("<li data-jstree='{ \"opened\" : true }'>CONDICION\n");
    GraficaArbolAts.add("<ul>\n");
    GraficaArbolAts.add("</ul>\n");
    GraficaArbolAts.add("</li>\n");

//luego el contenido del if  para poder graficar
    GraficaArbolAts.add("<li data-jstree='{ \"opened\" : true }'>sentencia_if (linea:"+this.line+")\n");
    GraficaArbolAts.add("<ul>\n");
    for (let i = 0; i < this.IfList.length; i++) {
      

    }
    GraficaArbolAts.add("</ul>\n");
    GraficaArbolAts.add("</li>\n");

   GraficaArbolAts.add("<li data-jstree='{ \"opened\" : true }'>Sentencia_Else (linea:"+this.line+")\n");
                GraficaArbolAts.add("<ul>\n");
                
                GraficaArbolAts.add("</ul>\n");
                GraficaArbolAts.add("</li>\n");

                
                GraficaArbolAts.add("</ul>\n");
                GraficaArbolAts.add("</li>\n");
      
               
}


}

