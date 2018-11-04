%{
  open Lexing
  open Ast
  open Sast
%}

%token <string * Lexing.position>   ID
%token <string * Lexing.position>   LITSTRING
%token <int * Lexing.position>      LITINT
%token <float * Lexing.position>    LITFLOAT
%token <bool * Lexing.position>     LITBOOL
%token <Lexing.position>            ABRE_CHAVE
%token <Lexing.position>            ABRE_COLCHETE
%token <Lexing.position>            FECHA_CHAVE
%token <Lexing.position>            FECHA_COLCHETE
%token <Lexing.position>            ADICAO
%token <Lexing.position>            AND
%token <Lexing.position>            AND_BINARIO
%token <Lexing.position>            APAR
%token <Lexing.position>            ATRIB
%token <Lexing.position>            BREAK
%token <Lexing.position>            CONCATENA
%token <Lexing.position>            DIV_POR_2
%token <Lexing.position>            DIVISAO
%token <Lexing.position>            DIVISAO_INTEIRO
%token <Lexing.position>            DO
%token <Lexing.position>            DOIS_PONTOS
%token <Lexing.position>            ELSE
%token <Lexing.position>            ELSEIF
%token <Lexing.position>            END
%token <Lexing.position>            EQUIVALENTE
%token <Lexing.position>            EXPONENCIACAO
%token <Lexing.position>            FOR
%token <Lexing.position>            FPAR
%token <Lexing.position>            FUNCAO
%token <Lexing.position>            IF
%token <Lexing.position>            IN
%token <Lexing.position>            IO_READ_INT
%token <Lexing.position>            IO_READ_FLOAT
%token <Lexing.position>            IO_READ_STRING
%token <Lexing.position>            LOCAL
%token <Lexing.position>            MAIOR
%token <Lexing.position>            MAIOR_OU_IGUAL
%token <Lexing.position>            MENOR
%token <Lexing.position>            MENOR_OU_IGUAL
%token <Lexing.position>            MODULO
%token <Lexing.position>            MULT_POR_2
%token <Lexing.position>            MULTIPLICACAO
%token <Lexing.position>            NAO_EQUIVALENTE
%token <Lexing.position>            NIL
%token <Lexing.position>            NOT
%token <Lexing.position>            NUMBER_INPUT
%token <Lexing.position>            OR
%token <Lexing.position>            OR_BINARIO
%token <Lexing.position>            OR_BINARIO_EXCLUSIVO
%token <Lexing.position>            PONTO
%token <Lexing.position>            PONTO_VIRGULA
%token <Lexing.position>            PRINT
%token <Lexing.position>            RETICENCIAS
%token <Lexing.position>            RETURN
%token <Lexing.position>            SUBTRACAO
%token <Lexing.position>            TAMANHO
%token <Lexing.position>            TIPO_BOOLEAN
%token <Lexing.position>            TIPO_INT
%token <Lexing.position>            TIPO_FLOAT
%token <Lexing.position>            TIPO_STRING
%token <Lexing.position>            THEN
%token <Lexing.position>            UNTIL
%token <Lexing.position>            VIRGULA
%token <Lexing.position>            WHILE
%token <Lexing.position>            EOF
%token <Lexing.position>            FALSE
%token <Lexing.position>            TRUE
%token <Lexing.position>            REPEAT

%left             OR
%left             AND
%left             MAIOR MENOR MENOR_OU_IGUAL MAIOR_OU_IGUAL EQUIVALENTE NAO_EQUIVALENTE
%left             OR_BINARIO
%left             OR_BINARIO_EXCLUSIVO
%left             AND_BINARIO
%left             MULT_POR_2 DIV_POR_2
%left             CONCATENA
%left             ADICAO SUBTRACAO
%left             MULTIPLICACAO DIVISAO DIVISAO_INTEIRO MODULO
%left             NOT TAMANHO
%left             EXPONENCIACAO

%start <Sast.expressao Ast.programa> programa

%%

programa:
        ds = declaracao_de_variavel*
        fs = declaracao_de_funcao*
        cs = comando*
        EOF { Programa (List.flatten ds, fs, cs) }

declaracao_de_variavel:
        t = tipo ids = separated_nonempty_list (VIRGULA, ID) {
                      List.map (fun id -> DecVar (id, t)) ids
        }

declaracao_de_funcao:
  FUNCAO tret = tipo nome = ID APAR formais = separated_list (VIRGULA, parametro) FPAR
  ds = declaracao_de_variavel*
  cs = comando*
  END {
      DecFun {
        fn_nome = nome;
        fn_tiporet = tret;
        fn_formais = formais;
        fn_locais = List.flatten ds;
        fn_corpo = cs
      }
  }

parametro: t = tipo nome = ID  { (nome, t) }

tipo: t = tipo_simples { t }

tipo_simples: TIPO_INT      { TipoInt }
            | TIPO_FLOAT    { TipoFloat }
            | TIPO_STRING   { TipoString }
            | TIPO_BOOLEAN  { TipoBool  }


comando:  c = comando_atribuicao  { c }
        | c = comando_if          { c }
        | c = comando_chamada     { c }
        | c = comando_for         { c }
        | c = comando_while       { c }
        | c = comando_print       { c }
        | c = comando_scanInt     { c }
        | c = comando_scanFloat   { c }
        | c = comando_scanString  { c }
        | c = comando_retorno     { c }



comando_atribuicao: v = expressao ATRIB exp = expressao {
  CmdAtrib (v, exp)
}



comando_if: IF  teste = expressao THEN
                entao = comando+
                senao = option (ELSE cs = comando+ { cs })
            END {
              CmdIf (teste, entao, senao)
            }

comando_chamada: exp = chamada {  CmdChamada exp  }

comando_retorno: RETURN  exp = expressao? { CmdRetorno  exp }

comando_print: PRINT APAR  exp = expressao FPAR  {CmdPrint exp }

comando_scanInt: exp = expressao ATRIB IO_READ_INT {  CmdScanInt exp }

comando_scanFloat:  exp = expressao ATRIB IO_READ_FLOAT { CmdScanFloat exp }

comando_scanString: exp = expressao  ATRIB IO_READ_STRING { CmdScanString exp }

comando_while: WHILE exp = expressao DO  cs = comando* END { CmdWhile  (exp, cs) }
  
comando_for: FOR v = ID ATRIB init=expressao VIRGULA teste=expressao VIRGULA inc=expressao DO cs=comando* END {
  CmdIf (ExpBool (true, snd v),
    [
      CmdAtrib (ExpVar (VarSimples v), init) ;
      CmdWhile (
        ExpOp ((Menor_ou_Igual, snd v),
        ExpVar (VarSimples v),
        teste
        ),
        List.append cs [CmdAtrib (ExpVar (VarSimples v),
          ExpOp (
              (Adicao, snd v),
              ExpVar (VarSimples v),
              inc)
          )
        ]
      )],
      None)
}




expressao:
    | v = variavel  { ExpVar  v }
    | i = LITINT    { ExpInt  i }
    | f = LITFLOAT  { ExpFloat f }
    | s = LITSTRING { ExpString s }
    | b = LITBOOL      { ExpBool b }
  |e1 = expressao op = oper e2 = expressao  { ExpOp (op, e1, e2)  }
    | c = chamada { c }
  |APAR e = expressao FPAR  { e }


chamada: nome = ID APAR args = separated_list(VIRGULA, expressao) FPAR {
  ExpChamada (nome, args)
}



%inline oper:
  | pos = OR  { (Or, pos)  }
  | pos = AND { (And , pos)}
  | pos = MAIOR { (Maior, pos) }
  | pos = MENOR { (Menor, pos) }
  | pos = MAIOR_OU_IGUAL  { (Maior_ou_Igual, pos)  }
  | pos = MENOR_OU_IGUAL  { (Menor_ou_Igual, pos)  }
  | pos = EQUIVALENTE     { (Equivalente, pos) }
  | pos = NAO_EQUIVALENTE { (Nao_Equivalente, pos) }
  | pos = OR_BINARIO      { (Or_Binario, pos)  }
  | pos = OR_BINARIO_EXCLUSIVO  { (Or_Binario_Exclusivo, pos)  }
  | pos = AND_BINARIO           { (And_Binario, pos) }
  | pos = MULT_POR_2            { (Mult_Por_2, pos)  }
  | pos = DIV_POR_2             { (Div_Por_2, pos) }
  | pos = CONCATENA             { (Concatena, pos) }
  | pos = ADICAO                { (Adicao, pos)  }
  | pos = SUBTRACAO             { (Subtracao, pos) }
  | pos = MULTIPLICACAO         { (Multiplicacao, pos) }
  | pos = DIVISAO               { (Divisao, pos) }
  | pos = DIVISAO_INTEIRO       { (Divisao_Inteiro, pos) }
  | pos = MODULO                { (Modulo, pos)  }
  | pos = NOT                   { (Not, pos) }
  | pos = TAMANHO               { (Tamanho, pos) }
  | pos = EXPONENCIACAO         { (Exponenciacao, pos) }

variavel: 
  | x=ID    { VarSimples  x }