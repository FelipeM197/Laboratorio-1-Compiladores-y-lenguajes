%{
#include <stdio.h>

// Declaramos las variables que usaremos como contadores globales 
int mayus = 0;
int minus = 0;
int digitos = 0;
int espa = 0;

%}

%%

[A-Z]		{mayus++; }
[a-z]		{minus++; }
[0-9]		{digitos++; }
[ \t\n\r]	{espa++; }
.		{/*Ignora cualquier otro caracter*/}

%%

//Seccion de codigo en C 
int main (){
	printf("Inserta un texto cualquiera");
	yylex();
	
	printf("\n Resultados del scaneo \n");
	printf("Letras Mayusculas: %d\n", mayus);
	printf("Letras Minúsculas: %d\n", minus);
	printf("Digitos:          %d\n", digitos);
	printf("Espacios en blanco: %d\n", espa);
	
	return 0;
}

int yywrap(){
	return 1;
}

