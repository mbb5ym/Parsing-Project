# Generated from parsingProject.g4 by ANTLR 4.9.2
from antlr4 import *
if __name__ is not None and "." in __name__:
    from .parsingProjectParser import parsingProjectParser
else:
    from parsingProjectParser import parsingProjectParser

# This class defines a complete listener for a parse tree produced by parsingProjectParser.
class parsingProjectListener(ParseTreeListener):

    # Enter a parse tree produced by parsingProjectParser#program.
    def enterProgram(self, ctx:parsingProjectParser.ProgramContext):
        pass

    # Exit a parse tree produced by parsingProjectParser#program.
    def exitProgram(self, ctx:parsingProjectParser.ProgramContext):
        pass


    # Enter a parse tree produced by parsingProjectParser#statement.
    def enterStatement(self, ctx:parsingProjectParser.StatementContext):
        pass

    # Exit a parse tree produced by parsingProjectParser#statement.
    def exitStatement(self, ctx:parsingProjectParser.StatementContext):
        pass


    # Enter a parse tree produced by parsingProjectParser#assignmentStatement.
    def enterAssignmentStatement(self, ctx:parsingProjectParser.AssignmentStatementContext):
        pass

    # Exit a parse tree produced by parsingProjectParser#assignmentStatement.
    def exitAssignmentStatement(self, ctx:parsingProjectParser.AssignmentStatementContext):
        pass


    # Enter a parse tree produced by parsingProjectParser#conditionalStatement.
    def enterConditionalStatement(self, ctx:parsingProjectParser.ConditionalStatementContext):
        pass

    # Exit a parse tree produced by parsingProjectParser#conditionalStatement.
    def exitConditionalStatement(self, ctx:parsingProjectParser.ConditionalStatementContext):
        pass


    # Enter a parse tree produced by parsingProjectParser#iterativeStatement.
    def enterIterativeStatement(self, ctx:parsingProjectParser.IterativeStatementContext):
        pass

    # Exit a parse tree produced by parsingProjectParser#iterativeStatement.
    def exitIterativeStatement(self, ctx:parsingProjectParser.IterativeStatementContext):
        pass


    # Enter a parse tree produced by parsingProjectParser#expression.
    def enterExpression(self, ctx:parsingProjectParser.ExpressionContext):
        pass

    # Exit a parse tree produced by parsingProjectParser#expression.
    def exitExpression(self, ctx:parsingProjectParser.ExpressionContext):
        pass


    # Enter a parse tree produced by parsingProjectParser#function.
    def enterFunction(self, ctx:parsingProjectParser.FunctionContext):
        pass

    # Exit a parse tree produced by parsingProjectParser#function.
    def exitFunction(self, ctx:parsingProjectParser.FunctionContext):
        pass


    # Enter a parse tree produced by parsingProjectParser#printFunction.
    def enterPrintFunction(self, ctx:parsingProjectParser.PrintFunctionContext):
        pass

    # Exit a parse tree produced by parsingProjectParser#printFunction.
    def exitPrintFunction(self, ctx:parsingProjectParser.PrintFunctionContext):
        pass


    # Enter a parse tree produced by parsingProjectParser#rangeFunction.
    def enterRangeFunction(self, ctx:parsingProjectParser.RangeFunctionContext):
        pass

    # Exit a parse tree produced by parsingProjectParser#rangeFunction.
    def exitRangeFunction(self, ctx:parsingProjectParser.RangeFunctionContext):
        pass


    # Enter a parse tree produced by parsingProjectParser#strFunction.
    def enterStrFunction(self, ctx:parsingProjectParser.StrFunctionContext):
        pass

    # Exit a parse tree produced by parsingProjectParser#strFunction.
    def exitStrFunction(self, ctx:parsingProjectParser.StrFunctionContext):
        pass


    # Enter a parse tree produced by parsingProjectParser#intFunction.
    def enterIntFunction(self, ctx:parsingProjectParser.IntFunctionContext):
        pass

    # Exit a parse tree produced by parsingProjectParser#intFunction.
    def exitIntFunction(self, ctx:parsingProjectParser.IntFunctionContext):
        pass


    # Enter a parse tree produced by parsingProjectParser#expressionOperator.
    def enterExpressionOperator(self, ctx:parsingProjectParser.ExpressionOperatorContext):
        pass

    # Exit a parse tree produced by parsingProjectParser#expressionOperator.
    def exitExpressionOperator(self, ctx:parsingProjectParser.ExpressionOperatorContext):
        pass



del parsingProjectParser