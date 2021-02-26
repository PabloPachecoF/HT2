/********************************************* PARTE LÉXICA *********************************************/
/*********Área de definiciones*********/
%lex

%options case-insensitive

%%

/***Caracteres del lenguaje***/
"+"                         return 'MAS';
"-"                         return 'MENOS';
"*"                         return 'MULT';
"/"                         return 'DIV';

"("                         return 'PARABRE';
")"                         return 'PARCIERRA';

/***Otras ER***/ 
[a-zA-ZñÑ]*[0-9]*      	    return 'ID';

/* Espacios en blanco */
[ \r\t]+                    {/*Ignorar espacios en blanco*/}
\n                          {/*Ignorar espacios en blanco*/}

<<EOF>>                 return 'EOF';

.                       { console.error('Error en análisis léxico'); }
/lex

/*********Asociación de operadores y precedencias*********/

%left 'MAS' 'MENOS'
%left 'MULT' 'DIV'

%start INIT

%%
/*********Área de producciones*********/

INIT
	: ExprE EOF { console.log('Expresión final: ');}
;

ExprE
	: ExprE MAS ExprT
	| ExprE MENOS ExprT
	| ExprT
;

ExprT
	: ExprT MULT ExprF
    | ExprT DIV ExprF
    | ExprF
;

ExprF
	: PARABRE expresion PARCIERRA   { $$ = $2; }
    | ID                            { $$ = $1; }
;