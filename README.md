# Parsing-Project

---

## Setup:
**1.) Installing antlr4 on Mac**
https://www.antlr.org/
```
OS X
$ cd /usr/local/lib
$ sudo curl -O https://www.antlr.org/download/antlr-4.9.2-complete.jar
$ export CLASSPATH=".:/usr/local/lib/antlr-4.9.2-complete.jar:$CLASSPATH"
$ alias antlr4='java -jar /usr/local/lib/antlr-4.9.2-complete.jar'
$ alias grun='java org.antlr.v4.gui.TestRig'
```

---

**2.) Run command**
```
antlr4 -Dlanguage=Python3 parsingProject.g4
```
This will generate 7 files

---

**3.) Possible Errors**
```
ImportError: No module named antlr4
```
fix by installing antlr4 runtime with this command:
```
pip install antlr4-python3-runtime
```

