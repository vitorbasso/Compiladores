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

}

let digito = ['0' - '9']
let inteiro = '-'? digito+

let letra = ['a' - 'z' 'A' - 'Z']
let identificador = letra ( letra | digito | '_')*

let brancos = [' ' '\t']+
let novalinha = '\r' | '\n' | "\r\n"

rule token = parse
|	brancos							{ token lexbuf }
| novalinha 					{ incr_num_linha lexbuf; token lexbuf }
| "--[["							{ comentario_bloco lexbuf }
| "--" 								{ comentario_linha lexbuf }
| "<int>"             { TIPO_INT}
| "<bool>"            { TIPO_BOOLEAN}
| "<string>"          { TIPO_STRING}
| "("				 					{ APAR }
| "{"				 					{ ABRE_CHAVE }
| "["				 					{ ABRE_COLCHETE }
| "+"				 					{ ADICAO }
| "-"				 					{ SUBTRACAO }
| ")"				 					{ FPAR }
| "}"				 					{ FECHA_CHAVE }
| "]"				 					{ FECHA_COLCHETE }
| ","				 					{ VIRGULA }
| "."				 					{ PONTO }
| ";"				 					{ PONTO_VIRGULA }
| ":"				 					{ DOIS_PONTOS }
| "=="			 					{ EQUIVALENTE }
| "~="			 					{ NAO_EQUIVALENTE }
| ">="			 					{ MAIOR_OU_IGUAL }
| "<="			 					{ MENOR_OU_IGUAL }
| "/"				 					{ DIVISAO }
| "*"			 						{ MULTIPLICACAO }
| "%"				 					{ MODULO }
| "^"				 					{ EXPONENCIACAO }
| ">"				 					{ MAIOR }
| "<"				 					{ MENOR }
| "="				 					{ ATRIB }
| "#"				 					{ TAMANHO }
| "<<"			 					{ MULT_POR_2 }
| ">>"			 					{ DIV_POR_2 }
| "//"			 					{ DIVISAO_INTEIRO }
| "&"				 					{ AND_BINARIO }
| "|"				 					{ OR_BINARIO }
| ".." 			 					{ CONCATENA }
| "..."			 					{ RETICENCIAS }
| "and"			 					{ AND }
| "break"		 					{ BREAK }
| "do"			 					{ DO }
| "else"		 					{ ELSE }
| "elseif"	 					{ ELSEIF }
| "end"			 					{ END }
| "false"		 					{ FALSE }
| "for"			 					{ FOR }
| "function" 					{ FUNCAO }
| "if"			 					{ IF }
| "io.read"	 					{ IO_READ }
| "in"			 					{ IN }
| "local"		 					{ LOCAL }
| "nil"			 					{ NIL }
| "not"			 					{ NOT }
| "print"		 					{ PRINT }
| "or"			 					{ OR }
| "repeat"	 					{ REPEAT }
| "return"	 					{ RETURN }
| "then"		 					{ THEN }
| "true"		 					{ TRUE }
| "until"		 					{ UNTIL }
| "while"		 					{ WHILE }
| inteiro as num			{ let numero = int_of_string num in
												LITINT numero }
| identificador as id { ID id }
| '"'									{ let buffer = Buffer.create 1 in
							 					let str = leia_string buffer lexbuf in
							 					LITSTRING str }
| _		 					      { raise (Erro ("Caracter desconhecido: " ^ Lexing.lexeme lexbuf))}
| eof				 					{ EOF }

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