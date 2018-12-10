
(* The type of tokens. *)

type token = 
  | WHILE of (Lexing.position)
  | VOID of (Lexing.position)
  | VIRG of (Lexing.position)
  | THEN of (Lexing.position)
  | STRING of (Lexing.position)
  | RETURN of (Lexing.position)
  | OUTPUT of (Lexing.position)
  | OULOG of (Lexing.position)
  | NOT of (Lexing.position)
  | MULTI of (Lexing.position)
  | MENOS of (Lexing.position)
  | MENORIGUAL of (Lexing.position)
  | MENOR of (Lexing.position)
  | MAIS of (Lexing.position)
  | MAIORIGUAL of (Lexing.position)
  | MAIOR of (Lexing.position)
  | LITSTRING of (string * Lexing.position)
  | LITINT of (int * Lexing.position)
  | LITFLOAT of (float * Lexing.position)
  | INT of (Lexing.position)
  | INPUT of (Lexing.position)
  | IGUAL of (Lexing.position)
  | IF of (Lexing.position)
  | ID of (string * Lexing.position)
  | FUNCTION of (Lexing.position)
  | FPAR of (Lexing.position)
  | FOR of (Lexing.position)
  | FLOAT of (Lexing.position)
  | EOF
  | END of (Lexing.position)
  | ELSE of (Lexing.position)
  | ELOG of (Lexing.position)
  | DO of (Lexing.position)
  | DIVI of (Lexing.position)
  | DIF of (Lexing.position)
  | BOOLEANO of (Lexing.position)
  | BOOL of (bool * Lexing.position)
  | ATRIB of (Lexing.position)
  | APAR of (Lexing.position)

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
