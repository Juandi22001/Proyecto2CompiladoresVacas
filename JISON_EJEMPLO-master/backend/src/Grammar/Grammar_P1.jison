
%{    const {Tree} = require('../Simbols/Tree');
  const {void_vacio} = require('../clasesArbol/void_vacio');
  
  const {void_parametros} = require('../clasesArbol/void_Parametros');
  
  const {FunctionVacio} = require('../clasesArbol/FunctionVacio');
  
  
  const {FuncionParams} = require('../clasesArbol/FuncionParams');
  const {TipoVar} = require('../clasesArbol/TipoVar');
    const {ID_PARAMETRO} = require('../clasesArbol/ID_PARAMETRO');
  const {LlamadaV} = require('../clasesArbol/LlamadaV');
    const {Main} = require('../clasesArbol/Main');
     const {Console} = require('../clasesArbol/Console');
     const {Primitivo} = require('../clasesArbol/Primitivo');
     const {Relational} = require('../clasesArbol/Relational');
  const {DECLA} = require('../clasesArbol/DECLARACION');

     const {Operacion} = require('../clasesArbol/Operacion');
     const {Conditional} = require('../clasesArbol/Conditional');
     const {Asigna} = require('../clasesArbol/Asignacion');
        const {IFS} = require('../clasesArbol/IF');
           const {DOs} = require('../clasesArbol/DO');
        const {WHILES} = require('../clasesArbol/WHILE');
           const {continues} = require('../clasesArbol/Continue');
     
        const {Cases} = require('../clasesArbol/Case');        
        const {Switchs} = require('../clasesArbol/Switch');
        const {DecFor} = require('../clasesArbol/DecFor');
        const {Decrement} = require('../clasesArbol/Decrement');
        
        const {breaks} = require('../clasesArbol/Break');
      const {Increment} = require('../clasesArbol/Increment');
       const {ReturnPs} = require('../clasesArbol/ReturnP');
              const {returnN} = require('../clasesArbol/Return');
%}
%lex
%options case-insensitive
no  ([\"]*)
digito [0-9]+
decimal {digito}("."{digito})?
stringliteral (\"[^"]*\")
identifier ([a-zA-Z_])[a-zA-Z0-9_]*
caracter (\'[^☼]\')
%%  

\s+ 
[ \t\r\n\f] 
\n                  
"/""/".*                             
[/][*][^*]*[*]+([^/*][^*]*[*]+)*[/] 
{digito}              return 'digito'
{decimal}             return 'decimal' 
{caracter}            return 'caracter'
{stringliteral}       return 'cadena'
"*"                   return '*'
"/"                   return '/'
"."                   return '.'
";"                   return ';'
"-"                   return '-'
"+"                   return '+'
"++"                  return 'incremento'
"--"                  return 'decremento'
"*"                   return '*'
"<"                   return '<'
">"                   return '>'
"<="                  return '<='
">="                  return '>='
"=="                  return '=='
"!="                  return '!='
"||"                  return '||'
"&&"                  return '&&'
"!"                   return '!'
"="                   return '='
"("                   return '('
")"                   return ')'  
"["                   return '['
"]"                   return ']'
"{"                   return '{'
"}"                   return '}'
"true"                return 'true'
"false"               return 'false'
"Console"             return 'print'
"if"                  return 'if'
"else"                return 'else'
"break"               return 'break'
"continue"            return 'continue'
"while"               return 'while'
"bool"                return 'bool'
"float"              return 'float'
"int"              return 'int'
"for"              return 'for'
"char"              return 'char'
"string"              return 'String'
"void"                return 'void'
"public"              return 'public'

"default"             return 'default'
"private"             return 'private'
"main"                return 'main'
"switch"              return 'switch'
"case"                return 'case'
"break"               return 'break'
"return"               return 'return'
"continue"            return 'continue'
"Console"             return 'console'
"write"               return 'write'
"do"                  return 'do'
{identifier}          return 'identifier'
<<EOF>>	          return 'EOF'
/lex
%left 'else'
%left '||'
%left '&&'
%left '==', '!='
%left '>=', '<=', '<', '>'
%left '+' '-'
%left '*' '/'
%right '!'
%left UMENOS

%start INICIO

%%


INICIO : INSTRUCCIONES EOF {$$= new Tree($1);   console.log("ya");return $$; } ;

INSTRUCCIONES:INSTRUCCIONES INSTRUCCION { $1.push($2); $$ = $1;  }
              |INSTRUCCION    {$$ =[$1];}
              ;
//declaracion metodos


INSTRUCCION : 'void''main' '(' ')'   BLOCK_CONT  {$$=new Main( this._$.first_line,this._$.first_column ,$2,$5); return $$;} 
             |  'void' 'identifier'  '(' PARAMETRO_METODO ')'   BLOCK_CONT {$$=new void_parametros( this._$.first_line,this._$.first_column ,$2,$4,$6);return $$;} 
             | 'void'  'identifier' '('  ')'  BLOCK_CONT   {$$=new void_vacio( this._$.first_line,this._$.first_column ,$1,$5);return $$;} 
             |  TIPO_PARAMETRO  'identifier'  '('  PARAMETRO_METODO  ')' BLOCK_CONT_P   {$$=new FuncionParams( this._$.first_line,this._$.first_column ,$1,$2,$4,$6);return $$;} 
             |  TIPO_PARAMETRO  'identifier'  '('  ')' BLOCK_CONT_P {$$=new FunctionVacio( this._$.first_line,this._$.first_column ,$1,$2,$5); $$;} 
             |DECLARACION_V {$$ =$1;}
            

;  

VARIABLE:
VARIABLE ',' VARIABLES  { $1.push($3); $$ = $1; }| VARIABLES {$$ =[$1];}

;
VARIABLES: 'identifier'  {$$ =$1;} | 'identifier' '=' EXPRESION   {$$=new Asigna( this._$.first_line,this._$.first_column ,$1,$3);} 

;

PARAMETRO_METODO: PARAMETRO_METODO ',' PARAMETRO_MCONT { $1.push($3); $$ = $1; }
                | PARAMETRO_MCONT  { $$ = [$1]; }
;
PARAMETRO_MCONT: TIPO_PARAMETRO 'identifier'  {$$=new ID_PARAMETRO( this._$.first_line,this._$.first_column ,$2);} 

;
TIPO_PARAMETRO : 'int'      {$$=new TipoVar( this._$.first_line,this._$.first_column ,$1);} 
|'String'  {$$=new TipoVar( this._$.first_line,this._$.first_column ,$1);}
|'float'   {$$=new TipoVar( this._$.first_line,this._$.first_column ,$1);}
|'bool'  {$$=new TipoVar( this._$.first_line,this._$.first_column ,$1);}
|'char'  {$$=new TipoVar( this._$.first_line,this._$.first_column ,$1);}
            
;

EXPRESION :  '-' EXPRESION %prec UMENOS	      {$$=new Conditional('-',$2 ,this._$.first_line,this._$.first_column );} 

          | '!' EXPRESION	                   {$$=new Conditional('-',$2, this._$.first_line,this._$.first_column );} 
  
          | EXPRESION '+' EXPRESION        {$$=new Operacion($1,'+',$3 ,this._$.first_line,this._$.first_column );} 

          | EXPRESION '-' EXPRESION     {$$=new Operacion($1,'-',$3, this._$.first_line,this._$.first_column );}
          | EXPRESION '*' EXPRESION    {$$=new Operacion($1,'*',$3 ,this._$.first_line,this._$.first_column );}
          | EXPRESION '/' EXPRESION     {$$=new Operacion($1,'/',$3, this._$.first_line,this._$.first_column );}
          | EXPRESION '<' EXPRESION    {$$=new Relational($1,'<',$3, this._$.first_line,this._$.first_column );}
          | EXPRESION '>' EXPRESION   {$$=new Relational($1,'>',$3 ,this._$.first_line,this._$.first_column );}
          | EXPRESION '>=' EXPRESION    {$$=new Relational($1,'>=',$3, this._$.first_line,this._$.first_column );}
          | EXPRESION '<=' EXPRESION    {$$=new Relational($1,'<=',$3 ,this._$.first_line,this._$.first_column );}
          | EXPRESION '==' EXPRESION    {$$=new Relational($1,'==',$3, this._$.first_line,this._$.first_column );}
          | EXPRESION '!=' EXPRESION   {$$=new Relational($1,'!=',$3, this._$.first_line,this._$.first_column );}
          | EXPRESION '||' EXPRESION   {$$=new Relational($1,'||',$3 ,this._$.first_line,this._$.first_column );}
         
          | EXPRESION '&&' EXPRESION   {$$=new Relational($1,'&&',$3 ,this._$.first_line,this._$.first_column );}
         
          |'decimal'     {$$=new Primitivo($1,this._$.first_line,this._$.first_column );}
         
          |'true'     {$$=new Primitivo($1,this._$.first_line,this._$.first_column );}
          |'false'     {$$=new Primitivo($1,this._$.first_line,this._$.first_column );}
          |'cadena'     {$$=new Primitivo($1,this._$.first_line,this._$.first_column );}
          |'identifier'     {$$=new Primitivo($1,this._$.first_line,this._$.first_column );}
          |'digito'    {$$=new Primitivo($1,this._$.first_line,this._$.first_column );}
          |'caracter'              {$$=new Primitivo($1,this._$.first_line,this._$.first_column );}
          |'(' EXPRESION ')'      {$$ =$2;}
      
          ;

  METODO_EXP:

  'identifier' '('L_exp  ')'
  |'identifier' '(' ')'
  |'identifier'
  ;        

  L_exp: L_exp ','  EXPRESION
  |EXPRESION
  ;
DECLARACION_V:
TIPO VARIABLE ';'{$$=new DECLA(this._$.first_line,this._$.first_column,$1,$2 );}
;

Asignacion:
'=' EXPRESION
;
CONT:  CONSOLE  {$$ = $1; return $$;}|WHILE {$$ = $1;} |DO {$$ = $1;}|SWITCH  {$$ = $1;}|BREAK  {$$ = $1;}|CONTINIUE   {$$ = $1;}
    |RETURN_SINP   {$$ = $1;}|'identifier'  INCREMENT      {$$ = $2;} |'identifier'  DECREMENT  {$$ = $2;}|LLAMADA_IDVALROES {$$ = $1;}|FOR  {$$ = $1;}|IF  {$$ = $1;}
    |'identifier' '(' ')' ';' {$$ = $1} |DECLARACION_V   {$$ = $1;} |'identifier' Asignacion   {$$ = $1;}

;

CONT_P:  CONSOLE  {$$ = $1;}  |WHILE   {$$ = $1;} |DO  {$$ = $1;}|SWITCH  {$$ = $1;} |BREAK  {$$ = $1;} |CONTINIUE  {$$ = $1;}  
    |'identifier'  INCREMENT   {$$ = $2;} |RETURN_CONP   {$$ = $1;}  |'identifier'  DECREMENT  {$$ = $2;} |LLAMADA_IDVALROES  {$$ = $1;}| FOR  {$$ = $1;} |IF  {$$ = $1;} 
    |'identifier' '(' ')' ';' {$$ = $1;}|DECLARACION_V {$$ = $1;} 

;

IF:
'if' CONDITION BLOCK_CONT  {$$ = new IFS($2, $3, [], this._$.first_line, this._$.first_column);}| 'if' CONDITION BLOCK_CONT 'else' BLOCK_CONT 
 {$$ = new If($2, $3, $5, this._$.first_line, this._$.first_column);}| 'if' CONDITION BLOCK_CONT 'else' BLOCK_CONT IF {$$ = 
 new If($2, $3, [$5], this._$.first_line, this._$.first_column);}

;
FOR: 'for' '(' Dec_For  EXPRESION ';' 'identifier' INCREMENT ')'BLOCK_CONT {$$ = new Increment($1,$3, $4,$5,$6,this._$.first_line,
 this._$.first_column);}
|'for' '(' Dec_For  EXPRESION ';' 'identifier' DECREMENT ')'BLOCK_CONT   {$$ = new Increment($1,$3, $4,$5,$6,this._$.first_line, this._$.first_column);}
;
Dec_For:    
TIPO 'identifier' '=' EXPRESION ';'  {$$ = new DecFor( this._$.first_line, this._$.first_column,$1,$2,$3);}
;

LLAMADA_IDVALROES :
'identifier' '(' ListaValores')' ';' {$$ = new DecFor( this._$.first_line, this._$.first_column,$1,$2);}

;
ListaValores :
ListaValores ',' EXPRESION  { $1.push($3); $$ = $1; }
|EXPRESION  {$$ = [$1];} 

;
INCREMENT  :
'incremento'  ';'  {$$ = new Increment( this._$.first_line, this._$.first_column,$1);}
;
DECREMENT :
'decremento'     ';'  {$$ = new Decrement( this._$.first_line, this._$.first_column,$1);}
;
BREAK:
'break' ';'  {$$ = new breaks( this._$.first_line, this._$.first_column,$1);}

;
CONTINUE:
'continue' ';' {$$ = new continues( this._$.first_line, this._$.first_column,$1);}
;
RETURN_SINP: 'return' ';' {$$ = new returnN( this._$.first_line, this._$.first_column,$1);}

;
RETURN_CONP: 'return' EXPRESION ';' {$$ = new ReturnPs( this._$.first_line, this._$.first_column,$1,$2);}
;  



WHILE :

'while' CONDITION BLOCK_CONT  { $$ = new WHILES(this._$.first_line , this._$.first_column , $1,$2,$3 );}
;


CONSOLE:  'console' '.' 'write' '(' EXPRESION ')' ';' { $$ = new Console(this._$.first_line , this._$.first_column , $5 );}

;




CONDITION : '(' EXPRESION ')' {$$ = $2;}
;
SWITCH:

'switch' EXPRESION '{'  CASE  '}'//NO DA CLAVO XD 
 { $$ = new Switchs(this._$.first_line , this._$.first_column , $1,$2,$4 );}

;
CASE:

CASE  CASES {$$ =$2;}
|CASES{$$ =$1;}

;
CASES :
'case' EXPRESION ':' CONT     { $$ = new Cases(this._$.first_line , this._$.first_column , $1,$2,$4 );}

|'case' EXPRESION ':'  { $$ = new Cases(this._$.first_line , this._$.first_column , $1,$2,$3 );}
|'default' EXPRESION  ':' 'CONT'  { $$ = new Cases(this._$.first_line , this._$.first_column , $1,$2,$4 );}
|'default'  EXPRESION ':'  { $$ = new Cases(this._$.first_line , this._$.first_column , $1,$2,$3 );}

;


DO://4545


'do' BLOCK_CONT 'while ' CONDITION ';'  {$$=new  DOs( this._$.first_line,this._$.first_column,$1,$2,$3,$4 );} 
;


 BLOCK_CONT :'{'   CONT '}'{$$ =$2;}
  | '{' '}'{$$ =[];}
;



 BLOCK_CONT_P :'{'   CONT_P '}' {$$ =$2;}
  | '{' '}' {$$ =[];}   
;


