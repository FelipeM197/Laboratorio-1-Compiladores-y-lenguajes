%{
#include <stdio.h>
#include <stdlib.h>
%}

%%
[ \t\n]+ ; /*ignoramos espacios y tabs*/

0(0|1)0* printf("SECUENCIA VALIDA: %s\n", yytext);
.           printf("SECUENCIA NO VALIDA: %s\n", yytext);
%%

int main() {
    yylex();
    return 0;
}
