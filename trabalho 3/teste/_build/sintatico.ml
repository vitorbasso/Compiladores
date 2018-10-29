
(* This generated code requires the following version of MenhirLib: *)

let () =
  MenhirLib.StaticVersion.require_20181026

module MenhirBasics = struct
  
  exception Error
  
  type token = 
    | WHILE
    | VIRGULA
    | UNTIL
    | TRUE
    | TIPO_STRING
    | TIPO_INT
    | TIPO_BOOLEAN
    | THEN
    | TAMANHO
    | SUBTRACAO
    | RETURN
    | RETICENCIAS
    | REPEAT
    | PRINT
    | PONTO_VIRGULA
    | PONTO
    | OR_BINARIO_EXCLUSIVO
    | OR_BINARIO
    | OR
    | NUMBER_INPUT
    | NOT
    | NIL
    | NAO_EQUIVALENTE
    | MULT_POR_2
    | MULTIPLICACAO
    | MODULO
    | MENOR_OU_IGUAL
    | MENOR
    | MAIOR_OU_IGUAL
    | MAIOR
    | LOCAL
    | LITSTRING of (
# 6 "sintatico.mly"
       (string)
# 47 "sintatico.ml"
  )
    | LITINT of (
# 7 "sintatico.mly"
       (int)
# 52 "sintatico.ml"
  )
    | IO_READ
    | IN
    | IF
    | ID of (
# 5 "sintatico.mly"
       (string)
# 60 "sintatico.ml"
  )
    | FUNCAO
    | FPAR
    | FOR
    | FECHA_COLCHETE
    | FECHA_CHAVE
    | FALSE
    | EXPONENCIACAO
    | EQUIVALENTE
    | EOF
    | END
    | ELSEIF
    | ELSE
    | DOIS_PONTOS
    | DO
    | DIV_POR_2
    | DIVISAO_INTEIRO
    | DIVISAO
    | CONCATENA
    | BREAK
    | BOOL of (
# 8 "sintatico.mly"
       (bool)
# 84 "sintatico.ml"
  )
    | ATRIB
    | APAR
    | AND_BINARIO
    | AND
    | ADICAO
    | ABRE_COLCHETE
    | ABRE_CHAVE
  
end

include MenhirBasics

let _eRR =
  MenhirBasics.Error

# 1 "sintatico.mly"
  
  open Ast

# 105 "sintatico.ml"

module Tables = struct
  
  include MenhirBasics
  
  let token2terminal : token -> int =
    fun _tok ->
      match _tok with
      | ABRE_CHAVE ->
          64
      | ABRE_COLCHETE ->
          63
      | ADICAO ->
          62
      | AND ->
          61
      | AND_BINARIO ->
          60
      | APAR ->
          59
      | ATRIB ->
          58
      | BOOL _ ->
          57
      | BREAK ->
          56
      | CONCATENA ->
          55
      | DIVISAO ->
          54
      | DIVISAO_INTEIRO ->
          53
      | DIV_POR_2 ->
          52
      | DO ->
          51
      | DOIS_PONTOS ->
          50
      | ELSE ->
          49
      | ELSEIF ->
          48
      | END ->
          47
      | EOF ->
          46
      | EQUIVALENTE ->
          45
      | EXPONENCIACAO ->
          44
      | FALSE ->
          43
      | FECHA_CHAVE ->
          42
      | FECHA_COLCHETE ->
          41
      | FOR ->
          40
      | FPAR ->
          39
      | FUNCAO ->
          38
      | ID _ ->
          37
      | IF ->
          36
      | IN ->
          35
      | IO_READ ->
          34
      | LITINT _ ->
          33
      | LITSTRING _ ->
          32
      | LOCAL ->
          31
      | MAIOR ->
          30
      | MAIOR_OU_IGUAL ->
          29
      | MENOR ->
          28
      | MENOR_OU_IGUAL ->
          27
      | MODULO ->
          26
      | MULTIPLICACAO ->
          25
      | MULT_POR_2 ->
          24
      | NAO_EQUIVALENTE ->
          23
      | NIL ->
          22
      | NOT ->
          21
      | NUMBER_INPUT ->
          20
      | OR ->
          19
      | OR_BINARIO ->
          18
      | OR_BINARIO_EXCLUSIVO ->
          17
      | PONTO ->
          16
      | PONTO_VIRGULA ->
          15
      | PRINT ->
          14
      | REPEAT ->
          13
      | RETICENCIAS ->
          12
      | RETURN ->
          11
      | SUBTRACAO ->
          10
      | TAMANHO ->
          9
      | THEN ->
          8
      | TIPO_BOOLEAN ->
          7
      | TIPO_INT ->
          6
      | TIPO_STRING ->
          5
      | TRUE ->
          4
      | UNTIL ->
          3
      | VIRGULA ->
          2
      | WHILE ->
          1
  
  and error_terminal =
    0
  
  and token2value : token -> Obj.t =
    fun _tok ->
      match _tok with
      | ABRE_CHAVE ->
          Obj.repr ()
      | ABRE_COLCHETE ->
          Obj.repr ()
      | ADICAO ->
          Obj.repr ()
      | AND ->
          Obj.repr ()
      | AND_BINARIO ->
          Obj.repr ()
      | APAR ->
          Obj.repr ()
      | ATRIB ->
          Obj.repr ()
      | BOOL _v ->
          Obj.repr _v
      | BREAK ->
          Obj.repr ()
      | CONCATENA ->
          Obj.repr ()
      | DIVISAO ->
          Obj.repr ()
      | DIVISAO_INTEIRO ->
          Obj.repr ()
      | DIV_POR_2 ->
          Obj.repr ()
      | DO ->
          Obj.repr ()
      | DOIS_PONTOS ->
          Obj.repr ()
      | ELSE ->
          Obj.repr ()
      | ELSEIF ->
          Obj.repr ()
      | END ->
          Obj.repr ()
      | EOF ->
          Obj.repr ()
      | EQUIVALENTE ->
          Obj.repr ()
      | EXPONENCIACAO ->
          Obj.repr ()
      | FALSE ->
          Obj.repr ()
      | FECHA_CHAVE ->
          Obj.repr ()
      | FECHA_COLCHETE ->
          Obj.repr ()
      | FOR ->
          Obj.repr ()
      | FPAR ->
          Obj.repr ()
      | FUNCAO ->
          Obj.repr ()
      | ID _v ->
          Obj.repr _v
      | IF ->
          Obj.repr ()
      | IN ->
          Obj.repr ()
      | IO_READ ->
          Obj.repr ()
      | LITINT _v ->
          Obj.repr _v
      | LITSTRING _v ->
          Obj.repr _v
      | LOCAL ->
          Obj.repr ()
      | MAIOR ->
          Obj.repr ()
      | MAIOR_OU_IGUAL ->
          Obj.repr ()
      | MENOR ->
          Obj.repr ()
      | MENOR_OU_IGUAL ->
          Obj.repr ()
      | MODULO ->
          Obj.repr ()
      | MULTIPLICACAO ->
          Obj.repr ()
      | MULT_POR_2 ->
          Obj.repr ()
      | NAO_EQUIVALENTE ->
          Obj.repr ()
      | NIL ->
          Obj.repr ()
      | NOT ->
          Obj.repr ()
      | NUMBER_INPUT ->
          Obj.repr ()
      | OR ->
          Obj.repr ()
      | OR_BINARIO ->
          Obj.repr ()
      | OR_BINARIO_EXCLUSIVO ->
          Obj.repr ()
      | PONTO ->
          Obj.repr ()
      | PONTO_VIRGULA ->
          Obj.repr ()
      | PRINT ->
          Obj.repr ()
      | REPEAT ->
          Obj.repr ()
      | RETICENCIAS ->
          Obj.repr ()
      | RETURN ->
          Obj.repr ()
      | SUBTRACAO ->
          Obj.repr ()
      | TAMANHO ->
          Obj.repr ()
      | THEN ->
          Obj.repr ()
      | TIPO_BOOLEAN ->
          Obj.repr ()
      | TIPO_INT ->
          Obj.repr ()
      | TIPO_STRING ->
          Obj.repr ()
      | TRUE ->
          Obj.repr ()
      | UNTIL ->
          Obj.repr ()
      | VIRGULA ->
          Obj.repr ()
      | WHILE ->
          Obj.repr ()
  
  and default_reduction =
    (8, "\000\000CBD\000\000\000\000\002\000\000A\000E\020\000\000\023\022\024\000\021\000\000\000\000/\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\0000\000\000\000\000\000\000\000\016\000\000\000\000\000\0003\000\014\000\000\000\000\000\000\000\000\000\000\000\000\000\018\000\000\000\012\000\000\r\006\b\n\007\004\t\005\003\0007\000\000?\000;\000\015\000\019\0001\0009\0005\001\000@\000=")
  
  and error =
    (65, "\000\000\000\000\002\000\000\000\003\128\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000 \000\000\000\000\000\000\000\000\000\000@\014\000\000\000\002\000\000\000\000\000\000\000\004\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000@\000\000\b\226@\000\001\144 \000\000\000\000\000\000\000\000\000\000\000\000\000\000 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000@\018\000\000\012\129\000\000\000\000\000\000b\000\000(\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\006 \000\002\128\000\000\000\000\000\000\000\000\000\192\235\252\002\024\030\028\000\000\000\000\196\000\000P y:\255\006\198\175\135\000\000\000\0001\000\000\020\000\000\000\000\000\000\000\000\000\000\000\000\012@\000\005\002\007\147\175\240lj\248p\000\000\000\003\016\000\001@\129\228\235\252\027\026\190\028\000\000\000\000\196\000\000P y:\255\006\198\175\135\000\000\000\0001\000\000\020\b\030N\191\193\177\171\225\192\000\000\000\012@\000\005\002\007\147\175\240lj\248p\000\000\000\003\016\000\001@\129\228\235\252\027\026\190\028\000\000\000\000\196\000\000P y:\255\006\198\175\135\000\000\000\0001\000\000\020\b\030N\191\193\177\171\225\192\000\000\000\012@\000\005\002\007\147\175\240lj\248p\000\000\000\003\016\000\001@\129\228\235\252\027\026\190\028\000\000\000\000\196\000\000P y:\255\006\198\175\135\000\000\000\0001\000\000\020\b\030N\191\193\177\171\225\192\000\000\000\012@\000\005\002\007\147\175\240lj\248p\000\000\000\003\016\000\001@\129\228\235\252\027\026\190\028\000\000\000\000\196\000\000P y:\255\006\198\175\135\000\000\000\0001\000\000\020\b\030N\191\193\177\171\225\192\000\000\000\012@\000\005\002\007\147\175\240lj\248p\000\000\000\003\016\000\001@\129\228\235\252\027\026\190\028\000\000\000\000\196\000\000P y:\255\006\198\175\135\000\000\000\0001\000\000\020\b\030N\191\193\177\171\225\192\000\000\000\012@\000\005\002\007\147\175\240lj\248p\000\000\000\000\000\000\000\000\000\192\235\252\000\024>\028@\018\000\000\012\129\000\000\000\000\000\000b\000\000(\016\028\157\127\131#S\195\128\000\000\000\000\000\000\002\000\000\000\000\012@\000\005\000\003\003\175\240\b`xp\000\000\000\000\000\000\000\000\000\000\000\001\136\000\000\160\000\224u\254\000\012\015\014 \t\000\000\006@\000\000\000\000\000\000\000\000\000\012\000\000\000\000\000\160\000\000\000\000\000\000\000P\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\004\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\004\000\000\000\000\000\000\000\000\000\000\016\000\000\000\000\016\000\000\000\004\000\000\000\000\000\000\000\000\000\000\000\004\000\000\000\001\000\000\000\000\000\000\000\000\000\000\000\001\000\000\000\000\000\000\000\000\000\000 \000@\018\000\000\012\129\000\000\000\000\000\000\000\000\000\016\000\000\000\0009\000\000\020\000\000\000\000\000\000\000\002\000\000\000\000\000\016\000\000\000\000\000\000\000\000\000\000\001\001\201\215\24825<x\000\000\000\000\n\000\000\000\000\000\000\000\001\000\000\000\000\000\000\000\000\000\000\000\016\028\157\127\131#S\195\128\000\000\000\000\000 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\002\000\144\000\000d\b\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\002\128\000@\018\000\000\012\128\000\000\000\000\000\000\000\000\000\000\016\004\128\000\003 P\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\016\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\004\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\000\000\000\000\000\000\000\000\000\000\017\196\128\000\003 @\000\000\000\000\000\000\000\000\000\000p\000\000\000\016\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\004\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\001\000\000\000\000\000\000\000\000\000\000\000")
  
  and start =
    1
  
  and action =
    ((16, "\000A\000\005\000\000\000\000\000\000\0005\000Y\000\005\000\015\000\000\000\017\n\194\000\000\000\t\000\000\000\000\n\190\n\164\000\000\000\000\000\000\n\164\000\000\t\224\n\164\000\003\n\164\000\000\n\164\000l\n\164\000\218\n\164\001H\n\164\001\182\n\164\002$\n\164\002\146\n\164\003\000\n\164\003n\n\164\003\220\n\164\004J\n\164\004\184\n\164\005&\n\164\005\148\n\164\006\002\n\164\006p\n\164\006\222\n\164\007L\n\164\007\186\n\164\b(\n\164\b\150\n\164\t\004\000\000\t\224\n\190\n\164\t\224\0003\n\164\nN\000\000\n\164\t\224\tv\000s\0003\0003\000\000\000\004\000\000\000\t\000!\000\024\000Z\000 \000l\0000\000\014\n\190\000\016\n`\000\016\000<\000\000\tr\0003\000>\000\000\nN\0006\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\n\190\000\000\0009\tv\000\000\n\152\000\000\000:\000\000\000L\000\000\000N\000\000\n\194\000\000\000\005\000\000\000\000\000R\000\000\000\r\000\000"), (16, "\000\181\001\017\001N\000\n\000\014\000\018\000\006\000\181\000\181\000\181\000\181\000\026\001R\000\181\000\197\000\030\000\181\000\181\000\181\000\245\000\181\001\226\000\181\000\181\000\181\000\181\000\181\000\181\000\181\000\181\000&\000.\000\006\000:\0012\000\181\000\181\000\205\000\181\000\181\000\237\001^\001j\000j\000\181\001n\000\181\001r\000\181\001v\000\181\000\181\000\181\000\181\000\181\000\157\001z\001~\001\130\000\181\000\181\000\181\000\157\000b\000\157\000\157\001\138\001\146\000\157\001\150\001\166\000\157\000\157\000\157\001\178\000z\001\246\000\157\000\157\000\130\000\138\000\157\000\157\000\157\000\157\001\254\002\006\002#\000\000\000\000\000\157\000\157\000\000\000\157\000\157\000\000\000\000\000\000\000j\000\157\000\000\000\157\000\000\000\157\000\000\000\157\000\157\000\146\000\154\000\157\000\177\000\000\000\000\000\000\000\157\000\157\000\157\000\177\000\177\000\177\000\177\000\000\000\000\000\177\000\000\000\000\000\177\000\177\000\177\000\000\000\177\000\000\000\177\000\177\000\177\000\177\000\177\000\177\000\177\000\177\000\000\000\000\000\000\000\000\000\000\000\177\000\177\000\000\000\177\000\177\000\000\000\000\000\000\000j\000\177\000\000\000\177\000\000\000\177\000\000\000\177\000\177\000\177\000\177\000\177\000\161\000\000\000\000\000\000\000\177\000\177\000\177\000\161\000b\000\161\000\161\000\000\000\000\000\161\000\000\000\000\000\161\000\161\000\161\000\000\000z\000\000\000\161\000\161\000\161\000\161\000\161\000\161\000\161\000\161\000\000\000\000\000\000\000\000\000\000\000\161\000\161\000\000\000\161\000\161\000\000\000\000\000\000\000j\000\161\000\000\000\161\000\000\000\161\000\000\000\161\000\161\000\161\000\161\000\161\000\173\000\000\000\000\000\000\000\161\000\161\000\161\000\173\000b\000\173\000\173\000\000\000\000\000\173\000\000\000\000\000\173\000\173\000\173\000\000\000z\000\000\000\173\000\173\000\173\000\173\000\173\000\173\000\173\000\173\000\000\000\000\000\000\000\000\000\000\000\173\000\173\000\000\000\173\000\173\000\000\000\000\000\000\000j\000\173\000\000\000\173\000\000\000\173\000\000\000\173\000\173\000\173\000\173\000\173\000\169\000\000\000\000\000\000\000\173\000\173\000\173\000\169\000b\000\169\000\169\000\000\000\000\000\169\000\000\000\000\000\169\000\169\000\169\000\000\000z\000\000\000\169\000\169\000\169\000\169\000\169\000\169\000\169\000\169\000\000\000\000\000\000\000\000\000\000\000\169\000\169\000\000\000\169\000\169\000\000\000\000\000\000\000j\000\169\000\000\000\169\000\000\000\169\000\000\000\169\000\169\000\169\000\169\000\169\000\165\000\000\000\000\000\000\000\169\000\169\000\169\000\165\000b\000\165\000\165\000\000\000\000\000\165\000\000\000\000\000\165\000\165\000\165\000\000\000z\000\000\000\165\000\165\000\165\000\165\000\165\000\165\000\165\000\165\000\000\000\000\000\000\000\000\000\000\000\165\000\165\000\000\000\165\000\165\000\000\000\000\000\000\000j\000\165\000\000\000\165\000\000\000\165\000\000\000\165\000\165\000\165\000\165\000\165\000\133\000\000\000\000\000\000\000\165\000\165\000\165\000\133\000b\000r\000\133\000\000\000\000\000\133\000\000\000\000\000\133\000\133\000\133\000\000\000z\000\000\000\133\000\170\000\130\000\138\000\133\000\133\000\133\000\133\000\000\000\000\000\000\000\000\000\000\000\133\000\133\000\000\000\133\000\133\000\000\000\000\000\000\000j\000\133\000\000\000\133\000\000\000\133\000\000\000\133\000\194\000\146\000\154\000\178\000\141\000\000\000\000\000\000\000\202\000\133\000\186\000\141\000b\000r\000\141\000\000\000\000\000\141\000\000\000\000\000\141\000\141\000\141\000\000\000z\000\000\000\141\000\141\000\130\000\138\000\141\000\141\000\141\000\141\000\000\000\000\000\000\000\000\000\000\000\141\000\141\000\000\000\141\000\141\000\000\000\000\000\000\000j\000\141\000\000\000\141\000\000\000\141\000\000\000\141\000\141\000\146\000\154\000\178\000\149\000\000\000\000\000\000\000\141\000\141\000\186\000\149\000b\000r\000\149\000\000\000\000\000\149\000\000\000\000\000\149\000\149\000\149\000\000\000z\000\000\000\149\000\149\000\130\000\138\000\149\000\149\000\149\000\149\000\000\000\000\000\000\000\000\000\000\000\149\000\149\000\000\000\149\000\149\000\000\000\000\000\000\000j\000\149\000\000\000\149\000\000\000\149\000\000\000\149\000\149\000\146\000\154\000\149\000\153\000\000\000\000\000\000\000\149\000\149\000\186\000\153\000b\000\153\000\153\000\000\000\000\000\153\000\000\000\000\000\153\000\153\000\153\000\000\000z\000\000\000\153\000\153\000\130\000\138\000\153\000\153\000\153\000\153\000\000\000\000\000\000\000\000\000\000\000\153\000\153\000\000\000\153\000\153\000\000\000\000\000\000\000j\000\153\000\000\000\153\000\000\000\153\000\000\000\153\000\153\000\146\000\154\000\153\000\145\000\000\000\000\000\000\000\153\000\153\000\153\000\145\000b\000r\000\145\000\000\000\000\000\145\000\000\000\000\000\145\000\145\000\145\000\000\000z\000\000\000\145\000\145\000\130\000\138\000\145\000\145\000\145\000\145\000\000\000\000\000\000\000\000\000\000\000\145\000\145\000\000\000\145\000\145\000\000\000\000\000\000\000j\000\145\000\000\000\145\000\000\000\145\000\000\000\145\000\145\000\146\000\154\000\178\000\137\000\000\000\000\000\000\000\145\000\145\000\186\000\137\000b\000r\000\137\000\000\000\000\000\137\000\000\000\000\000\137\000\137\000\137\000\000\000z\000\000\000\137\000\170\000\130\000\138\000\137\000\137\000\137\000\137\000\000\000\000\000\000\000\000\000\000\000\137\000\137\000\000\000\137\000\137\000\000\000\000\000\000\000j\000\137\000\000\000\137\000\000\000\137\000\000\000\137\000\194\000\146\000\154\000\178\000\129\000\000\000\000\000\000\000\137\000\137\000\186\000\129\000b\000r\000\129\000\000\000\000\000\129\000\000\000\000\000\162\000\129\000\129\000\000\000z\000\000\000\129\000\170\000\130\000\138\000\129\000\129\000\129\000\129\000\000\000\000\000\000\000\000\000\000\000\129\000\129\000\000\000\129\000\129\000\000\000\000\000\000\000j\000\129\000\000\000\129\000\000\000\129\000\000\000\129\000\194\000\146\000\154\000\178\000a\000\000\000\000\000\000\000\202\000\129\000\186\000a\000b\000r\000a\000\000\000\000\000a\000\000\000\000\000\162\000\210\000a\000\000\000z\000\000\000\226\000\170\000\130\000\138\000\234\000\242\000\250\001\002\000\000\000\000\000\000\000\000\000\000\000a\000a\000\000\000a\000a\000\000\000\000\000\000\000j\001\n\000\000\000a\000\000\000a\000\000\000a\000\194\000\146\000\154\000\178\000}\000\000\000\000\000\000\000\202\001\018\000\186\000}\000b\000r\000}\000\000\000\000\000}\000\000\000\000\000\162\000\210\000}\000\000\000z\000\000\000}\000\170\000\130\000\138\000}\000}\000}\000}\000\000\000\000\000\000\000\000\000\000\000}\000}\000\000\000}\000}\000\000\000\000\000\000\000j\000}\000\000\000}\000\000\000}\000\000\000}\000\194\000\146\000\154\000\178\000u\000\000\000\000\000\000\000\202\000}\000\186\000u\000b\000r\000u\000\000\000\000\000u\000\000\000\000\000\162\000\210\000u\000\000\000z\000\000\000u\000\170\000\130\000\138\000u\000u\000u\000u\000\000\000\000\000\000\000\000\000\000\000u\000u\000\000\000u\000u\000\000\000\000\000\000\000j\000u\000\000\000u\000\000\000u\000\000\000u\000\194\000\146\000\154\000\178\000m\000\000\000\000\000\000\000\202\000u\000\186\000m\000b\000r\000m\000\000\000\000\000m\000\000\000\000\000\162\000\210\000m\000\000\000z\000\000\000m\000\170\000\130\000\138\000m\000m\000m\000m\000\000\000\000\000\000\000\000\000\000\000m\000m\000\000\000m\000m\000\000\000\000\000\000\000j\000m\000\000\000m\000\000\000m\000\000\000m\000\194\000\146\000\154\000\178\000q\000\000\000\000\000\000\000\202\000m\000\186\000q\000b\000r\000q\000\000\000\000\000q\000\000\000\000\000\162\000\210\000q\000\000\000z\000\000\000q\000\170\000\130\000\138\000q\000q\000q\000q\000\000\000\000\000\000\000\000\000\000\000q\000q\000\000\000q\000q\000\000\000\000\000\000\000j\000q\000\000\000q\000\000\000q\000\000\000q\000\194\000\146\000\154\000\178\000i\000\000\000\000\000\000\000\202\000q\000\186\000i\000b\000r\000i\000\000\000\000\000i\000\000\000\000\000\162\000\210\000i\000\000\000z\000\000\000i\000\170\000\130\000\138\000i\000i\000i\000i\000\000\000\000\000\000\000\000\000\000\000i\000i\000\000\000i\000i\000\000\000\000\000\000\000j\000i\000\000\000i\000\000\000i\000\000\000i\000\194\000\146\000\154\000\178\000y\000\000\000\000\000\000\000\202\000i\000\186\000y\000b\000r\000y\000\000\000\000\000y\000\000\000\000\000\162\000\210\000y\000\000\000z\000\000\000y\000\170\000\130\000\138\000y\000y\000y\000y\000\000\000\000\000\000\000\000\000\000\000y\000y\000\000\000y\000y\000\000\000\000\000\000\000j\000y\000\000\000y\000\000\000y\000\000\000y\000\194\000\146\000\154\000\178\000e\000\000\000\000\000\000\000\202\000y\000\186\000e\000b\000r\000e\000\000\000\000\000e\000\000\000\000\000\162\000\210\000e\000\000\000z\000\000\000\226\000\170\000\130\000\138\000\234\000\242\000\250\001\002\000\000\000\000\000\000\000\000\000\000\000e\000e\000\000\000e\000e\000\000\000\000\000\000\000j\001\n\000\000\000e\000\000\000e\000\000\000e\000\194\000\146\000\154\000\178\001\017\000\000\000F\000\000\000\202\000e\000\186\000\000\001\017\001\017\001\017\000\000\001&\001\017\000\000\001.\001\017\001\017\001\017\000\000\001\017\000\000\001\017\001\017\001\017\001\017\001\017\001\017\001\017\001\017\000\000\000\000\000\000\000\000\000\000\001\017\001\017\001>\001J\001\017\000\000\001b\000\000\001\017\001\017\000\000\001\017\000\000\001\017\000\000\000\000\001\017\001\017\001\017\001\017\000A\000\000\000\000\001\158\001\017\001\017\001\017\001F\000b\000r\000A\000\000\000\000\000A\000\000\000\000\000\162\000\210\000\218\000\000\000z\000\000\000\226\000\170\000\130\000\138\000\234\000\242\000\250\001\002\000\000\000\000\000\000\000\000\000\000\000A\000A\000\000\001\026\000A\000\000\000\000\000\000\000j\001\n\000\000\000A\000\000\000A\000\000\001\"\000\194\000\146\000\154\000\178\000)\000\000\000\000\000\000\000\202\001\018\000\186\000\000\000b\000r\000)\000\000\000\000\000)\000\000\000\000\000\162\000\210\000\218\000\000\000z\000\000\000\226\000\170\000\130\000\138\000\234\000\242\000\250\001\002\000\000\000\000\000\000\000\000\000\000\000)\000)\000F\001:\000)\000J\000N\001\142\000j\001\n\001\154\000)\001&\000)\000\000\001.\000\194\000\146\000\154\000\178\000\000\000F\000\000\000\221\000\202\001\018\000\186\000\n\000\014\000\018\000R\001&\000V\000\221\001.\000\000\000\221\001>\001J\000J\000N\001b\000\000\000\000\000:\000\000\000\000\000\000\000\229\000\000\000\229\000\000\000\000\000\000\000\000\000\000\001>\001J\000\221\000\221\001b\000\000\000\221\000\000\000R\000\000\000V\000\213\000\000\000\221"))
  
  and lhs =
    (8, "\000\024\023\023\023\023\023\023\023\023\022\022\021\020\019\018\017\016\015\014\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\012\011\011\n\n\t\t\b\b\007\007\006\006\005\005\004\003\002\002\002\001")
  
  and goto =
    ((16, "\000\003\000\b\000\000\000\000\000\000\000\000\000\000\000\004\000\000\000\000\000\000\000\003\000\000\000\016\000\000\000\000\000\003\000\\\000\000\000\000\000\000\000r\000\000\000\000\000\160\000\000\000\162\000\000\000\206\000\000\000\208\000\000\000\252\000\000\000\254\000\000\001(\000\000\001*\000\000\001,\000\000\001F\000\000\001H\000\000\001J\000\000\001L\000\000\001N\000\000\001P\000\000\001R\000\000\001T\000\000\001V\000\000\001X\000\000\001Z\000\000\001\\\000\000\001v\000\000\001x\000\000\000\000\000\000\000,\001z\000\000\000\000\001|\000\000\000\000\001~\000\000\000Z\000\000\000\003\000$\000\000\000\000\000\000\000>\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\136\000\000\001\128\000\000\000\000\000\000\000\000\000,\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\182\000\000\000V\000\228\000\000\001\018\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000,\000\000\0002\000\000\000\000\000\000\000\000\000,\000\000"), (8, "b\r\014\135\t\136\006\017\129\016W\138\011\131nopqrstuvb\r\014\133\t\139V\132\127Zi\138\134\131nopqrstuvb\023}\133\000\000x\000\000\000\000\000\023Hnopqrstu{b\024\000\000\000\000\000\000l\000\000\000\023\023nopqrstuvb\026\028\000\000\000\000\000w\000\000\000\023\023nopqrstuvb\030 \000\000\000z\000\000\000\000\000\023\023nopqrstu{b\"$\000\000\000|\000\000\000\000\023\023\023nopqrstu{&(*\023\023\023\023\023\023\023\023\023\023\023\023,.02468:<>@B\023\023\023\023\023\023\000\000\000\000\000\000DFKNQk"))
  
  and semantic_action =
    [|
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _;
          MenhirLib.EngineTypes.semv = id;
          MenhirLib.EngineTypes.startp = _startpos_id_;
          MenhirLib.EngineTypes.endp = _endpos_id_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.state = _menhir_s;
            MenhirLib.EngineTypes.semv = t;
            MenhirLib.EngineTypes.startp = _startpos_t_;
            MenhirLib.EngineTypes.endp = _endpos_t_;
            MenhirLib.EngineTypes.next = _menhir_stack;
          };
        } = _menhir_stack in
        let id : (
# 5 "sintatico.mly"
       (string)
# 416 "sintatico.ml"
        ) = Obj.magic id in
        let t : (Ast.tipo) = Obj.magic t in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_t_ in
        let _endpos = _endpos_id_ in
        let _v : (Ast.argumentos) = 
# 97 "sintatico.mly"
                             ( Args (t, id) )
# 425 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = c;
          MenhirLib.EngineTypes.startp = _startpos_c_;
          MenhirLib.EngineTypes.endp = _endpos_c_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let c : (Ast.comando) = Obj.magic c in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_c_ in
        let _endpos = _endpos_c_ in
        let _v : (Ast.comando) = 
# 110 "sintatico.mly"
                                  ( c )
# 450 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = c;
          MenhirLib.EngineTypes.startp = _startpos_c_;
          MenhirLib.EngineTypes.endp = _endpos_c_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let c : (Ast.comando) = Obj.magic c in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_c_ in
        let _endpos = _endpos_c_ in
        let _v : (Ast.comando) = 
# 111 "sintatico.mly"
                                  ( c )
# 475 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = c;
          MenhirLib.EngineTypes.startp = _startpos_c_;
          MenhirLib.EngineTypes.endp = _endpos_c_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let c : (Ast.comando) = Obj.magic c in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_c_ in
        let _endpos = _endpos_c_ in
        let _v : (Ast.comando) = 
# 112 "sintatico.mly"
                                  ( c )
# 500 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = c;
          MenhirLib.EngineTypes.startp = _startpos_c_;
          MenhirLib.EngineTypes.endp = _endpos_c_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let c : (Ast.comando) = Obj.magic c in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_c_ in
        let _endpos = _endpos_c_ in
        let _v : (Ast.comando) = 
# 113 "sintatico.mly"
                                  ( c )
# 525 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = c;
          MenhirLib.EngineTypes.startp = _startpos_c_;
          MenhirLib.EngineTypes.endp = _endpos_c_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let c : (Ast.comando) = Obj.magic c in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_c_ in
        let _endpos = _endpos_c_ in
        let _v : (Ast.comando) = 
# 114 "sintatico.mly"
                                  ( c )
# 550 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = c;
          MenhirLib.EngineTypes.startp = _startpos_c_;
          MenhirLib.EngineTypes.endp = _endpos_c_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let c : (Ast.comando) = Obj.magic c in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_c_ in
        let _endpos = _endpos_c_ in
        let _v : (Ast.comando) = 
# 115 "sintatico.mly"
                                  ( c )
# 575 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = c;
          MenhirLib.EngineTypes.startp = _startpos_c_;
          MenhirLib.EngineTypes.endp = _endpos_c_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let c : (Ast.comando) = Obj.magic c in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_c_ in
        let _endpos = _endpos_c_ in
        let _v : (Ast.comando) = 
# 116 "sintatico.mly"
                                  ( c )
# 600 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = c;
          MenhirLib.EngineTypes.startp = _startpos_c_;
          MenhirLib.EngineTypes.endp = _endpos_c_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let c : (Ast.comando) = Obj.magic c in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_c_ in
        let _endpos = _endpos_c_ in
        let _v : (Ast.comando) = 
# 117 "sintatico.mly"
                                  ( c )
# 625 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _;
          MenhirLib.EngineTypes.semv = e;
          MenhirLib.EngineTypes.startp = _startpos_e_;
          MenhirLib.EngineTypes.endp = _endpos_e_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.state = _;
            MenhirLib.EngineTypes.semv = _2;
            MenhirLib.EngineTypes.startp = _startpos__2_;
            MenhirLib.EngineTypes.endp = _endpos__2_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _menhir_s;
              MenhirLib.EngineTypes.semv = v;
              MenhirLib.EngineTypes.startp = _startpos_v_;
              MenhirLib.EngineTypes.endp = _endpos_v_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let e : (Ast.expressao) = Obj.magic e in
        let _2 : unit = Obj.magic _2 in
        let v : (Ast.variavel) = Obj.magic v in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_v_ in
        let _endpos = _endpos_e_ in
        let _v : (Ast.comando) = 
# 120 "sintatico.mly"
                                            ( CmdAtrib (v,e) )
# 664 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _;
          MenhirLib.EngineTypes.semv = _6;
          MenhirLib.EngineTypes.startp = _startpos__6_;
          MenhirLib.EngineTypes.endp = _endpos__6_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.state = _;
            MenhirLib.EngineTypes.semv = args;
            MenhirLib.EngineTypes.startp = _startpos_args_;
            MenhirLib.EngineTypes.endp = _endpos_args_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _;
              MenhirLib.EngineTypes.semv = _4;
              MenhirLib.EngineTypes.startp = _startpos__4_;
              MenhirLib.EngineTypes.endp = _endpos__4_;
              MenhirLib.EngineTypes.next = {
                MenhirLib.EngineTypes.state = _;
                MenhirLib.EngineTypes.semv = id;
                MenhirLib.EngineTypes.startp = _startpos_id_;
                MenhirLib.EngineTypes.endp = _endpos_id_;
                MenhirLib.EngineTypes.next = {
                  MenhirLib.EngineTypes.state = _;
                  MenhirLib.EngineTypes.semv = _2;
                  MenhirLib.EngineTypes.startp = _startpos__2_;
                  MenhirLib.EngineTypes.endp = _endpos__2_;
                  MenhirLib.EngineTypes.next = {
                    MenhirLib.EngineTypes.state = _menhir_s;
                    MenhirLib.EngineTypes.semv = v;
                    MenhirLib.EngineTypes.startp = _startpos_v_;
                    MenhirLib.EngineTypes.endp = _endpos_v_;
                    MenhirLib.EngineTypes.next = _menhir_stack;
                  };
                };
              };
            };
          };
        } = _menhir_stack in
        let _6 : unit = Obj.magic _6 in
        let args : (Ast.identificador list) = Obj.magic args in
        let _4 : unit = Obj.magic _4 in
        let id : (
# 5 "sintatico.mly"
       (string)
# 718 "sintatico.ml"
        ) = Obj.magic id in
        let _2 : unit = Obj.magic _2 in
        let v : (Ast.variavel) = Obj.magic v in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_v_ in
        let _endpos = _endpos__6_ in
        let _v : (Ast.comando) = 
# 121 "sintatico.mly"
                                                              ( CmdAtribRetorno (v, id, args) )
# 728 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _;
          MenhirLib.EngineTypes.semv = _11;
          MenhirLib.EngineTypes.startp = _startpos__11_;
          MenhirLib.EngineTypes.endp = _endpos__11_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.state = _;
            MenhirLib.EngineTypes.semv = cs;
            MenhirLib.EngineTypes.startp = _startpos_cs_;
            MenhirLib.EngineTypes.endp = _endpos_cs_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _;
              MenhirLib.EngineTypes.semv = _9;
              MenhirLib.EngineTypes.startp = _startpos__9_;
              MenhirLib.EngineTypes.endp = _endpos__9_;
              MenhirLib.EngineTypes.next = {
                MenhirLib.EngineTypes.state = _;
                MenhirLib.EngineTypes.semv = l3;
                MenhirLib.EngineTypes.startp = _startpos_l3_;
                MenhirLib.EngineTypes.endp = _endpos_l3_;
                MenhirLib.EngineTypes.next = {
                  MenhirLib.EngineTypes.state = _;
                  MenhirLib.EngineTypes.semv = _7;
                  MenhirLib.EngineTypes.startp = _startpos__7_;
                  MenhirLib.EngineTypes.endp = _endpos__7_;
                  MenhirLib.EngineTypes.next = {
                    MenhirLib.EngineTypes.state = _;
                    MenhirLib.EngineTypes.semv = l2;
                    MenhirLib.EngineTypes.startp = _startpos_l2_;
                    MenhirLib.EngineTypes.endp = _endpos_l2_;
                    MenhirLib.EngineTypes.next = {
                      MenhirLib.EngineTypes.state = _;
                      MenhirLib.EngineTypes.semv = _5;
                      MenhirLib.EngineTypes.startp = _startpos__5_;
                      MenhirLib.EngineTypes.endp = _endpos__5_;
                      MenhirLib.EngineTypes.next = {
                        MenhirLib.EngineTypes.state = _;
                        MenhirLib.EngineTypes.semv = l1;
                        MenhirLib.EngineTypes.startp = _startpos_l1_;
                        MenhirLib.EngineTypes.endp = _endpos_l1_;
                        MenhirLib.EngineTypes.next = {
                          MenhirLib.EngineTypes.state = _;
                          MenhirLib.EngineTypes.semv = _3;
                          MenhirLib.EngineTypes.startp = _startpos__3_;
                          MenhirLib.EngineTypes.endp = _endpos__3_;
                          MenhirLib.EngineTypes.next = {
                            MenhirLib.EngineTypes.state = _;
                            MenhirLib.EngineTypes.semv = v;
                            MenhirLib.EngineTypes.startp = _startpos_v_;
                            MenhirLib.EngineTypes.endp = _endpos_v_;
                            MenhirLib.EngineTypes.next = {
                              MenhirLib.EngineTypes.state = _menhir_s;
                              MenhirLib.EngineTypes.semv = _1;
                              MenhirLib.EngineTypes.startp = _startpos__1_;
                              MenhirLib.EngineTypes.endp = _endpos__1_;
                              MenhirLib.EngineTypes.next = _menhir_stack;
                            };
                          };
                        };
                      };
                    };
                  };
                };
              };
            };
          };
        } = _menhir_stack in
        let _11 : unit = Obj.magic _11 in
        let cs : (Ast.comandos) = Obj.magic cs in
        let _9 : unit = Obj.magic _9 in
        let l3 : (
# 7 "sintatico.mly"
       (int)
# 812 "sintatico.ml"
        ) = Obj.magic l3 in
        let _7 : unit = Obj.magic _7 in
        let l2 : (
# 7 "sintatico.mly"
       (int)
# 818 "sintatico.ml"
        ) = Obj.magic l2 in
        let _5 : unit = Obj.magic _5 in
        let l1 : (
# 7 "sintatico.mly"
       (int)
# 824 "sintatico.ml"
        ) = Obj.magic l1 in
        let _3 : unit = Obj.magic _3 in
        let v : (Ast.variavel) = Obj.magic v in
        let _1 : unit = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__11_ in
        let _v : (Ast.comando) = 
# 133 "sintatico.mly"
                        (CmdFor (v, l1, l2, l3, cs) )
# 835 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _;
          MenhirLib.EngineTypes.semv = _4;
          MenhirLib.EngineTypes.startp = _startpos__4_;
          MenhirLib.EngineTypes.endp = _endpos__4_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.state = _;
            MenhirLib.EngineTypes.semv = args;
            MenhirLib.EngineTypes.startp = _startpos_args_;
            MenhirLib.EngineTypes.endp = _endpos_args_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _;
              MenhirLib.EngineTypes.semv = _2;
              MenhirLib.EngineTypes.startp = _startpos__2_;
              MenhirLib.EngineTypes.endp = _endpos__2_;
              MenhirLib.EngineTypes.next = {
                MenhirLib.EngineTypes.state = _menhir_s;
                MenhirLib.EngineTypes.semv = id;
                MenhirLib.EngineTypes.startp = _startpos_id_;
                MenhirLib.EngineTypes.endp = _endpos_id_;
                MenhirLib.EngineTypes.next = _menhir_stack;
              };
            };
          };
        } = _menhir_stack in
        let _4 : unit = Obj.magic _4 in
        let args : (Ast.identificador list) = Obj.magic args in
        let _2 : unit = Obj.magic _2 in
        let id : (
# 5 "sintatico.mly"
       (string)
# 877 "sintatico.ml"
        ) = Obj.magic id in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_id_ in
        let _endpos = _endpos__4_ in
        let _v : (Ast.comando) = 
# 149 "sintatico.mly"
                                  (CmdFunction  (id, args)  )
# 885 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _;
          MenhirLib.EngineTypes.semv = _6;
          MenhirLib.EngineTypes.startp = _startpos__6_;
          MenhirLib.EngineTypes.endp = _endpos__6_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.state = _;
            MenhirLib.EngineTypes.semv = senao;
            MenhirLib.EngineTypes.startp = _startpos_senao_;
            MenhirLib.EngineTypes.endp = _endpos_senao_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _;
              MenhirLib.EngineTypes.semv = entao;
              MenhirLib.EngineTypes.startp = _startpos_entao_;
              MenhirLib.EngineTypes.endp = _endpos_entao_;
              MenhirLib.EngineTypes.next = {
                MenhirLib.EngineTypes.state = _;
                MenhirLib.EngineTypes.semv = _3;
                MenhirLib.EngineTypes.startp = _startpos__3_;
                MenhirLib.EngineTypes.endp = _endpos__3_;
                MenhirLib.EngineTypes.next = {
                  MenhirLib.EngineTypes.state = _;
                  MenhirLib.EngineTypes.semv = teste;
                  MenhirLib.EngineTypes.startp = _startpos_teste_;
                  MenhirLib.EngineTypes.endp = _endpos_teste_;
                  MenhirLib.EngineTypes.next = {
                    MenhirLib.EngineTypes.state = _menhir_s;
                    MenhirLib.EngineTypes.semv = _1;
                    MenhirLib.EngineTypes.startp = _startpos__1_;
                    MenhirLib.EngineTypes.endp = _endpos__1_;
                    MenhirLib.EngineTypes.next = _menhir_stack;
                  };
                };
              };
            };
          };
        } = _menhir_stack in
        let _6 : unit = Obj.magic _6 in
        let senao : (Ast.comandos option) = Obj.magic senao in
        let entao : (Ast.comandos) = Obj.magic entao in
        let _3 : unit = Obj.magic _3 in
        let teste : (Ast.expressao) = Obj.magic teste in
        let _1 : unit = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__6_ in
        let _v : (Ast.comando) = 
# 127 "sintatico.mly"
                (
              CmdIf (teste, entao, senao)
            )
# 947 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _;
          MenhirLib.EngineTypes.semv = _4;
          MenhirLib.EngineTypes.startp = _startpos__4_;
          MenhirLib.EngineTypes.endp = _endpos__4_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.state = _;
            MenhirLib.EngineTypes.semv = teste;
            MenhirLib.EngineTypes.startp = _startpos_teste_;
            MenhirLib.EngineTypes.endp = _endpos_teste_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _;
              MenhirLib.EngineTypes.semv = _2;
              MenhirLib.EngineTypes.startp = _startpos__2_;
              MenhirLib.EngineTypes.endp = _endpos__2_;
              MenhirLib.EngineTypes.next = {
                MenhirLib.EngineTypes.state = _menhir_s;
                MenhirLib.EngineTypes.semv = _1;
                MenhirLib.EngineTypes.startp = _startpos__1_;
                MenhirLib.EngineTypes.endp = _endpos__1_;
                MenhirLib.EngineTypes.next = _menhir_stack;
              };
            };
          };
        } = _menhir_stack in
        let _4 : unit = Obj.magic _4 in
        let teste : (Ast.expressao) = Obj.magic teste in
        let _2 : unit = Obj.magic _2 in
        let _1 : unit = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__4_ in
        let _v : (Ast.comando) = 
# 141 "sintatico.mly"
                                        (CmdPrint (teste) )
# 993 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _;
          MenhirLib.EngineTypes.semv = exp;
          MenhirLib.EngineTypes.startp = _startpos_exp_;
          MenhirLib.EngineTypes.endp = _endpos_exp_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.state = _menhir_s;
            MenhirLib.EngineTypes.semv = _1;
            MenhirLib.EngineTypes.startp = _startpos__1_;
            MenhirLib.EngineTypes.endp = _endpos__1_;
            MenhirLib.EngineTypes.next = _menhir_stack;
          };
        } = _menhir_stack in
        let exp : (Ast.expressao) = Obj.magic exp in
        let _1 : unit = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos_exp_ in
        let _v : (Ast.comando) = 
# 153 "sintatico.mly"
                            ( CmdRetorno  (exp) )
# 1025 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _;
          MenhirLib.EngineTypes.semv = _5;
          MenhirLib.EngineTypes.startp = _startpos__5_;
          MenhirLib.EngineTypes.endp = _endpos__5_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.state = _;
            MenhirLib.EngineTypes.semv = _4;
            MenhirLib.EngineTypes.startp = _startpos__4_;
            MenhirLib.EngineTypes.endp = _endpos__4_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _;
              MenhirLib.EngineTypes.semv = _3;
              MenhirLib.EngineTypes.startp = _startpos__3_;
              MenhirLib.EngineTypes.endp = _endpos__3_;
              MenhirLib.EngineTypes.next = {
                MenhirLib.EngineTypes.state = _;
                MenhirLib.EngineTypes.semv = _2;
                MenhirLib.EngineTypes.startp = _startpos__2_;
                MenhirLib.EngineTypes.endp = _endpos__2_;
                MenhirLib.EngineTypes.next = {
                  MenhirLib.EngineTypes.state = _menhir_s;
                  MenhirLib.EngineTypes.semv = v;
                  MenhirLib.EngineTypes.startp = _startpos_v_;
                  MenhirLib.EngineTypes.endp = _endpos_v_;
                  MenhirLib.EngineTypes.next = _menhir_stack;
                };
              };
            };
          };
        } = _menhir_stack in
        let _5 : unit = Obj.magic _5 in
        let _4 : unit = Obj.magic _4 in
        let _3 : unit = Obj.magic _3 in
        let _2 : unit = Obj.magic _2 in
        let v : (Ast.variavel) = Obj.magic v in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_v_ in
        let _endpos = _endpos__5_ in
        let _v : (Ast.comando) = 
# 145 "sintatico.mly"
                                            (CmdScan  (v) )
# 1078 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _;
          MenhirLib.EngineTypes.semv = _5;
          MenhirLib.EngineTypes.startp = _startpos__5_;
          MenhirLib.EngineTypes.endp = _endpos__5_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.state = _;
            MenhirLib.EngineTypes.semv = cs;
            MenhirLib.EngineTypes.startp = _startpos_cs_;
            MenhirLib.EngineTypes.endp = _endpos_cs_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _;
              MenhirLib.EngineTypes.semv = _3;
              MenhirLib.EngineTypes.startp = _startpos__3_;
              MenhirLib.EngineTypes.endp = _endpos__3_;
              MenhirLib.EngineTypes.next = {
                MenhirLib.EngineTypes.state = _;
                MenhirLib.EngineTypes.semv = teste;
                MenhirLib.EngineTypes.startp = _startpos_teste_;
                MenhirLib.EngineTypes.endp = _endpos_teste_;
                MenhirLib.EngineTypes.next = {
                  MenhirLib.EngineTypes.state = _menhir_s;
                  MenhirLib.EngineTypes.semv = _1;
                  MenhirLib.EngineTypes.startp = _startpos__1_;
                  MenhirLib.EngineTypes.endp = _endpos__1_;
                  MenhirLib.EngineTypes.next = _menhir_stack;
                };
              };
            };
          };
        } = _menhir_stack in
        let _5 : unit = Obj.magic _5 in
        let cs : (Ast.comandos) = Obj.magic cs in
        let _3 : unit = Obj.magic _3 in
        let teste : (Ast.expressao) = Obj.magic teste in
        let _1 : unit = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__5_ in
        let _v : (Ast.comando) = 
# 137 "sintatico.mly"
                                                  ( CmdWhile  (teste, cs) )
# 1131 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _;
          MenhirLib.EngineTypes.semv = v;
          MenhirLib.EngineTypes.startp = _startpos_v_;
          MenhirLib.EngineTypes.endp = _endpos_v_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.state = _menhir_s;
            MenhirLib.EngineTypes.semv = t;
            MenhirLib.EngineTypes.startp = _startpos_t_;
            MenhirLib.EngineTypes.endp = _endpos_t_;
            MenhirLib.EngineTypes.next = _menhir_stack;
          };
        } = _menhir_stack in
        let v : (Ast.variavel) = Obj.magic v in
        let t : (Ast.tipo) = Obj.magic t in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_t_ in
        let _endpos = _endpos_v_ in
        let _v : (Ast.declaracao) = 
# 101 "sintatico.mly"
                      ( DecVar (t,v) )
# 1163 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = v;
          MenhirLib.EngineTypes.startp = _startpos_v_;
          MenhirLib.EngineTypes.endp = _endpos_v_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let v : (Ast.variavel) = Obj.magic v in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_v_ in
        let _endpos = _endpos_v_ in
        let _v : (Ast.expressao) = 
# 157 "sintatico.mly"
                    ( ExpVar  v )
# 1188 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = i;
          MenhirLib.EngineTypes.startp = _startpos_i_;
          MenhirLib.EngineTypes.endp = _endpos_i_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let i : (
# 7 "sintatico.mly"
       (int)
# 1209 "sintatico.ml"
        ) = Obj.magic i in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_i_ in
        let _endpos = _endpos_i_ in
        let _v : (Ast.expressao) = 
# 158 "sintatico.mly"
                    ( ExpInt  i )
# 1217 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = s;
          MenhirLib.EngineTypes.startp = _startpos_s_;
          MenhirLib.EngineTypes.endp = _endpos_s_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let s : (
# 6 "sintatico.mly"
       (string)
# 1238 "sintatico.ml"
        ) = Obj.magic s in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_s_ in
        let _endpos = _endpos_s_ in
        let _v : (Ast.expressao) = 
# 159 "sintatico.mly"
                    ( ExpString s )
# 1246 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = b;
          MenhirLib.EngineTypes.startp = _startpos_b_;
          MenhirLib.EngineTypes.endp = _endpos_b_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let b : (
# 8 "sintatico.mly"
       (bool)
# 1267 "sintatico.ml"
        ) = Obj.magic b in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_b_ in
        let _endpos = _endpos_b_ in
        let _v : (Ast.expressao) = 
# 160 "sintatico.mly"
                    ( ExpBool b )
# 1275 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _;
          MenhirLib.EngineTypes.semv = e2;
          MenhirLib.EngineTypes.startp = _startpos_e2_;
          MenhirLib.EngineTypes.endp = _endpos_e2_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.state = _;
            MenhirLib.EngineTypes.semv = _10;
            MenhirLib.EngineTypes.startp = _startpos__10_;
            MenhirLib.EngineTypes.endp = _endpos__10_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _menhir_s;
              MenhirLib.EngineTypes.semv = e1;
              MenhirLib.EngineTypes.startp = _startpos_e1_;
              MenhirLib.EngineTypes.endp = _endpos_e1_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let e2 : (Ast.expressao) = Obj.magic e2 in
        let _10 : unit = Obj.magic _10 in
        let e1 : (Ast.expressao) = Obj.magic e1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_e1_ in
        let _endpos = _endpos_e2_ in
        let _v : (Ast.expressao) = let op =
          let _1 = _10 in
          
# 166 "sintatico.mly"
        ( Or  )
# 1316 "sintatico.ml"
          
        in
        
# 161 "sintatico.mly"
                                            ( ExpOp (op, e1, e2)  )
# 1322 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _;
          MenhirLib.EngineTypes.semv = e2;
          MenhirLib.EngineTypes.startp = _startpos_e2_;
          MenhirLib.EngineTypes.endp = _endpos_e2_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.state = _;
            MenhirLib.EngineTypes.semv = _10;
            MenhirLib.EngineTypes.startp = _startpos__10_;
            MenhirLib.EngineTypes.endp = _endpos__10_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _menhir_s;
              MenhirLib.EngineTypes.semv = e1;
              MenhirLib.EngineTypes.startp = _startpos_e1_;
              MenhirLib.EngineTypes.endp = _endpos_e1_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let e2 : (Ast.expressao) = Obj.magic e2 in
        let _10 : unit = Obj.magic _10 in
        let e1 : (Ast.expressao) = Obj.magic e1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_e1_ in
        let _endpos = _endpos_e2_ in
        let _v : (Ast.expressao) = let op =
          let _1 = _10 in
          
# 167 "sintatico.mly"
        ( And )
# 1363 "sintatico.ml"
          
        in
        
# 161 "sintatico.mly"
                                            ( ExpOp (op, e1, e2)  )
# 1369 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _;
          MenhirLib.EngineTypes.semv = e2;
          MenhirLib.EngineTypes.startp = _startpos_e2_;
          MenhirLib.EngineTypes.endp = _endpos_e2_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.state = _;
            MenhirLib.EngineTypes.semv = _10;
            MenhirLib.EngineTypes.startp = _startpos__10_;
            MenhirLib.EngineTypes.endp = _endpos__10_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _menhir_s;
              MenhirLib.EngineTypes.semv = e1;
              MenhirLib.EngineTypes.startp = _startpos_e1_;
              MenhirLib.EngineTypes.endp = _endpos_e1_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let e2 : (Ast.expressao) = Obj.magic e2 in
        let _10 : unit = Obj.magic _10 in
        let e1 : (Ast.expressao) = Obj.magic e1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_e1_ in
        let _endpos = _endpos_e2_ in
        let _v : (Ast.expressao) = let op =
          let _1 = _10 in
          
# 168 "sintatico.mly"
          ( Maior )
# 1410 "sintatico.ml"
          
        in
        
# 161 "sintatico.mly"
                                            ( ExpOp (op, e1, e2)  )
# 1416 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _;
          MenhirLib.EngineTypes.semv = e2;
          MenhirLib.EngineTypes.startp = _startpos_e2_;
          MenhirLib.EngineTypes.endp = _endpos_e2_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.state = _;
            MenhirLib.EngineTypes.semv = _10;
            MenhirLib.EngineTypes.startp = _startpos__10_;
            MenhirLib.EngineTypes.endp = _endpos__10_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _menhir_s;
              MenhirLib.EngineTypes.semv = e1;
              MenhirLib.EngineTypes.startp = _startpos_e1_;
              MenhirLib.EngineTypes.endp = _endpos_e1_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let e2 : (Ast.expressao) = Obj.magic e2 in
        let _10 : unit = Obj.magic _10 in
        let e1 : (Ast.expressao) = Obj.magic e1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_e1_ in
        let _endpos = _endpos_e2_ in
        let _v : (Ast.expressao) = let op =
          let _1 = _10 in
          
# 169 "sintatico.mly"
          ( Menor )
# 1457 "sintatico.ml"
          
        in
        
# 161 "sintatico.mly"
                                            ( ExpOp (op, e1, e2)  )
# 1463 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _;
          MenhirLib.EngineTypes.semv = e2;
          MenhirLib.EngineTypes.startp = _startpos_e2_;
          MenhirLib.EngineTypes.endp = _endpos_e2_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.state = _;
            MenhirLib.EngineTypes.semv = _10;
            MenhirLib.EngineTypes.startp = _startpos__10_;
            MenhirLib.EngineTypes.endp = _endpos__10_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _menhir_s;
              MenhirLib.EngineTypes.semv = e1;
              MenhirLib.EngineTypes.startp = _startpos_e1_;
              MenhirLib.EngineTypes.endp = _endpos_e1_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let e2 : (Ast.expressao) = Obj.magic e2 in
        let _10 : unit = Obj.magic _10 in
        let e1 : (Ast.expressao) = Obj.magic e1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_e1_ in
        let _endpos = _endpos_e2_ in
        let _v : (Ast.expressao) = let op =
          let _1 = _10 in
          
# 170 "sintatico.mly"
                    ( Maior_ou_Igual  )
# 1504 "sintatico.ml"
          
        in
        
# 161 "sintatico.mly"
                                            ( ExpOp (op, e1, e2)  )
# 1510 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _;
          MenhirLib.EngineTypes.semv = e2;
          MenhirLib.EngineTypes.startp = _startpos_e2_;
          MenhirLib.EngineTypes.endp = _endpos_e2_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.state = _;
            MenhirLib.EngineTypes.semv = _10;
            MenhirLib.EngineTypes.startp = _startpos__10_;
            MenhirLib.EngineTypes.endp = _endpos__10_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _menhir_s;
              MenhirLib.EngineTypes.semv = e1;
              MenhirLib.EngineTypes.startp = _startpos_e1_;
              MenhirLib.EngineTypes.endp = _endpos_e1_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let e2 : (Ast.expressao) = Obj.magic e2 in
        let _10 : unit = Obj.magic _10 in
        let e1 : (Ast.expressao) = Obj.magic e1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_e1_ in
        let _endpos = _endpos_e2_ in
        let _v : (Ast.expressao) = let op =
          let _1 = _10 in
          
# 171 "sintatico.mly"
                    ( Menor_ou_Igual  )
# 1551 "sintatico.ml"
          
        in
        
# 161 "sintatico.mly"
                                            ( ExpOp (op, e1, e2)  )
# 1557 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _;
          MenhirLib.EngineTypes.semv = e2;
          MenhirLib.EngineTypes.startp = _startpos_e2_;
          MenhirLib.EngineTypes.endp = _endpos_e2_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.state = _;
            MenhirLib.EngineTypes.semv = _10;
            MenhirLib.EngineTypes.startp = _startpos__10_;
            MenhirLib.EngineTypes.endp = _endpos__10_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _menhir_s;
              MenhirLib.EngineTypes.semv = e1;
              MenhirLib.EngineTypes.startp = _startpos_e1_;
              MenhirLib.EngineTypes.endp = _endpos_e1_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let e2 : (Ast.expressao) = Obj.magic e2 in
        let _10 : unit = Obj.magic _10 in
        let e1 : (Ast.expressao) = Obj.magic e1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_e1_ in
        let _endpos = _endpos_e2_ in
        let _v : (Ast.expressao) = let op =
          let _1 = _10 in
          
# 172 "sintatico.mly"
                    ( Equivalente )
# 1598 "sintatico.ml"
          
        in
        
# 161 "sintatico.mly"
                                            ( ExpOp (op, e1, e2)  )
# 1604 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _;
          MenhirLib.EngineTypes.semv = e2;
          MenhirLib.EngineTypes.startp = _startpos_e2_;
          MenhirLib.EngineTypes.endp = _endpos_e2_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.state = _;
            MenhirLib.EngineTypes.semv = _10;
            MenhirLib.EngineTypes.startp = _startpos__10_;
            MenhirLib.EngineTypes.endp = _endpos__10_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _menhir_s;
              MenhirLib.EngineTypes.semv = e1;
              MenhirLib.EngineTypes.startp = _startpos_e1_;
              MenhirLib.EngineTypes.endp = _endpos_e1_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let e2 : (Ast.expressao) = Obj.magic e2 in
        let _10 : unit = Obj.magic _10 in
        let e1 : (Ast.expressao) = Obj.magic e1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_e1_ in
        let _endpos = _endpos_e2_ in
        let _v : (Ast.expressao) = let op =
          let _1 = _10 in
          
# 173 "sintatico.mly"
                    ( Nao_Equivalente )
# 1645 "sintatico.ml"
          
        in
        
# 161 "sintatico.mly"
                                            ( ExpOp (op, e1, e2)  )
# 1651 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _;
          MenhirLib.EngineTypes.semv = e2;
          MenhirLib.EngineTypes.startp = _startpos_e2_;
          MenhirLib.EngineTypes.endp = _endpos_e2_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.state = _;
            MenhirLib.EngineTypes.semv = _10;
            MenhirLib.EngineTypes.startp = _startpos__10_;
            MenhirLib.EngineTypes.endp = _endpos__10_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _menhir_s;
              MenhirLib.EngineTypes.semv = e1;
              MenhirLib.EngineTypes.startp = _startpos_e1_;
              MenhirLib.EngineTypes.endp = _endpos_e1_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let e2 : (Ast.expressao) = Obj.magic e2 in
        let _10 : unit = Obj.magic _10 in
        let e1 : (Ast.expressao) = Obj.magic e1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_e1_ in
        let _endpos = _endpos_e2_ in
        let _v : (Ast.expressao) = let op =
          let _1 = _10 in
          
# 174 "sintatico.mly"
                    ( Or_Binario  )
# 1692 "sintatico.ml"
          
        in
        
# 161 "sintatico.mly"
                                            ( ExpOp (op, e1, e2)  )
# 1698 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _;
          MenhirLib.EngineTypes.semv = e2;
          MenhirLib.EngineTypes.startp = _startpos_e2_;
          MenhirLib.EngineTypes.endp = _endpos_e2_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.state = _;
            MenhirLib.EngineTypes.semv = _10;
            MenhirLib.EngineTypes.startp = _startpos__10_;
            MenhirLib.EngineTypes.endp = _endpos__10_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _menhir_s;
              MenhirLib.EngineTypes.semv = e1;
              MenhirLib.EngineTypes.startp = _startpos_e1_;
              MenhirLib.EngineTypes.endp = _endpos_e1_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let e2 : (Ast.expressao) = Obj.magic e2 in
        let _10 : unit = Obj.magic _10 in
        let e1 : (Ast.expressao) = Obj.magic e1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_e1_ in
        let _endpos = _endpos_e2_ in
        let _v : (Ast.expressao) = let op =
          let _1 = _10 in
          
# 175 "sintatico.mly"
                          ( Or_Binario_Exclusivo  )
# 1739 "sintatico.ml"
          
        in
        
# 161 "sintatico.mly"
                                            ( ExpOp (op, e1, e2)  )
# 1745 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _;
          MenhirLib.EngineTypes.semv = e2;
          MenhirLib.EngineTypes.startp = _startpos_e2_;
          MenhirLib.EngineTypes.endp = _endpos_e2_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.state = _;
            MenhirLib.EngineTypes.semv = _10;
            MenhirLib.EngineTypes.startp = _startpos__10_;
            MenhirLib.EngineTypes.endp = _endpos__10_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _menhir_s;
              MenhirLib.EngineTypes.semv = e1;
              MenhirLib.EngineTypes.startp = _startpos_e1_;
              MenhirLib.EngineTypes.endp = _endpos_e1_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let e2 : (Ast.expressao) = Obj.magic e2 in
        let _10 : unit = Obj.magic _10 in
        let e1 : (Ast.expressao) = Obj.magic e1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_e1_ in
        let _endpos = _endpos_e2_ in
        let _v : (Ast.expressao) = let op =
          let _1 = _10 in
          
# 176 "sintatico.mly"
                          ( And_Binario )
# 1786 "sintatico.ml"
          
        in
        
# 161 "sintatico.mly"
                                            ( ExpOp (op, e1, e2)  )
# 1792 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _;
          MenhirLib.EngineTypes.semv = e2;
          MenhirLib.EngineTypes.startp = _startpos_e2_;
          MenhirLib.EngineTypes.endp = _endpos_e2_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.state = _;
            MenhirLib.EngineTypes.semv = _10;
            MenhirLib.EngineTypes.startp = _startpos__10_;
            MenhirLib.EngineTypes.endp = _endpos__10_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _menhir_s;
              MenhirLib.EngineTypes.semv = e1;
              MenhirLib.EngineTypes.startp = _startpos_e1_;
              MenhirLib.EngineTypes.endp = _endpos_e1_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let e2 : (Ast.expressao) = Obj.magic e2 in
        let _10 : unit = Obj.magic _10 in
        let e1 : (Ast.expressao) = Obj.magic e1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_e1_ in
        let _endpos = _endpos_e2_ in
        let _v : (Ast.expressao) = let op =
          let _1 = _10 in
          
# 177 "sintatico.mly"
                          ( Mult_Por_2  )
# 1833 "sintatico.ml"
          
        in
        
# 161 "sintatico.mly"
                                            ( ExpOp (op, e1, e2)  )
# 1839 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _;
          MenhirLib.EngineTypes.semv = e2;
          MenhirLib.EngineTypes.startp = _startpos_e2_;
          MenhirLib.EngineTypes.endp = _endpos_e2_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.state = _;
            MenhirLib.EngineTypes.semv = _10;
            MenhirLib.EngineTypes.startp = _startpos__10_;
            MenhirLib.EngineTypes.endp = _endpos__10_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _menhir_s;
              MenhirLib.EngineTypes.semv = e1;
              MenhirLib.EngineTypes.startp = _startpos_e1_;
              MenhirLib.EngineTypes.endp = _endpos_e1_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let e2 : (Ast.expressao) = Obj.magic e2 in
        let _10 : unit = Obj.magic _10 in
        let e1 : (Ast.expressao) = Obj.magic e1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_e1_ in
        let _endpos = _endpos_e2_ in
        let _v : (Ast.expressao) = let op =
          let _1 = _10 in
          
# 178 "sintatico.mly"
                          ( Div_Por_2 )
# 1880 "sintatico.ml"
          
        in
        
# 161 "sintatico.mly"
                                            ( ExpOp (op, e1, e2)  )
# 1886 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _;
          MenhirLib.EngineTypes.semv = e2;
          MenhirLib.EngineTypes.startp = _startpos_e2_;
          MenhirLib.EngineTypes.endp = _endpos_e2_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.state = _;
            MenhirLib.EngineTypes.semv = _10;
            MenhirLib.EngineTypes.startp = _startpos__10_;
            MenhirLib.EngineTypes.endp = _endpos__10_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _menhir_s;
              MenhirLib.EngineTypes.semv = e1;
              MenhirLib.EngineTypes.startp = _startpos_e1_;
              MenhirLib.EngineTypes.endp = _endpos_e1_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let e2 : (Ast.expressao) = Obj.magic e2 in
        let _10 : unit = Obj.magic _10 in
        let e1 : (Ast.expressao) = Obj.magic e1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_e1_ in
        let _endpos = _endpos_e2_ in
        let _v : (Ast.expressao) = let op =
          let _1 = _10 in
          
# 179 "sintatico.mly"
                          ( Concatena )
# 1927 "sintatico.ml"
          
        in
        
# 161 "sintatico.mly"
                                            ( ExpOp (op, e1, e2)  )
# 1933 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _;
          MenhirLib.EngineTypes.semv = e2;
          MenhirLib.EngineTypes.startp = _startpos_e2_;
          MenhirLib.EngineTypes.endp = _endpos_e2_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.state = _;
            MenhirLib.EngineTypes.semv = _10;
            MenhirLib.EngineTypes.startp = _startpos__10_;
            MenhirLib.EngineTypes.endp = _endpos__10_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _menhir_s;
              MenhirLib.EngineTypes.semv = e1;
              MenhirLib.EngineTypes.startp = _startpos_e1_;
              MenhirLib.EngineTypes.endp = _endpos_e1_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let e2 : (Ast.expressao) = Obj.magic e2 in
        let _10 : unit = Obj.magic _10 in
        let e1 : (Ast.expressao) = Obj.magic e1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_e1_ in
        let _endpos = _endpos_e2_ in
        let _v : (Ast.expressao) = let op =
          let _1 = _10 in
          
# 180 "sintatico.mly"
                          ( Adicao  )
# 1974 "sintatico.ml"
          
        in
        
# 161 "sintatico.mly"
                                            ( ExpOp (op, e1, e2)  )
# 1980 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _;
          MenhirLib.EngineTypes.semv = e2;
          MenhirLib.EngineTypes.startp = _startpos_e2_;
          MenhirLib.EngineTypes.endp = _endpos_e2_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.state = _;
            MenhirLib.EngineTypes.semv = _10;
            MenhirLib.EngineTypes.startp = _startpos__10_;
            MenhirLib.EngineTypes.endp = _endpos__10_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _menhir_s;
              MenhirLib.EngineTypes.semv = e1;
              MenhirLib.EngineTypes.startp = _startpos_e1_;
              MenhirLib.EngineTypes.endp = _endpos_e1_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let e2 : (Ast.expressao) = Obj.magic e2 in
        let _10 : unit = Obj.magic _10 in
        let e1 : (Ast.expressao) = Obj.magic e1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_e1_ in
        let _endpos = _endpos_e2_ in
        let _v : (Ast.expressao) = let op =
          let _1 = _10 in
          
# 181 "sintatico.mly"
                          ( Subtracao )
# 2021 "sintatico.ml"
          
        in
        
# 161 "sintatico.mly"
                                            ( ExpOp (op, e1, e2)  )
# 2027 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _;
          MenhirLib.EngineTypes.semv = e2;
          MenhirLib.EngineTypes.startp = _startpos_e2_;
          MenhirLib.EngineTypes.endp = _endpos_e2_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.state = _;
            MenhirLib.EngineTypes.semv = _10;
            MenhirLib.EngineTypes.startp = _startpos__10_;
            MenhirLib.EngineTypes.endp = _endpos__10_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _menhir_s;
              MenhirLib.EngineTypes.semv = e1;
              MenhirLib.EngineTypes.startp = _startpos_e1_;
              MenhirLib.EngineTypes.endp = _endpos_e1_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let e2 : (Ast.expressao) = Obj.magic e2 in
        let _10 : unit = Obj.magic _10 in
        let e1 : (Ast.expressao) = Obj.magic e1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_e1_ in
        let _endpos = _endpos_e2_ in
        let _v : (Ast.expressao) = let op =
          let _1 = _10 in
          
# 182 "sintatico.mly"
                          ( Multiplicacao )
# 2068 "sintatico.ml"
          
        in
        
# 161 "sintatico.mly"
                                            ( ExpOp (op, e1, e2)  )
# 2074 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _;
          MenhirLib.EngineTypes.semv = e2;
          MenhirLib.EngineTypes.startp = _startpos_e2_;
          MenhirLib.EngineTypes.endp = _endpos_e2_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.state = _;
            MenhirLib.EngineTypes.semv = _10;
            MenhirLib.EngineTypes.startp = _startpos__10_;
            MenhirLib.EngineTypes.endp = _endpos__10_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _menhir_s;
              MenhirLib.EngineTypes.semv = e1;
              MenhirLib.EngineTypes.startp = _startpos_e1_;
              MenhirLib.EngineTypes.endp = _endpos_e1_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let e2 : (Ast.expressao) = Obj.magic e2 in
        let _10 : unit = Obj.magic _10 in
        let e1 : (Ast.expressao) = Obj.magic e1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_e1_ in
        let _endpos = _endpos_e2_ in
        let _v : (Ast.expressao) = let op =
          let _1 = _10 in
          
# 183 "sintatico.mly"
                          ( Divisao )
# 2115 "sintatico.ml"
          
        in
        
# 161 "sintatico.mly"
                                            ( ExpOp (op, e1, e2)  )
# 2121 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _;
          MenhirLib.EngineTypes.semv = e2;
          MenhirLib.EngineTypes.startp = _startpos_e2_;
          MenhirLib.EngineTypes.endp = _endpos_e2_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.state = _;
            MenhirLib.EngineTypes.semv = _10;
            MenhirLib.EngineTypes.startp = _startpos__10_;
            MenhirLib.EngineTypes.endp = _endpos__10_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _menhir_s;
              MenhirLib.EngineTypes.semv = e1;
              MenhirLib.EngineTypes.startp = _startpos_e1_;
              MenhirLib.EngineTypes.endp = _endpos_e1_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let e2 : (Ast.expressao) = Obj.magic e2 in
        let _10 : unit = Obj.magic _10 in
        let e1 : (Ast.expressao) = Obj.magic e1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_e1_ in
        let _endpos = _endpos_e2_ in
        let _v : (Ast.expressao) = let op =
          let _1 = _10 in
          
# 184 "sintatico.mly"
                          ( Divisao_Inteiro )
# 2162 "sintatico.ml"
          
        in
        
# 161 "sintatico.mly"
                                            ( ExpOp (op, e1, e2)  )
# 2168 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _;
          MenhirLib.EngineTypes.semv = e2;
          MenhirLib.EngineTypes.startp = _startpos_e2_;
          MenhirLib.EngineTypes.endp = _endpos_e2_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.state = _;
            MenhirLib.EngineTypes.semv = _10;
            MenhirLib.EngineTypes.startp = _startpos__10_;
            MenhirLib.EngineTypes.endp = _endpos__10_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _menhir_s;
              MenhirLib.EngineTypes.semv = e1;
              MenhirLib.EngineTypes.startp = _startpos_e1_;
              MenhirLib.EngineTypes.endp = _endpos_e1_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let e2 : (Ast.expressao) = Obj.magic e2 in
        let _10 : unit = Obj.magic _10 in
        let e1 : (Ast.expressao) = Obj.magic e1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_e1_ in
        let _endpos = _endpos_e2_ in
        let _v : (Ast.expressao) = let op =
          let _1 = _10 in
          
# 185 "sintatico.mly"
                          ( Modulo  )
# 2209 "sintatico.ml"
          
        in
        
# 161 "sintatico.mly"
                                            ( ExpOp (op, e1, e2)  )
# 2215 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _;
          MenhirLib.EngineTypes.semv = e2;
          MenhirLib.EngineTypes.startp = _startpos_e2_;
          MenhirLib.EngineTypes.endp = _endpos_e2_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.state = _;
            MenhirLib.EngineTypes.semv = _10;
            MenhirLib.EngineTypes.startp = _startpos__10_;
            MenhirLib.EngineTypes.endp = _endpos__10_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _menhir_s;
              MenhirLib.EngineTypes.semv = e1;
              MenhirLib.EngineTypes.startp = _startpos_e1_;
              MenhirLib.EngineTypes.endp = _endpos_e1_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let e2 : (Ast.expressao) = Obj.magic e2 in
        let _10 : unit = Obj.magic _10 in
        let e1 : (Ast.expressao) = Obj.magic e1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_e1_ in
        let _endpos = _endpos_e2_ in
        let _v : (Ast.expressao) = let op =
          let _1 = _10 in
          
# 186 "sintatico.mly"
                          ( Not )
# 2256 "sintatico.ml"
          
        in
        
# 161 "sintatico.mly"
                                            ( ExpOp (op, e1, e2)  )
# 2262 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _;
          MenhirLib.EngineTypes.semv = e2;
          MenhirLib.EngineTypes.startp = _startpos_e2_;
          MenhirLib.EngineTypes.endp = _endpos_e2_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.state = _;
            MenhirLib.EngineTypes.semv = _10;
            MenhirLib.EngineTypes.startp = _startpos__10_;
            MenhirLib.EngineTypes.endp = _endpos__10_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _menhir_s;
              MenhirLib.EngineTypes.semv = e1;
              MenhirLib.EngineTypes.startp = _startpos_e1_;
              MenhirLib.EngineTypes.endp = _endpos_e1_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let e2 : (Ast.expressao) = Obj.magic e2 in
        let _10 : unit = Obj.magic _10 in
        let e1 : (Ast.expressao) = Obj.magic e1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_e1_ in
        let _endpos = _endpos_e2_ in
        let _v : (Ast.expressao) = let op =
          let _1 = _10 in
          
# 187 "sintatico.mly"
                          ( Tamanho )
# 2303 "sintatico.ml"
          
        in
        
# 161 "sintatico.mly"
                                            ( ExpOp (op, e1, e2)  )
# 2309 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _;
          MenhirLib.EngineTypes.semv = e2;
          MenhirLib.EngineTypes.startp = _startpos_e2_;
          MenhirLib.EngineTypes.endp = _endpos_e2_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.state = _;
            MenhirLib.EngineTypes.semv = _10;
            MenhirLib.EngineTypes.startp = _startpos__10_;
            MenhirLib.EngineTypes.endp = _endpos__10_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _menhir_s;
              MenhirLib.EngineTypes.semv = e1;
              MenhirLib.EngineTypes.startp = _startpos_e1_;
              MenhirLib.EngineTypes.endp = _endpos_e1_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let e2 : (Ast.expressao) = Obj.magic e2 in
        let _10 : unit = Obj.magic _10 in
        let e1 : (Ast.expressao) = Obj.magic e1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_e1_ in
        let _endpos = _endpos_e2_ in
        let _v : (Ast.expressao) = let op =
          let _1 = _10 in
          
# 188 "sintatico.mly"
                          ( Exponenciacao )
# 2350 "sintatico.ml"
          
        in
        
# 161 "sintatico.mly"
                                            ( ExpOp (op, e1, e2)  )
# 2356 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _;
          MenhirLib.EngineTypes.semv = _3;
          MenhirLib.EngineTypes.startp = _startpos__3_;
          MenhirLib.EngineTypes.endp = _endpos__3_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.state = _;
            MenhirLib.EngineTypes.semv = e;
            MenhirLib.EngineTypes.startp = _startpos_e_;
            MenhirLib.EngineTypes.endp = _endpos_e_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _menhir_s;
              MenhirLib.EngineTypes.semv = _1;
              MenhirLib.EngineTypes.startp = _startpos__1_;
              MenhirLib.EngineTypes.endp = _endpos__1_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let _3 : unit = Obj.magic _3 in
        let e : (Ast.expressao) = Obj.magic e in
        let _1 : unit = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__3_ in
        let _v : (Ast.expressao) = 
# 162 "sintatico.mly"
                            ( e )
# 2395 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _;
          MenhirLib.EngineTypes.semv = _9;
          MenhirLib.EngineTypes.startp = _startpos__9_;
          MenhirLib.EngineTypes.endp = _endpos__9_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.state = _;
            MenhirLib.EngineTypes.semv = cs;
            MenhirLib.EngineTypes.startp = _startpos_cs_;
            MenhirLib.EngineTypes.endp = _endpos_cs_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _;
              MenhirLib.EngineTypes.semv = ds;
              MenhirLib.EngineTypes.startp = _startpos_ds_;
              MenhirLib.EngineTypes.endp = _endpos_ds_;
              MenhirLib.EngineTypes.next = {
                MenhirLib.EngineTypes.state = _;
                MenhirLib.EngineTypes.semv = _6;
                MenhirLib.EngineTypes.startp = _startpos__6_;
                MenhirLib.EngineTypes.endp = _endpos__6_;
                MenhirLib.EngineTypes.next = {
                  MenhirLib.EngineTypes.state = _;
                  MenhirLib.EngineTypes.semv = args;
                  MenhirLib.EngineTypes.startp = _startpos_args_;
                  MenhirLib.EngineTypes.endp = _endpos_args_;
                  MenhirLib.EngineTypes.next = {
                    MenhirLib.EngineTypes.state = _;
                    MenhirLib.EngineTypes.semv = _4;
                    MenhirLib.EngineTypes.startp = _startpos__4_;
                    MenhirLib.EngineTypes.endp = _endpos__4_;
                    MenhirLib.EngineTypes.next = {
                      MenhirLib.EngineTypes.state = _;
                      MenhirLib.EngineTypes.semv = id;
                      MenhirLib.EngineTypes.startp = _startpos_id_;
                      MenhirLib.EngineTypes.endp = _endpos_id_;
                      MenhirLib.EngineTypes.next = {
                        MenhirLib.EngineTypes.state = _;
                        MenhirLib.EngineTypes.semv = tipo;
                        MenhirLib.EngineTypes.startp = _startpos_tipo_;
                        MenhirLib.EngineTypes.endp = _endpos_tipo_;
                        MenhirLib.EngineTypes.next = {
                          MenhirLib.EngineTypes.state = _menhir_s;
                          MenhirLib.EngineTypes.semv = _1;
                          MenhirLib.EngineTypes.startp = _startpos__1_;
                          MenhirLib.EngineTypes.endp = _endpos__1_;
                          MenhirLib.EngineTypes.next = _menhir_stack;
                        };
                      };
                    };
                  };
                };
              };
            };
          };
        } = _menhir_stack in
        let _9 : unit = Obj.magic _9 in
        let cs : (Ast.comandos) = Obj.magic cs in
        let ds : (Ast.declaracoes) = Obj.magic ds in
        let _6 : unit = Obj.magic _6 in
        let args : (Ast.argumentos list) = Obj.magic args in
        let _4 : unit = Obj.magic _4 in
        let id : (
# 5 "sintatico.mly"
       (string)
# 2470 "sintatico.ml"
        ) = Obj.magic id in
        let tipo : (Ast.tipo) = Obj.magic tipo in
        let _1 : unit = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__9_ in
        let _v : (Ast.funcoes) = 
# 93 "sintatico.mly"
     ( Funcao (tipo, id, args, ds, cs(*,ret*)))
# 2480 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let _menhir_s = _menhir_env.MenhirLib.EngineTypes.current in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _endpos = _startpos in
        let _v : (Ast.identificador list) = 
# 211 "/usr/local/share/menhir/standard.mly"
    ( [] )
# 2498 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _;
          MenhirLib.EngineTypes.semv = xs;
          MenhirLib.EngineTypes.startp = _startpos_xs_;
          MenhirLib.EngineTypes.endp = _endpos_xs_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.state = _menhir_s;
            MenhirLib.EngineTypes.semv = x;
            MenhirLib.EngineTypes.startp = _startpos_x_;
            MenhirLib.EngineTypes.endp = _endpos_x_;
            MenhirLib.EngineTypes.next = _menhir_stack;
          };
        } = _menhir_stack in
        let xs : (Ast.identificador list) = Obj.magic xs in
        let x : (
# 5 "sintatico.mly"
       (string)
# 2526 "sintatico.ml"
        ) = Obj.magic x in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_x_ in
        let _endpos = _endpos_xs_ in
        let _v : (Ast.identificador list) = 
# 213 "/usr/local/share/menhir/standard.mly"
    ( x :: xs )
# 2534 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let _menhir_s = _menhir_env.MenhirLib.EngineTypes.current in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _endpos = _startpos in
        let _v : (Ast.argumentos list) = 
# 211 "/usr/local/share/menhir/standard.mly"
    ( [] )
# 2552 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _;
          MenhirLib.EngineTypes.semv = xs;
          MenhirLib.EngineTypes.startp = _startpos_xs_;
          MenhirLib.EngineTypes.endp = _endpos_xs_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.state = _menhir_s;
            MenhirLib.EngineTypes.semv = x;
            MenhirLib.EngineTypes.startp = _startpos_x_;
            MenhirLib.EngineTypes.endp = _endpos_x_;
            MenhirLib.EngineTypes.next = _menhir_stack;
          };
        } = _menhir_stack in
        let xs : (Ast.argumentos list) = Obj.magic xs in
        let x : (Ast.argumentos) = Obj.magic x in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_x_ in
        let _endpos = _endpos_xs_ in
        let _v : (Ast.argumentos list) = 
# 213 "/usr/local/share/menhir/standard.mly"
    ( x :: xs )
# 2584 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let _menhir_s = _menhir_env.MenhirLib.EngineTypes.current in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _endpos = _startpos in
        let _v : (Ast.comandos) = 
# 211 "/usr/local/share/menhir/standard.mly"
    ( [] )
# 2602 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _;
          MenhirLib.EngineTypes.semv = xs;
          MenhirLib.EngineTypes.startp = _startpos_xs_;
          MenhirLib.EngineTypes.endp = _endpos_xs_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.state = _menhir_s;
            MenhirLib.EngineTypes.semv = x;
            MenhirLib.EngineTypes.startp = _startpos_x_;
            MenhirLib.EngineTypes.endp = _endpos_x_;
            MenhirLib.EngineTypes.next = _menhir_stack;
          };
        } = _menhir_stack in
        let xs : (Ast.comandos) = Obj.magic xs in
        let x : (Ast.comando) = Obj.magic x in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_x_ in
        let _endpos = _endpos_xs_ in
        let _v : (Ast.comandos) = 
# 213 "/usr/local/share/menhir/standard.mly"
    ( x :: xs )
# 2634 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let _menhir_s = _menhir_env.MenhirLib.EngineTypes.current in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _endpos = _startpos in
        let _v : (Ast.declaracoes) = 
# 211 "/usr/local/share/menhir/standard.mly"
    ( [] )
# 2652 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _;
          MenhirLib.EngineTypes.semv = xs;
          MenhirLib.EngineTypes.startp = _startpos_xs_;
          MenhirLib.EngineTypes.endp = _endpos_xs_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.state = _menhir_s;
            MenhirLib.EngineTypes.semv = x;
            MenhirLib.EngineTypes.startp = _startpos_x_;
            MenhirLib.EngineTypes.endp = _endpos_x_;
            MenhirLib.EngineTypes.next = _menhir_stack;
          };
        } = _menhir_stack in
        let xs : (Ast.declaracoes) = Obj.magic xs in
        let x : (Ast.declaracao) = Obj.magic x in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_x_ in
        let _endpos = _endpos_xs_ in
        let _v : (Ast.declaracoes) = 
# 213 "/usr/local/share/menhir/standard.mly"
    ( x :: xs )
# 2684 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = x;
          MenhirLib.EngineTypes.startp = _startpos_x_;
          MenhirLib.EngineTypes.endp = _endpos_x_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let x : (Ast.comando) = Obj.magic x in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_x_ in
        let _endpos = _endpos_x_ in
        let _v : (Ast.comandos) = 
# 221 "/usr/local/share/menhir/standard.mly"
    ( [ x ] )
# 2709 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _;
          MenhirLib.EngineTypes.semv = xs;
          MenhirLib.EngineTypes.startp = _startpos_xs_;
          MenhirLib.EngineTypes.endp = _endpos_xs_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.state = _menhir_s;
            MenhirLib.EngineTypes.semv = x;
            MenhirLib.EngineTypes.startp = _startpos_x_;
            MenhirLib.EngineTypes.endp = _endpos_x_;
            MenhirLib.EngineTypes.next = _menhir_stack;
          };
        } = _menhir_stack in
        let xs : (Ast.comandos) = Obj.magic xs in
        let x : (Ast.comando) = Obj.magic x in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_x_ in
        let _endpos = _endpos_xs_ in
        let _v : (Ast.comandos) = 
# 223 "/usr/local/share/menhir/standard.mly"
    ( x :: xs )
# 2741 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = x;
          MenhirLib.EngineTypes.startp = _startpos_x_;
          MenhirLib.EngineTypes.endp = _endpos_x_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let x : (Ast.funcoes) = Obj.magic x in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_x_ in
        let _endpos = _endpos_x_ in
        let _v : (Ast.funcoes list) = 
# 221 "/usr/local/share/menhir/standard.mly"
    ( [ x ] )
# 2766 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _;
          MenhirLib.EngineTypes.semv = xs;
          MenhirLib.EngineTypes.startp = _startpos_xs_;
          MenhirLib.EngineTypes.endp = _endpos_xs_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.state = _menhir_s;
            MenhirLib.EngineTypes.semv = x;
            MenhirLib.EngineTypes.startp = _startpos_x_;
            MenhirLib.EngineTypes.endp = _endpos_x_;
            MenhirLib.EngineTypes.next = _menhir_stack;
          };
        } = _menhir_stack in
        let xs : (Ast.funcoes list) = Obj.magic xs in
        let x : (Ast.funcoes) = Obj.magic x in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_x_ in
        let _endpos = _endpos_xs_ in
        let _v : (Ast.funcoes list) = 
# 223 "/usr/local/share/menhir/standard.mly"
    ( x :: xs )
# 2798 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let _menhir_s = _menhir_env.MenhirLib.EngineTypes.current in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _endpos = _startpos in
        let _v : (Ast.comandos option) = 
# 114 "/usr/local/share/menhir/standard.mly"
    ( None )
# 2816 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _;
          MenhirLib.EngineTypes.semv = cs0;
          MenhirLib.EngineTypes.startp = _startpos_cs0_;
          MenhirLib.EngineTypes.endp = _endpos_cs0_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.state = _menhir_s;
            MenhirLib.EngineTypes.semv = _10;
            MenhirLib.EngineTypes.startp = _startpos__10_;
            MenhirLib.EngineTypes.endp = _endpos__10_;
            MenhirLib.EngineTypes.next = _menhir_stack;
          };
        } = _menhir_stack in
        let cs0 : (Ast.comandos) = Obj.magic cs0 in
        let _10 : unit = Obj.magic _10 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__10_ in
        let _endpos = _endpos_cs0_ in
        let _v : (Ast.comandos option) = let x =
          let cs = cs0 in
          let _1 = _10 in
          
# 126 "sintatico.mly"
                                                   ( cs )
# 2851 "sintatico.ml"
          
        in
        
# 116 "/usr/local/share/menhir/standard.mly"
    ( Some x )
# 2857 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _;
          MenhirLib.EngineTypes.semv = _2;
          MenhirLib.EngineTypes.startp = _startpos__2_;
          MenhirLib.EngineTypes.endp = _endpos__2_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.state = _menhir_s;
            MenhirLib.EngineTypes.semv = f;
            MenhirLib.EngineTypes.startp = _startpos_f_;
            MenhirLib.EngineTypes.endp = _endpos_f_;
            MenhirLib.EngineTypes.next = _menhir_stack;
          };
        } = _menhir_stack in
        let _2 : unit = Obj.magic _2 in
        let f : (Ast.funcoes list) = Obj.magic f in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_f_ in
        let _endpos = _endpos__2_ in
        let _v : (
# 83 "sintatico.mly"
       (Ast.programa)
# 2889 "sintatico.ml"
        ) = 
# 88 "sintatico.mly"
        ( Programa (f) )
# 2893 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = t;
          MenhirLib.EngineTypes.startp = _startpos_t_;
          MenhirLib.EngineTypes.endp = _endpos_t_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let t : (Ast.tipo) = Obj.magic t in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_t_ in
        let _endpos = _endpos_t_ in
        let _v : (Ast.tipo) = 
# 104 "sintatico.mly"
                       ( t )
# 2918 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = _1;
          MenhirLib.EngineTypes.startp = _startpos__1_;
          MenhirLib.EngineTypes.endp = _endpos__1_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let _1 : unit = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__1_ in
        let _v : (Ast.tipo) = 
# 106 "sintatico.mly"
                            ( TipoInt )
# 2943 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = _1;
          MenhirLib.EngineTypes.startp = _startpos__1_;
          MenhirLib.EngineTypes.endp = _endpos__1_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let _1 : unit = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__1_ in
        let _v : (Ast.tipo) = 
# 107 "sintatico.mly"
                            ( TipoString )
# 2968 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = _1;
          MenhirLib.EngineTypes.startp = _startpos__1_;
          MenhirLib.EngineTypes.endp = _endpos__1_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let _1 : unit = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__1_ in
        let _v : (Ast.tipo) = 
# 108 "sintatico.mly"
                            ( TipoBool  )
# 2993 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = x;
          MenhirLib.EngineTypes.startp = _startpos_x_;
          MenhirLib.EngineTypes.endp = _endpos_x_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let x : (
# 5 "sintatico.mly"
       (string)
# 3014 "sintatico.ml"
        ) = Obj.magic x in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_x_ in
        let _endpos = _endpos_x_ in
        let _v : (Ast.variavel) = 
# 191 "sintatico.mly"
            ( VarSimples  x )
# 3022 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
    |]
  
  and trace =
    None
  
end

module MenhirInterpreter = struct
  
  module ET = MenhirLib.TableInterpreter.MakeEngineTable (Tables)
  
  module TI = MenhirLib.Engine.Make (ET)
  
  include TI
  
end

let programa =
  fun lexer lexbuf ->
    (Obj.magic (MenhirInterpreter.entry 0 lexer lexbuf) : (
# 83 "sintatico.mly"
       (Ast.programa)
# 3053 "sintatico.ml"
    ))

module Incremental = struct
  
  let programa =
    fun initial_position ->
      (Obj.magic (MenhirInterpreter.start 0 initial_position) : (
# 83 "sintatico.mly"
       (Ast.programa)
# 3063 "sintatico.ml"
      ) MenhirInterpreter.checkpoint)
  
end

# 269 "/usr/local/share/menhir/standard.mly"
  

# 3071 "sintatico.ml"
