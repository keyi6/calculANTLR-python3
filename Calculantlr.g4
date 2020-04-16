// concrete syntax
grammar Calculantlr;

// non-terminals expressed as context-free grammar (BNF)
expr:	left=expr op=('*'|'/') right=expr  # OpExpr
    |	left=expr op=('+'|'-') right=expr  # OpExpr
    |	atom=INT                           # AtomExpr
    |	'(' expr ')'                       # ParenExpr
    ;

// tokens expressed as regular expressions
INT : [0-9]+ ;
