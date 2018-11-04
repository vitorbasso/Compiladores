open Lexing

type ident = string
type 'a pos = 'a * Lexing.position

type 'expr programa = Programa of declaracoes * ('expr funcoes) * ('expr comandos)
        and declaracoes = declaracao list
        and 'expr funcoes = ('expr funcao) list
        and 'expr comandos = ('expr comando) list

        and declaracao = DecVar of (ident pos) * tipo
        and 'expr funcao = DecVar of ('expr decfn)

        and 'expr decfn = {
          fn_nome:    ident pos;
          fn_tiporet: tipo;
          fn_formais: (ident pos * tipo) list;
          fn_locais:  declaracoes;
          fn_corpo:   'expr comandos
        }

        and tipo =  TipoInt
                  | TipoString
                  | TipoBool
                  | TipoFloat
                  | TipoVoid

        and campos = campo list
        and campo = ident pos * tipo

        and 'expr comando = 
                | CmdAtrib of 'expr * 'expr
                | CmdIf of 'expr * ('expr comandos) * ('expr comandos option)
                | CmdRetorno of 'expr option
                | CmdChamada of 'expr
                | CmdPrint of 'expr
                | CmdScanInt of 'expr
                | CmdScanFloat of 'expr
                | CmdScanString of 'expr
                | CmdWhile of 'expr * ('expr comandos)

        and 'expr variaveis = ('expr variavel) list
        and 'expr variavel = 
                    | VarSimples of ident pos

        and 'expr expressoes = 'expr list

        and oper =  Or
                  | And
                  | Maior
                  | Menor
                  | Maior_ou_Igual
                  | Menor_ou_Igual
                  | Equivalente
                  | Nao_Equivalente
                  | Or_Binario
                  | Or_Binario_Exclusivo
                  | And_Binario
                  | Mult_Por_2
                  | Div_Por_2
                  | Concatena
                  | Adicao
                  | Subtracao
                  | Multiplicacao
                  | Divisao
                  | Divisao_Inteiro
                  | Modulo
                  | Not
                  | Exponenciacao
                  