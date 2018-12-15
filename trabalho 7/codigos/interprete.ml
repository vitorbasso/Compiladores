module Amb = AmbInterp
module A = Ast
module S = Sast
module T = Tast

exception Valor_de_retorno of T.expressao

let obtem_nome_tipo_var exp = let open T in
  match exp with
  | ExpVar (v, tipo) -> 
     (match v with
	| A.VarSimples (nome,_) -> (nome,tipo)
     )
  | _ -> failwith "obtem_nome_tipo_var: nao eh variavel"

let pega_int exp = 
  match exp with
  | T.ExpInt (i,_) -> i
  | _ -> failwith "pega_int: nao eh inteiro"

let pega_float exp = 
  match exp with
  | T.ExpFloat (f,_) -> f
  | _ -> failwith "pega_float: nao eh float"

let pega_string exp = 
  match exp with
  | T.ExpString (s,_) -> s
  | _ -> failwith "pega_string: nao eh string"

let pega_bool exp =
  match exp with
  | T.ExpBool (b,_) -> b
  | _ -> failwith "pega_bool: nao eh bool"

type classe_op = Aritmetico | Relacional | Logico

let classifica op = 
  let open A in
  match op with
    E
  | Ou -> Logico
  | Menor
  | Maior
  | MaiorIgual
  | MenorIgual
  | Igual
  | Difer -> Relacional
  | Mais
  | Menos
  | Mult
  | Div -> Aritmetico

let rec interpreta_exp amb exp =
  let open A in
  let open T in
  match exp with
  | ExpVoid
  | ExpInt _
  | ExpFloat _
  | ExpString _
  | ExpBool _ -> exp
  | ExpVar _ -> 
     let (id, tipo) = obtem_nome_tipo_var exp in
       (match (Amb.busca amb id) with
         | Amb.EntVar (tipo, v) ->
            (match v with
             | None -> failwith ("variavel nao inicializada: " ^ id)
	     | Some valor -> valor
	    )
         | _ -> failwith "interpreta_exp: expvar"
       )
  | ExpUn ((op, top), (exp, texp)) ->
     let vexp = interpreta_exp amb exp in
     let valor = 
	(match op with
	   | Not -> ExpBool (not(pega_bool vexp), top)
	)
     in
	valor
  | ExpOp ((op, top), (esq, tesq), (dir, tdir)) ->
     let vesq = interpreta_exp amb esq
     and vdir = interpreta_exp amb dir in

       let interpreta_aritmetico () =
	(match tesq with
	  | TipoInt ->
	     (match op with
		| Mais -> ExpInt (pega_int vesq + pega_int vdir, top)
		| Menos -> ExpInt (pega_int vesq - pega_int vdir, top)
		| Mult -> ExpInt (pega_int vesq * pega_int vdir, top)
		| Div -> ExpInt (pega_int vesq / pega_int vdir, top)
		| _ -> failwith "interpreta_aritmetico"
             )
	  | TipoFloat ->
	     (match op with
		| Mais -> ExpFloat (pega_float vesq +. pega_float vdir, top)
		| Menos -> ExpFloat (pega_float vesq -. pega_float vdir, top)
		| Mult -> ExpFloat (pega_float vesq *. pega_float vdir, top)
		| Div -> ExpFloat (pega_float vesq /. pega_float vdir, top)
		| _ -> failwith "interpreta_aritmetico"
             )
	  | _ -> failwith "Valor nao permitido para operador aritmetico"
	)
       and interpreta_relacional () =
	(match tesq with
	  | TipoInt -> 
	     (match op with
		| Menor -> ExpBool (pega_int vesq < pega_int vdir, top)
		| Maior -> ExpBool (pega_int vesq > pega_int vdir, top)
		| Igual -> ExpBool (pega_int vesq = pega_int vdir, top)
		| Difer -> ExpBool (pega_int vesq != pega_int vdir, top)
		| MaiorIgual -> ExpBool (pega_int vesq >= pega_int vdir, top)
		| MenorIgual -> ExpBool (pega_int vesq <= pega_int vdir, top)
		| _ -> failwith "interpreta_relacional"
	     )
	  | TipoFloat -> 
	     (match op with
		| Menor -> ExpBool (pega_float vesq < pega_float vdir, top)
		| Maior -> ExpBool (pega_float vesq > pega_float vdir, top)
		| Igual -> ExpBool (pega_float vesq = pega_float vdir, top)
		| Difer -> ExpBool (pega_float vesq != pega_float vdir, top)
		| MaiorIgual -> ExpBool (pega_float vesq >= pega_float vdir, top)
		| MenorIgual -> ExpBool (pega_float vesq <= pega_float vdir, top)
		| _ -> failwith "interpreta_relacional"
	     )
	  | TipoString -> 
	     (match op with
		| Menor -> ExpBool (pega_string vesq < pega_string vdir, top)
		| Maior -> ExpBool (pega_string vesq > pega_string vdir, top)
		| Igual -> ExpBool (pega_string vesq = pega_string vdir, top)
		| Difer -> ExpBool (pega_string vesq != pega_string vdir, top)
		| MaiorIgual -> ExpBool (pega_string vesq >= pega_string vdir, top)
		| MenorIgual -> ExpBool (pega_string vesq <= pega_string vdir, top)
		| _ -> failwith "interpreta_relacional"
	     )
	  | TipoBool ->
	     (match op with
		| Menor -> ExpBool (pega_bool vesq < pega_bool vdir, top)
		| Maior -> ExpBool (pega_bool vesq > pega_bool vdir, top)
		| Igual -> ExpBool (pega_bool vesq = pega_bool vdir, top)
		| Difer -> ExpBool (pega_bool vesq != pega_bool vdir, top)
		| MaiorIgual -> ExpBool (pega_bool vesq >= pega_bool vdir, top)
		| MenorIgual -> ExpBool (pega_bool vesq <= pega_bool vdir, top)
		| _ -> failwith "interpreta_relacional"
	     )
	  | _ -> failwith "interpreta_relacional"
        )
       and interpreta_logico () =
	(match tesq with
	  | TipoBool ->
	    (match op with
	      	| Ou -> ExpBool (pega_bool vesq || pega_bool vdir, top)
		| E -> ExpBool (pega_bool vesq && pega_bool vdir, top)
		| _ -> failwith "interpreta_logico"
	    )
	  | _ -> failwith "interpreta_logico"
        )
     in
     let valor = (match (classifica op) with
	  Aritmetico -> interpreta_aritmetico ()
	| Relacional -> interpreta_relacional ()
	| Logico -> interpreta_logico ()
      )
     in
	valor
  | ExpChamada (id, args, tipo) ->
     let open Amb in
     ( match (Amb.busca amb id) with
	| Amb.EntFun {tipo_fn; formais; locais; corpo} ->
	   let vargs = List.map (interpreta_exp amb) args in
	   let vformais = List.map2 (fun (n,t) v -> (n, t, Some v)) formais vargs
	   in interpreta_fun amb id vformais locais corpo
	| _ -> failwith "interpreta_exp: expchamada"
     )

and interpreta_fun amb fn_nome fn_formais fn_locais fn_corpo =
  let open A in
  let ambfn = Amb.novo_escopo amb in
    let insere_local d = 
      match d with
	(DecVar (v, t)) -> Amb.insere_local ambfn (fst v) t None
  in
  let insere_parametro (n,t,v) = Amb.insere_param ambfn n t v in
  let _ = List.iter insere_parametro fn_formais in
    let _ = List.iter insere_local fn_locais in
  try
    let _ = List.iter (interpreta_cmd ambfn) fn_corpo in T.ExpVoid
    with
	Valor_de_retorno expret -> expret

and interpreta_cmd amb cmd =
  let open A in
  let open T in
  match cmd with
     CmdRetorno exp ->
      (match exp with
         None -> raise (Valor_de_retorno ExpVoid)
       | Some e ->
	 let e1 = interpreta_exp amb e in
	 raise (Valor_de_retorno e1)
     )
   | CmdSe (teste, entao, senao) ->
      let teste1 = interpreta_exp amb teste in
	(match teste1 with
	  ExpBool (true,_) ->
	  List.iter (interpreta_cmd amb) entao
	| _ -> 
	  (match senao with
	      None -> ()
	    | Some bloco -> List.iter (interpreta_cmd amb) bloco
	  )
	)
   | CmdAtrib (elem, exp) ->
     let exp = interpreta_exp amb exp
     and (elem1, tipo) = obtem_nome_tipo_var elem in
     Amb.atualiza_var amb elem1 tipo (Some exp)
   | While (teste, corpo) ->
     let rec laco teste corpo =
       let condicao = interpreta_exp amb teste in
	 (match condicao with
	   | ExpBool (true,_) ->
	       	let _ = List.iter (interpreta_cmd amb) corpo in
		  laco teste corpo
	   | _ -> ()
	 )
       in laco teste corpo
   | For (atrib, teste, inc, corpo) ->
     let _ = interpreta_cmd amb atrib in
      let rec executa_for teste inc corpo atrib =
	let teste1 = interpreta_exp amb teste in
	  (match teste1 with
	     ExpBool (true,_) -> 
		let _ = List.iter (interpreta_cmd amb) corpo
		and _ = interpreta_cmd amb inc in 
		   executa_for teste inc corpo atrib
	   | _ -> ())
	in executa_for teste inc corpo atrib
   | CmdChamada exp -> ignore(interpreta_exp amb exp)
   | CmdIn exps ->
     let nts = List.map (obtem_nome_tipo_var) exps in
     let leia_var (nome, tipo) =
	let valor =
	 (match tipo with
	   | A.TipoInt -> T.ExpInt (read_int (), tipo)
	   | A.TipoFloat -> T.ExpFloat (read_float (), tipo)
	   | A.TipoString -> T.ExpString (read_line (), tipo)
	   | _ -> failwith "leia_var: nao implementado"
	 )
	in Amb.atualiza_var amb nome tipo (Some valor)
     in
     List.iter leia_var nts
   | CmdOut exps ->
     let exps = List.map (interpreta_exp amb) exps in
     let imprima exp = 
	(match exp with
	  | T.ExpInt (n,_) -> let _ = print_int n in print_string " "
	  | T.ExpFloat (n,_) -> let _ = print_float n in print_string " "
	  | T.ExpString (s,_) -> let _ = print_string s in print_string " "
	  | T.ExpBool (b,_) ->
	      let _ = print_string (if b then "true" else "false")
	      in print_string " "
	  | _ -> failwith "imprima: nao implementado"
	)
     in
     let _ = List.iter imprima exps in
     print_newline() 

let insere_declaracao_var amb dec =
  match dec with
    A.DecVar (nome, tipo) -> Amb.insere_local amb (fst nome) tipo None

let insere_declaracao_fun amb dec =
  let open A in
    match dec with
      DecFun {fn_nome; fn_tiporet; fn_formais; fn_locais; fn_corpo} ->
	let nome = fst fn_nome in
	let formais = List.map (fun (n,t) -> ((fst n), t)) fn_formais in
	Amb.insere_fun amb nome formais fn_locais fn_tiporet fn_corpo

let fn_predefs = let open A in [
	("entrada", [("x", TipoInt); ("y", TipoInt)], TipoVoid, []);
	("saida", [("x", TipoInt); ("y", TipoInt)], TipoVoid, []);
]

let declaraca_predefinidas amb =
   List.iter (fun (n,ps,tr,c) -> Amb.insere_fun amb n ps [] tr c) fn_predefs

let interprete ast = 
  let amb_global = Amb.novo_amb [] in
  let _ = declaraca_predefinidas amb_global in
  let (A.Programa (decs_globais, decs_funs, corpo)) = ast in
  let _ = List.iter (insere_declaracao_var amb_global) decs_globais in
  let _ = List.iter (insere_declaracao_fun amb_global) decs_funs in
  let resultado = List.iter (interpreta_cmd amb_global) corpo in
  resultado
