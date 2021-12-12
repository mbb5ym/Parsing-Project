# Generated from parsingProject.g4 by ANTLR 4.9
from antlr4 import *
if __name__ is not None and "." in __name__:
    from .parsingProjectParser import parsingProjectParser
else:
    from parsingProjectParser import parsingProjectParser

# This class defines a complete listener for a parse tree produced by parsingProjectParser.
class parsingProjectListener(ParseTreeListener):

    # Enter a parse tree produced by parsingProjectParser#expression.
    def enterExpression(self, ctx:parsingProjectParser.ExpressionContext):
        pass

    # Exit a parse tree produced by parsingProjectParser#expression.
    def exitExpression(self, ctx:parsingProjectParser.ExpressionContext):
        pass


    # Enter a parse tree produced by parsingProjectParser#multiplyingExpression.
    def enterMultiplyingExpression(self, ctx:parsingProjectParser.MultiplyingExpressionContext):
        pass

    # Exit a parse tree produced by parsingProjectParser#multiplyingExpression.
    def exitMultiplyingExpression(self, ctx:parsingProjectParser.MultiplyingExpressionContext):
        pass


    # Enter a parse tree produced by parsingProjectParser#number.
    def enterNumber(self, ctx:parsingProjectParser.NumberContext):
        pass

    # Exit a parse tree produced by parsingProjectParser#number.
    def exitNumber(self, ctx:parsingProjectParser.NumberContext):
        pass



del parsingProjectParser