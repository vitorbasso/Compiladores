open Ast

type expressao = ExpVar of (expressao variavel) * tipo
              | ExpInt of int * tipo
	      | ExpFloat of float * tipo
              | ExpString of string * tipo
	      | ExpVoid
              | ExpBool of bool * tipo
              | ExpOp of (oper * tipo) * (expressao * tipo) * (expressao * tipo)
  	      | ExpUn of (operUn * tipo) * (expressao * tipo)
              | ExpChamada of ident * (expressao expressoes) * tipo


