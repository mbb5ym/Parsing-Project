grammar parsingProject;

// http://blog.anvard.org/articles/2016/03/15/antlr-python.html for tabs and variable defs

expression
   : comment
   ;

multiplyingExpression
   : number ((TIMES | DIV) number)*
   ;

number
   : MINUS? DIGIT +
   ;


// Custom rules
comment
   : COMMENT
   ;






//TOKENS

//KEYWORDS
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
//etc.
IN : 'in' ;
RETURN : 'return' ;
BREAK : 'break' ;
CONTINUE : 'continue' ;
NONE : 'None' ;


// comments
COMMENT
   : '#' ~[\n\r\f]* -> skip
   ;

WS
    : (' ' | '\n' )+ -> skip
    ;

TAB
    : ('\t')
    ;


// conditional blocks


// variable definitions in python?

// all possible names for a variable
ID
    : [a-zA-Z0-9_]*
    ;





// arithmetic operators
PLUS
   : '+'
   ;

MINUS
   : '-'
   ;

TIMES
   : '*'
   ;

DIV
   : '/'
   ;

MOD
   : '%'
   ;

// ^ is not an arithmetic operator in python, exponential operator is ** in python, ^ is bitwise XOR
POWER
   : '^'
   ;

// WAS NOT A REQUIREMENT BUT GOOD TO HAVE IMO, WE CAN REMOVE IF YOU GUYS WANT
DIGIT
   : ('0' .. '9')
   ;

// assignment operators
EQUALS
   : '='
   ;

PLUS_EQUALS
   : '+='
   ;

MINUS_EQUALS
   : '-='
   ;

TIMES_EQUALS
   : '*='
   ;

DIVIDE_EQUALS
   : '/='
   ;
 
// ^= is not an assignment operator in python, exponential operator is **= in python, ^= is bitwise
POWER_EQUALS
   : '^='
   ;

MOD_EQUALS
   : '%='
   ;



// conditional statements
LT
   : '<'
   ;

LE
   : '<='
   ;

GT
   : '>'
   ;

GE
   : '>='
   ;

EQ
   : '=='
   ;

NE
   : '!='
   ;

NOT
   : 'not'
   ;


