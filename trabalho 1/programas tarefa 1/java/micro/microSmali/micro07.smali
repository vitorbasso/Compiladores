.class public Lmicro07;
.super Ljava/lang/Object;
.source "micro07.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .registers 6

    .prologue
    const/4 v1, 0x1

    .line 5
    move v0, v1

    .line 6
    :cond_2
    :goto_2
    if-ne v0, v1, :cond_4a

    .line 7
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "Digite um numero: "

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 8
    invoke-static {}, Ljava/lang/System;->console()Ljava/io/Console;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/Console;->readLine()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 9
    if-lez v2, :cond_37

    .line 10
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "Positivo"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 19
    :cond_20
    :goto_20
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "Deseja finalizar? (S -1) "

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 20
    invoke-static {}, Ljava/lang/System;->console()Ljava/io/Console;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/Console;->readLine()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 21
    if-ne v2, v1, :cond_2

    .line 22
    const/4 v0, 0x0

    goto :goto_2

    .line 12
    :cond_37
    if-nez v2, :cond_40

    .line 13
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "O numero e igual a 0"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 15
    :cond_40
    if-gez v2, :cond_20

    .line 16
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "Negativo"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_20

    .line 26
    :cond_4a
    return-void
.end method
