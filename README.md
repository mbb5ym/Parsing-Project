This Project by Team Pikachu is designed to take in python code 
and make a visual tree with it, to allow you to visualize your 
code in a two-dimensional space. We did this with an ANTLR script 
that uses rules and tokens to parse through Python code. To use it, 
you need to install antlr4 and a compatible IDE on your system.

Our members:
- Thunnathorne Synhiranakkrakul
- Michael Branstetter
- Byron Doyal
- Adam Menker
- Joseph Murphy

This repository includes:
- .g4 file
- generated ANTLR4 files
- screenshots

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

**2.) Get local copy**

Next, clone down the repository to your local machine
```
git clone https://github.com/mbb5ym/Parsing-Project.git
```

---

**3.) Run commands**
```
antlr4 -Dlanguage=Python3 parsingProject.g4
```
This will generate the parser, lexer, and listener

---

**4.) Visualizing the Tree**

The best way to visualize the tree is to:
- open our code in IntelliJ IDEA
- dowload the ANTLR4 Preview extension 
- test with the input file 

---

**5.) DISCLAIMERS!**

- At the end of the video we explained how the group contributions worked. All commits are coming from Adam Menker but the entire group worked together on this. 
- Since we used Python to write the parser, grun will not work. The best way to see the tree is to use the IntelliJ extension
- Since the program is quite long, our tree is very wide. This means that we included many screenshots. Most of the screenshots are zoomed in so you can read the text. There are a few screenshots that are zoomed out though where it is harder to read the text. I tried to make each screenshot show a couple lines of code. I also scribbled out portions of each screenshot to make it more readable so you were only looking at the part of the tree that showed the corresponding code. Sorry the screenshots are a little difficult to read.
- the demo video is in the zipped folder 


