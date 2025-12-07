.class public abstract Lp0/l;
.super Lp0/g;
.source "SourceFile"

# interfaces
.implements Ln0/e;


# instance fields
.field private final x:Ljava/util/Set;

.field private final y:Landroid/accounts/Account;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Landroid/os/Looper;ILp0/i;Lo0/e;Lo0/k;)V
    .locals 9

    .line 2
    invoke-static {p1}, Lp0/m;->a(Landroid/content/Context;)Lp0/m;

    move-result-object v3

    .line 3
    invoke-static {}, Lm0/d;->d()Lm0/d;

    move-result-object v4

    .line 4
    invoke-static {p5}, Lp0/s;->b(Ljava/lang/Object;)V

    .line 5
    invoke-static {p6}, Lp0/s;->b(Ljava/lang/Object;)V

    .line 6
    new-instance v6, Lp0/B;

    invoke-direct {v6, p5}, Lp0/B;-><init>(Lo0/e;)V

    .line 7
    new-instance v7, Lp0/C;

    invoke-direct {v7, p6}, Lp0/C;-><init>(Lo0/k;)V

    .line 8
    invoke-virtual {p4}, Lp0/i;->h()Ljava/lang/String;

    move-result-object v8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    .line 9
    invoke-direct/range {v0 .. v8}, Lp0/g;-><init>(Landroid/content/Context;Landroid/os/Looper;Lp0/m;Lm0/d;ILp0/b;Lp0/c;Ljava/lang/String;)V

    .line 10
    invoke-virtual {p4}, Lp0/i;->a()Landroid/accounts/Account;

    move-result-object p1

    iput-object p1, p0, Lp0/l;->y:Landroid/accounts/Account;

    .line 11
    invoke-virtual {p4}, Lp0/i;->c()Ljava/util/Set;

    move-result-object p1

    .line 12
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/android/gms/common/api/Scope;

    .line 13
    invoke-interface {p1, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Expanding scopes is not permitted, use implied scopes instead"

    .line 14
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 15
    :cond_1
    iput-object p1, p0, Lp0/l;->x:Ljava/util/Set;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lp0/i;Ln0/k;Ln0/l;)V
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v3, 0x2c

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 1
    invoke-direct/range {v0 .. v6}, Lp0/l;-><init>(Landroid/content/Context;Landroid/os/Looper;ILp0/i;Lo0/e;Lo0/k;)V

    return-void
.end method


# virtual methods
.method public final f()Ljava/util/Set;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lp0/g;->j()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lp0/l;->x:Ljava/util/Set;

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    :goto_0
    return-object v0
.end method

.method public final r()Landroid/accounts/Account;
    .locals 1

    .line 1
    iget-object v0, p0, Lp0/l;->y:Landroid/accounts/Account;

    return-object v0
.end method

.method protected final t()V
    .locals 0

    .line 1
    return-void
.end method

.method protected final x()Ljava/util/Set;
    .locals 1

    .line 1
    iget-object v0, p0, Lp0/l;->x:Ljava/util/Set;

    return-object v0
.end method
