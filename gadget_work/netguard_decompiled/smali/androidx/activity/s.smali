.class public final Landroidx/activity/s;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/Runnable;

.field final b:Ljava/util/ArrayDeque;

.field private c:Landroidx/activity/o;

.field private d:Landroid/window/OnBackInvokedCallback;

.field private e:Landroid/window/OnBackInvokedDispatcher;

.field private f:Z


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayDeque;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroidx/activity/s;->b:Ljava/util/ArrayDeque;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Landroidx/activity/s;->f:Z

    .line 13
    .line 14
    iput-object p1, p0, Landroidx/activity/s;->a:Ljava/lang/Runnable;

    .line 15
    .line 16
    invoke-static {}, LE/d;->m()Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    new-instance p1, Landroidx/activity/o;

    .line 23
    .line 24
    invoke-direct {p1, p0}, Landroidx/activity/o;-><init>(Landroidx/activity/s;)V

    .line 25
    .line 26
    .line 27
    iput-object p1, p0, Landroidx/activity/s;->c:Landroidx/activity/o;

    .line 28
    .line 29
    new-instance p1, Landroidx/activity/b;

    .line 30
    .line 31
    const/4 v0, 0x2

    .line 32
    invoke-direct {p1, v0, p0}, Landroidx/activity/b;-><init>(ILjava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    invoke-static {p1}, Landroidx/activity/q;->a(Ljava/lang/Runnable;)Landroid/window/OnBackInvokedCallback;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    iput-object p1, p0, Landroidx/activity/s;->d:Landroid/window/OnBackInvokedCallback;

    .line 40
    .line 41
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Landroidx/lifecycle/s;Landroidx/activity/n;)V
    .locals 2

    .line 1
    invoke-interface {p1}, Landroidx/lifecycle/s;->getLifecycle()Landroidx/lifecycle/m;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Landroidx/lifecycle/m;->b()Landroidx/lifecycle/l;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sget-object v1, Landroidx/lifecycle/l;->d:Landroidx/lifecycle/l;

    .line 10
    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    new-instance v0, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;

    .line 15
    .line 16
    invoke-direct {v0, p0, p1, p2}, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;-><init>(Landroidx/activity/s;Landroidx/lifecycle/m;Landroidx/activity/n;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p2, v0}, Landroidx/activity/n;->a(Landroidx/activity/a;)V

    .line 20
    .line 21
    .line 22
    invoke-static {}, LE/d;->m()Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-eqz p1, :cond_1

    .line 27
    .line 28
    invoke-virtual {p0}, Landroidx/activity/s;->e()V

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Landroidx/activity/s;->c:Landroidx/activity/o;

    .line 32
    .line 33
    invoke-virtual {p2, p1}, Landroidx/activity/n;->g(Landroidx/activity/o;)V

    .line 34
    .line 35
    .line 36
    :cond_1
    return-void
.end method

.method final b(Landroidx/activity/n;)Landroidx/activity/r;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/activity/s;->b:Ljava/util/ArrayDeque;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    new-instance v0, Landroidx/activity/r;

    .line 7
    .line 8
    invoke-direct {v0, p0, p1}, Landroidx/activity/r;-><init>(Landroidx/activity/s;Landroidx/activity/n;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, v0}, Landroidx/activity/n;->a(Landroidx/activity/a;)V

    .line 12
    .line 13
    .line 14
    invoke-static {}, LE/d;->m()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    invoke-virtual {p0}, Landroidx/activity/s;->e()V

    .line 21
    .line 22
    .line 23
    iget-object v1, p0, Landroidx/activity/s;->c:Landroidx/activity/o;

    .line 24
    .line 25
    invoke-virtual {p1, v1}, Landroidx/activity/n;->g(Landroidx/activity/o;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    return-object v0
.end method

.method public final c()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/activity/s;->b:Ljava/util/ArrayDeque;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->descendingIterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Landroidx/activity/n;

    .line 18
    .line 19
    invoke-virtual {v1}, Landroidx/activity/n;->c()Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    invoke-virtual {v1}, Landroidx/activity/n;->b()V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_1
    iget-object v0, p0, Landroidx/activity/s;->a:Ljava/lang/Runnable;

    .line 30
    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 34
    .line 35
    .line 36
    :cond_2
    return-void
.end method

.method public final d(Landroid/window/OnBackInvokedDispatcher;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/activity/s;->e:Landroid/window/OnBackInvokedDispatcher;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/activity/s;->e()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method final e()V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/activity/s;->b:Ljava/util/ArrayDeque;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->descendingIterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x1

    .line 12
    const/4 v3, 0x0

    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Landroidx/activity/n;

    .line 20
    .line 21
    invoke-virtual {v1}, Landroidx/activity/n;->c()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    const/4 v0, 0x1

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const/4 v0, 0x0

    .line 30
    :goto_0
    iget-object v1, p0, Landroidx/activity/s;->e:Landroid/window/OnBackInvokedDispatcher;

    .line 31
    .line 32
    if-eqz v1, :cond_3

    .line 33
    .line 34
    if-eqz v0, :cond_2

    .line 35
    .line 36
    iget-boolean v4, p0, Landroidx/activity/s;->f:Z

    .line 37
    .line 38
    if-nez v4, :cond_2

    .line 39
    .line 40
    iget-object v0, p0, Landroidx/activity/s;->d:Landroid/window/OnBackInvokedCallback;

    .line 41
    .line 42
    invoke-static {v1, v3, v0}, Landroidx/activity/q;->b(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    iput-boolean v2, p0, Landroidx/activity/s;->f:Z

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_2
    if-nez v0, :cond_3

    .line 49
    .line 50
    iget-boolean v0, p0, Landroidx/activity/s;->f:Z

    .line 51
    .line 52
    if-eqz v0, :cond_3

    .line 53
    .line 54
    iget-object v0, p0, Landroidx/activity/s;->d:Landroid/window/OnBackInvokedCallback;

    .line 55
    .line 56
    invoke-static {v1, v0}, Landroidx/activity/q;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    iput-boolean v3, p0, Landroidx/activity/s;->f:Z

    .line 60
    .line 61
    :cond_3
    :goto_1
    return-void
.end method
