{
  open Lexing
  open Printf

  let incr_num_linha lexbuf = 
    let pos = lexbuf.lex_curr_p in
     lexbuf.lex_curr_p <- { pos with
        pos_lnum = pos.pos_lnum + 1;
        pos_bol = pos.pos_cnum;
     }

  let msg_erro lexbuf c =
    let pos = lexbuf.lex_curr_p in
    let lin = pos.pos_lnum
    and col = pos.pos_cnum - pos.pos_bol - 1 in
    sprintf "%d-%d: caracter desconhecido %c" lin col c

  let erro lin col msg =
    let mensagem = sprintf "%d-%d: %s" lin col msg in
       failwith mensagem

type tokens = ABRE_CHAVE
					| ABRE_COLCHETE
					| ADICAO
					| AND
					| AND_BINARIO
					| APAR
					| ATRIB
					| BREAK
					| CONCATENA
					| DIV_POR_2
					| DIVISAO
					| DIVISAO_INTEIRO
					| DO
					| DOIS_PONTOS
					| ELSE
					| ELSEIF
					| END
					| EQUIVALENTE
					| EXPONENCIACAO
					| FALSE
					| FECHA_CHAVE
					| FECHA_COLCHETE
					| FOR
					| FPAR
					| FUNCAO
					| IF
					| IN
					| IO_READ
					| LOCAL
					| MAIOR
					| MAIOR_OU_IGUAL
					| MENOR
					| MENOR_OU_IGUAL
					| MODULO
					| MULT_POR_2
					| MULTIPLICACAO
					| NAO_EQUIVALENTE
					| NIL
					| NOT
					| NUMBER_INPUT
					| OR
					| OR_BINARIO
					| PONTO
					| PONTO_VIRGULA
					| PRINT
					| REPEAT
					| RETICENCIAS
					| RETURN
					| SUBTRACAO
					| TAMANHO
					| THEN
					| TRUE
					| UNTIL
					| VIRGULA
					| WHILE
					| LITINT of int
					| LITSTRING of string
					| ID of string
					| EOF
}

let digito = ['0' - '9']
let inteiro = digito+

let letra = ['a' - 'z' 'A' - 'Z']
let identificador = letra ( letra | digito | '_')*

let brancos = [' ' '\t']+
let novalinha = '\r' | '\n' | "\r\n"

let comentario = "//" [^ '\r' '\n' ]*

rule token = parse
	brancos							{ token lexbuf }
| novalinha 					{ incr_num_linha lexbuf; token lexbuf }
| "--[["							{ let pos = lexbuf.lex_curr_p in
												let lin = pos.pos_lnum and col = pos.pos_cnum - pos.pos_bol - 1 in
												comentario_bloco lin col 0 lexbuf }
| comentario 					{ token lexbuf }
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
| "* "			 					{ MULTIPLICACAO }
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
| '"'									{ let pos = lexbuf.lex_curr_p in
							 					let lin = pos.pos_lnum and col = pos.pos_cnum - pos.pos_bol - 1 in
							 					let buffer = Buffer.create 1 in
							 					let str = leia_string lin col buffer lexbuf in
							 					LITSTRING str }
| _ as c 		 					{ failwith (msg_erro lexbuf c) }
| eof				 					{ EOF }

and comentario_bloco lin col n = parse
	"--]]"			 { if n=0 then token lexbuf
							 	 else comentario_bloco lin col (n-1) lexbuf }
| "--[["			 { comentario_bloco lin col (n+1) lexbuf }
| novalinha 	 { incr_num_linha lexbuf; comentario_bloco lin col n lexbuf }
| _						 { comentario_bloco lin col n lexbuf }
| eof					 { erro lin col "Comentario nao fechado" }

and leia_string lin col buffer = parse
	 '"'			{ Buffer.contents buffer}
| "\\t"			{ Buffer.add_char buffer '\t'; leia_string lin col buffer lexbuf }
| "\\n"			{ Buffer.add_char buffer '\n'; leia_string lin col buffer lexbuf }
| '\\' '"'	{ Buffer.add_char buffer '"'; leia_string lin col buffer lexbuf }
| '\\' '\\' { Buffer.add_char buffer '\\'; leia_string lin col buffer lexbuf }
| _ as c	 	{ Buffer.add_char buffer c; leia_string lin col buffer lexbuf }
| eof      	{ erro lin col "A string não foi fechada"}