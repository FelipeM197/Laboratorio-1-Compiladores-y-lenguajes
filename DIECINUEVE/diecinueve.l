%{
#include <stdio.h>
#include <stdlib.h> /* Necesaria para la funcion strtol() */
%}

%%
0[xX][0-9a-fA-F]+   { 
                        /* Convertimos la cadena yytext (en base 16) a un entero largo decimal */
                        long valor_decimal = strtol(yytext, NULL, 16);
                        printf("HEXADECIMAL: %s => DECIMAL: %ld\n", yytext, valor_decimal); 
                    }
[ \t\n]+            { /* Ignorar espacios y saltos de linea */ }
.                   { /* Ignorar cualquier otro texto */ }
%%

int main()
{
    yylex();
    return 0;
}
