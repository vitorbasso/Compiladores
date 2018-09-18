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

type tokens = APAR
            | FPAR
            | ATRIB
            | IF
            | WHILE
            | MAIS
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
  brancos    { token lexbuf }
| novalinha  { incr_num_linha lexbuf; token lexbuf }
| comentario { token lexbuf }
| '('        { APAR }
| '+'        { MAIS }
| ')'        { FPAR }
| ":="       { ATRIB }
| inteiro as num { let numero = int_of_string num in 
                    LITINT numero  } 
| "if"       { IF }
| "while"    { WHILE }
| identificador as id { ID id }
| _ as c  { failwith (msg_erro lexbuf c) }
| eof        { EOF }


