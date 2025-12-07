.class public final Landroidx/appcompat/view/n;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Ljava/util/ArrayList;

.field private b:J

.field private c:Landroid/view/animation/Interpolator;

.field d:Landroidx/core/view/s0;

.field private e:Z

.field private final f:Landroidx/core/view/t0;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, -0x1

    .line 5
    .line 6
    iput-wide v0, p0, Landroidx/appcompat/view/n;->b:J

    .line 7
    .line 8
    new-instance v0, Landroidx/appcompat/view/m;

    .line 9
    .line 10
    invoke-direct {v0, p0}, Landroidx/appcompat/view/m;-><init>(Landroidx/appcompat/view/n;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Landroidx/appcompat/view/n;->f:Landroidx/core/view/t0;

    .line 14
    .line 15
    new-instance v0, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Landroidx/appcompat/view/n;->a:Ljava/util/ArrayList;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/view/n;->e:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/n;->a:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Landroidx/core/view/r0;

    .line 23
    .line 24
    invoke-virtual {v1}, Landroidx/core/view/r0;->b()V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    const/4 v0, 0x0

    .line 29
    iput-boolean v0, p0, Landroidx/appcompat/view/n;->e:Z

    .line 30
    .line 31
    return-void
.end method

.method final b()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroidx/appcompat/view/n;->e:Z

    .line 3
    .line 4
    return-void
.end method

.method public final c(Landroidx/core/view/r0;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/view/n;->e:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/appcompat/view/n;->a:Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public final d(Landroidx/core/view/r0;Landroidx/core/view/r0;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/n;->a:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroidx/core/view/r0;->c()J

    .line 7
    .line 8
    .line 9
    move-result-wide v1

    .line 10
    invoke-virtual {p2, v1, v2}, Landroidx/core/view/r0;->g(J)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final e()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/view/n;->e:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-wide/16 v0, 0xfa

    .line 6
    .line 7
    iput-wide v0, p0, Landroidx/appcompat/view/n;->b:J

    .line 8
    .line 9
    :cond_0
    return-void
.end method

.method public final f(Landroid/view/animation/BaseInterpolator;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/view/n;->e:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iput-object p1, p0, Landroidx/appcompat/view/n;->c:Landroid/view/animation/Interpolator;

    .line 6
    .line 7
    :cond_0
    return-void
.end method

.method public final g(Landroidx/core/view/t0;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/view/n;->e:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iput-object p1, p0, Landroidx/appcompat/view/n;->d:Landroidx/core/view/s0;

    .line 6
    .line 7
    :cond_0
    return-void
.end method

.method public final h()V
    .locals 7

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/view/n;->e:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/n;->a:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_4

    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Landroidx/core/view/r0;

    .line 23
    .line 24
    iget-wide v2, p0, Landroidx/appcompat/view/n;->b:J

    .line 25
    .line 26
    const-wide/16 v4, 0x0

    .line 27
    .line 28
    cmp-long v6, v2, v4

    .line 29
    .line 30
    if-ltz v6, :cond_1

    .line 31
    .line 32
    invoke-virtual {v1, v2, v3}, Landroidx/core/view/r0;->d(J)V

    .line 33
    .line 34
    .line 35
    :cond_1
    iget-object v2, p0, Landroidx/appcompat/view/n;->c:Landroid/view/animation/Interpolator;

    .line 36
    .line 37
    if-eqz v2, :cond_2

    .line 38
    .line 39
    invoke-virtual {v1, v2}, Landroidx/core/view/r0;->e(Landroid/view/animation/Interpolator;)V

    .line 40
    .line 41
    .line 42
    :cond_2
    iget-object v2, p0, Landroidx/appcompat/view/n;->d:Landroidx/core/view/s0;

    .line 43
    .line 44
    if-eqz v2, :cond_3

    .line 45
    .line 46
    iget-object v2, p0, Landroidx/appcompat/view/n;->f:Landroidx/core/view/t0;

    .line 47
    .line 48
    invoke-virtual {v1, v2}, Landroidx/core/view/r0;->f(Landroidx/core/view/s0;)V

    .line 49
    .line 50
    .line 51
    :cond_3
    invoke-virtual {v1}, Landroidx/core/view/r0;->i()V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_4
    const/4 v0, 0x1

    .line 56
    iput-boolean v0, p0, Landroidx/appcompat/view/n;->e:Z

    .line 57
    .line 58
    return-void
.end method
