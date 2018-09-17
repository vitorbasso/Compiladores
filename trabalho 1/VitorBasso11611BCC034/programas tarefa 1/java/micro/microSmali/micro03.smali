.class public Lmicro03;
.super Ljava/lang/Object;
.source "micro03.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 4
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Digite um numero: "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 5
    invoke-static {}, Ljava/lang/System;->console()Ljava/io/Console;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/Console;->readLine()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 6
    const/16 v1, 0x64

    if-lt v0, v1, :cond_2b

    .line 7
    const/16 v1, 0xc8

    if-gt v0, v1, :cond_23

    .line 8
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "O numero esta no intervalo entre 100 e 200"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 15
    :goto_22
    return-void

    .line 10
    :cond_23
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "O numero nao esta no intervalo entre 100 e 200"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_22

    .line 13
    :cond_2b
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "O numero nao esta no intervalo entre 100 e 200"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_22
.end method
