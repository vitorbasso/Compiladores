
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
    (8, "\000\000CBD\000\000\000\000\002\000\000\000A\000E\020\000\000\023\022\024\000\021\000\000\000\000/\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\0000\000\000\000\000\000\000\000\016\000\000\000\000\000\0003\000\014\000\000\000\000\000\000\000\000\000\000\000\000\000\018\000\000\000\012\000\000\r\006\b\n\007\004\t\005\003\0007\000\000?\000;\000\015\000\019\0001\0009\0005\001\000@\000=")
  
  and error =
    (65, "\000\000\000\000\002\000\000\000\003\128\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000 \000\000\000\000\000\000\000\000\000\000@\014\000\000\000\002\000\000\000\000\000\000\000\004\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000@\000\000\b\002@\000!\144 \000\000p\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\016\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000 \t\000\000\006@\128\000\000\000\000\0001\000\000\020\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\003\016\000\001@\000\000\000\000\000\000\000\000\000`u\254\001\012\015\014\000\000\000\000b\000\000(\016<\157\127\131cW\195\128\000\000\000\024\128\000\n\000\000\000\000\000\000\000\000\000\000\000\000\006 \000\002\129\003\201\215\24865|8\000\000\000\001\136\000\000\160@\242u\254\r\141_\014\000\000\000\000b\000\000(\016<\157\127\131cW\195\128\000\000\000\024\128\000\n\004\015'_\224\216\213\240\224\000\000\000\006 \000\002\129\003\201\215\24865|8\000\000\000\001\136\000\000\160@\242u\254\r\141_\014\000\000\000\000b\000\000(\016<\157\127\131cW\195\128\000\000\000\024\128\000\n\004\015'_\224\216\213\240\224\000\000\000\006 \000\002\129\003\201\215\24865|8\000\000\000\001\136\000\000\160@\242u\254\r\141_\014\000\000\000\000b\000\000(\016<\157\127\131cW\195\128\000\000\000\024\128\000\n\004\015'_\224\216\213\240\224\000\000\000\006 \000\002\129\003\201\215\24865|8\000\000\000\001\136\000\000\160@\242u\254\r\141_\014\000\000\000\000b\000\000(\016<\157\127\131cW\195\128\000\000\000\024\128\000\n\004\015'_\224\216\213\240\224\000\000\000\006 \000\002\129\003\201\215\24865|8\000\000\000\001\136\000\000\160@\242u\254\r\141_\014\000\000\000\000b\000\000(\016<\157\127\131cW\195\128\000\000\000\024\128\000\n\004\015'_\224\216\213\240\224\000\000\000\006 \000\002\129\003\201\215\24865|8\000\000\000\000\000\000\000\000\000`u\254\000\012\031\014 \t\000\000\006@\128\000\000\000\000\0001\000\000\020\b\014N\191\193\145\169\225\192\000\000\000\000\000\000\001\000\000\000\000\006 \000\002\128\001\129\215\248\0040<8\000\000\000\000\000\000\000\000\000\000\000\000\196\000\000P\000p:\255\000\006\007\135\016\004\128\000\003 \000\000\000\000\000\000\000\000\000\006\000\000\000\000\000P\000\000\000\000\000\000\000(\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\002\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\002\000\000\000\000\000\000\000\000\000\000\b\000\000\000\000\b\000\000\000\002\000\000\000\000\000\000\000\000\000\000\000\002\000\000\000\000\128\000\000\000\000\000\000\000\000\000\000\000\128\000\000\000\000\000\000\000\000\000\016\000 \t\000\000\006@\128\000\000\000\000\000\000\000\000\b\000\000\000\000\028\128\000\n\000\000\000\000\000\000\000\001\000\000\000\000\000\b\000\000\000\000\000\000\000\000\000\000\000\128\228\235\252\025\026\158<\000\000\000\000\005\000\000\000\000\000\000\000\000\128\000\000\000\000\000\000\000\000\000\000\b\014N\191\193\145\169\225\192\000\000\000\000\000\016\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\000H\000\0002\004\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001@\000 \t\000\000\006@\000\000\000\000\000\000\000\000\000\000\b\002@\000\001\144(\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\b\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\002\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\128\000\000\000\000\000\000\000\000\000\b\002@\000!\144 \000\000\000\000\000\000\000\000\000\0008\000\000\000\b\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\002\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\128\128\000\000\000\000\000\000\000\000\000\000")
  
  and start =
    1
  
  and action =
    ((16, "\000A\000\005\000\000\000\000\000\000\0005\000Y\000\005\000\015\000\000\000\017\n\142\000\005\000\000\000\t\000\000\000\000\n\190\n\192\000\000\000\000\000\000\n\192\000\000\t\224\n\192\000\003\n\192\000\000\n\192\000l\n\192\000\218\n\192\001H\n\192\001\182\n\192\002$\n\192\002\146\n\192\003\000\n\192\003n\n\192\003\220\n\192\004J\n\192\004\184\n\192\005&\n\192\005\148\n\192\006\002\n\192\006p\n\192\006\222\n\192\007L\n\192\007\186\n\192\b(\n\192\b\150\n\192\t\004\000\000\t\224\n\190\n\192\t\224\0003\n\192\nN\000\000\n\192\t\224\tv\000s\0003\0003\000\000\000\004\000\000\000\t\000!\000\024\000Z\000 \000l\0000\000\014\n\190\000\016\n\174\000\016\000<\000\000\tr\0003\000>\000\000\nN\0006\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\n\190\000\000\0009\tv\000\000\n\152\000\000\000:\000\000\000L\000\000\000N\000\000\n\142\000\000\000\005\000\000\000\000\000R\000\000\000\r\000\000"), (16, "\000\181\001\017\001R\000\n\000\014\000\018\000\006\000\181\000\181\000\181\000\181\000\026\001V\000\181\000\197\000\030\000\181\000\181\000\181\000\245\000\181\001\230\000\181\000\181\000\181\000\181\000\181\000\181\000\181\000\181\000&\000.\000\006\000>\0016\000\181\000\181\000\205\000\181\000\181\000\237\001b\001n\000n\000\181\001r\000\181\001v\000\181\001z\000\181\000\181\000\181\000\181\000\181\000\157\001~\001\130\001\134\000\181\000\181\000\181\000\157\000f\000\157\000\157\001\142\001\150\000\157\001\154\001\170\000\157\000\157\000\157\001\182\000~\001\250\000\157\000\157\000\134\000\142\000\157\000\157\000\157\000\157\002\002\002\n\002'\000\000\000\000\000\157\000\157\000\000\000\157\000\157\000\000\000\000\000\000\000n\000\157\000\000\000\157\000\000\000\157\000\000\000\157\000\157\000\150\000\158\000\157\000\177\000\000\000\000\000\000\000\157\000\157\000\157\000\177\000\177\000\177\000\177\000\000\000\000\000\177\000\000\000\000\000\177\000\177\000\177\000\000\000\177\000\000\000\177\000\177\000\177\000\177\000\177\000\177\000\177\000\177\000\000\000\000\000\000\000\000\000\000\000\177\000\177\000\000\000\177\000\177\000\000\000\000\000\000\000n\000\177\000\000\000\177\000\000\000\177\000\000\000\177\000\177\000\177\000\177\000\177\000\161\000\000\000\000\000\000\000\177\000\177\000\177\000\161\000f\000\161\000\161\000\000\000\000\000\161\000\000\000\000\000\161\000\161\000\161\000\000\000~\000\000\000\161\000\161\000\161\000\161\000\161\000\161\000\161\000\161\000\000\000\000\000\000\000\000\000\000\000\161\000\161\000\000\000\161\000\161\000\000\000\000\000\000\000n\000\161\000\000\000\161\000\000\000\161\000\000\000\161\000\161\000\161\000\161\000\161\000\173\000\000\000\000\000\000\000\161\000\161\000\161\000\173\000f\000\173\000\173\000\000\000\000\000\173\000\000\000\000\000\173\000\173\000\173\000\000\000~\000\000\000\173\000\173\000\173\000\173\000\173\000\173\000\173\000\173\000\000\000\000\000\000\000\000\000\000\000\173\000\173\000\000\000\173\000\173\000\000\000\000\000\000\000n\000\173\000\000\000\173\000\000\000\173\000\000\000\173\000\173\000\173\000\173\000\173\000\169\000\000\000\000\000\000\000\173\000\173\000\173\000\169\000f\000\169\000\169\000\000\000\000\000\169\000\000\000\000\000\169\000\169\000\169\000\000\000~\000\000\000\169\000\169\000\169\000\169\000\169\000\169\000\169\000\169\000\000\000\000\000\000\000\000\000\000\000\169\000\169\000\000\000\169\000\169\000\000\000\000\000\000\000n\000\169\000\000\000\169\000\000\000\169\000\000\000\169\000\169\000\169\000\169\000\169\000\165\000\000\000\000\000\000\000\169\000\169\000\169\000\165\000f\000\165\000\165\000\000\000\000\000\165\000\000\000\000\000\165\000\165\000\165\000\000\000~\000\000\000\165\000\165\000\165\000\165\000\165\000\165\000\165\000\165\000\000\000\000\000\000\000\000\000\000\000\165\000\165\000\000\000\165\000\165\000\000\000\000\000\000\000n\000\165\000\000\000\165\000\000\000\165\000\000\000\165\000\165\000\165\000\165\000\165\000\133\000\000\000\000\000\000\000\165\000\165\000\165\000\133\000f\000v\000\133\000\000\000\000\000\133\000\000\000\000\000\133\000\133\000\133\000\000\000~\000\000\000\133\000\174\000\134\000\142\000\133\000\133\000\133\000\133\000\000\000\000\000\000\000\000\000\000\000\133\000\133\000\000\000\133\000\133\000\000\000\000\000\000\000n\000\133\000\000\000\133\000\000\000\133\000\000\000\133\000\198\000\150\000\158\000\182\000\141\000\000\000\000\000\000\000\206\000\133\000\190\000\141\000f\000v\000\141\000\000\000\000\000\141\000\000\000\000\000\141\000\141\000\141\000\000\000~\000\000\000\141\000\141\000\134\000\142\000\141\000\141\000\141\000\141\000\000\000\000\000\000\000\000\000\000\000\141\000\141\000\000\000\141\000\141\000\000\000\000\000\000\000n\000\141\000\000\000\141\000\000\000\141\000\000\000\141\000\141\000\150\000\158\000\182\000\149\000\000\000\000\000\000\000\141\000\141\000\190\000\149\000f\000v\000\149\000\000\000\000\000\149\000\000\000\000\000\149\000\149\000\149\000\000\000~\000\000\000\149\000\149\000\134\000\142\000\149\000\149\000\149\000\149\000\000\000\000\000\000\000\000\000\000\000\149\000\149\000\000\000\149\000\149\000\000\000\000\000\000\000n\000\149\000\000\000\149\000\000\000\149\000\000\000\149\000\149\000\150\000\158\000\149\000\153\000\000\000\000\000\000\000\149\000\149\000\190\000\153\000f\000\153\000\153\000\000\000\000\000\153\000\000\000\000\000\153\000\153\000\153\000\000\000~\000\000\000\153\000\153\000\134\000\142\000\153\000\153\000\153\000\153\000\000\000\000\000\000\000\000\000\000\000\153\000\153\000\000\000\153\000\153\000\000\000\000\000\000\000n\000\153\000\000\000\153\000\000\000\153\000\000\000\153\000\153\000\150\000\158\000\153\000\145\000\000\000\000\000\000\000\153\000\153\000\153\000\145\000f\000v\000\145\000\000\000\000\000\145\000\000\000\000\000\145\000\145\000\145\000\000\000~\000\000\000\145\000\145\000\134\000\142\000\145\000\145\000\145\000\145\000\000\000\000\000\000\000\000\000\000\000\145\000\145\000\000\000\145\000\145\000\000\000\000\000\000\000n\000\145\000\000\000\145\000\000\000\145\000\000\000\145\000\145\000\150\000\158\000\182\000\137\000\000\000\000\000\000\000\145\000\145\000\190\000\137\000f\000v\000\137\000\000\000\000\000\137\000\000\000\000\000\137\000\137\000\137\000\000\000~\000\000\000\137\000\174\000\134\000\142\000\137\000\137\000\137\000\137\000\000\000\000\000\000\000\000\000\000\000\137\000\137\000\000\000\137\000\137\000\000\000\000\000\000\000n\000\137\000\000\000\137\000\000\000\137\000\000\000\137\000\198\000\150\000\158\000\182\000\129\000\000\000\000\000\000\000\137\000\137\000\190\000\129\000f\000v\000\129\000\000\000\000\000\129\000\000\000\000\000\166\000\129\000\129\000\000\000~\000\000\000\129\000\174\000\134\000\142\000\129\000\129\000\129\000\129\000\000\000\000\000\000\000\000\000\000\000\129\000\129\000\000\000\129\000\129\000\000\000\000\000\000\000n\000\129\000\000\000\129\000\000\000\129\000\000\000\129\000\198\000\150\000\158\000\182\000a\000\000\000\000\000\000\000\206\000\129\000\190\000a\000f\000v\000a\000\000\000\000\000a\000\000\000\000\000\166\000\214\000a\000\000\000~\000\000\000\230\000\174\000\134\000\142\000\238\000\246\000\254\001\006\000\000\000\000\000\000\000\000\000\000\000a\000a\000\000\000a\000a\000\000\000\000\000\000\000n\001\014\000\000\000a\000\000\000a\000\000\000a\000\198\000\150\000\158\000\182\000}\000\000\000\000\000\000\000\206\001\022\000\190\000}\000f\000v\000}\000\000\000\000\000}\000\000\000\000\000\166\000\214\000}\000\000\000~\000\000\000}\000\174\000\134\000\142\000}\000}\000}\000}\000\000\000\000\000\000\000\000\000\000\000}\000}\000\000\000}\000}\000\000\000\000\000\000\000n\000}\000\000\000}\000\000\000}\000\000\000}\000\198\000\150\000\158\000\182\000u\000\000\000\000\000\000\000\206\000}\000\190\000u\000f\000v\000u\000\000\000\000\000u\000\000\000\000\000\166\000\214\000u\000\000\000~\000\000\000u\000\174\000\134\000\142\000u\000u\000u\000u\000\000\000\000\000\000\000\000\000\000\000u\000u\000\000\000u\000u\000\000\000\000\000\000\000n\000u\000\000\000u\000\000\000u\000\000\000u\000\198\000\150\000\158\000\182\000m\000\000\000\000\000\000\000\206\000u\000\190\000m\000f\000v\000m\000\000\000\000\000m\000\000\000\000\000\166\000\214\000m\000\000\000~\000\000\000m\000\174\000\134\000\142\000m\000m\000m\000m\000\000\000\000\000\000\000\000\000\000\000m\000m\000\000\000m\000m\000\000\000\000\000\000\000n\000m\000\000\000m\000\000\000m\000\000\000m\000\198\000\150\000\158\000\182\000q\000\000\000\000\000\000\000\206\000m\000\190\000q\000f\000v\000q\000\000\000\000\000q\000\000\000\000\000\166\000\214\000q\000\000\000~\000\000\000q\000\174\000\134\000\142\000q\000q\000q\000q\000\000\000\000\000\000\000\000\000\000\000q\000q\000\000\000q\000q\000\000\000\000\000\000\000n\000q\000\000\000q\000\000\000q\000\000\000q\000\198\000\150\000\158\000\182\000i\000\000\000\000\000\000\000\206\000q\000\190\000i\000f\000v\000i\000\000\000\000\000i\000\000\000\000\000\166\000\214\000i\000\000\000~\000\000\000i\000\174\000\134\000\142\000i\000i\000i\000i\000\000\000\000\000\000\000\000\000\000\000i\000i\000\000\000i\000i\000\000\000\000\000\000\000n\000i\000\000\000i\000\000\000i\000\000\000i\000\198\000\150\000\158\000\182\000y\000\000\000\000\000\000\000\206\000i\000\190\000y\000f\000v\000y\000\000\000\000\000y\000\000\000\000\000\166\000\214\000y\000\000\000~\000\000\000y\000\174\000\134\000\142\000y\000y\000y\000y\000\000\000\000\000\000\000\000\000\000\000y\000y\000\000\000y\000y\000\000\000\000\000\000\000n\000y\000\000\000y\000\000\000y\000\000\000y\000\198\000\150\000\158\000\182\000e\000\000\000\000\000\000\000\206\000y\000\190\000e\000f\000v\000e\000\000\000\000\000e\000\000\000\000\000\166\000\214\000e\000\000\000~\000\000\000\230\000\174\000\134\000\142\000\238\000\246\000\254\001\006\000\000\000\000\000\000\000\000\000\000\000e\000e\000\000\000e\000e\000\000\000\000\000\000\000n\001\014\000\000\000e\000\000\000e\000\000\000e\000\198\000\150\000\158\000\182\001\017\000\000\000J\000\000\000\206\000e\000\190\000\000\001\017\001\017\001\017\000\000\001*\001\017\000\000\0012\001\017\001\017\001\017\000\000\001\017\000\000\001\017\001\017\001\017\001\017\001\017\001\017\001\017\001\017\000\000\000\000\000\000\000\000\000\000\001\017\001\017\001B\001N\001\017\000\000\001f\000\000\001\017\001\017\000\000\001\017\000\000\001\017\000\000\000\000\001\017\001\017\001\017\001\017\000A\000\000\000\000\001\162\001\017\001\017\001\017\001J\000f\000v\000A\000\000\000\000\000A\000\000\000\000\000\166\000\214\000\222\000\000\000~\000\000\000\230\000\174\000\134\000\142\000\238\000\246\000\254\001\006\000\000\000\000\000\000\000\000\000\000\000A\000A\000\000\001\030\000A\000\000\000\000\000\000\000n\001\014\000\000\000A\000\000\000A\000\000\001&\000\198\000\150\000\158\000\182\000)\000\000\000\000\000\000\000\206\001\022\000\190\000\000\000f\000v\000)\000\000\000\000\000)\000\000\000\000\000\166\000\214\000\222\000\000\000~\000\000\000\230\000\174\000\134\000\142\000\238\000\246\000\254\001\006\000\000\000\000\000\221\000\000\000\000\000)\000)\000J\001>\000)\000\000\000\000\000\221\000n\001\014\000\221\000)\001*\000)\000\000\0012\000\198\000\150\000\158\000\182\000\000\000J\000\000\000\000\000\206\001\022\000\190\0002\000\000\000\000\000\000\001*\000\221\000\221\0012\000\000\000\221\001B\001N\000\000\000\000\001f\000\000\000\221\000N\000R\001\146\000\000\000\229\001\158\000\229\000\000\000\000\000N\000R\000\000\001B\001N\000>\000\000\001f\000\000\000\000\000\000\000\000\000\000\000\000\000\213\000\000\000V\000\000\000Z\000\000\000\000\000\000\000\000\000\000\000\000\000V\000\000\000Z"))
  
  and lhs =
    (8, "\000\024\023\023\023\023\023\023\023\023\022\022\021\020\019\018\017\016\015\014\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\012\011\011\n\n\t\t\b\b\007\007\006\006\005\005\004\003\002\002\002\001")
  
  and goto =
    ((16, "\000\007\0006\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\007\000\b\000\000\000:\000\000\000\000\000\003\000\024\000\000\000\000\000\000\000D\000\000\000\000\000F\000\000\000r\000\000\000t\000\000\000\160\000\000\000\162\000\000\000\206\000\000\000\208\000\000\000\252\000\000\000\254\000\000\001(\000\000\001*\000\000\001,\000\000\001F\000\000\001H\000\000\001J\000\000\001L\000\000\001N\000\000\001P\000\000\001R\000\000\001T\000\000\001V\000\000\001X\000\000\001Z\000\000\000\000\000\000\000,\001\\\000\000\000\000\001v\000\000\000\000\001x\000\000\000Z\000\000\000*\000L\000\000\000\000\000\000\000b\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\136\000\000\001z\000\000\000\000\000\000\000\000\000P\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\182\000\000\000`\000\228\000\000\001\018\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000&\000\000\000\004\000\000\000\000\000\000\000\000\000,\000\000"), (8, "c\136\t\137\t\018\014\015\130\139\011\132\135\024opqrstuvwc\134I\134\133\140\006\017\128X\132\139\024\024opqrstuvwc\025\027W[jy~\000\000\000\000\024\024opqrstuv|c\029\031\000\000\000\000\000m\000\000\000\024\024opqrstuvwc!#\000\000\000\000\000x\000\000\000\024\024opqrstuvwc%'\000\000\000{\000\000\000\000\000\024\024opqrstuv|c)+\000\000\000}\000\000\000\000\024\024\024opqrstuv|-/1\024\024\024\024\024\024\024\024\024\024\024\0243579;=?ACEGL\024\024\024\000\000\000\000\000\000\000\000\000ORl"))
  
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
            MenhirLib.EngineTypes.state = _;
            MenhirLib.EngineTypes.semv = t;
            MenhirLib.EngineTypes.startp = _startpos_t_;
            MenhirLib.EngineTypes.endp = _endpos_t_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _menhir_s;
              MenhirLib.EngineTypes.semv = _1;
              MenhirLib.EngineTypes.startp = _startpos__1_;
              MenhirLib.EngineTypes.endp = _endpos__1_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let v : (Ast.variavel) = Obj.magic v in
        let t : (Ast.tipo) = Obj.magic t in
        let _1 : unit = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos_v_ in
        let _v : (Ast.declaracao) = 
# 101 "sintatico.mly"
                            ( DecVar (t,v) )
# 1170 "sintatico.ml"
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
# 1195 "sintatico.ml"
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
# 1216 "sintatico.ml"
        ) = Obj.magic i in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_i_ in
        let _endpos = _endpos_i_ in
        let _v : (Ast.expressao) = 
# 158 "sintatico.mly"
                    ( ExpInt  i )
# 1224 "sintatico.ml"
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
# 1245 "sintatico.ml"
        ) = Obj.magic s in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_s_ in
        let _endpos = _endpos_s_ in
        let _v : (Ast.expressao) = 
# 159 "sintatico.mly"
                    ( ExpString s )
# 1253 "sintatico.ml"
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
# 1274 "sintatico.ml"
        ) = Obj.magic b in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_b_ in
        let _endpos = _endpos_b_ in
        let _v : (Ast.expressao) = 
# 160 "sintatico.mly"
                    ( ExpBool b )
# 1282 "sintatico.ml"
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
# 1323 "sintatico.ml"
          
        in
        
# 161 "sintatico.mly"
                                            ( ExpOp (op, e1, e2)  )
# 1329 "sintatico.ml"
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
# 1370 "sintatico.ml"
          
        in
        
# 161 "sintatico.mly"
                                            ( ExpOp (op, e1, e2)  )
# 1376 "sintatico.ml"
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
# 1417 "sintatico.ml"
          
        in
        
# 161 "sintatico.mly"
                                            ( ExpOp (op, e1, e2)  )
# 1423 "sintatico.ml"
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
# 1464 "sintatico.ml"
          
        in
        
# 161 "sintatico.mly"
                                            ( ExpOp (op, e1, e2)  )
# 1470 "sintatico.ml"
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
# 1511 "sintatico.ml"
          
        in
        
# 161 "sintatico.mly"
                                            ( ExpOp (op, e1, e2)  )
# 1517 "sintatico.ml"
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
# 1558 "sintatico.ml"
          
        in
        
# 161 "sintatico.mly"
                                            ( ExpOp (op, e1, e2)  )
# 1564 "sintatico.ml"
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
# 1605 "sintatico.ml"
          
        in
        
# 161 "sintatico.mly"
                                            ( ExpOp (op, e1, e2)  )
# 1611 "sintatico.ml"
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
# 1652 "sintatico.ml"
          
        in
        
# 161 "sintatico.mly"
                                            ( ExpOp (op, e1, e2)  )
# 1658 "sintatico.ml"
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
# 1699 "sintatico.ml"
          
        in
        
# 161 "sintatico.mly"
                                            ( ExpOp (op, e1, e2)  )
# 1705 "sintatico.ml"
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
# 1746 "sintatico.ml"
          
        in
        
# 161 "sintatico.mly"
                                            ( ExpOp (op, e1, e2)  )
# 1752 "sintatico.ml"
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
# 1793 "sintatico.ml"
          
        in
        
# 161 "sintatico.mly"
                                            ( ExpOp (op, e1, e2)  )
# 1799 "sintatico.ml"
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
# 1840 "sintatico.ml"
          
        in
        
# 161 "sintatico.mly"
                                            ( ExpOp (op, e1, e2)  )
# 1846 "sintatico.ml"
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
# 1887 "sintatico.ml"
          
        in
        
# 161 "sintatico.mly"
                                            ( ExpOp (op, e1, e2)  )
# 1893 "sintatico.ml"
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
# 1934 "sintatico.ml"
          
        in
        
# 161 "sintatico.mly"
                                            ( ExpOp (op, e1, e2)  )
# 1940 "sintatico.ml"
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
# 1981 "sintatico.ml"
          
        in
        
# 161 "sintatico.mly"
                                            ( ExpOp (op, e1, e2)  )
# 1987 "sintatico.ml"
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
# 2028 "sintatico.ml"
          
        in
        
# 161 "sintatico.mly"
                                            ( ExpOp (op, e1, e2)  )
# 2034 "sintatico.ml"
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
# 2075 "sintatico.ml"
          
        in
        
# 161 "sintatico.mly"
                                            ( ExpOp (op, e1, e2)  )
# 2081 "sintatico.ml"
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
# 2122 "sintatico.ml"
          
        in
        
# 161 "sintatico.mly"
                                            ( ExpOp (op, e1, e2)  )
# 2128 "sintatico.ml"
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
# 2169 "sintatico.ml"
          
        in
        
# 161 "sintatico.mly"
                                            ( ExpOp (op, e1, e2)  )
# 2175 "sintatico.ml"
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
# 2216 "sintatico.ml"
          
        in
        
# 161 "sintatico.mly"
                                            ( ExpOp (op, e1, e2)  )
# 2222 "sintatico.ml"
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
# 2263 "sintatico.ml"
          
        in
        
# 161 "sintatico.mly"
                                            ( ExpOp (op, e1, e2)  )
# 2269 "sintatico.ml"
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
# 2310 "sintatico.ml"
          
        in
        
# 161 "sintatico.mly"
                                            ( ExpOp (op, e1, e2)  )
# 2316 "sintatico.ml"
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
# 2357 "sintatico.ml"
          
        in
        
# 161 "sintatico.mly"
                                            ( ExpOp (op, e1, e2)  )
# 2363 "sintatico.ml"
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
# 2402 "sintatico.ml"
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
# 2477 "sintatico.ml"
        ) = Obj.magic id in
        let tipo : (Ast.tipo) = Obj.magic tipo in
        let _1 : unit = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__9_ in
        let _v : (Ast.funcoes) = 
# 93 "sintatico.mly"
     ( Funcao (tipo, id, args, ds, cs(*,ret*)))
# 2487 "sintatico.ml"
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
# 2505 "sintatico.ml"
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
# 2533 "sintatico.ml"
        ) = Obj.magic x in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_x_ in
        let _endpos = _endpos_xs_ in
        let _v : (Ast.identificador list) = 
# 213 "/usr/local/share/menhir/standard.mly"
    ( x :: xs )
# 2541 "sintatico.ml"
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
# 2559 "sintatico.ml"
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
# 2591 "sintatico.ml"
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
# 2609 "sintatico.ml"
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
# 2641 "sintatico.ml"
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
# 2659 "sintatico.ml"
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
# 2691 "sintatico.ml"
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
# 2716 "sintatico.ml"
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
# 2748 "sintatico.ml"
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
# 2773 "sintatico.ml"
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
# 2805 "sintatico.ml"
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
# 2823 "sintatico.ml"
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
# 2858 "sintatico.ml"
          
        in
        
# 116 "/usr/local/share/menhir/standard.mly"
    ( Some x )
# 2864 "sintatico.ml"
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
# 2896 "sintatico.ml"
        ) = 
# 88 "sintatico.mly"
        ( Programa (f) )
# 2900 "sintatico.ml"
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
# 2925 "sintatico.ml"
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
# 2950 "sintatico.ml"
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
# 2975 "sintatico.ml"
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
# 3000 "sintatico.ml"
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
# 3021 "sintatico.ml"
        ) = Obj.magic x in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_x_ in
        let _endpos = _endpos_x_ in
        let _v : (Ast.variavel) = 
# 191 "sintatico.mly"
            ( VarSimples  x )
# 3029 "sintatico.ml"
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
# 3060 "sintatico.ml"
    ))

module Incremental = struct
  
  let programa =
    fun initial_position ->
      (Obj.magic (MenhirInterpreter.start 0 initial_position) : (
# 83 "sintatico.mly"
       (Ast.programa)
# 3070 "sintatico.ml"
      ) MenhirInterpreter.checkpoint)
  
end

# 269 "/usr/local/share/menhir/standard.mly"
  

# 3078 "sintatico.ml"
