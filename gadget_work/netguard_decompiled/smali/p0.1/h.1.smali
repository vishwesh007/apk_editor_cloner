.class public final Lp0/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/accounts/Account;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private b:Landroidx/collection/d;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# virtual methods
.method public final a()Lp0/i;
    .locals 5

    .line 1
    new-instance v0, Lp0/i;

    .line 2
    .line 3
    iget-object v1, p0, Lp0/h;->a:Landroid/accounts/Account;

    .line 4
    .line 5
    iget-object v2, p0, Lp0/h;->b:Landroidx/collection/d;

    .line 6
    .line 7
    iget-object v3, p0, Lp0/h;->c:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v4, p0, Lp0/h;->d:Ljava/lang/String;

    .line 10
    .line 11
    invoke-direct {v0, v1, v2, v3, v4}, Lp0/i;-><init>(Landroid/accounts/Account;Landroidx/collection/d;Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lp0/h;->c:Ljava/lang/String;

    return-void
.end method

.method public final c(Ljava/util/Set;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lp0/h;->b:Landroidx/collection/d;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroidx/collection/d;

    .line 6
    .line 7
    invoke-direct {v0}, Landroidx/collection/d;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lp0/h;->b:Landroidx/collection/d;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lp0/h;->b:Landroidx/collection/d;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Landroidx/collection/d;->addAll(Ljava/util/Collection;)Z

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final d(Landroid/accounts/Account;)V
    .locals 0
    .param p1    # Landroid/accounts/Account;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lp0/h;->a:Landroid/accounts/Account;

    return-void
.end method

.method public final e(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lp0/h;->d:Ljava/lang/String;

    return-void
.end method
