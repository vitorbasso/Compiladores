{
  open Sintatico
  open Lexing
  open Printf

  exception Erro of string

  let incr_num_linha lexbuf = 
    let pos = lexbuf.lex_curr_p in
     lexbuf.lex_curr_p <- { pos with
        pos_lnum = pos.pos_lnum + 1;
        pos_bol = pos.pos_cnum;
     }
	
  let pos_atual lexbuf = lexbuf.lex_start_p

  let msg_erro lexbuf c =
    let pos = lexbuf.lex_curr_p in
    let lin = pos.pos_lnum
    and col = pos.pos_cnum - pos.pos_bol - 1 in
    sprintf "%d-%d: caracter desconhecido %c" lin col c

  let erro lin col msg =
    let mensagem = sprintf "%d-%d: %s" lin col msg in
       failwith mensagem
}

let digito = ['0' - '9']
let inteiro = '-'? digito+
let real = (digito+ "." digito+) | (digito+ "." digito*) 

let letra = ['a' - 'z' 'A' - 'Z']
let identificador = letra ( letra | digito | '_' | '.')*

let brancos = [' ' '\t']+
let novalinha = '\r' | '\n' | "\r\n"

rule token = parse
  brancos    { token lexbuf }
| novalinha  { incr_num_linha lexbuf; token lexbuf }
| "--[["       { comentario_bloco lexbuf }
| "--"	     { comentario_linha lexbuf }
| '('        { APAR (pos_atual lexbuf) }
| '+'        { MAIS (pos_atual lexbuf) }
| ')'        { FPAR (pos_atual lexbuf) }
| ','		 { VIRG (pos_atual lexbuf) }
| '-'		 { MENOS (pos_atual lexbuf) }
| "=="		 { IGUAL (pos_atual lexbuf) }
| "<="		 { MENORIGUAL (pos_atual lexbuf) }
| ">="		 { MAIORIGUAL (pos_atual lexbuf) }
| "~="		 { DIF (pos_atual lexbuf) }
| '>'		 { MAIOR (pos_atual lexbuf) }
| '<'		 { MENOR (pos_atual lexbuf) }
| "or"		 { OULOG (pos_atual lexbuf) }
| "and"		 { ELOG (pos_atual lexbuf) }
| "not"	 { NOT (pos_atual lexbuf) }
| '/'		 { DIVI (pos_atual lexbuf) }
| '*'		 { MULTI (pos_atual lexbuf) }
| '='       { ATRIB (pos_atual lexbuf) }
| inteiro as num { let numero = int_of_string num in 
                    LITINT (numero, pos_atual lexbuf)  } 
| real as num { let numero = float_of_string num in LITFLOAT (numero, pos_atual lexbuf) }
| "if"       { IF (pos_atual lexbuf) }
| "else"     { ELSE (pos_atual lexbuf) }
| "while"    { WHILE (pos_atual lexbuf) }
| "do"       { DO (pos_atual lexbuf) }
| "then"     { THEN (pos_atual lexbuf) }
| "end"      { END (pos_atual lexbuf) }
| "function" { FUNCTION (pos_atual lexbuf) }
| "print"    { OUTPUT (pos_atual lexbuf) }
| "=io.read()"  { INPUT (pos_atual lexbuf) }
| "= io.read()" { INPUT (pos_atual lexbuf) }
| "int"	 	 { INT (pos_atual lexbuf) }
| "float"	 { FLOAT (pos_atual lexbuf) }
| "string"	 { STRING (pos_atual lexbuf) }
| "bool"	 { BOOLEANO (pos_atual lexbuf) }
| "return"	 { RETURN (pos_atual lexbuf) }
| "for"		 { FOR (pos_atual lexbuf) }
| "true"   { BOOL (true, pos_atual lexbuf) }
| "false"        { BOOL (false, pos_atual lexbuf) }
| identificador as id { ID (id, pos_atual lexbuf)  }
| '"'        { let pos = lexbuf.lex_curr_p in
               let lin = pos.pos_lnum
               and col = pos.pos_cnum - pos.pos_bol - 1 in
               let buffer = Buffer.create 1 in 
               let str = leia_string lin col buffer lexbuf in
                 LITSTRING (str, pos_atual lexbuf)  }
| _ as c  { failwith (msg_erro lexbuf c) }
| eof        { EOF }

and comentario_bloco = parse
  "--]]"      { token lexbuf }
| novalinha   { incr_num_linha lexbuf; comentario_bloco lexbuf }
| _           { comentario_bloco lexbuf }
| eof         { raise (Erro "Comentario nao terminado")}

and leia_string lin col buffer = parse
   '"'     { Buffer.contents buffer}
| "\\t"    { Buffer.add_char buffer '\t'; leia_string lin col buffer lexbuf }
| "\\n"    { Buffer.add_char buffer '\n'; leia_string lin col buffer lexbuf }
| '\\' '"'  { Buffer.add_char buffer '"'; leia_string lin col buffer lexbuf }
| '\\' '\\' { Buffer.add_char buffer '\\'; leia_string lin col buffer lexbuf }
| _ as c    { Buffer.add_char buffer c; leia_string lin col buffer lexbuf }
| eof      { erro lin col "A string não foi fechada"}

and comentario_linha = parse
	novalinha {incr_num_linha lexbuf; token lexbuf}

