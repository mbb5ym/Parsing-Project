grammar parsingProject;

// START RULE
program
    : statement+
    | expression+
    | NEW_LINE+
    | EOF
    ;


// RULES:
/*-------------------------------STATEMENT---------------------------------------*/
statement :
    assignmentStatement+
    | conditionalStatement+
    | iterativeStatement+
    ;

assignmentStatement : ID ASSIGNMENT_TOKEN WS* expression WS* | NEW_LINE;
conditionalStatement :
    ((IF | ELIF) WS* expression WS* COLON WS*)
    | ((IF | ELIF) WS* OPEN_PAREN WS* expression WS* CLOSE_PAREN WS* COLON WS*)
    | (ELSE COLON WS*)
    ;
iterativeStatement :
    (FOR ID IN rangeFunction COLON) statement* BREAK?
    | (WHILE expression (CONDITIONAL_OP expression)* COLON) statement* BREAK?
    ;
/*-------------------------------------------------------------------------------*/

/*------------------------------EXPRESSION---------------------------------------*/
expression :
    WS*
    (ID | INTEGER | FLOAT | STRING) WS*
    (expressionOperator WS* (ID | INTEGER | FLOAT | STRING))*
    | OPEN_PAREN WS* (ID | INTEGER | FLOAT | STRING) WS*
    (expressionOperator WS* (ID | INTEGER | FLOAT | STRING))* WS* CLOSE_PAREN
    | function
    | statement
    WS*
    ;
/*-------------------------------------------------------------------------------*/

/*--------------------------------FUNCTION---------------------------------------*/
function :
	printFunction |
	 rangeFunction
	| strFunction
	| intFunction
	;

printFunction : PRINT OPEN_PAREN WS* (STRING | INTEGER | ID | strFunction)
	(ARITHMETIC_OP (STRING | INTEGER | ID | strFunction))* WS* CLOSE_PAREN ;
rangeFunction : RANGE OPEN_PAREN WS* expression WS*
	COMMA WS* expression (ARITHMETIC_OP expression)* WS* CLOSE_PAREN ;
strFunction : STR OPEN_PAREN WS* (ID | STRING)
	(WS* ARITHMETIC_OP WS* (ID | STRING))* WS* CLOSE_PAREN ;
intFunction : INT OPEN_PAREN WS* (INTEGER | ID)
	(ARITHMETIC_OP (INTEGER | ID))* WS* CLOSE_PAREN WS* ;

/*-------------------------------------------------------------------------------*/

/*--------------------------------OPERATOR---------------------------------------*/
expressionOperator :
    ARITHMETIC_OP
    | CONDITIONAL_OP
    ;
/*-------------------------------------------------------------------------------*/






//TOKENS:
/*--------------------------------ASSIGNMENT-------------------------------------*/
ASSIGNMENT_TOKEN :
    EQUALS | PLUS_EQUALS | MINUS_EQUALS |
    TIMES_EQUALS | DIVIDE_EQUALS |
    EXPONENT_EQUALS | MOD_EQUALS
    ;
/*-------------------------------------------------------------------------------*/

/*----------------------------------OPERATOR-------------------------------------*/
ARITHMETIC_OP :
    PLUS | MINUS | TIMES | DIV |
    FLOOR_DIV | MOD | EXPONENT
    ;
CONDITIONAL_OP :
    LT | LE | GT | GE | EQ | NE | AND | OR
    ;
/*-------------------------------------------------------------------------------*/

/*----------------------------------KEY WORD-------------------------------------*/
//conditionals
IF : 'if' ;
ELIF : 'elif' ;
ELSE : 'else' ;
//iteratives
FOR : 'for' ;
WHILE : 'while' ;
//evaluators
AND : 'and' ;
OR : 'or' ;
//booleans
TRUE : 'True' ;
FALSE : 'False' ;
//function
PRINT : 'print' ;
RANGE : 'range' ;
STR : 'str' ;
INT : 'int' ;
//misc.
IN : 'in' ;
RETURN : 'return' ;
BREAK : 'break' -> skip;
CONTINUE : 'continue' ;
NOT : 'not' ;
NONE : 'None' ;
/*-------------------------------------------------------------------------------*/

/*----------------------------------DATA TYPES-----------------------------------*/
INTEGER : DIGIT+ ;
FLOAT : DIGIT*  '.' DIGIT+ ;
STRING : '"' (~["\\\r\n] | '\\')* '"' ;
/*-------------------------------------------------------------------------------*/

/*------------------------------------UTITLITY-----------------------------------*/
WS : [ \n]+ -> skip;
TAB : ('\t')+ -> skip;
NEW_LINE : ('\n')+ ;
DIGIT : '-'? [0-9] ;
OPEN_PAREN : '(' ;
CLOSE_PAREN : ')' ;
COLON : ':' ;
COMMA : ',' ;
/*-------------------------------------------------------------------------------*/

/*--------------------------------RUBRIK REQUIRMENTS-----------------------------*/
// identifiers
ID : [a-zA-Z_][a-zA-Z0-9_]* ;
// arithmetic operators
PLUS : '+' ;
MINUS : '-' ;
TIMES : '*' ;
DIV : '/' ;
FLOOR_DIV : '//' ;
MOD : '%' ;
EXPONENT : '**' ;
// assignment operators
EQUALS : '=' ;
PLUS_EQUALS : '+=' ;
MINUS_EQUALS : '-=' ;
TIMES_EQUALS : '*=' ;
DIVIDE_EQUALS : '/=' ;
EXPONENT_EQUALS : '**=' ;
MOD_EQUALS : '%=' ;
// conditional statements
LT : '<' ;
LE : '<=' ;
GT : '>' ;
GE : '>=' ;
EQ : '==' ;
NE : '!=' ;
// comments
COMMENT : '#' ~[\n\r\f]* -> skip ;
/*-------------------------------------------------------------------------------*/



