open Printf
open Ast
open Tast
open Codigo

let contador_registrador = ref 0
let first_reg = ref 0
let contador_rotulo = ref 0

let current_func = ref ""
let nomePrograma = ref ""


let prox_registrador() = 
  incr(contador_registrador);
  !contador_registrador

let prox_rotulo() =
  incr(contador_rotulo);
  sprintf ": label_%d" ! contador_rotulo

let tipo e = e.tipo

let procura_param ts id =
  let reg = Hashtbl.find ts id in
  match (reg) with
    EntFn ent -> ent.param
    | _ -> failwith ("Erro gerador: procura_param")

let converte_tipo_expr t1 =
  match t1 with
  | ExpInt v -> Some (ExpInt v)
  | ExpFloat v -> Some (ExpFloat v)
  | ExpString v -> Some (ExpString v)
  | ExpBool v -> Some (ExpBool v)
  | _ -> failwith ("converte_tipo_expr : tipo nao encontrado")

let converte_tipo_expr_option t1 =
  match t1 with
  | Some (ExpFloat v) -> ExpFloat v
  | Some (ExpInt v) -> ExpInt v
  | Some (ExpString v) -> ExpString v
  | Some (ExpBool v) -> ExpBool v
  | Some (ExpVar v) -> ExpVar v
  | _ -> failwith ("converte_tipo_expr_option : tipo nao encontrado")

let converte_tipo_base t1 =
  match t1 with
  | TInt -> (Some TInt)
  | TFloat -> (Some TFloat)
  | TString -> (Some TString)
  | TBool -> (Some TBool)
  | TVoid -> (Some TVoid)

let converte_tipo_base_option t1 =
  match t1 with
  | (Some Tint) -> Tint
  | (Some TFloat) -> TFloat
  | (Some TString) -> TString
  | (Some TBool) -> TBool
  | (Some TVoid) -> TVoid
  | _ -> failwith("converte_tipo_base_option : tipo nao encontrado")

let converte_int t1 = 
  match t1 with
  | Some int -> int
  | _ -> failwith("tipo invalido")

let endereco amb e current =
  match e with
  | ExpVar v ->
    (match v with
    | VarSimples nome ->
      (if (current <> "") then
        let tabVar = Hashtbl.find amb current in
        match tabVar with
        EntFn tabFn ->
          (try 
          let entrada = Hashtbl.find tabFn.varLocais nome in
          (match (entrada.endereco) with
          Some endr -> (Some endr)
          | None -> let endr = prox_registrador() in
            Hashtbl.add amb nome (EntVar {entrada with endereco = Some endr});
            (Some endr))
            with Not_found -> 
              (match (procuraParam nome tabFn.param) with
              Some v -> (match (v.endereco) with
              Some endr -> (Some endr)
              | None -> let endr = prox_registrador() in
                Hashtbl.add amb nome (EntVar { v with endereco = Some endr});
                (Some endr))
      | None ->
        try
          let entradaV = Hashtbl.find amb nome in
            (match entradav with
            | EntVar entVar ->
              (match (entVar.endereco) with
              Some endr -> (Some endr)
              | None -> let endr = prox_registrador() in
              Hashtbl.add amb nome (EntVar { entVar with endereco = Some ender});
              (Some endr))
            | _ -> failwith("erro gerador - endereco : variavel da funcao nao eh global")
            )
            with e -> print_endline "Erro gerador : endereco";
            raise e
            )
            )
    | _ -> failwith ("endereco : funcao nao contem essa variavel")
    else (
      try
      let entradaMain = Hashtbl.find amb nome in
      (match entradaMain with
      | EntVar entVar ->
      (match (entVar.endereco) with
      Some endr -> (Some endr)
      | None -> let endr = prox_registrador() in
        Hashtbl.add amb nome (EntVar {entVar with endereco = Some endr});
        (Some endr))
      | _ -> failwith "erro gerador - endereco: variavel invalida"
      )
      with e -> print_endline "Erro gerador: endereco";
      raise e
      )
      ) )
  | _ -> failwith "endereco: funcao esta sendo usada como variavel"


let op inst a = sprintf "%s %d" inst a

let opBinRR inst a1 a2 = sprintf "%s v%d, v%d" inst a1 a2
let opBinRN inst a1 a2 = sprintf "%s v%d, %d" inst a1 a2
let opBinRString inst a1 a2 = sprintf "%s v%d, \"%s\"" inst a1 a2

let opBinRRFloat inst a1 a2 = sprintf "%s v%d, %f" inst a1 a2
let opTriRRR inst a1 a2 a3 = sprintf "%s v%d v%d, v%d" inst a1 a2 a3

let opBinIF inst a target = sprintf "%s v%d, %s" inst a target
let opTriIF inst a1 a2 target = sprintf "%s v%d, v%d, %s" inst a1 a2 target

type dalvik_op = 
  Move of tipo_base * expr
  | Const16 of tipo_base * expr
  | OpBin of tipo_base * operadorBin * expr * expr

let opr_int op =
  match op with
  | Mais -> "add-int/2addr "
  | Menos -> "sub-int/2addr"
  | Mult -> "mul-int/2addr "
  | Div -> "div-int/2addr "
  | Modulo -> "rem-int/2addr "
  | Igual -> "if-eq"
  | Diferente -> "if-ne"
  | Maior -> "if-gt"
  | Menor -> "if-lt"
  | MaiorIgual -> "if-ge"
  | MenorIgual -> "if-le"
  | _ -> failwith (" opr_int : operador nao implementado ")


let opr_float op =
  match op with
  | Mais -> "add-float "
  | Menos -> "sub-float "
  | Mult -> "mul-float "
  | Div -> "div-float "
  | Modulo -> "rem-float "
  | _ -> failwith " Operacao nao definida para float "

let opr_bool op =
  match op with
  | Igual -> "if-eq"
  | Diferente -> "if-ne"
  | Maior -> "if-gt"
  | Menor -> "if-lt"
  | MaiorIgual -> "if-ge"
  | MenorIgual -> "if-le"
  | _ -> failwith " Operacao nao definida para bool "

let tipoRetorno op =
  match op with
  | TInt -> "I"
  | TFloat -> "F"
  | TVoid -> "V"
  | TString -> "Ljava/lang/String;"
  | TBool -> "B"
  | _ -> failwith "Retorno nao definido para esse tipo"

let operador t op =
  match t with
  | TInt -> opr_int op
  | TFloat -> opr_float op
  | TBool -> opr_bool op
  | _ -> failwith "Erro tipo de operador nao encontrado"

let rec emite ts instr current =
  match instr with
  | Move (TInt, ExpInt i) ->
    let reg = prox_registrador() in ([ opBinRN "move" reg i], reg)
  | Const16 (TInt, ExpInt i) ->
    let reg = prox_registrador() in ([opBinRN "const/16" reg i], reg)
  | Const16 (TFloat, ExpFloat i) ->
    let reg = prox_registrador() in ([ opBinRNFloat "const/16" reg i], reg)
  | Const16 (TString, ExpString i)->
    let reg = prox_registrador() in ([ opBinRString "const-string" reg i], reg)
  | OpBin (tipo, op, ExpBin (op2, a1, a2), ExpBin (op3, a3, a4)) ->
    let (lista1, reg1) = emite ts (OpBin (tipo, op2, converte_tipo_expr_option a1.valor, converte_tipo_expr_option a2.valor)) current
    and (lista2, reg2) = emite ts (OpBin (tipo, op3, converte_tipo_expr_option a3.valor, converte_tipo_expr_option a4.valor)) current
    in
    let (list3, reg3) = criaCodigoOperador tipo op reg1 reg2 in (lista1 @ lista2 @ lista3, reg3)
  | OpBin (tipo, op, ExpBin(op2, a1, a2), i) ->
    let (lista1, reg1) = emite ts(OpBin(tipo, op2, converte_tipo_expr_option a1.valor, converte_tipo_expr_option a2.valor)) current
    and (list2, reg2) = criaCodigo tipo i ts current in
    let (list3, reg3) = criaCodigoOperador tipo op reg1 reg2 in (lista1 @ lista2 @ lista3, reg3)
  |OpBin (tipo, op, i , ExpBin(op2, a1, a2)) ->
    let (lista1, reg1) = emite ts (OpBin (tipo, op2, converte_tipo_expr_option a1.valor, converte_tipo_expr_option a2.valor)) current
    and (lista2, reg2) = criaCodigo tipo i ts current in
      let (lista3, reg3) = criaCodigoOperador tipo op reg1 reg2 in (lista2 @ lista1 @ lista3, reg3)
  | OpBin (tipo, op, i , j) ->
    let (lista1, reg1) = criaCodigo tipo i ts current
    and (lista2, reg2) = criaCodigo tipo j ts current in
      let (lista3, reg3) = criaCodigoOperador tipo op reg1 reg2 in (lista1 @ lista2 @ lista3, reg3)
  | _ -> failwith "Erro emite: opcao nao implementada"

and criaCodigo tipo termo ts current = 
  match termo with
  | ExpInt t -> let reg = prox_registrador() in ([ opBinRN "const/16" reg, t], reg)
  | ExpVar t -> let endr = endereco ts (ExpVar t) current in ([], converte_int endr)
  | ExpFloat t -> let reg = prox_registrador() in ([ opBinRNFloat "const/high16" reg t], reg)
  | ExpString t -> let reg = prox_registrador() in ([ opBinRString "const-string" reg t], reg)
  | _ -> failwith "CriaCodigo: termo nao implementado"

let rec gen_expressao ts exp current =
  match exp.valor with
  | (Some ExpBin (op, a1, a2)) -> emite ts (OpBin (converte_tipo_base_option exp.tipo, op, converte_tipo_expr_option a1.valor, converte_tipo_expr_option a2.valor)) current
  | _ -> failwith "gen_expressao: expressao nao implementada"

let rec gen_condicao ts exp rotulo current =
  match exp.valor with
  | (Some ExpBin(op, a1, a2)) ->
    let (lista1, reg1) = criaCodigo (converte_tipo_base_option exp.tipo) (converte_tipo_expr_option a1.valor) ts current
    and (lista2, reg2) = criaCodigo (converte_tipo_base_option exp.tipo) (converte_tipo_expr_option a2.valor) ts current in
    (lista1 @ lista2 @ [opTriIF (operador (converte_tipo_base_option exp.tipo) op) reg1 reg2
    rotulo], reg2, reg2)
  | _ -> failwith "gen_condicao: condicao nao implementada"

let gen_atrib amb esq dir current =
  let reg1 = endereco amb (converte_tipo_expr_option esq.valor) current in 
  (match dir.valor with
    | (Some ExpInt i) -> let (lista, reg2) = emite amb (Const16(converte_tipo_base_option dir.tipo, ExpInt i)) current in list @ [opBinRR "move" (converte_int reg1) reg2]
    | (Some ExpFloat i) -> let (lista, reg2) = emite amb (Const16(converte_tipo_base_option dir.tipo, ExpFloat i)) current in lista @ [opBinRR "move" (converte_int reg1) reg2]
    | (Some ExpString i) -> let(lista, reg2) = emite amb (Const16(converte_tipo_base_option dir.tipo, ExpString i)) current in lista @ [opBinRR "move-object" (converte_int reg1) reg2]
    | (Some ExpVar (VarSimples _)) -> let reg2 = endereco amb(
      converte_tipo_expr_option dir.valor) current in
        (match converte_tipo_base_option dir.tipo with
        | TInt -> [opBinRR "move" (converte_int reg1) (converte_int reg2)]
        | _ -> [opBinRR "move-object" (converte_int reg1) (converte_int reg2)])
    | _ ->  let (lista, reg2) = gen_expressao amb dir current in lista @ [opBinRR "move" (converte_int reg1) reg2])

let rec gen_if amb teste cmdsEntao cmdsSenao current =
  let lE = prox_rotulo() and l1 = prox_rotulo() in
  let lS = match cmdsSenao with
  | None -> l1
  | Some -> prox_rotulo() in
  let (cod_teste, reg_reste1, reg_reste2) = gen_condicao amb teste lE current in
  let cod_entao = gen_cmds amb cmdsEntao current in
  let cod_senao = 
      match cmdsSenao with
      | None -> []
      | Some cmdsS -> gen_cmds amb cmdsS current in
        let codigo = cod_reste @ cod_senao @ [sprintf "goto %s" lS] @ [sprintf "%s" lE] @ cod_entao @ [sprintf "%s" lS] in codigo

and gen_while amb teste cmds current =
  let labelE = prox_rotulo()
  and labelE1 = prox_rotulo()
  and labelS = prox_rotulo() in
  let (cod_teste, _, _) = gen_condicao amb teste labelE1 current in
  let cod_cmd = gen_cmds amb cmds current in
  let codigo = [sprintf "%s" labelE] @ cod_teste @ [sprintf "goto %s" labelS] @ [sprintf "%s" labelE1] @ cod_cmd @ [sprintf "goto %s" labelE] @ [sprintf "%s" labelS]
  in codigo

and gen_print amb exp current =
    match exp.valor with
    | (Some ExpString e) -> let reg1 = prox_registrador() in
      let cod1 = [sprintf "sget-object v%d, Ljava/lang/Sustem;->out:Ljava/io/PrintStream;" reg1] in
      let (cod2, reg2) = emite amb (Const16(TString, ExpString e)) current in
      let cod3 = [sprintf "invoke-virtual {v%d, v%d}, Ljava/io/PrintStream; ->println(Ljava/lang/String;)V" reg1 reg2] in
      let codigo = cod1 @ cod2 @ cod3 in codigo
    | (Some ExpVar _) -> let reg1 = prox_registrador() in 
      let cod1 = [sprintf "sget-object v%d, Ljava/lang/System;->out:Ljava/io/PrintStream;" reg1] in
      let reg2 = endereco amb (converte_tipo_expr_option exp.valor) current in
      (match exp.tipo with
      | (Some TInt) -> let cod3 = [sprintf "invoke-virtual {v%d, v%d}, Ljava/io/PrintStream;->println(I)V" reg1 (converte_int reg2)] in
          let codigo = cod1 @ cod3 in codigo
      | (Some TString) -> let cod3 = [sprintf "invoke-virtual {v%d, v%d}, Ljava/io/PrintStream;println(Ljava/lang/String;)V" reg1 (converte_int reg2)] in
        let codigo = cod1 @ cod3 in codigo
      | _ -> failwith "Print so aceita variaveis int e string")
    | _ -> failwith "Print so esta aceitando strings e variaveis"


and gen_input amb exp1 exp2 current = 
    (match exp2.tipo with
    | (Some TString) ->
      (let reg1 = prox_registrador() in
        let cod1 = [sprintf "new-instance v%d, Ljava/util/Scanner;" reg1] in
        let reg2 = prox_registrador() in
        let cod2 = [sprintf "sget-object v%d, Ljava/lang/System;->in:Ljava/io/InputStream;" reg2] in
        let cod3 = [sprintf "invoke-direct {v%d, v%d}, Ljava/util/Scanner;-><unit>(Ljava/io/InputStream;)V" reg1 reg2] in
        let codigo = cod1 @ cod2 @ cod3 in
          (match exp1.tipo with
            | (Some TInt) -> let codInt = codigo @ [sprintf "invoke-virtual {v%d}, Ljava/util/Scanner;->nextInt()I" reg1] @
                  [sprintf "move-result v%d" reg2] in
                  gen_print amb exp2 current @ codInt
            | (Some Tstring) -> let moveReg = endereco amb (
              converte_tipo_expr_option exp1.valor) current in
                  let codStr = codigo @ [sprintf "invoke-virtual {v%d}, Ljava/util/Scanner;->mextLine()LJava/lang/String;" reg1] @ 
                        [sprintf "move-result-object v%d" reg2] @ [sprintf "move-object v%d, v%d" (converte_int moveReg) reg2] in
                        gen_print amb exp2 current @ codStr
            | _ -> [sprintf "input soh esta aceitando strings e inteiros"]))
    | _ -> [sprintf "input soh esta aceitando strings dentros nos parametros"])

