.class public Lnano11;
.super Ljava/lang/Object;
.source "nano11.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 4
    const/4 v0, 0x1

    .line 5
    const/4 v1, 0x2

    .line 6
    const/4 v2, 0x5

    .line 7
    :goto_3
    if-le v2, v0, :cond_c

    .line 8
    add-int/2addr v0, v1

    .line 9
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3, v0}, Ljava/io/PrintStream;->print(I)V

    goto :goto_3

    .line 11
    :cond_c
    return-void
.end method
