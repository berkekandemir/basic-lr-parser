%{
#include <stdio.h>

int yylex();
int yyerror(char *s);
int yyparse();

%}

%token NEGATION 
%token ID 
%token PLUS
%token EOL
%left PLUS
%left NEGATION

%%

input:
    /* empty */
    | input line
    ;
 
line:
    EOL
    | S EOL { printf("Pop 'S'\n\n"); };

S: 
    E {printf("Reduce by 'S --> E'\n");}
;

E:
    E PLUS E {printf("Reduce by 'E --> E + E'\n");} 
    | NEGATION E {printf("Reduce by 'E --> -E'\n");} 
    | ID {printf("Reduce by 'E --> id'\n");}
;

%%

int yyerror(char *s)
{
    printf("Syntax error!");
    return 0;
}

int main()
{
    yyparse();
    return 0;
}