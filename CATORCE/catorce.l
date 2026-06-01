%{
#include <stdio.h>
%}

%%
"+"|"-"|"*"|"/"             { printf("OPERADOR ARITMETICO \"%s\"\n", yytext); }
"<="|">="|"=="|"!="|"<"|">" { printf("OPERADOR RELACIONAL \"%s\"\n", yytext); }
[ \t\n]+                    { /* Ignora espacios en blanco, tabuladores y saltos de linea */ }
.                           { /* Ignora cualquier otro caracter no reconocido */ }
%%

int main()
{
    yylex();
    return 0;
}
