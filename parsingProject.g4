grammar parsingProject;


/* TODO:
convert larger umbrella tokens to rules
/*

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
    : statement
    | expression
    | EOF
    ;

/* STATEMENTS */
statement :
    assignmentStatement
    | conditionalStatement
    ;
assignmentStatement : ID ASSIGNMENT_TOKEN WS* expression WS* ;
conditionalStatement :
    ((IF | ELIF) WS* expression WS* COLON WS*)
    | ((IF | ELIF) WS* OPEN_PAREN WS* expression WS* CLOSE_PAREN WS* COLON WS*)
    | (ELSE COLON WS*)
    ;


expression :
    WS*
    ((ID | INTEGER | FLOAT | STRING) (WS* EXPRESSION_OPERATOR WS* (ID | INTEGER | FLOAT | STRING))*)
    | ( OPEN_PAREN WS* (ID | INTEGER | FLOAT | STRING) (WS* EXPRESSION_OPERATOR WS* (ID | INTEGER | FLOAT | STRING))* WS* CLOSE_PAREN )
    | ID
    | STRING
    | INTEGER
    | FLOAT
    WS*
    ;








//TOKENS:

/* ASSIGNMENT */
ASSIGNMENT_TOKEN :
    EQUALS | PLUS_EQUALS | MINUS_EQUALS |
    TIMES_EQUALS | DIVIDE_EQUALS |
    EXPONENT_EQUALS | MOD_EQUALS
    ;


/* OPERATORS */
EXPRESSION_OPERATOR :
    ARITHMETIC_OP
    | CONDITIONAL_OP
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
STRING : '"' (~["\\\r\n"'] | '\\')* '"' ;


/* FUNCITONS */
PRINT : 'print('WS (ID | STRING)+ (WS '+' WS (ID | STRING))* WS')' ;
RANGE : 'range('WS (ID | INTEGER) WS ',' WS (ID | INTEGER) WS ')' ;
STR : 'str(' WS (ID | STRING)+ (WS '+' WS (ID | STRING))* WS  ')' ;
INT : 'int(' WS (INTEGER | ID) WS ')' ;


/* UTILITY */
WS : ' '+ -> skip ;
TAB : ('\t') ;
NEW_LINE : ('\n') -> skip;
DIGIT : [0-9] ;
OPEN_PAREN : '(' ;
CLOSE_PAREN : ')' ;
COLON : ':' ;


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



