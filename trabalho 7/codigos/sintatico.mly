%{
   open Lexing
   open Ast
   open Sast
%}

%token <Lexing.position> APAR
%token <Lexing.position> FPAR
%token <Lexing.position> VIRG
%token <Lexing.position> ATRIB
%token <Lexing.position> IF
%token <Lexing.position> ELSE
%token <Lexing.position> WHILE
%token <Lexing.position> FOR
%token <Lexing.position> MAIS
%token <Lexing.position> MENOS
%token <Lexing.position> MULTI
%token <Lexing.position> DIVI
%token <Lexing.position> IGUAL
%token <Lexing.position> MAIOR
%token <Lexing.position> MENOR
%token <Lexing.position> OULOG
%token <Lexing.position> ELOG
%token <Lexing.position> NOT
%token <Lexing.position> MAIORIGUAL
%token <Lexing.position> MENORIGUAL
%token <Lexing.position> DIF
%token <Lexing.position> DO
%token <Lexing.position> THEN
%token <Lexing.position> END
%token <Lexing.position> FUNCTION
%token <Lexing.position> INPUT
%token <Lexing.position> OUTPUT
%token <Lexing.position> RETURN
%token <Lexing.position> VOID
%token <Lexing.position> INT
%token <Lexing.position> FLOAT
%token <Lexing.position> STRING
%token <Lexing.position> BOOLEANO
%token <int * Lexing.position> LITINT
%token <float * Lexing.position> LITFLOAT
%token <string * Lexing.position> LITSTRING
%token <string * Lexing.position> ID
%token <bool * Lexing.position> BOOL
%token EOF

%left NOT
%left OULOG
%left ELOG
%left IGUAL DIF
%left MAIOR MENOR
%left MAIORIGUAL MENORIGUAL
%left MAIS MENOS
%left MULTI DIVI

%start <Sast.expressao Ast.programa> programa

%%

programa: 
	fs = declaracao_de_funcao *
	cs = comando *
	EOF { Programa (List.flatten [], fs, cs) }

declaracao_de_variavel:
	t = tipo ids = separated_nonempty_list(VIRG, ID) {
		List.map (fun id -> DecVar(id, t)) ids }

declaracao_de_funcao:
	FUNCTION nome = ID APAR formais = separated_list(VIRG, parametro) FPAR t = tipo
	ds = declaracao_de_variavel*
	cs = comando*
	END {
		DecFun {
			fn_nome = nome;
			fn_tiporet = t;
			fn_formais = formais;
			fn_locais = List.flatten ds;
			fn_corpo = cs;
		}
	}

parametro: nome = ID t = tipo {(nome, t)}

tipo: t = tipo_simples { t }

tipo_simples: INT { TipoInt }
	    | FLOAT { TipoFloat }
	    | STRING { TipoString }
	    | BOOLEANO { TipoBool }
	    | VOID { TipoVoid }

comando:  c = comando_Atribuicao { c }
	| c = comando_Se { c }
	| c = comando_Chamada { c }
	| c = comando_Retorno { c }
	| c = comando_While { c }
	| c = comando_For { c }
	| c = comando_Input { c }
	| c = comando_Output { c }

comando_Atribuicao: esq = expressaoAtrib ATRIB dir = expressao { CmdAtrib (esq, dir) }

comando_Se: IF teste = expressao THEN 
		entao = comando+
		senao = option(ELSE cs = comando+ {cs})
	    END {
		CmdSe (teste, entao, senao)
	    }


comando_While: WHILE e = expressao DO stm = comando* END { While(e, stm) }

comando_For: FOR lv = comando_Atribuicao VIRG e1 = expressao VIRG e2 = comando_Atribuicao DO stm = comando* END { For(lv,e1,e2,stm) }

comando_Chamada: exp=chamada { CmdChamada exp }

comando_Retorno: RETURN e = expressao? { CmdRetorno e }

comando_Input: args = separated_list(VIRG, expressao) INPUT { CmdIn args }

comando_Output: OUTPUT APAR args = separated_list(VIRG, expressao) FPAR { CmdOut args }

expressaoAtrib:
	| v = variavel { ExpVar v}
	;

expressao:
	| v = variavel { ExpVar v }
	| i = LITINT { ExpInt i }
	| f = LITFLOAT { ExpFloat f }
	| s = LITSTRING { ExpString s }
	| b = BOOL { ExpBool b }
	| e1 = expressao op = oper e2 = expressao { ExpOp (op, e1, e2) }
	| op = operUn e = expressao { ExpUn (op, e) }
	| c = chamada { c }
	| APAR e = expressao FPAR { e }
	;

chamada: nome = ID APAR args = separated_list(VIRG, expressao) FPAR { ExpChamada (nome, args) }

%inline oper:
	| pos = MAIS { (Mais, pos) }
	| pos = MENOS { (Menos, pos) }
	| pos = MULTI { (Mult, pos) }
	| pos = DIVI { (Div, pos) }
	| pos = MENOR { (Menor, pos) }
	| pos = MENORIGUAL { (MenorIgual, pos) }
	| pos = IGUAL { (Igual, pos) }
	| pos = DIF { (Difer, pos) }
	| pos = MAIOR { (Maior, pos) }
	| pos = MAIORIGUAL { (MaiorIgual, pos) }
	| pos = ELOG { (E, pos) }
	| pos = OULOG { (Ou, pos) }

%inline operUn:
	| pos = NOT { (Not, pos) }

variavel:
	| x = ID { VarSimples x}


