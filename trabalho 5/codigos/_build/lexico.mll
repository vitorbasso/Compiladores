{
  open Lexing
  open Printf
	open Sintatico

	exception Erro of string

  let incr_num_linha lexbuf = 
    let pos = lexbuf.lex_curr_p in
     lexbuf.lex_curr_p <- { pos with
        pos_lnum = pos.pos_lnum + 1;
        pos_bol = pos.pos_cnum;
     }

  let pos_atual lexbuf = lexbuf.lex_start_p

}

let digito = ['0' - '9']
let inteiro = '-'? digito+
let frac = '.'digito*
let real = digito* frac

let letra = ['a' - 'z' 'A' - 'Z']
let identificador = letra ( letra | digito | '_')*

let brancos = [' ' '\t']+
let novalinha = '\r' | '\n' | "\r\n"

rule token = parse
|	brancos							{ token lexbuf }
| novalinha 					{ incr_num_linha lexbuf; token lexbuf }
| "--[["							{ comentario_bloco lexbuf }
| "--" 								{ comentario_linha lexbuf }
| "int"               { TIPO_INT (pos_atual lexbuf)}
| "float"             { TIPO_FLOAT (pos_atual lexbuf)}
| "bool"              { TIPO_BOOLEAN (pos_atual lexbuf)}
| "string"            { TIPO_STRING (pos_atual lexbuf)}
| "("				 					{ APAR (pos_atual lexbuf)}
| "{"				 					{ ABRE_CHAVE (pos_atual lexbuf)}
| "["				 					{ ABRE_COLCHETE (pos_atual lexbuf)}
| "+"				 					{ ADICAO (pos_atual lexbuf)}
| "-"				 					{ SUBTRACAO (pos_atual lexbuf)}
| ")"				 					{ FPAR (pos_atual lexbuf)}
| "}"				 					{ FECHA_CHAVE (pos_atual lexbuf)}
| "]"				 					{ FECHA_COLCHETE (pos_atual lexbuf)}
| ","				 					{ VIRGULA (pos_atual lexbuf)}
| "."				 					{ PONTO (pos_atual lexbuf)}
| ";"				 					{ PONTO_VIRGULA (pos_atual lexbuf)}
| ":"				 					{ DOIS_PONTOS (pos_atual lexbuf)}
| "=="			 					{ EQUIVALENTE (pos_atual lexbuf)}
| "~="			 					{ NAO_EQUIVALENTE (pos_atual lexbuf)}
| ">="			 					{ MAIOR_OU_IGUAL (pos_atual lexbuf)}
| "<="			 					{ MENOR_OU_IGUAL (pos_atual lexbuf)}
| "/"				 					{ DIVISAO (pos_atual lexbuf)}
| "*"			 						{ MULTIPLICACAO (pos_atual lexbuf)}
| "%"				 					{ MODULO (pos_atual lexbuf)}
| "^"				 					{ EXPONENCIACAO (pos_atual lexbuf)}
| ">"				 					{ MAIOR (pos_atual lexbuf)}
| "<"				 					{ MENOR (pos_atual lexbuf)}
| "="				 					{ ATRIB (pos_atual lexbuf)}
| "#"				 					{ TAMANHO (pos_atual lexbuf)}
| "<<"			 					{ MULT_POR_2 (pos_atual lexbuf)}
| ">>"			 					{ DIV_POR_2 (pos_atual lexbuf)}
| "//"			 					{ DIVISAO_INTEIRO (pos_atual lexbuf)}
| "&"				 					{ AND_BINARIO (pos_atual lexbuf)}
| "|"				 					{ OR_BINARIO (pos_atual lexbuf)}
| "~"                 { OR_BINARIO_EXCLUSIVO (pos_atual lexbuf)}
| ".." 			 					{ CONCATENA (pos_atual lexbuf)}
| "..."			 					{ RETICENCIAS (pos_atual lexbuf)}
| "and"			 					{ AND (pos_atual lexbuf)}
| "break"		 					{ BREAK (pos_atual lexbuf)}
| "do"			 					{ DO (pos_atual lexbuf)}
| "else"		 					{ ELSE (pos_atual lexbuf)}
| "elseif"	 					{ ELSEIF (pos_atual lexbuf)}
| "end"			 					{ END (pos_atual lexbuf)}
| "false"		 					{ LITBOOL (false, pos_atual lexbuf)}
| "for"			 					{ FOR (pos_atual lexbuf)}
| "function" 					{ FUNCAO (pos_atual lexbuf)}
| "if"			 					{ IF (pos_atual lexbuf)}
| "io.read('*n')"	 		{ IO_READ_INT (pos_atual lexbuf) }
| "io.read('*f')"     { IO_READ_FLOAT (pos_atual lexbuf)}
| "io.read('*s')"     { IO_READ_STRING (pos_atual lexbuf)}
| "in"			 					{ IN (pos_atual lexbuf)}
| "local"		 					{ LOCAL (pos_atual lexbuf)}
| "nil"			 					{ NIL (pos_atual lexbuf)}
| "not"			 					{ NOT (pos_atual lexbuf)}
| "print"		 					{ PRINT (pos_atual lexbuf)}
| "or"			 					{ OR (pos_atual lexbuf)}
| "repeat"	 					{ REPEAT (pos_atual lexbuf)}
| "return"	 					{ RETURN (pos_atual lexbuf)}
| "then"		 					{ THEN (pos_atual lexbuf)}
| "true"		 					{ LITBOOL (true, pos_atual lexbuf) }
| "until"		 					{ UNTIL (pos_atual lexbuf)}
| "while"		 					{ WHILE (pos_atual lexbuf)}
| inteiro as n			  { LITINT (int_of_string n, pos_atual lexbuf) }
| real as n           { LITFLOAT (float_of_string n, pos_atual lexbuf)}
| identificador as id { ID (id, pos_atual lexbuf) }
| '"'									{ let buffer = Buffer.create 1 in
							 					let str = leia_string buffer lexbuf in
							 					LITSTRING (str, pos_atual lexbuf) }
| _		 					      { raise (Erro ("Caracter desconhecido: " ^ Lexing.lexeme lexbuf))}
| eof				 					{ EOF (pos_atual lexbuf)}

and comentario_bloco = parse
  "--]]"      { token lexbuf }
| novalinha   { incr_num_linha lexbuf; comentario_bloco lexbuf }
| _           { comentario_bloco lexbuf }
| eof         { raise (Erro "Comentario nao terminado")}

and leia_string buffer = parse
	'"'				{ Buffer.contents buffer}
| "\\t"			{ Buffer.add_char buffer '\t'; leia_string buffer lexbuf }
| "\\n"			{ Buffer.add_char buffer '\n'; leia_string buffer lexbuf }
| '\\' '"'	{ Buffer.add_char buffer '"'; leia_string buffer lexbuf }
| '\\' '\\' { Buffer.add_char buffer '\\'; leia_string buffer lexbuf }
| novalinha {raise (Erro "A string nao foi fechada")}
| _ as c	 	{ Buffer.add_char buffer c; leia_string buffer lexbuf }
| eof      	{ raise (Erro "A string nao foi terminada")}

and comentario_linha = parse
	novalinha {incr_num_linha lexbuf; token lexbuf}
|	_					{comentario_linha lexbuf}
