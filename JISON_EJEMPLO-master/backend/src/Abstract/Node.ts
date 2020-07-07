
import {Tree} from "../Simbols/Tree";
export abstract class Node {
    line: Number;
    column: Number;
    abstract execute(): any;
    constructor(line: Number, column: Number) {
        this.line = line;
        this.column = column;
    }
}