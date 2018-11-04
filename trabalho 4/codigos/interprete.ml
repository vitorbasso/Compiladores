module Amb = AmbInterp
module A = Ast
module S = Sast
module T = Tast

exception Valor_de_retorno of T.expressao

let obtem_nome_tipo_var exp = let open T in 
      match exp with
        | ExpVar (v, tipo) ->
            (match v with
                | A.VarSimples (nome,_) -> (nome, tipo))
        |  _ -> failwith "obtem_nome_tipo_var: nao eh variavel"

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
        | _ -> failwith "pega_bool: nao eh booleano"

type classe_op = Aritmetico | Relacional | Logico | Cadeia

type classifica op = 
    let open A in 
      match op with
            Or
          | And
          | Or_Binario
          | Or_Binario_Exclusivo
          | And_Binario
          | Not ->  Logico
          | Menor
          | Maior
          | Menor_ou_Igual
          | Maior_ou_Igual
          | Equivalente
          | Nao_Equivalente ->  Relacional
          | Adicao
          | Subtracao
          | Multiplicacao
          | Divisao
          | Mult_Por_2
          | Div_Por_2
          | Divisao_Inteiro
          | Modulo
          | Exponenciacao ->  Aritmetico
          | Concatena ->  Cadeia

let rec interpreta_exp amb exp =
  let open A in
  let open T in
    match exp with
          | ExpVoid
          | ExpInt  _
          | ExpFloat  _
          | ExpString _
          | ExpBool _ ->  exp
          | ExpVar  _ ->
            let (id, tipo) = obtem_nome_tipo_var exp in
              (match (Amb.busca amb id) with
                  | Amb.EntVar (tipo, v) ->
                    (match v with
                      | None  -> failwith ("variavel nao inicializada: " ^ id)
                      | Some valor -> valor)
                  | _ -> failwith ("interpreta_exp: expvar"))
          | ExpOp ((op, top), (esq, tesq), (dir, tdir)) ->
              let vesq = interpreta_exp amb esq
              and vdir = interpreta_exp amb dir in

                let interpreta_aritmetico () =
                    (match top with
                      | TipoInt ->
                          (match op with
                            | Adicao        ->  ExpInt (pega_int vesq + pega_int vdir, top)
                            | Subtracao     ->  ExpInt (pega_int vesq - pega_int vdir, top)
                            | Multiplicacao ->  ExpInt (pega_int vesq * pega_int vdir, top)
                            | Divisao       ->  ExpInt (pega_int vesq / pega_int vdir, top)
                            | Modulo        ->  ExpInt (pega_int vesq mod pega_int vdir, top)
                            | _             ->  failwith ("interpreta_aritmetico: int"))
                      | TipoFloat ->
                        (match op with
                            | Adicao        ->  ExpFloat (pega_float vesq +. pega_float vdir, top)
                            | Subtracao     ->  ExpFloat (pega_float vesq -. pega_float vdir, top)
                            | Multiplicacao ->  ExpFloat (pega_float vesq *. pega_float vdir, top)
                            | Divisao       ->  ExpFloat (pega_float vesq /. pega_float vdir, top)
                            | _             ->  failwith ("interpreta_aritmetico: float"))
                      | _ ->  failwith ("interpreta_aritmetico: type problem"))
                and interpreta_relacional () =
                    (match tesq with
                        | TipoInt ->
                          (match op with
                            | Menor           -> ExpBool (pega_int vesq < pega_int vdir, top)
                            | Maior           -> ExpBool (pega_int vesq > pega_int vdir, top)
                            | Equivalente     -> ExpBool (pega_int vesq == pega_int vdir, top)
                            | Nao_Equivalente -> ExpBool (pega_int vesq != pega_int vdir, top)
                            | Menor_ou_Igual  -> ExpBool (pega_int vesq <= pega_int vdir, top)
                            | Maior_ou_Igual  -> ExpBool (pega_int vesq >= pega_int vdir, top)
                            | _               -> failwith ("interpreta_relacional: int"))
                        | TipoFloat ->
                          (match op with
                            | Menor           -> ExpBool (pega_float vesq < pega_float vdir, top)
                            | Maior           -> ExpBool (pega_float vesq > pega_float vdir, top)
                            | Equivalente     -> ExpBool (pega_float vesq == pega_float vdir, top)
                            | Nao_Equivalente -> ExpBool (pega_float vesq != pega_float vdir, top)
                            | Menor_ou_Igual  -> ExpBool (pega_float vesq <= pega_float vdir, top)
                            | Maior_ou_Igual  -> ExpBool (pega_float vesq >= pega_float vdir, top)
                            | _               -> failwith ("interpreta_relacional: float"))
                        | TipoString ->
                          (match op with
                            | Menor           -> ExpBool (pega_string vesq < pega_string vdir, top)
                            | Maior           -> ExpBool (pega_string vesq > pega_string vdir, top)
                            | Equivalente     -> ExpBool (pega_string vesq == pega_string vdir, top)
                            | Nao_Equivalente -> ExpBool (pega_string vesq != pega_string vdir, top)
                            | Menor_ou_Igual  -> ExpBool (pega_string vesq <= pega_string vdir, top)
                            | Maior_ou_Igual  -> ExpBool (pega_string vesq >= pega_string vdir, top)
                            | _               -> failwith ("interpreta_relacional: string"))
                        | TipoBool ->
                            (match op with
                              | Menor           -> ExpBool (pega_bool vesq < pega_bool vdir, top)
                              | Maior           -> ExpBool (pega_bool vesq > pega_bool vdir, top)
                              | Equivalente     -> ExpBool (pega_bool vesq == pega_bool vdir, top)
                              | Nao_Equivalente -> ExpBool (pega_bool vesq != pega_bool vdir, top)
                              | Menor_ou_Igual  -> ExpBool (pega_bool vesq <= pega_bool vdir, top)
                              | Maior_ou_Igual  -> ExpBool (pega_bool vesq >= pega_bool vdir, top)
                              | _               -> failwith ("interpreta_relacional: bool"))
                        | _ ->  failwith  ("interpreta_relacional: type error"))
                and interpreta_logico () =
                    (match testq with
                        | TipoBool  ->
                          (match op with
                            | Or  ->  ExpBool (pega_bool vesq || pega_bool vdir, top)
                            | And ->  ExpBool (pega_bool vesq && pega_bool vdir, top)
                            | _   ->  failwith ("interpreta_logico: boold"))
                        | _ ->  failwith ("interpreta_logico: type problem"))

                and interpreta_cadeia () =
                    (match testq with
                        | TipoString  ->
                          (match op with
                            | Concatena ->  ExpString (pega_string vesq ^ pega_string vdir, top)
                            | _         ->  failwith ("interpreta_cadeia: string"))
                        | _ ->  failwith("interpreta_cadeia: type problem"))

                in
                let valor = (match (classifica op) with
                                Aritmetico  ->  interpreta_aritmetico ()
                              | Relacional  ->  interpreta_relacional ()
                              | Logico      ->  interpreta_logico ()
                              | Cadeia      ->  interpreta_cadeia ())
                in
                  valor
          | ExpChamada (id, args, tipo) ->
              let open Amb in
                  (match (Amb.busca amb id) with
                    | Amb.EntFun {tipo_fn; formais; locais; corpo} ->
                        let vargs = List.map (interpreta_exp amb) args in
                        let vformais = List.map2 (fun (n, t) v -> (n, t, Some, v))
                          formais vargs
                        in interpreta_fun amb id vformais locais corpo
                    | _ ->  failwith ("interpreta_exp: expchamada"))
              and interpreta_fun amb fn_nome fn_formais fn_locais fn_corpo =
                  let open A in
                    let ambfn = Amb.novo_escopo amb in
                      let insere_local d =
                          match d with
                            (DecVar (v, t)) -> Amb.insere_local ambfn (fst v) t None

                      in 
                      let insere_parametro (n, t, v) = Amb.insere_param ambfn n t v in
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
                            None    ->  raise (Valor_de_retorno ExpVoid)
                          | Some e  ->
                            let e1 = interpreta_exp amb e in
                              raise (Valor_de_retorno e1))
          | CmdIf (teste, entao, senao) ->
              let teste1 = interpreta_exp amb teste in
                (match teste1 with
                  ExpBool (true, _) ->
                    List.iter (interpreta_cmd amb) entao
              | _ ->
                (match senao with
                    None        ->  ()
                  | Some bloco  ->  List.iter (interpreta_cmd amb) bloco))
          | CmdAtrib (elem, exp)  ->
              let exp = interpreta_exp amb exp
              and (elem1, tipo) = obtem_nome_tipo_var elem in
              Amb.atualiza_var amb elem1 tipo (Some exp)

          | CmdChamada exp  ->  ignore (interpreta_exp amb exp)

          | CmdScanInt exp
          | CmdScanFloat exp
          | CmdScanString exp ->
              let nt = obtem_nome_tipo_var exp in
              let leia_var (nome, tipo) = 
                let _ =
                  (try
                    begin
                        match (Amb.busca amb nome) with
                          | Amb.EntVar (_,_)  ->  ()
                          | Amb.EntFun _      ->  failwith ("falha no input")
                    end
                  with Not_found  ->
                    let _ = Amb.insere_local amb nome tipo None in ())
                in
                let valor = 
                    (match tipo with
                      | TipoInt     ->  T.ExpInt (read_int (), tipo)
                      | TipoFloat   ->  T.ExpFloat (read_float (), tipo)
                      | TipoString  ->  T.ExpString (read_line (), tipo)
                | _ -> failwith ("Fail input"))
                in Amb.atualiza_var amb nome tipo (Some valor)
              in leia_var nt

          | CmdPrint exp  ->
              let resp = interpreta_exp amb exp in
                  (match resp with
                    | T.ExpInt (n, _)   ->  print_int n
                    | T.ExpFloat (n, _) ->  print_float n
                    | T.ExpString (n,_) ->  print_string n
                    | _ ->  failwith  ("Fail print"))
          | CmdWhile (cond, cmds) ->
              let rec laco cond cmds =
                  let condResp = interpreta_exp amb cond in
                    (match condResp with
                      | ExpBool (true, _) ->
                          let _ = List.iter (interpreta_cmd amb) cmds in
                              laco cond cmds
                      | _ ->  ())
                  in laco cond cmds
                  
let insere_declaracao_var amb dec =
    match dec with
      A.DecVar (nome, tipo) ->  Amb.insere_local amb (fst nome) tipo None

let insere_declaracao_fun amb dec =
  let open A in
    match dec with
      DecFun {fn_nome; fn_tiporet; fn_formais; fn_locais; fn_corpo} ->
        let nome = fst fn_nome in
        let formais = List.map (fun (n, t) -> ((fst n), t)) fn_formais in
        Amb.insere_fun amb nome formais fn_locais fn_tiporet fn_corpo

let fn_predefs = let open A in [
  ("entrada", [("x", TipoInt); ("y", TipoInt)], TipoVoid, []);
  ("saida", [("x", TipoInt); ("y", TipoInt)], TipoVoid, []);    
]              

let declara_predefinidas amb =
  List.iter (fun (n, ps, tr, c) -> Amb.insere_fun amb n ps [] tr c)
    fn_predefs

let interprete ast =
  let amb_global = Amb.novo_amb [] in
  let _ = declara_predefinidas amb_global in
  let (A.Programa (decs_globais, decs_funs, corpo)) = ast in
  let _ = List.iter (insere_declaracao_var amb_global) decs_globais in
  let _ = List.iter (insere_declaracao_fun amb_global) decs_funs in
  let resultado = List.iter (interpreta_cmd amb_global) corpo in 
  resultado