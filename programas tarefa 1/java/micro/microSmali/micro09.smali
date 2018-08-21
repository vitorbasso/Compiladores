.class public Lmicro09;
.super Ljava/lang/Object;
.source "micro09.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .registers 9

    .prologue
    .line 4
    const-wide/16 v0, 0x0

    .line 5
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "Digite o preco: "

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 6
    invoke-static {}, Ljava/lang/System;->console()Ljava/io/Console;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/Console;->readLine()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 7
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "Digite a venda: "

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 8
    invoke-static {}, Ljava/lang/System;->console()Ljava/io/Console;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/Console;->readLine()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    .line 9
    const-wide v6, 0x407f400000000000L    # 500.0

    cmpg-double v6, v4, v6

    if-ltz v6, :cond_37

    const-wide/high16 v6, 0x403e000000000000L    # 30.0

    cmpg-double v6, v2, v6

    if-gez v6, :cond_54

    .line 10
    :cond_37
    const-wide/16 v0, 0x0

    mul-double/2addr v0, v2

    add-double/2addr v0, v2

    .line 16
    :cond_3b
    :goto_3b
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "O novo preco e "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 17
    return-void

    .line 11
    :cond_54
    const-wide v6, 0x407f400000000000L    # 500.0

    cmpl-double v6, v4, v6

    if-ltz v6, :cond_66

    const-wide v6, 0x4092c00000000000L    # 1200.0

    cmpg-double v6, v4, v6

    if-ltz v6, :cond_72

    :cond_66
    const-wide/high16 v6, 0x403e000000000000L    # 30.0

    cmpl-double v6, v2, v6

    if-ltz v6, :cond_77

    const-wide/high16 v6, 0x4054000000000000L    # 80.0

    cmpl-double v6, v2, v6

    if-ltz v6, :cond_77

    .line 12
    :cond_72
    const-wide/16 v0, 0x0

    mul-double/2addr v0, v2

    add-double/2addr v0, v2

    goto :goto_3b

    .line 13
    :cond_77
    const-wide v6, 0x4092c00000000000L    # 1200.0

    cmpl-double v4, v4, v6

    if-gez v4, :cond_86

    const-wide/high16 v4, 0x4054000000000000L    # 80.0

    cmpl-double v4, v2, v4

    if-ltz v4, :cond_3b

    .line 14
    :cond_86
    const-wide/16 v0, 0x0

    mul-double/2addr v0, v2

    sub-double v0, v2, v0

    goto :goto_3b
.end method
