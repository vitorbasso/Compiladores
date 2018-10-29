%{
  open Ast
%}

%token <string>   ID
%token <string>   LITSTRING
%token <int>      LITINT
%token <bool>     BOOL
%token            ABRE_CHAVE
%token            ABRE_COLCHETE
%token            FECHA_CHAVE
%token            FECHA_COLCHETE
%token            ADICAO
%token            AND
%token            AND_BINARIO
%token            APAR
%token            ATRIB
%token            BREAK
%token            CONCATENA
%token            DIV_POR_2
%token            DIVISAO
%token            DIVISAO_INTEIRO
%token            DO
%token            DOIS_PONTOS
%token            ELSE
%token            ELSEIF
%token            END
%token            EQUIVALENTE
%token            EXPONENCIACAO
%token            FOR
%token            FPAR
%token            FUNCAO
%token            IF
%token            IN
%token            IO_READ
%token            LOCAL
%token            MAIOR
%token            MAIOR_OU_IGUAL
%token            MENOR
%token            MENOR_OU_IGUAL
%token            MODULO
%token            MULT_POR_2
%token            MULTIPLICACAO
%token            NAO_EQUIVALENTE
%token            NIL
%token            NOT
%token            NUMBER_INPUT
%token            OR
%token            OR_BINARIO
%token            OR_BINARIO_EXCLUSIVO
%token            PONTO
%token            PONTO_VIRGULA
%token            PRINT
%token            RETICENCIAS
%token            RETURN
%token            SUBTRACAO
%token            TAMANHO
%token            TIPO_BOOLEAN
%token            TIPO_INT
%token            TIPO_STRING
%token            THEN
%token            UNTIL
%token            VIRGULA
%token            WHILE
%token            EOF
%token            FALSE
%token            TRUE
%token            REPEAT

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

%start <Ast.programa> programa

%%

programa: f = funcoes+
    EOF { Programa (f) }

funcoes:
	| FUNCAO tipo=tipo_simples id=ID APAR args=argumentos* FPAR ds=declaracao* cs=comando*
	(*ret=retorno*)
	END { Funcao (tipo, id, args, ds, cs(*,ret*))}
	;

argumentos:
  | t = tipo_simples id = ID { Args (t, id) }
  ;

declaracao:
  | LOCAL t=tipo v=variavel { DecVar (t,v) }
  ;

tipo: t = tipo_simples { t }

tipo_simples: TIPO_INT      { TipoInt }
            | TIPO_STRING   { TipoString }
            | TIPO_BOOLEAN  { TipoBool  }

comando:  c = comando_atribuicao  { c }
        | c = comando_if          { c }
        | c = comando_for         { c }
        | c = comando_while       { c }
        | c = comando_print       { c }
        | c = comando_scan        { c }
        | c = comando_funcao      { c }
        | c = comando_retorno     { c }

comando_atribuicao:
        | v = variavel  ATRIB e = expressao { CmdAtrib (v,e) }
        | v = variavel  ATRIB id = ID APAR  args = ID*  FPAR  { CmdAtribRetorno (v, id, args) }
        ;

comando_if: IF  teste = expressao THEN
                entao = comando+
                senao = option (ELSE cs = comando+ { cs })
            END {
              CmdIf (teste, entao, senao)
            }

comando_for:
  | FOR v = variavel  ATRIB l1=LITINT VIRGULA l2 = LITINT VIRGULA l3 = LITINT DO
      cs = comando* END {CmdFor (v, l1, l2, l3, cs) }
  ;

comando_while:
  | WHILE teste = expressao DO  cs = comando* END { CmdWhile  (teste, cs) }
  ;

comando_print:
  | PRINT APAR  teste = expressao FPAR  {CmdPrint (teste) }
  ;

comando_scan:
  | v = variavel  ATRIB IO_READ APAR  FPAR  {CmdScan  (v) }
  ;

comando_funcao:
  | id = ID APAR  args = ID* FPAR {CmdFunction  (id, args)  }
  ;

comando_retorno:
  | RETURN  exp = expressao { CmdRetorno  (exp) }
  ;

expressao:
    | v = variavel  { ExpVar  v }
    | i = LITINT    { ExpInt  i }
    | s = LITSTRING { ExpString s }
    | b = BOOL      { ExpBool b }
  |e1 = expressao op = oper e2 = expressao  { ExpOp (op, e1, e2)  }
  |APAR e = expressao FPAR  { e }


%inline oper:
  | OR  { Or  }
  | AND { And }
  | MAIOR { Maior }
  | MENOR { Menor }
  | MAIOR_OU_IGUAL  { Maior_ou_Igual  }
  | MENOR_OU_IGUAL  { Menor_ou_Igual  }
  | EQUIVALENTE     { Equivalente }
  | NAO_EQUIVALENTE { Nao_Equivalente }
  | OR_BINARIO      { Or_Binario  }
  | OR_BINARIO_EXCLUSIVO  { Or_Binario_Exclusivo  }
  | AND_BINARIO           { And_Binario }
  | MULT_POR_2            { Mult_Por_2  }
  | DIV_POR_2             { Div_Por_2 }
  | CONCATENA             { Concatena }
  | ADICAO                { Adicao  }
  | SUBTRACAO             { Subtracao }
  | MULTIPLICACAO         { Multiplicacao }
  | DIVISAO               { Divisao }
  | DIVISAO_INTEIRO       { Divisao_Inteiro }
  | MODULO                { Modulo  }
  | NOT                   { Not }
  | TAMANHO               { Tamanho }
  | EXPONENCIACAO         { Exponenciacao }

variavel: 
  | x=ID    { VarSimples  x }
