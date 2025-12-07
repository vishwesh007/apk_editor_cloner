.class public final Landroidx/appcompat/app/n;
.super Landroidx/activity/m;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface;
.implements Landroidx/appcompat/app/r;


# instance fields
.field private c:Landroidx/appcompat/app/v;

.field private final d:Landroidx/appcompat/app/V;

.field final e:Landroidx/appcompat/app/l;


# direct methods
.method protected constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .line 1
    invoke-static {p1, p2}, Landroidx/appcompat/app/n;->e(Landroid/content/Context;I)I

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    invoke-static {p1, p2}, Landroidx/appcompat/app/n;->d(Landroid/content/Context;I)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-direct {p0, p1, v0}, Landroidx/activity/m;-><init>(Landroid/content/Context;I)V

    .line 10
    .line 11
    .line 12
    new-instance v0, Landroidx/appcompat/app/V;

    .line 13
    .line 14
    invoke-direct {v0, p0}, Landroidx/appcompat/app/V;-><init>(Landroidx/appcompat/app/n;)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Landroidx/appcompat/app/n;->d:Landroidx/appcompat/app/V;

    .line 18
    .line 19
    invoke-virtual {p0}, Landroidx/appcompat/app/n;->b()Landroidx/appcompat/app/v;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {p1, p2}, Landroidx/appcompat/app/n;->d(Landroid/content/Context;I)I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/v;->D(I)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Landroidx/appcompat/app/v;->q()V

    .line 31
    .line 32
    .line 33
    new-instance p1, Landroidx/appcompat/app/l;

    .line 34
    .line 35
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-direct {p1, p2, p0, v0}, Landroidx/appcompat/app/l;-><init>(Landroid/content/Context;Landroidx/appcompat/app/n;Landroid/view/Window;)V

    .line 44
    .line 45
    .line 46
    iput-object p1, p0, Landroidx/appcompat/app/n;->e:Landroidx/appcompat/app/l;

    .line 47
    .line 48
    return-void
.end method

.method private static d(Landroid/content/Context;I)I
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    new-instance p1, Landroid/util/TypedValue;

    .line 4
    .line 5
    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    const v0, 0x7f04007c

    .line 13
    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    invoke-virtual {p0, v0, p1, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 17
    .line 18
    .line 19
    iget p1, p1, Landroid/util/TypedValue;->resourceId:I

    .line 20
    .line 21
    :cond_0
    return p1
.end method

.method static e(Landroid/content/Context;I)I
    .locals 2

    .line 1
    ushr-int/lit8 v0, p1, 0x18

    .line 2
    .line 3
    and-int/lit16 v0, v0, 0xff

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    if-lt v0, v1, :cond_0

    .line 7
    .line 8
    return p1

    .line 9
    :cond_0
    new-instance p1, Landroid/util/TypedValue;

    .line 10
    .line 11
    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    const v0, 0x7f04002a

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, v0, p1, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 22
    .line 23
    .line 24
    iget p0, p1, Landroid/util/TypedValue;->resourceId:I

    .line 25
    .line 26
    return p0
.end method


# virtual methods
.method public final addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/n;->b()Landroidx/appcompat/app/v;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/app/v;->c(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final b()Landroidx/appcompat/app/v;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/n;->c:Landroidx/appcompat/app/v;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Landroidx/appcompat/app/v;->a:Landroidx/appcompat/app/a0;

    .line 6
    .line 7
    new-instance v0, Landroidx/appcompat/app/U;

    .line 8
    .line 9
    invoke-direct {v0, p0, p0}, Landroidx/appcompat/app/U;-><init>(Landroid/app/Dialog;Landroidx/appcompat/app/r;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Landroidx/appcompat/app/n;->c:Landroidx/appcompat/app/v;

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/app/n;->c:Landroidx/appcompat/app/v;

    .line 15
    .line 16
    return-object v0
.end method

.method public final c()Landroidx/appcompat/app/AlertController$RecycleListView;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/n;->e:Landroidx/appcompat/app/l;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/appcompat/app/l;->f:Landroidx/appcompat/app/AlertController$RecycleListView;

    .line 4
    .line 5
    return-object v0
.end method

.method public final dismiss()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/appcompat/app/n;->b()Landroidx/appcompat/app/v;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Landroidx/appcompat/app/v;->r()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Landroidx/appcompat/app/n;->d:Landroidx/appcompat/app/V;

    .line 10
    .line 11
    invoke-static {v1, v0, p0, p1}, Landroidx/core/view/q;->b(Landroidx/core/view/p;Landroid/view/View;Landroid/view/Window$Callback;Landroid/view/KeyEvent;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    return p1
.end method

.method final f(Landroid/view/KeyEvent;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public final findViewById(I)Landroid/view/View;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/n;->b()Landroidx/appcompat/app/v;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/v;->e(I)Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public final invalidateOptionsMenu()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/n;->b()Landroidx/appcompat/app/v;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroidx/appcompat/app/v;->n()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/n;->b()Landroidx/appcompat/app/v;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroidx/appcompat/app/v;->m()V

    .line 6
    .line 7
    .line 8
    invoke-super {p0, p1}, Landroidx/activity/m;->onCreate(Landroid/os/Bundle;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/appcompat/app/n;->b()Landroidx/appcompat/app/v;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1}, Landroidx/appcompat/app/v;->q()V

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Landroidx/appcompat/app/n;->e:Landroidx/appcompat/app/l;

    .line 19
    .line 20
    invoke-virtual {p1}, Landroidx/appcompat/app/l;->c()V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/n;->e:Landroidx/appcompat/app/l;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/appcompat/app/l;->v:Landroidx/core/widget/NestedScrollView;

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0, p2}, Landroidx/core/widget/NestedScrollView;->d(Landroid/view/KeyEvent;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    :goto_0
    if-eqz v0, :cond_1

    .line 18
    .line 19
    return v1

    .line 20
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    return p1
.end method

.method public final onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/n;->e:Landroidx/appcompat/app/l;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/appcompat/app/l;->v:Landroidx/core/widget/NestedScrollView;

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0, p2}, Landroidx/core/widget/NestedScrollView;->d(Landroid/view/KeyEvent;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    :goto_0
    if-eqz v0, :cond_1

    .line 18
    .line 19
    return v1

    .line 20
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyUp(ILandroid/view/KeyEvent;)Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    return p1
.end method

.method protected final onStop()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/activity/m;->onStop()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/appcompat/app/n;->b()Landroidx/appcompat/app/v;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Landroidx/appcompat/app/v;->w()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final bridge synthetic onSupportActionModeFinished(Landroidx/appcompat/view/c;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final bridge synthetic onSupportActionModeStarted(Landroidx/appcompat/view/c;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final bridge synthetic onWindowStartingSupportActionMode(Landroidx/appcompat/view/b;)Landroidx/appcompat/view/c;
    .locals 0

    .line 1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final setContentView(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/n;->b()Landroidx/appcompat/app/v;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/v;->A(I)V

    return-void
.end method

.method public final setContentView(Landroid/view/View;)V
    .locals 1

    .line 2
    invoke-virtual {p0}, Landroidx/appcompat/app/n;->b()Landroidx/appcompat/app/v;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/v;->B(Landroid/view/View;)V

    return-void
.end method

.method public final setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 3
    invoke-virtual {p0}, Landroidx/appcompat/app/n;->b()Landroidx/appcompat/app/v;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/app/v;->C(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final setTitle(I)V
    .locals 2

    .line 4
    invoke-super {p0, p1}, Landroid/app/Dialog;->setTitle(I)V

    .line 5
    invoke-virtual {p0}, Landroidx/appcompat/app/n;->b()Landroidx/appcompat/app/v;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/v;->E(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 2
    invoke-virtual {p0}, Landroidx/appcompat/app/n;->b()Landroidx/appcompat/app/v;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/v;->E(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, p0, Landroidx/appcompat/app/n;->e:Landroidx/appcompat/app/l;

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/l;->i(Ljava/lang/CharSequence;)V

    return-void
.end method
