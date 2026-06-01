%{
#include <stdio.h>
#include <ctype.h> /* Libreria necesaria para usar tolower() */
%}

%%
[A-Z]   { printf("%c", tolower(yytext[0])); }
%%

int main()
{
    yylex();
    return 0;
}
