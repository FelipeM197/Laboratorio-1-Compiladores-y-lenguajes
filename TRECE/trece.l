%{
/*analizador que  reconoce identificadores, palabras reservadas (if, else, while, int)
y números enteros. Imprima el tipo de token y su lexema.*/

#include <stdio.h>
%}

%%
"if"|"else"|"while"|"int"   { printf("Token: PALABRA_RESERVADA | Lexema: %s\n", yytext); }

[a-zA-Z][a-zA-Z0-9]*		{ printf("Token: IDENTIFICADOR | LEXEMA: %s\n", yytext); }

[0-9]+                      	{ printf("Token: NUMERO_ENTERO     | Lexema: %s\n", yytext); }

[ \t\n\r]+                  	{ /* Ignorar los espacios en blanco entre tokens */ }

.                           	{ printf("Token: ESTE NO ES UN CARACTER VALIDO | Lexema: %s\n", yytext); }

%%

int main() {
	printf("Ingrese un codigo de prueba");
	yylex();
	return 0;
}

int yywrap() {
	return 1;
}
