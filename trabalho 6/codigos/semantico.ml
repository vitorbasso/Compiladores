module Amb = Ambiente
module A = Ast
module S = Sast
module T = Tast

let rec posicao exp = let open S in
  match exp with
  | ExpInt (_,pos) -> pos
  | ExpVar v -> (match v with
      | A.VarSimples (_,pos) -> pos
    )
  | ExpFloat (_,pos) -> pos
  | ExpString (_,pos) -> pos
  | ExpBool (_,pos) -> pos
  | ExpOp ((_,pos),_,_) -> pos
  | ExpUn ((_,pos),_) -> pos
  | ExpChamada ((_,pos),_) -> pos

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

let msg_erro_pos pos msg =
  let open Lexing in
  let lin = pos.pos_lnum
  and col = pos.pos_cnum - pos.pos_bol - 1 in
  Printf.sprintf "Semantico -> linha %d, coluna %d: %s" lin col msg

let msg_erro nome msg =
  let pos = snd nome in
  msg_erro_pos pos msg

let nome_tipo t =
  let open A in 
    match t with
        TipoInt -> "inteiro"
      | TipoFloat -> "float"
      | TipoString -> "string"
      | TipoVoid -> "void"
      | TipoBool -> "bool"
      | TipoArranjo (t,i,f) -> "arranjo"
      | TipoRegistro cs -> "registro"

let mesmo_tipo pos msg tinf tdec = 
  if tinf <> tdec
  then
    let msg = Printf.sprintf msg (nome_tipo tinf) (nome_tipo tdec) in
    failwith (msg_erro_pos pos msg)

let rec infere_exp amb exp = 
  match exp with
    S.ExpInt n -> (T.ExpInt (fst n, A.TipoInt), A.TipoInt)
  | S.ExpString s -> (T.ExpString (fst s, A.TipoString), A.TipoString)
  | S.ExpFloat f -> (T.ExpFloat (fst f, A.TipoFloat), A.TipoFloat)
  | S.ExpBool b -> (T.ExpBool (fst b, A.TipoBool), A.TipoBool)
  | S.ExpVar v -> 
     (match v with
        A.VarSimples nome ->
	let id = fst nome in
	  (try (match (Amb.busca amb id) with
		| Amb.EntVar tipo -> (T.ExpVar (A.VarSimples nome, tipo), tipo)
		| Amb.EntFun _ ->
		  let msg = "nome de funcao usado como nome de variavel: " ^ id in
		  failwith (msg_erro nome msg)
	  	)
	  with Not_found ->
                 let msg = "A variavel " ^ id ^ " nao foi declarada" in
                 failwith (msg_erro nome msg)
           )
     )
  | S.ExpUn (op, exp) ->
     let (exp, texp) = infere_exp amb exp
     and op = fst op in
     let tinf =
	(match texp with
	   A.TipoBool -> texp
	 | _ -> failwith "Operador unario deve ser utilizado com expressao booleana"
	)
     in
       (T.ExpUn ((op,tinf), (exp, texp)), tinf)
  | S.ExpOp (op, esq, dir) ->
     let (esq, tesq) = infere_exp amb esq
     and (dir, tdir) = infere_exp amb dir in

     let verifica_aritmetico () =
	(match tesq with
	    A.TipoInt ->
	    let _ = mesmo_tipo (snd op)
	      "O operando esquerdo eh do tipo %s mas o direito eh do tipo %s"
	      tesq tdir
	    in tesq
	  | A.TipoFloat ->
	    let _ = mesmo_tipo (snd op)
	      "O operando esquerdo eh do tipo %s mas o direito eh do tipo %s"
	      tesq tdir
	    in tesq
	  | t -> let msg = "um operador aritmetico nao pode ser usado com o tipo " ^ (nome_tipo t)
	    in failwith (msg_erro_pos (snd op) msg)
	)
   
     and verifica_relacional () = 
	(match tesq with
	    A.TipoInt ->
	    let _ = mesmo_tipo (snd op)
	      "O operando esquerdo eh do tipo %s mas o direito eh do tipo %s"
	      tesq tdir
	    in A.TipoBool
	  | A.TipoString ->
	    let _ = mesmo_tipo (snd op)
	      "O operando esquerdo eh do tipo %s mas o direito eh do tipo %s"
	      tesq tdir
	    in A.TipoBool
	  | A.TipoBool ->
	    let _ = mesmo_tipo (snd op)
	      "O operando esquerdo eh do tipo %s mas o direito eh do tipo %s"
	      tesq tdir
	    in A.TipoBool
	  | t -> let msg = "um operador relacional nao pode ser usado com o tipo " ^ (nome_tipo t)
	    in failwith (msg_erro_pos (snd op) msg)
	)
     and verifica_logico () =
        (match tesq with
	  A.TipoBool ->
	  let _ = mesmo_tipo (snd op)
		    "O operando esquerdo eh do tipo %s mas o direito eh do tipo %s"
		    tesq tdir
	  in A.TipoBool
	| t -> let msg = "um operador logico nao poder ser usado com o tipo " ^
	  		 (nome_tipo t)
	       in failwith (msg_erro_pos (snd op) msg)
        )
    in
    let op = fst op in
    let tinf = (match (classifica op) with
	  Aritmetico -> verifica_aritmetico ()
	| Relacional -> verifica_relacional ()
	| Logico -> verifica_logico ()
      )
    in
       (T.ExpOp ((op,tinf), (esq, tesq), (dir, tdir)), tinf)
  | S.ExpChamada (nome, args) -> 
     let rec verifica_parametros ags ps fs = 
	match (ags, ps, fs) with
	  (a::ags), (p::ps), (f::fs) ->
	     let _ = mesmo_tipo (posicao a)
		"O parametro eh do tipo %s mas deveria ser do tipo %s" p f
	     in verifica_parametros ags ps fs
	| [], [], [] -> ()
	| _ -> failwith (msg_erro nome "Numero incorreto de parametros")
     in
     let id = fst nome in
     try
	begin
	  let open Amb in
	  
          match (Amb.busca amb id) with
	    Amb.EntFun {tipo_fn; formais} ->
	    let argst = List.map (infere_exp amb) args
	    and tipos_formais = List.map snd formais in
	    let _ = verifica_parametros args (List.map snd argst) tipos_formais
	    in (T.ExpChamada (id, (List.map fst argst), tipo_fn), tipo_fn)
	  | Amb.EntVar _ -> 
	    let msg = id ^ " eh uma variavel e nao uma funcao" in
	    failwith (msg_erro nome msg)
	end
    with Not_found ->
	let msg = "Nao existe a funcao de nome " ^ id in
	failwith (msg_erro nome msg)

let rec verifica_cmd amb tiporet cmd =
  let open A in
  match cmd with
      CmdRetorno exp -> 
      (match exp with
	  None ->
	   let _ = mesmo_tipo (Lexing.dummy_pos)
		"O tipo retornado eh %s mas foi declarado como %s"
		TipoVoid tiporet
	   in CmdRetorno None
	| Some e ->
	   let (e1, tinf) = infere_exp amb e in
	   let _ = mesmo_tipo (posicao e)
	   	 "O tipo retornado eh %s mas foi declarado como %s"
		 tinf tiporet
	   in CmdRetorno (Some e1)
      )
    | CmdSe (teste, entao, senao) ->
      let (teste1, tinf) = infere_exp amb teste in
      let entao1 = List.map (verifica_cmd amb tiporet) entao in
      let senao1 =
	match senao with
	  None -> None
	| Some bloco -> Some (List.map (verifica_cmd amb tiporet) bloco)
      in
	CmdSe (teste1, entao1, senao1)
    | CmdAtrib (elem, exp) ->
      let (exp1, tdir) = infere_exp amb exp
      and (elem1, tesq) = infere_exp amb elem in
      let _ = mesmo_tipo (posicao elem)
	"Atribuicao com tipos diferentes: %s = %s" tesq tdir
      in CmdAtrib (elem1, exp1)
    | While (teste, comandos) ->
      let (teste1, tinf) = infere_exp amb teste
      and corpo = List.map(verifica_cmd amb tiporet) comandos
      in
	While (teste1, corpo)
    | For (atrib, teste, inc, corpo) ->
      let attr_externa = verifica_cmd amb tiporet atrib
      and (teste1, tinf) = infere_exp amb teste
      and attr_interna = verifica_cmd amb tiporet inc
      and corpo1 = List.map(verifica_cmd amb tiporet) corpo
      in
	For(attr_externa, teste1, attr_interna, corpo1)
    | CmdChamada exp ->
      let (exp, tinf) = infere_exp amb exp
      in 
	CmdChamada exp
    | CmdIn exps ->
      let exps = List.map (infere_exp amb) exps in 
        CmdIn (List.map fst exps)
    | CmdOut exps ->
      let exps = List.map (infere_exp amb) exps in 
        CmdOut (List.map fst exps)

and verifica_fun amb ast =
  let open A in
  match ast with
    A.DecFun {fn_nome; fn_tiporet; fn_formais; fn_locais; fn_corpo} -> 
      let ambfn = Amb.novo_escopo amb in
	let insere_parametro (v,t) = Amb.insere_param ambfn (fst v) t in
          let _ = List.iter insere_parametro fn_formais in
            let insere_local = fun (DecVar (v,t)) -> Amb.insere_local ambfn (fst v) t in
	      let _ = List.iter insere_local fn_locais in
	      let corpo_tipado = List.map (verifica_cmd ambfn fn_tiporet) fn_corpo in
	      
	      A.DecFun {
		fn_nome;
		fn_tiporet;
		fn_formais;
		fn_locais;
		fn_corpo = corpo_tipado
	      }

let rec verifica_dup xs =
  match xs with
     [] -> []
   | (nome, t)::xs ->
     let id = fst nome in
     if(List.for_all (fun (n,t) -> (fst n) <> id) xs)
     then (id,t) :: verifica_dup xs
     else let msg = "Parametro duplicado " ^ id in
	failwith (msg_erro nome msg)

let insere_declaracao_var amb dec =
  let open A in
    match dec with 
	DecVar (nome, tipo) -> Amb.insere_local amb (fst nome) tipo

let insere_declaracao_fun amb dec =
  let open A in
    match dec with
      DecFun {fn_nome; fn_tiporet; fn_formais; fn_corpo} ->
	let formais = verifica_dup fn_formais in
	let nome = fst fn_nome in
	Amb.insere_fun amb nome formais fn_tiporet

let semantico ast =
  let amb_global = Amb.novo_amb [] in
  let (A.Programa (decs_globais, decs_funs, corpo)) = ast in
  let _ = List.iter (insere_declaracao_var amb_global) decs_globais in 
  let _ = List.iter (insere_declaracao_fun amb_global) decs_funs in
  let decs_funs = List.map (verifica_fun amb_global) decs_funs in
  let corpo = List.map (verifica_cmd amb_global A.TipoVoid) corpo in
    (A.Programa (decs_globais, decs_funs, corpo), amb_global)



