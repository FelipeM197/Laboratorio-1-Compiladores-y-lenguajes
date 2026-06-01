%{
    #include <stdio.h>
%}
%%
[a-zA-Z][a-zA-Z0-9]* { printf("Elemento: IDENTIFICADOR (%s)\n", yytext); }
[0-9]+                { printf("Elemento: NUMERO ENTERO (%s)\n", yytext); }
","                   { printf("--- COMA ---\n"); }
[ \t\n]+              
.                     { printf("ERROR: Tipo de token no reconocido ('%s')\n", yytext); }
%%
int main()
{
    yylex();
    return 0;
}
