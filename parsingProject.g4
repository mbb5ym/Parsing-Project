grammar parsingProject;


/* TODO:
convert function tokens to function rules
*/

/* FROM HIS EXAMPLE */
//multiplyingExpression
//   : number ((TIMES | DIV) number)*
//   ;
//
//number
//   : MINUS? DIGIT +
//   ;


// RULES:
program
    : statement+
    | expression+
    | NEW_LINE+
    | EOF
    ;

/* STATEMENTS */
statement :
    assignmentStatement+
    | conditionalStatement+
    | iterativeStatement+
    ;
assignmentStatement : ID ASSIGNMENT_TOKEN WS* expression WS* | NEW_LINE; // TODO  had * after newline
conditionalStatement :
    ((IF | ELIF) WS* expression WS* COLON WS*)
    | ((IF | ELIF) WS* OPEN_PAREN WS* expression WS* CLOSE_PAREN WS* COLON WS*)
    | (ELSE COLON WS*)
    ;
iterativeStatement :
    (FOR ID IN rangeFunction COLON) statement* BREAK?
    | (WHILE expression (CONDITIONAL_OP expression)* COLON) statement* BREAK?
    ;


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


function :
	printFunction |
	 rangeFunction
	| strFunction
	| intFunction
	;


/* FUNCTIONS */
printFunction : PRINT OPEN_PAREN WS* (STRING | INTEGER | ID | strFunction) (ARITHMETIC_OP (STRING | INTEGER | ID | strFunction))* WS* CLOSE_PAREN ;
rangeFunction : RANGE OPEN_PAREN WS* expression WS*
	COMMA WS* expression (ARITHMETIC_OP expression)* WS* CLOSE_PAREN ;
strFunction : STR OPEN_PAREN WS* (ID | STRING) (WS* ARITHMETIC_OP WS* (ID | STRING))* WS* CLOSE_PAREN ;
intFunction : INT OPEN_PAREN WS* (INTEGER | ID) (ARITHMETIC_OP (INTEGER | ID))* WS* CLOSE_PAREN WS* ;


/* OPERATORS */
expressionOperator :
    ARITHMETIC_OP
    | CONDITIONAL_OP
    ;


//TOKENS:

/* ASSIGNMENT */
ASSIGNMENT_TOKEN :
    EQUALS | PLUS_EQUALS | MINUS_EQUALS |
    TIMES_EQUALS | DIVIDE_EQUALS |
    EXPONENT_EQUALS | MOD_EQUALS
    ;


/* OPERATOR TYPES */
ARITHMETIC_OP :
    PLUS | MINUS | TIMES | DIV |
    FLOOR_DIV | MOD | EXPONENT
    ;
CONDITIONAL_OP :
    LT | LE | GT | GE | EQ | NE | AND | OR
    ;


/* KEYWORDS: */
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
//misc.
IN : 'in' ;
RETURN : 'return' ;
BREAK : 'break' ;
CONTINUE : 'continue' ;
NOT : 'not' ;
NONE : 'None' ;


/* DATA TYPES */
INTEGER : DIGIT+ ;
FLOAT : DIGIT*  '.' DIGIT+ ;
STRING : '"' (~["\\\r\n] | '\\')* '"' ; // removed an extra " in [..]


PRINT : 'print' ;
RANGE : 'range' ;
STR : 'str' ;
INT : 'int' ;



/* UTILITY */
WS : [ \n]+ -> skip;
TAB : ('\t')+ -> skip;
NEW_LINE : ('\n')+ ;
DIGIT : '-'? [0-9] ;
OPEN_PAREN : '(' ;
CLOSE_PAREN : ')' ;
COLON : ':' ;
COMMA : ',' ;


/* RUBRIK REQUIREMENTS */
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
COMMENT : '#' ~[\n\r\f]* -> skip;




