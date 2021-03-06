// Generated from /usr/local/lib/parserproject1/Parsing-Project/parsingProject.g4 by ANTLR 4.8
import org.antlr.v4.runtime.Lexer;
import org.antlr.v4.runtime.CharStream;
import org.antlr.v4.runtime.Token;
import org.antlr.v4.runtime.TokenStream;
import org.antlr.v4.runtime.*;
import org.antlr.v4.runtime.atn.*;
import org.antlr.v4.runtime.dfa.DFA;
import org.antlr.v4.runtime.misc.*;

@SuppressWarnings({"all", "warnings", "unchecked", "unused", "cast"})
public class parsingProjectLexer extends Lexer {
	static { RuntimeMetaData.checkVersion("4.8", RuntimeMetaData.VERSION); }

	protected static final DFA[] _decisionToDFA;
	protected static final PredictionContextCache _sharedContextCache =
		new PredictionContextCache();
	public static final int
		WS=1, TAB=2, IF=3, ELSE=4, ID=5, WHILE=6, FOR=7, PLUS=8, MINUS=9, TIMES=10, 
		DIV=11, MOD=12, POWER=13, DIGIT=14, NONE=15, EQUALS=16, PLUS_EQUALS=17, 
		MINUS_EQUALS=18, TIMES_EQUALS=19, DIVIDE_EQUALS=20, POWER_EQUALS=21, MOD_EQUALS=22, 
		LT=23, LE=24, GT=25, GE=26, EQ=27, NE=28, NOT=29, AND=30, OR=31, COMMENT=32, 
		MULTI_LINE_COMMENT=33;
	public static String[] channelNames = {
		"DEFAULT_TOKEN_CHANNEL", "HIDDEN"
	};

	public static String[] modeNames = {
		"DEFAULT_MODE"
	};

	private static String[] makeRuleNames() {
		return new String[] {
			"WS", "TAB", "IF", "ELSE", "ID", "WHILE", "FOR", "PLUS", "MINUS", "TIMES", 
			"DIV", "MOD", "POWER", "DIGIT", "NONE", "EQUALS", "PLUS_EQUALS", "MINUS_EQUALS", 
			"TIMES_EQUALS", "DIVIDE_EQUALS", "POWER_EQUALS", "MOD_EQUALS", "LT", 
			"LE", "GT", "GE", "EQ", "NE", "NOT", "AND", "OR", "COMMENT", "MULTI_LINE_COMMENT"
		};
	}
	public static final String[] ruleNames = makeRuleNames();

	private static String[] makeLiteralNames() {
		return new String[] {
			null, null, null, "'if'", "'else'", null, "'while'", "'for'", "'+'", 
			"'-'", "'*'", "'/'", "'%'", "'^'", null, "'None'", "'='", "'+='", "'-='", 
			"'*='", "'/='", "'^='", "'%='", "'<'", "'<='", "'>'", "'>='", "'=='", 
			"'!='", "'not'", "'and'", "'or'"
		};
	}
	private static final String[] _LITERAL_NAMES = makeLiteralNames();
	private static String[] makeSymbolicNames() {
		return new String[] {
			null, "WS", "TAB", "IF", "ELSE", "ID", "WHILE", "FOR", "PLUS", "MINUS", 
			"TIMES", "DIV", "MOD", "POWER", "DIGIT", "NONE", "EQUALS", "PLUS_EQUALS", 
			"MINUS_EQUALS", "TIMES_EQUALS", "DIVIDE_EQUALS", "POWER_EQUALS", "MOD_EQUALS", 
			"LT", "LE", "GT", "GE", "EQ", "NE", "NOT", "AND", "OR", "COMMENT", "MULTI_LINE_COMMENT"
		};
	}
	private static final String[] _SYMBOLIC_NAMES = makeSymbolicNames();
	public static final Vocabulary VOCABULARY = new VocabularyImpl(_LITERAL_NAMES, _SYMBOLIC_NAMES);

	/**
	 * @deprecated Use {@link #VOCABULARY} instead.
	 */
	@Deprecated
	public static final String[] tokenNames;
	static {
		tokenNames = new String[_SYMBOLIC_NAMES.length];
		for (int i = 0; i < tokenNames.length; i++) {
			tokenNames[i] = VOCABULARY.getLiteralName(i);
			if (tokenNames[i] == null) {
				tokenNames[i] = VOCABULARY.getSymbolicName(i);
			}

			if (tokenNames[i] == null) {
				tokenNames[i] = "<INVALID>";
			}
		}
	}

	@Override
	@Deprecated
	public String[] getTokenNames() {
		return tokenNames;
	}

	@Override

	public Vocabulary getVocabulary() {
		return VOCABULARY;
	}


	public parsingProjectLexer(CharStream input) {
		super(input);
		_interp = new LexerATNSimulator(this,_ATN,_decisionToDFA,_sharedContextCache);
	}

	@Override
	public String getGrammarFileName() { return "parsingProject.g4"; }

	@Override
	public String[] getRuleNames() { return ruleNames; }

	@Override
	public String getSerializedATN() { return _serializedATN; }

	@Override
	public String[] getChannelNames() { return channelNames; }

	@Override
	public String[] getModeNames() { return modeNames; }

	@Override
	public ATN getATN() { return _ATN; }

	public static final String _serializedATN =
		"\3\u608b\ua72a\u8133\ub9ed\u417c\u3be7\u7786\u5964\2#\u00ba\b\1\4\2\t"+
		"\2\4\3\t\3\4\4\t\4\4\5\t\5\4\6\t\6\4\7\t\7\4\b\t\b\4\t\t\t\4\n\t\n\4\13"+
		"\t\13\4\f\t\f\4\r\t\r\4\16\t\16\4\17\t\17\4\20\t\20\4\21\t\21\4\22\t\22"+
		"\4\23\t\23\4\24\t\24\4\25\t\25\4\26\t\26\4\27\t\27\4\30\t\30\4\31\t\31"+
		"\4\32\t\32\4\33\t\33\4\34\t\34\4\35\t\35\4\36\t\36\4\37\t\37\4 \t \4!"+
		"\t!\4\"\t\"\3\2\6\2G\n\2\r\2\16\2H\3\2\3\2\3\3\3\3\3\4\3\4\3\4\3\5\3\5"+
		"\3\5\3\5\3\5\3\6\3\6\7\6Y\n\6\f\6\16\6\\\13\6\3\7\3\7\3\7\3\7\3\7\3\7"+
		"\3\b\3\b\3\b\3\b\3\t\3\t\3\n\3\n\3\13\3\13\3\f\3\f\3\r\3\r\3\16\3\16\3"+
		"\17\3\17\3\20\3\20\3\20\3\20\3\20\3\21\3\21\3\22\3\22\3\22\3\23\3\23\3"+
		"\23\3\24\3\24\3\24\3\25\3\25\3\25\3\26\3\26\3\26\3\27\3\27\3\27\3\30\3"+
		"\30\3\31\3\31\3\31\3\32\3\32\3\33\3\33\3\33\3\34\3\34\3\34\3\35\3\35\3"+
		"\35\3\36\3\36\3\36\3\36\3\37\3\37\3\37\3\37\3 \3 \3 \3!\3!\7!\u00ac\n"+
		"!\f!\16!\u00af\13!\3!\3!\3\"\3\"\3\"\3\"\3\"\3\"\3\"\3\"\2\2#\3\3\5\4"+
		"\7\5\t\6\13\7\r\b\17\t\21\n\23\13\25\f\27\r\31\16\33\17\35\20\37\21!\22"+
		"#\23%\24\'\25)\26+\27-\30/\31\61\32\63\33\65\34\67\359\36;\37= ?!A\"C"+
		"#\3\2\7\4\2\f\f\"\"\3\2c|\6\2\62;C\\aac|\3\2\f\f\3\2$$\2\u00bc\2\3\3\2"+
		"\2\2\2\5\3\2\2\2\2\7\3\2\2\2\2\t\3\2\2\2\2\13\3\2\2\2\2\r\3\2\2\2\2\17"+
		"\3\2\2\2\2\21\3\2\2\2\2\23\3\2\2\2\2\25\3\2\2\2\2\27\3\2\2\2\2\31\3\2"+
		"\2\2\2\33\3\2\2\2\2\35\3\2\2\2\2\37\3\2\2\2\2!\3\2\2\2\2#\3\2\2\2\2%\3"+
		"\2\2\2\2\'\3\2\2\2\2)\3\2\2\2\2+\3\2\2\2\2-\3\2\2\2\2/\3\2\2\2\2\61\3"+
		"\2\2\2\2\63\3\2\2\2\2\65\3\2\2\2\2\67\3\2\2\2\29\3\2\2\2\2;\3\2\2\2\2"+
		"=\3\2\2\2\2?\3\2\2\2\2A\3\2\2\2\2C\3\2\2\2\3F\3\2\2\2\5L\3\2\2\2\7N\3"+
		"\2\2\2\tQ\3\2\2\2\13V\3\2\2\2\r]\3\2\2\2\17c\3\2\2\2\21g\3\2\2\2\23i\3"+
		"\2\2\2\25k\3\2\2\2\27m\3\2\2\2\31o\3\2\2\2\33q\3\2\2\2\35s\3\2\2\2\37"+
		"u\3\2\2\2!z\3\2\2\2#|\3\2\2\2%\177\3\2\2\2\'\u0082\3\2\2\2)\u0085\3\2"+
		"\2\2+\u0088\3\2\2\2-\u008b\3\2\2\2/\u008e\3\2\2\2\61\u0090\3\2\2\2\63"+
		"\u0093\3\2\2\2\65\u0095\3\2\2\2\67\u0098\3\2\2\29\u009b\3\2\2\2;\u009e"+
		"\3\2\2\2=\u00a2\3\2\2\2?\u00a6\3\2\2\2A\u00a9\3\2\2\2C\u00b2\3\2\2\2E"+
		"G\t\2\2\2FE\3\2\2\2GH\3\2\2\2HF\3\2\2\2HI\3\2\2\2IJ\3\2\2\2JK\b\2\2\2"+
		"K\4\3\2\2\2LM\7\13\2\2M\6\3\2\2\2NO\7k\2\2OP\7h\2\2P\b\3\2\2\2QR\7g\2"+
		"\2RS\7n\2\2ST\7u\2\2TU\7g\2\2U\n\3\2\2\2VZ\t\3\2\2WY\t\4\2\2XW\3\2\2\2"+
		"Y\\\3\2\2\2ZX\3\2\2\2Z[\3\2\2\2[\f\3\2\2\2\\Z\3\2\2\2]^\7y\2\2^_\7j\2"+
		"\2_`\7k\2\2`a\7n\2\2ab\7g\2\2b\16\3\2\2\2cd\7h\2\2de\7q\2\2ef\7t\2\2f"+
		"\20\3\2\2\2gh\7-\2\2h\22\3\2\2\2ij\7/\2\2j\24\3\2\2\2kl\7,\2\2l\26\3\2"+
		"\2\2mn\7\61\2\2n\30\3\2\2\2op\7\'\2\2p\32\3\2\2\2qr\7`\2\2r\34\3\2\2\2"+
		"st\4\62;\2t\36\3\2\2\2uv\7P\2\2vw\7q\2\2wx\7p\2\2xy\7g\2\2y \3\2\2\2z"+
		"{\7?\2\2{\"\3\2\2\2|}\7-\2\2}~\7?\2\2~$\3\2\2\2\177\u0080\7/\2\2\u0080"+
		"\u0081\7?\2\2\u0081&\3\2\2\2\u0082\u0083\7,\2\2\u0083\u0084\7?\2\2\u0084"+
		"(\3\2\2\2\u0085\u0086\7\61\2\2\u0086\u0087\7?\2\2\u0087*\3\2\2\2\u0088"+
		"\u0089\7`\2\2\u0089\u008a\7?\2\2\u008a,\3\2\2\2\u008b\u008c\7\'\2\2\u008c"+
		"\u008d\7?\2\2\u008d.\3\2\2\2\u008e\u008f\7>\2\2\u008f\60\3\2\2\2\u0090"+
		"\u0091\7>\2\2\u0091\u0092\7?\2\2\u0092\62\3\2\2\2\u0093\u0094\7@\2\2\u0094"+
		"\64\3\2\2\2\u0095\u0096\7@\2\2\u0096\u0097\7?\2\2\u0097\66\3\2\2\2\u0098"+
		"\u0099\7?\2\2\u0099\u009a\7?\2\2\u009a8\3\2\2\2\u009b\u009c\7#\2\2\u009c"+
		"\u009d\7?\2\2\u009d:\3\2\2\2\u009e\u009f\7p\2\2\u009f\u00a0\7q\2\2\u00a0"+
		"\u00a1\7v\2\2\u00a1<\3\2\2\2\u00a2\u00a3\7c\2\2\u00a3\u00a4\7p\2\2\u00a4"+
		"\u00a5\7f\2\2\u00a5>\3\2\2\2\u00a6\u00a7\7q\2\2\u00a7\u00a8\7t\2\2\u00a8"+
		"@\3\2\2\2\u00a9\u00ad\7%\2\2\u00aa\u00ac\n\5\2\2\u00ab\u00aa\3\2\2\2\u00ac"+
		"\u00af\3\2\2\2\u00ad\u00ab\3\2\2\2\u00ad\u00ae\3\2\2\2\u00ae\u00b0\3\2"+
		"\2\2\u00af\u00ad\3\2\2\2\u00b0\u00b1\b!\2\2\u00b1B\3\2\2\2\u00b2\u00b3"+
		"\7$\2\2\u00b3\u00b4\7$\2\2\u00b4\u00b5\7$\2\2\u00b5\u00b6\3\2\2\2\u00b6"+
		"\u00b7\n\6\2\2\u00b7\u00b8\3\2\2\2\u00b8\u00b9\b\"\2\2\u00b9D\3\2\2\2"+
		"\6\2HZ\u00ad\3\b\2\2";
	public static final ATN _ATN =
		new ATNDeserializer().deserialize(_serializedATN.toCharArray());
	static {
		_decisionToDFA = new DFA[_ATN.getNumberOfDecisions()];
		for (int i = 0; i < _ATN.getNumberOfDecisions(); i++) {
			_decisionToDFA[i] = new DFA(_ATN.getDecisionState(i), i);
		}
	}
}