grammar parsingProject;


/* TODO:
1) finish adding tokens for miscelaneous characters such as ( { " , :
2) create tokens for compound things such as strings or function calls ...
3) write rules to handle these changes and complete lines like an assignment or if satatement
4) address any issues with context switches - https://tobebuilds.com/parsing-string-interpolations-with-antlr4/
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

expression
   : comment
   ;


comment
   : COMMENT
   ;




//TOKENS:

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

/* EXPRESSION */
EXPR : (ID | INTEGER | FLOAT | STRING) WS OPERATOR WS (ID | INTEGER | FLOAT | STRING) ;


/* OPERATOR TYPES */
OPERATOR : ARITHMETIC_OP | ASSIGNMENT_OP | CONDITIONAL_OP;
ARITHMETIC_OP :
    PLUS | MINUS | TIMES | DIV |
    FLOOR_DIV | MOD | EXPONENT
    ;
ASSIGNMENT_OP :
    EQUALS | PLUS_EQUALS | MINUS_EQUALS |
    TIMES_EQUALS | DIVIDE_EQUALS |
    EXPONENT_EQUALS | MOD_EQUALS
    ;
CONDITIONAL_OP :
    LT | LE | GT | GE | EQ | NE
    ;


/* DATA TYPES */
// numeric
INTEGER : DIGIT+ ;
FLOAT : DIGIT*  '.' DIGIT+ ;
// strings
STRING : '"' (~["\\\r\n"'] | '\\')* '"' ;


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
COMMENT : '#' ~[\n\r\f]* -> skip ;

/* UTILITY */
// white space
WS : (' ')* -> skip ;
TAB : ('\t') ;
NEW_LINE : ('\n') -> skip ;
DIGIT : [0-9] ;
COLON : ':' ;




//functions
PRINT : 'print('WS (ID | STRING)+ (WS '+' WS (ID | STRING))* WS')' ;
RANGE : 'range('WS (ID | INTEGER) WS ',' WS (ID | INTEGER) WS ')' ;
STR : 'str(' WS (ID | STRING)+ (WS '+' WS (ID | STRING))* WS  ')' ;
// TODO INT
INT : 'int(' (DIGIT | ID) ')' ;














