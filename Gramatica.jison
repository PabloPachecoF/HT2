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
[a-zA-ZñÑ]*[0-9]*\b    	    return 'ID';

/* Espacios en blanco */
[ \r\t]+                    {/*Ignorar espacios en blanco*/}
\n                          {/*Ignorar espacios en blanco*/}

<<EOF>>                 return 'EOF';

.                       { console.error('Error en análisis léxico'); }
/lex

/********************************************* PARTE SINTÁCTICA *********************************************/
/*********Área declaraciones*********/
%{
    //Variable contadora
    var cont = 0;

    //Variable temporal
    var temp = "t" + cont;

    //Variable cadena
    var cad = temp;

    //Función para crear nuevos temporales
    function Newtemp()
    {
        temp = "t" + cont;
        cont++;
    }
%}

/*********Asociación de operadores y precedencias*********/

%left 'MAS' 'MENOS'
%left 'MULT' 'DIV'

%start INIT

%%
/*********Área de producciones*********/

INIT
	: ExprE EOF { /*console.log('Expresión final: \n' + $1);*/}
;

ExprE
	: ExprE MAS ExprT               { Newtemp();
                                      console.log(temp + " = " + $1 + "+" + $3);
                                      $$ = temp;
                                    }
	| ExprE MENOS ExprT             { Newtemp();
                                      console.log(temp + " = " + $1 + "-" + $3);
                                      $$ = temp;
                                    }
	| ExprT                         { $$ = $1; }
;

ExprT
	: ExprT MULT ExprF              { Newtemp();
                                      console.log(temp + " = " + $1 + "*" + $3);
                                      $$ = temp;
                                    }
    | ExprT DIV ExprF               { Newtemp();
                                      console.log(temp + " = " + $1 + "/" + $3);
                                      $$ = temp;
                                    }
    | ExprF                         { $$ = $1; }
;

ExprF
	: PARABRE ExprE PARCIERRA       { $$ = $2; }
    | ID                            { $$ = $1; }
;