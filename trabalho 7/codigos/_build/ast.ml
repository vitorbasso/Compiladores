open Lexing

type ident = string
type 'a pos =  'a * Lexing.position (* tipo e posição no arquivo fonte *)

type 'expr programa = Programa of declaracoes * ('expr funcoes) * ('expr comandos)
and declaracoes = declaracao list
and 'expr funcoes = ('expr funcao) list
and 'expr comandos = ('expr comando) list

and declaracao = DecVar of (ident pos) * tipo

and 'expr funcao = DecFun of ('expr decfn)

and 'expr decfn = {
  fn_nome: ident pos;
  fn_tiporet: tipo;
  fn_formais: (ident pos * tipo) list;
  fn_locais: declaracoes;
  fn_corpo: 'expr comandos
}

and tipo = TipoInt
	      |  TipoFloat
        |  TipoString
        |  TipoBool
        |  TipoVoid
        | TipoArranjo of tipo * (int pos) * (int pos)
        | TipoRegistro of campos
and campos = campo list
and campo = ident pos * tipo

and 'expr comando =
  | CmdAtrib of 'expr * 'expr
  | CmdSe of 'expr * ('expr comandos) * ('expr comandos option)
  | CmdRetorno of 'expr option
  | CmdChamada of 'expr
  | CmdIn of ('expr expressoes)
  | CmdOut of ('expr expressoes)
  | While of 'expr * 'expr comandos
  | For of 'expr comando * 'expr * 'expr comando * 'expr comandos

and 'expr variaveis = ('expr variavel) list
and 'expr variavel =
  | VarSimples of ident pos
and 'expr expressoes = 'expr list

and oper =
  | Mais
  | Menos
  | MaiorIgual
  | MenorIgual
  | Mult
  | Div
  | Menor
  | Igual
  | Difer
  | Maior
  | Ou
  | E

and operUn =
  | Not

