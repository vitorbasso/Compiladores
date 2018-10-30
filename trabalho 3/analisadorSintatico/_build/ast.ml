type  identificador = string
type  programa      = Programa of funcoes list

and funcoes = Funcao of tipo * identificador * argumentos list * declaracoes * comandos (** retorno*)

and argumentos = Args of tipo * identificador

and declaracoes = declaracao list

and declaracao = DecVar of tipo * variavel

and comandos = comando list

and tipo =  TipoInt
          | TipoString
          | TipoBool

and comando = CmdAtrib of variavel * expressao
            | CmdAtribRetorno of variavel * identificador * identificador list
            | CmdIf of expressao * comandos * (comandos option)
            | CmdFor of variavel * int * int * int * comandos
            | CmdWhile of expressao * comandos
            | CmdPrint of expressao
            | CmdScan of variavel
            | CmdFunction of identificador * identificador list
            | CmdRetorno of expressao

and variaveis = variavel list

and variavel = VarSimples of identificador
              

and expressao = ExpVar of variavel
              | ExpInt of int
              | ExpString of string
              | ExpBool of bool
              | ExpOp of oper * expressao * expressao

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
          | Tamanho
          | Exponenciacao