%{
    #include <stdio.h>
    int conteo[10] = {0}; 
%}
%%
[0-9]   { conteo[yytext[0] - '0']++; }
\n      
.      
%%
int main()
{
    
    yylex(); 

    printf("\n--- TABLA DE FRECUENCIAS ---\n");
    printf("Digito\tCantidad\n");
    printf("------------------------\n");
    for(int i = 0; i < 10; i++) {
        printf("  %d\t   %d\n", i, conteo[i]);
    }

    return 0;
}
