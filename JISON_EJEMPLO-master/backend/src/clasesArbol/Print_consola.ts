import { Node } from '../Abstract/Node';

export class Print_consola extends Node {
    expresion:any;
    constructor(line: Number, column: Number  , exp:any ){
        super(line , column);
        this.expresion = exp;
    }
   execute(){
   }
}