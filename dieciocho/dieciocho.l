%{
    #include <stdio.h>
    #include <stdlib.h> 
%}
%%
[01]+       { 
                long valor_decimal = strtol(yytext, NULL, 2);
                printf("Binario: %s -> Decimal: %ld\n", yytext, valor_decimal); 
            }
[ \t\n]+    
.           
%%
int main()
{
    yylex();
    return 0;
}
