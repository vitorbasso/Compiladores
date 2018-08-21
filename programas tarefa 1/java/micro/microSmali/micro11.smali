.class public Lmicro11;
.super Ljava/lang/Object;
.source "micro11.java"


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
    invoke-static {v0}, Lmicro11;->verifica(I)I

    move-result v0

    .line 7
    const/4 v1, 0x1

    if-ne v0, v1, :cond_22

    .line 8
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Numero positivo"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 14
    :goto_21
    return-void

    .line 9
    :cond_22
    if-nez v0, :cond_2c

    .line 10
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Zero"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_21

    .line 12
    :cond_2c
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Numero negativo"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_21
.end method

.method public static verifica(I)I
    .registers 2

    .prologue
    .line 17
    if-lez p0, :cond_4

    .line 18
    const/4 v0, 0x1

    .line 24
    :goto_3
    return v0

    .line 19
    :cond_4
    if-gez p0, :cond_8

    .line 20
    const/4 v0, -0x1

    goto :goto_3

    .line 22
    :cond_8
    const/4 v0, 0x0

    goto :goto_3
.end method
