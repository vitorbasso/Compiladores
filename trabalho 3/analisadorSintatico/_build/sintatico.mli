
(* The type of tokens. *)

type token = 
  | WHILE
  | VIRGULA
  | UNTIL
  | TRUE
  | TIPO_STRING
  | TIPO_INT
  | TIPO_BOOLEAN
  | THEN
  | TAMANHO
  | SUBTRACAO
  | RETURN
  | RETICENCIAS
  | REPEAT
  | PRINT
  | PONTO_VIRGULA
  | PONTO
  | OR_BINARIO_EXCLUSIVO
  | OR_BINARIO
  | OR
  | NUMBER_INPUT
  | NOT
  | NIL
  | NAO_EQUIVALENTE
  | MULT_POR_2
  | MULTIPLICACAO
  | MODULO
  | MENOR_OU_IGUAL
  | MENOR
  | MAIOR_OU_IGUAL
  | MAIOR
  | LOCAL
  | LITSTRING of (string)
  | LITINT of (int)
  | IO_READ
  | IN
  | IF
  | ID of (string)
  | FUNCAO
  | FPAR
  | FOR
  | FECHA_COLCHETE
  | FECHA_CHAVE
  | FALSE
  | EXPONENCIACAO
  | EQUIVALENTE
  | EOF
  | END
  | ELSEIF
  | ELSE
  | DOIS_PONTOS
  | DO
  | DIV_POR_2
  | DIVISAO_INTEIRO
  | DIVISAO
  | CONCATENA
  | BREAK
  | BOOL of (bool)
  | ATRIB
  | APAR
  | AND_BINARIO
  | AND
  | ADICAO
  | ABRE_COLCHETE
  | ABRE_CHAVE

(* This exception is raised by the monolithic API functions. *)

exception Error

(* The monolithic API. *)

val programa: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Ast.programa)

module MenhirInterpreter : sig
  
  (* The incremental API. *)
  
  include MenhirLib.IncrementalEngine.INCREMENTAL_ENGINE
    with type token = token
  
end

(* The entry point(s) to the incremental API. *)

module Incremental : sig
  
  val programa: Lexing.position -> (Ast.programa) MenhirInterpreter.checkpoint
  
end
