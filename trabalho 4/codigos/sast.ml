open Ast

type expressao = 
  | ExpVar of (expressao variavel)
  | ExpInt of in pos
  | ExpFloat of float pos
  | ExpString of string pos
  | ExpBool of bool pos
  | ExpOp of oper pos * expressao * expressao
  | ExpChamada of ident pos * (expressao expressoes)