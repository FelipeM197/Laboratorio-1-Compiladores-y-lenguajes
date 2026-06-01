%{
    #include <stdio.h>
    #include <stdlib.h>
%}
%%
0(0|1)0* printf("SECUENCIA VALIDA: %s\n", yytext);
\n        
.           printf("SECUENCIA NO VALIDA: %s\n", yytext);
%%
