.class public final Lv/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lv/f;

.field private final b:Lv/d;

.field private c:Z


# direct methods
.method public constructor <init>(Lv/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lv/e;->a:Lv/f;

    .line 5
    .line 6
    new-instance p1, Lv/d;

    .line 7
    .line 8
    invoke-direct {p1}, Lv/d;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lv/e;->b:Lv/d;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final a()Lv/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lv/e;->b:Lv/d;

    .line 2
    .line 3
    return-object v0
.end method

.method public final b()V
    .locals 5

    .line 1
    iget-object v0, p0, Lv/e;->a:Lv/f;

    .line 2
    .line 3
    invoke-interface {v0}, Landroidx/lifecycle/s;->getLifecycle()Landroidx/lifecycle/m;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-string v2, "owner.lifecycle"

    .line 8
    .line 9
    invoke-static {v1, v2}, LP0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1}, Landroidx/lifecycle/m;->b()Landroidx/lifecycle/l;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    sget-object v3, Landroidx/lifecycle/l;->e:Landroidx/lifecycle/l;

    .line 17
    .line 18
    const/4 v4, 0x1

    .line 19
    if-ne v2, v3, :cond_0

    .line 20
    .line 21
    const/4 v2, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v2, 0x0

    .line 24
    :goto_0
    if-eqz v2, :cond_1

    .line 25
    .line 26
    new-instance v2, Landroidx/savedstate/Recreator;

    .line 27
    .line 28
    invoke-direct {v2, v0}, Landroidx/savedstate/Recreator;-><init>(Lv/f;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, v2}, Landroidx/lifecycle/m;->a(Landroidx/lifecycle/r;)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lv/e;->b:Lv/d;

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Lv/d;->d(Landroidx/lifecycle/m;)V

    .line 37
    .line 38
    .line 39
    iput-boolean v4, p0, Lv/e;->c:Z

    .line 40
    .line 41
    return-void

    .line 42
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 43
    .line 44
    const-string v1, "Restarter must be created only during owner\'s initialization stage"

    .line 45
    .line 46
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw v0
.end method

.method public final c(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lv/e;->c:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lv/e;->b()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lv/e;->a:Lv/f;

    .line 9
    .line 10
    invoke-interface {v0}, Landroidx/lifecycle/s;->getLifecycle()Landroidx/lifecycle/m;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const-string v1, "owner.lifecycle"

    .line 15
    .line 16
    invoke-static {v0, v1}, LP0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Landroidx/lifecycle/m;->b()Landroidx/lifecycle/l;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    sget-object v2, Landroidx/lifecycle/l;->g:Landroidx/lifecycle/l;

    .line 24
    .line 25
    invoke-virtual {v1, v2}, Landroidx/lifecycle/l;->f(Landroidx/lifecycle/l;)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    xor-int/lit8 v1, v1, 0x1

    .line 30
    .line 31
    if-eqz v1, :cond_1

    .line 32
    .line 33
    iget-object v0, p0, Lv/e;->b:Lv/d;

    .line 34
    .line 35
    invoke-virtual {v0, p1}, Lv/d;->e(Landroid/os/Bundle;)V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    const-string v1, "performRestore cannot be called when owner is "

    .line 42
    .line 43
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Landroidx/lifecycle/m;->b()Landroidx/lifecycle/l;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 58
    .line 59
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    throw v0
.end method

.method public final d(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    const-string v0, "outBundle"

    .line 2
    .line 3
    invoke-static {p1, v0}, LP0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lv/e;->b:Lv/d;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lv/d;->f(Landroid/os/Bundle;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
