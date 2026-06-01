%{
    int num_el=0, num_ella=0;
%}
%%
el      num_el++;
ella    num_ella++;
\n      |
.       ;
%%
int main()
{
    yylex();
    printf("Numero de el independientes %d\n",num_el);
    printf("Numero de el en ellas %d\n",num_ella);
    return 0;
}
