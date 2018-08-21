.class public Lmicro10;
.super Ljava/lang/Object;
.source "micro10.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fatorial(I)I
    .registers 2

    .prologue
    .line 13
    if-gtz p0, :cond_4

    .line 14
    const/4 v0, 0x1

    .line 16
    :goto_3
    return v0

    :cond_4
    add-int/lit8 v0, p0, -0x1

    invoke-static {v0}, Lmicro10;->fatorial(I)I

    move-result v0

    mul-int/2addr v0, p0

    goto :goto_3
.end method

.method public static main([Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 4
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Digite o numero: "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 5
    invoke-static {}, Ljava/lang/System;->console()Ljava/io/Console;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/Console;->readLine()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 6
    invoke-static {v0}, Lmicro10;->fatorial(I)I

    move-result v1

    .line 7
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "O fatorial de "

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 8
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->print(I)V

    .line 9
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, " e "

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 10
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(I)V

    .line 11
    return-void
.end method
