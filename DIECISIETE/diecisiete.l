%{
#include <stdio.h>
%}

%%

[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,} { 
    printf("Token: CORREO_ELECTRONICO | Lexema: %s\n", yytext); 
}

[ \t\n\r]+                  { /* Ignorar espacios */ }

.                           { printf("Token: OTRO_CARACTER       | Lexema: %s\n", yytext); }

%%

int main() {
    printf("Ingrese texto con correos electronicos para probar:\n");
    yylex();
    return 0;
}

int yywrap() {
    return 1;
}
