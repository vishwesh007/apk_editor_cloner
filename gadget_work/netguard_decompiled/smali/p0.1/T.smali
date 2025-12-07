.class public final Lp0/T;
.super Lp0/J;
.source "SourceFile"


# instance fields
.field final synthetic g:Lp0/g;


# direct methods
.method public constructor <init>(Lp0/g;I)V
    .locals 1

    .line 1
    iput-object p1, p0, Lp0/T;->g:Lp0/g;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, p1, p2, v0}, Lp0/J;-><init>(Lp0/g;ILandroid/os/Bundle;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method protected final f(Lm0/a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lp0/T;->g:Lp0/g;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object v0, v0, Lp0/g;->i:Lp0/d;

    .line 7
    .line 8
    invoke-interface {v0, p1}, Lp0/d;->a(Lm0/a;)V

    .line 9
    .line 10
    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method protected final g()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lp0/T;->g:Lp0/g;

    .line 2
    .line 3
    iget-object v0, v0, Lp0/g;->i:Lp0/d;

    .line 4
    .line 5
    sget-object v1, Lm0/a;->e:Lm0/a;

    .line 6
    .line 7
    invoke-interface {v0, v1}, Lp0/d;->a(Lm0/a;)V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    return v0
.end method
