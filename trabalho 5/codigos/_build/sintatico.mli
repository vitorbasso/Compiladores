
(* The type of tokens. *)

type token = 
  | WHILE of (Lexing.position)
  | VIRGULA of (Lexing.position)
  | UNTIL of (Lexing.position)
  | TRUE of (Lexing.position)
  | TIPO_STRING of (Lexing.position)
  | TIPO_INT of (Lexing.position)
  | TIPO_FLOAT of (Lexing.position)
  | TIPO_BOOLEAN of (Lexing.position)
  | THEN of (Lexing.position)
  | TAMANHO of (Lexing.position)
  | SUBTRACAO of (Lexing.position)
  | RETURN of (Lexing.position)
  | RETICENCIAS of (Lexing.position)
  | REPEAT of (Lexing.position)
  | PRINT of (Lexing.position)
  | PONTO_VIRGULA of (Lexing.position)
  | PONTO of (Lexing.position)
  | OR_BINARIO_EXCLUSIVO of (Lexing.position)
  | OR_BINARIO of (Lexing.position)
  | OR of (Lexing.position)
  | NUMBER_INPUT of (Lexing.position)
  | NOT of (Lexing.position)
  | NIL of (Lexing.position)
  | NAO_EQUIVALENTE of (Lexing.position)
  | MULT_POR_2 of (Lexing.position)
  | MULTIPLICACAO of (Lexing.position)
  | MODULO of (Lexing.position)
  | MENOR_OU_IGUAL of (Lexing.position)
  | MENOR of (Lexing.position)
  | MAIOR_OU_IGUAL of (Lexing.position)
  | MAIOR of (Lexing.position)
  | LOCAL of (Lexing.position)
  | LITSTRING of (string * Lexing.position)
  | LITINT of (int * Lexing.position)
  | LITFLOAT of (float * Lexing.position)
  | LITBOOL of (bool * Lexing.position)
  | IO_READ_STRING of (Lexing.position)
  | IO_READ_INT of (Lexing.position)
  | IO_READ_FLOAT of (Lexing.position)
  | IN of (Lexing.position)
  | IF of (Lexing.position)
  | ID of (string * Lexing.position)
  | FUNCAO of (Lexing.position)
  | FPAR of (Lexing.position)
  | FOR of (Lexing.position)
  | FECHA_COLCHETE of (Lexing.position)
  | FECHA_CHAVE of (Lexing.position)
  | FALSE of (Lexing.position)
  | EXPONENCIACAO of (Lexing.position)
  | EQUIVALENTE of (Lexing.position)
  | EOF of (Lexing.position)
  | END of (Lexing.position)
  | ELSEIF of (Lexing.position)
  | ELSE of (Lexing.position)
  | DOIS_PONTOS of (Lexing.position)
  | DO of (Lexing.position)
  | DIV_POR_2 of (Lexing.position)
  | DIVISAO_INTEIRO of (Lexing.position)
  | DIVISAO of (Lexing.position)
  | CONCATENA of (Lexing.position)
  | BREAK of (Lexing.position)
  | ATRIB of (Lexing.position)
  | APAR of (Lexing.position)
  | AND_BINARIO of (Lexing.position)
  | AND of (Lexing.position)
  | ADICAO of (Lexing.position)
  | ABRE_COLCHETE of (Lexing.position)
  | ABRE_CHAVE of (Lexing.position)

(* This exception is raised by the monolithic API functions. *)

exception Error

(* The monolithic API. *)

val programa: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Sast.expressao Ast.programa)

module MenhirInterpreter : sig
  
  (* The incremental API. *)
  
  include MenhirLib.IncrementalEngine.INCREMENTAL_ENGINE
    with type token = token
  
end

(* The entry point(s) to the incremental API. *)

module Incremental : sig
  
  val programa: Lexing.position -> (Sast.expressao Ast.programa) MenhirInterpreter.checkpoint
  
end
