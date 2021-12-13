grammar parsingProject;


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
//functions
PRINT : 'print' ;
RANGE : 'range' ;
//misc.
IN : 'in' ;
RETURN : 'return' ;
BREAK : 'break' ;
CONTINUE : 'continue' ;
NOT : 'not' ;
NONE : 'None' ;




/* RUBRIK REQUIREMENTS */
// identifiers
ID : [a-zA-Z0-9_]* ;
// arithmetic operators
PLUS : '+' ;
MINUS : '-' ;
TIMES : '*' ;
DIV : '/' ;
MOD : '%' ;
EXPONENT : '**' ;
// assignment operators
EQUALS : '=' ;
PLUS_EQUALS : '+=' ;
MINUS_EQUALS : '-=' ;
TIMES_EQUALS : '*=' ;
DIVIDE_EQUALS : '/=' ;
POWER_EQUALS : '**=' ;
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
WS : (' ')+ -> skip ;
TAB : ('\t') ;
NEW_LINE : ('\n') ;
// numeric
DIGIT : ('0' .. '9') ;
// strings





