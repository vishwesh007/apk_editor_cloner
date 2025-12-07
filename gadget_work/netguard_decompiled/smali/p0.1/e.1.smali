.class public final Lp0/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp0/d;


# instance fields
.field final synthetic a:Lp0/g;


# direct methods
.method public constructor <init>(Lp0/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lp0/e;->a:Lp0/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lm0/a;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lm0/a;->f()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lp0/e;->a:Lp0/g;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v1}, Lp0/g;->x()Ljava/util/Set;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    const/4 v0, 0x0

    .line 14
    invoke-virtual {v1, v0, p1}, Lp0/g;->o(Lp0/n;Ljava/util/Set;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    invoke-static {v1}, Lp0/g;->F(Lp0/g;)Lp0/c;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    invoke-static {v1}, Lp0/g;->F(Lp0/g;)Lp0/c;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Lp0/C;

    .line 29
    .line 30
    iget-object v0, v0, Lp0/C;->a:Lo0/k;

    .line 31
    .line 32
    invoke-interface {v0, p1}, Lo0/k;->o(Lm0/a;)V

    .line 33
    .line 34
    .line 35
    :cond_1
    return-void
.end method
