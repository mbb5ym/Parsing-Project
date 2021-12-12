grammar parsingProject;

// http://blog.anvard.org/articles/2016/03/15/antlr-python.html for tabs and variable defs

expression
   : multiplyingExpression ((PLUS | MINUS) multiplyingExpression)*
   ;

multiplyingExpression
   : number ((TIMES | DIV) number)*
   ;

number
   : MINUS? DIGIT +
   ;

//TOKENS

WS
    : (' ' | '\n' )+ -> skip
    ;

TAB
    : ('\t')
    ;


// conditional blocks
IF
   : 'if'
   ;

ELSE
   : 'else'
   ;

// variable definitions in python?

// all possible names for a variable
ID
    : [a-z][a-zA-Z0-9_]*
    ;


// iterative loops
WHILE
   : 'while'
   ;

FOR
   : 'for'
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




// comments
COMMENT
   : '#' ~[\n]* -> skip
   ;

// syntax could be wrong on this with brackets
MULTI_LINE_COMMENT
   : '"""' ~["""] -> skip
   ;