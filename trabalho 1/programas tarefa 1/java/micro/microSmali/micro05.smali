.class public Lmicro05;
.super Ljava/lang/Object;
.source "micro05.java"


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
    const/4 v2, 0x0

    .line 5
    .line 7
    const/4 v3, 0x1

    move v0, v2

    move v1, v2

    :goto_4
    const/4 v2, 0x5

    if-gt v3, v2, :cond_3d

    .line 8
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "Digite o nome: "

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 9
    invoke-static {}, Ljava/lang/System;->console()Ljava/io/Console;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/Console;->readLine()Ljava/lang/String;

    .line 10
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "H - Homem ou M - Mulher:"

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 11
    invoke-static {}, Ljava/lang/System;->console()Ljava/io/Console;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/Console;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 12
    const-string v4, "H"

    if-ne v2, v4, :cond_2e

    .line 13
    add-int/lit8 v1, v1, 0x1

    .line 7
    :goto_2a
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_4

    .line 14
    :cond_2e
    const-string v4, "M"

    if-ne v2, v4, :cond_35

    .line 15
    add-int/lit8 v0, v0, 0x1

    goto :goto_2a

    .line 17
    :cond_35
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "Sexo so pode ser H ou M!"

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_2a

    .line 20
    :cond_3d
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Foram inseridos "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " Homens"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 21
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Foram inseridos "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " Mulheres"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 22
    return-void
.end method
