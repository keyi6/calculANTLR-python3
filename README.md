# calculANTLR-python3

This repo is a  simple calculator implemented with ANTLR4 and Python3.

This project is inspired by [empirical-soft/calculANTLR](https://github.com/empirical-soft/calculANTLR), which is a simple calculator using ANTLR4 and C++.


![demo](./.github/demo.gif)

## 🚚 step1 install

### install antlr4

Follow the instruction on [Antlr4](https://www.antlr.org/). 

```bash
cd /usr/local/lib
sudo curl -O https://www.antlr.org/download/antlr-4.8-complete.jar

export CLASSPATH=".:/usr/local/lib/antlr-4.8-complete.jar:$CLASSPATH"
alias antlr4='java -jar /usr/local/lib/antlr-4.8-complete.jar'
alias grun='java org.antlr.v4.gui.TestRig'
```

### install python runtime

Details can be found in [python-target](https://github.com/antlr/antlr4/blob/master/doc/python-target.md).

```bash
pip3 install antlr4-python3-runtime
```

## 🧱 step2 use `.g4` to generate parser and lexer 

```bash
antlr4 -Dlanguage=Python3 Calculantlr.g4 -visitor -o dist 
```
Use `-visitor` to generate Visitor Class
Use `-o` to specify output path.

## 🎉 step3 done

```bash
python3 main.py
```

