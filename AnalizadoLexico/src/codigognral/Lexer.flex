package codigo;
import static codigo.Tokens.*;
%%
%class Lexer
%type Tokens
L=[A-Za-z_]+
D=[0-9]+
espacio=[ ,\t,\r,\n]+
%{
    public String lexeme;
%}
%%
[Ff][Rr][Oo][Mm]|
[Ss][Ee][Ll][Ee][Cc][Tt] |
[Ww][Hh][Ee][Rr][Ee] {lexeme=yytext(); return Reservadas;}
{espacio} {/*Ignore*/}
"//".* {/*Ignore*/}
"=" {return Igual;}
"+" {return Suma;}
"-" {return Resta;}
"*" {return Seleccion;}
{L}({L}|{D})* {lexeme=yytext(); return Identificador;}
("(-"{D}+")")|{D}+ {lexeme=yytext(); return Numero;}
 . {return ERROR;}
