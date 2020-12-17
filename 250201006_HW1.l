%{

#include <stdio.h>
#include "250201006_HW1.tab.h"
void showError();

%}

%option noyywrap

%%

"id" {printf("Shift 'id'\n"); return (ID);}
"+" {printf("Shift '+'\n"); return (PLUS);}
"-" {printf("Shift '-'\n"); return (NEGATION);}
"\n" { return (EOL);}
[ \t] { /* ignore whitespace */ }

%%

void showError (){
    printf("Other input\n");
}
