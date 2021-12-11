grammar parsingProject;

// used to help compilation, will be changed later
expression
   : multiplyingExpression ((PLUS | MINUS) multiplyingExpression)*
   ;

multiplyingExpression
   : number ((TIMES | DIV) number)*
   ;

number
   : MINUS? DIGIT +
   ;



// conditional blocks
IF
   : 'if'
   ;

ELSE
   : 'else'
   ;

// variable definitions in python?




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
IS_LESS
   : '<'
   ;

IS_LESS_OR_EQUAL
   : '<='
   ;

IS_GREATER
   : '>'
   ;

IS_GREATER_OR_EQUAL
   : '>='
   ;

IS_EQUAL
   : '=='
   ;

IS_NOT_EQUAL
   : '!='
   ;




// comments
SINGLE_LINE_COMMENT
   : '#'
   ;

MULTI_LINE_COMMENT
   : '"""'
   ;