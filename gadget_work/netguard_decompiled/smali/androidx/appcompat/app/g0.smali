.class public final Landroidx/appcompat/app/g0;
.super Landroidx/appcompat/view/c;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/o;


# instance fields
.field private final c:Landroid/content/Context;

.field private final d:Landroidx/appcompat/view/menu/q;

.field private e:Landroidx/appcompat/view/b;

.field private f:Ljava/lang/ref/WeakReference;

.field final synthetic g:Landroidx/appcompat/app/h0;


# direct methods
.method public constructor <init>(Landroidx/appcompat/app/h0;Landroid/content/Context;Landroidx/appcompat/view/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/appcompat/app/g0;->g:Landroidx/appcompat/app/h0;

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/appcompat/view/c;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Landroidx/appcompat/app/g0;->c:Landroid/content/Context;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/appcompat/app/g0;->e:Landroidx/appcompat/view/b;

    .line 9
    .line 10
    new-instance p1, Landroidx/appcompat/view/menu/q;

    .line 11
    .line 12
    invoke-direct {p1, p2}, Landroidx/appcompat/view/menu/q;-><init>(Landroid/content/Context;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/q;->D()V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Landroidx/appcompat/app/g0;->d:Landroidx/appcompat/view/menu/q;

    .line 19
    .line 20
    invoke-virtual {p1, p0}, Landroidx/appcompat/view/menu/q;->C(Landroidx/appcompat/view/menu/o;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/g0;->g:Landroidx/appcompat/app/h0;

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/appcompat/app/h0;->i:Landroidx/appcompat/app/g0;

    .line 4
    .line 5
    if-eq v1, p0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-boolean v1, v0, Landroidx/appcompat/app/h0;->q:Z

    .line 9
    .line 10
    xor-int/lit8 v1, v1, 0x1

    .line 11
    .line 12
    if-nez v1, :cond_1

    .line 13
    .line 14
    iput-object p0, v0, Landroidx/appcompat/app/h0;->j:Landroidx/appcompat/app/g0;

    .line 15
    .line 16
    iget-object v1, p0, Landroidx/appcompat/app/g0;->e:Landroidx/appcompat/view/b;

    .line 17
    .line 18
    iput-object v1, v0, Landroidx/appcompat/app/h0;->k:Landroidx/appcompat/view/b;

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    iget-object v1, p0, Landroidx/appcompat/app/g0;->e:Landroidx/appcompat/view/b;

    .line 22
    .line 23
    invoke-interface {v1, p0}, Landroidx/appcompat/view/b;->c(Landroidx/appcompat/view/c;)V

    .line 24
    .line 25
    .line 26
    :goto_0
    const/4 v1, 0x0

    .line 27
    iput-object v1, p0, Landroidx/appcompat/app/g0;->e:Landroidx/appcompat/view/b;

    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    invoke-virtual {v0, v2}, Landroidx/appcompat/app/h0;->g(Z)V

    .line 31
    .line 32
    .line 33
    iget-object v2, v0, Landroidx/appcompat/app/h0;->f:Landroidx/appcompat/widget/ActionBarContextView;

    .line 34
    .line 35
    invoke-virtual {v2}, Landroidx/appcompat/widget/ActionBarContextView;->closeMode()V

    .line 36
    .line 37
    .line 38
    iget-object v2, v0, Landroidx/appcompat/app/h0;->c:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 39
    .line 40
    iget-boolean v3, v0, Landroidx/appcompat/app/h0;->v:Z

    .line 41
    .line 42
    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setHideOnContentScrollEnabled(Z)V

    .line 43
    .line 44
    .line 45
    iput-object v1, v0, Landroidx/appcompat/app/h0;->i:Landroidx/appcompat/app/g0;

    .line 46
    .line 47
    return-void
.end method

.method public final b()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/g0;->f:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/view/View;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    return-object v0
.end method

.method public final c()Landroidx/appcompat/view/menu/q;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/g0;->d:Landroidx/appcompat/view/menu/q;

    .line 2
    .line 3
    return-object v0
.end method

.method public final d()Landroid/view/MenuInflater;
    .locals 2

    .line 1
    new-instance v0, Landroidx/appcompat/view/l;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/appcompat/app/g0;->c:Landroid/content/Context;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroidx/appcompat/view/l;-><init>(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public final e()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/g0;->g:Landroidx/appcompat/app/h0;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/appcompat/app/h0;->f:Landroidx/appcompat/widget/ActionBarContextView;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarContextView;->getSubtitle()Ljava/lang/CharSequence;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public final g()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/g0;->g:Landroidx/appcompat/app/h0;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/appcompat/app/h0;->f:Landroidx/appcompat/widget/ActionBarContextView;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarContextView;->getTitle()Ljava/lang/CharSequence;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public final i()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/g0;->g:Landroidx/appcompat/app/h0;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/appcompat/app/h0;->i:Landroidx/appcompat/app/g0;

    .line 4
    .line 5
    if-eq v0, p0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/app/g0;->d:Landroidx/appcompat/view/menu/q;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/q;->N()V

    .line 11
    .line 12
    .line 13
    :try_start_0
    iget-object v1, p0, Landroidx/appcompat/app/g0;->e:Landroidx/appcompat/view/b;

    .line 14
    .line 15
    invoke-interface {v1, p0, v0}, Landroidx/appcompat/view/b;->b(Landroidx/appcompat/view/c;Landroidx/appcompat/view/menu/q;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/q;->M()V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :catchall_0
    move-exception v1

    .line 23
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/q;->M()V

    .line 24
    .line 25
    .line 26
    throw v1
.end method

.method public final j()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/g0;->g:Landroidx/appcompat/app/h0;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/appcompat/app/h0;->f:Landroidx/appcompat/widget/ActionBarContextView;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarContextView;->isTitleOptional()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public final k(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/g0;->g:Landroidx/appcompat/app/h0;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/appcompat/app/h0;->f:Landroidx/appcompat/widget/ActionBarContextView;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionBarContextView;->setCustomView(Landroid/view/View;)V

    .line 6
    .line 7
    .line 8
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 9
    .line 10
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Landroidx/appcompat/app/g0;->f:Ljava/lang/ref/WeakReference;

    .line 14
    .line 15
    return-void
.end method

.method public final l(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/g0;->g:Landroidx/appcompat/app/h0;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/appcompat/app/h0;->a:Landroid/content/Context;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/g0;->m(Ljava/lang/CharSequence;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final m(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/g0;->g:Landroidx/appcompat/app/h0;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/appcompat/app/h0;->f:Landroidx/appcompat/widget/ActionBarContextView;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionBarContextView;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final o(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/g0;->g:Landroidx/appcompat/app/h0;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/appcompat/app/h0;->a:Landroid/content/Context;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/g0;->p(Ljava/lang/CharSequence;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final onMenuItemSelected(Landroidx/appcompat/view/menu/q;Landroid/view/MenuItem;)Z
    .locals 0

    .line 1
    iget-object p1, p0, Landroidx/appcompat/app/g0;->e:Landroidx/appcompat/view/b;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-interface {p1, p0, p2}, Landroidx/appcompat/view/b;->a(Landroidx/appcompat/view/c;Landroid/view/MenuItem;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1

    .line 10
    :cond_0
    const/4 p1, 0x0

    .line 11
    return p1
.end method

.method public final onMenuModeChange(Landroidx/appcompat/view/menu/q;)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroidx/appcompat/app/g0;->e:Landroidx/appcompat/view/b;

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/app/g0;->i()V

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Landroidx/appcompat/app/g0;->g:Landroidx/appcompat/app/h0;

    .line 10
    .line 11
    iget-object p1, p1, Landroidx/appcompat/app/h0;->f:Landroidx/appcompat/widget/ActionBarContextView;

    .line 12
    .line 13
    invoke-virtual {p1}, Landroidx/appcompat/widget/ActionBarContextView;->showOverflowMenu()Z

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final p(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/g0;->g:Landroidx/appcompat/app/h0;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/appcompat/app/h0;->f:Landroidx/appcompat/widget/ActionBarContextView;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionBarContextView;->setTitle(Ljava/lang/CharSequence;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final q(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/view/c;->q(Z)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/appcompat/app/g0;->g:Landroidx/appcompat/app/h0;

    .line 5
    .line 6
    iget-object v0, v0, Landroidx/appcompat/app/h0;->f:Landroidx/appcompat/widget/ActionBarContextView;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionBarContextView;->setTitleOptional(Z)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final r()Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/g0;->d:Landroidx/appcompat/view/menu/q;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/q;->N()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget-object v1, p0, Landroidx/appcompat/app/g0;->e:Landroidx/appcompat/view/b;

    .line 7
    .line 8
    invoke-interface {v1, p0, v0}, Landroidx/appcompat/view/b;->d(Landroidx/appcompat/view/c;Landroidx/appcompat/view/menu/q;)Z

    .line 9
    .line 10
    .line 11
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/q;->M()V

    .line 13
    .line 14
    .line 15
    return v1

    .line 16
    :catchall_0
    move-exception v1

    .line 17
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/q;->M()V

    .line 18
    .line 19
    .line 20
    throw v1
.end method
