open Ast

type expressao =
  | ExpVar of (expressao variavel)
  | ExpInt of int pos
  | ExpFloat of float pos
  | ExpString of string pos
  | ExpBool of bool pos
  | ExpOp of (oper pos) * expressao * expressao
  | ExpUn of (operUn pos) * expressao
  | ExpChamada of ident pos * (expressao expressoes)
