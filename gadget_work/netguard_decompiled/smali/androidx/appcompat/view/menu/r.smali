.class final Landroidx/appcompat/view/menu/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroidx/appcompat/view/menu/E;


# instance fields
.field private a:Landroidx/appcompat/view/menu/q;

.field private b:Landroidx/appcompat/app/n;

.field c:Landroidx/appcompat/view/menu/m;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/q;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/appcompat/view/menu/r;->a:Landroidx/appcompat/view/menu/q;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/r;->a:Landroidx/appcompat/view/menu/q;

    .line 2
    .line 3
    new-instance v1, Landroidx/appcompat/app/m;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/q;->n()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-direct {v1, v2}, Landroidx/appcompat/app/m;-><init>(Landroid/content/Context;)V

    .line 10
    .line 11
    .line 12
    new-instance v2, Landroidx/appcompat/view/menu/m;

    .line 13
    .line 14
    invoke-virtual {v1}, Landroidx/appcompat/app/m;->b()Landroid/content/Context;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    invoke-direct {v2, v3}, Landroidx/appcompat/view/menu/m;-><init>(Landroid/content/Context;)V

    .line 19
    .line 20
    .line 21
    iput-object v2, p0, Landroidx/appcompat/view/menu/r;->c:Landroidx/appcompat/view/menu/m;

    .line 22
    .line 23
    invoke-virtual {v2, p0}, Landroidx/appcompat/view/menu/m;->setCallback(Landroidx/appcompat/view/menu/E;)V

    .line 24
    .line 25
    .line 26
    iget-object v2, p0, Landroidx/appcompat/view/menu/r;->a:Landroidx/appcompat/view/menu/q;

    .line 27
    .line 28
    iget-object v3, p0, Landroidx/appcompat/view/menu/r;->c:Landroidx/appcompat/view/menu/m;

    .line 29
    .line 30
    invoke-virtual {v2, v3}, Landroidx/appcompat/view/menu/q;->b(Landroidx/appcompat/view/menu/m;)V

    .line 31
    .line 32
    .line 33
    iget-object v2, p0, Landroidx/appcompat/view/menu/r;->c:Landroidx/appcompat/view/menu/m;

    .line 34
    .line 35
    invoke-virtual {v2}, Landroidx/appcompat/view/menu/m;->a()Landroid/widget/ListAdapter;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {v1, v2, p0}, Landroidx/appcompat/app/m;->c(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)V

    .line 40
    .line 41
    .line 42
    iget-object v2, v0, Landroidx/appcompat/view/menu/q;->o:Landroid/view/View;

    .line 43
    .line 44
    if-eqz v2, :cond_0

    .line 45
    .line 46
    invoke-virtual {v1, v2}, Landroidx/appcompat/app/m;->e(Landroid/view/View;)V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    iget-object v2, v0, Landroidx/appcompat/view/menu/q;->n:Landroid/graphics/drawable/Drawable;

    .line 51
    .line 52
    invoke-virtual {v1, v2}, Landroidx/appcompat/app/m;->f(Landroid/graphics/drawable/Drawable;)V

    .line 53
    .line 54
    .line 55
    iget-object v0, v0, Landroidx/appcompat/view/menu/q;->m:Ljava/lang/CharSequence;

    .line 56
    .line 57
    invoke-virtual {v1, v0}, Landroidx/appcompat/app/m;->l(Ljava/lang/CharSequence;)V

    .line 58
    .line 59
    .line 60
    :goto_0
    invoke-virtual {v1, p0}, Landroidx/appcompat/app/m;->i(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1}, Landroidx/appcompat/app/m;->a()Landroidx/appcompat/app/n;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    iput-object v0, p0, Landroidx/appcompat/view/menu/r;->b:Landroidx/appcompat/app/n;

    .line 68
    .line 69
    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 70
    .line 71
    .line 72
    iget-object v0, p0, Landroidx/appcompat/view/menu/r;->b:Landroidx/appcompat/app/n;

    .line 73
    .line 74
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    const/16 v1, 0x3eb

    .line 83
    .line 84
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 85
    .line 86
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 87
    .line 88
    const/high16 v2, 0x20000

    .line 89
    .line 90
    or-int/2addr v1, v2

    .line 91
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 92
    .line 93
    iget-object v0, p0, Landroidx/appcompat/view/menu/r;->b:Landroidx/appcompat/app/n;

    .line 94
    .line 95
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 96
    .line 97
    .line 98
    return-void
.end method

.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 1
    iget-object p1, p0, Landroidx/appcompat/view/menu/r;->a:Landroidx/appcompat/view/menu/q;

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/appcompat/view/menu/r;->c:Landroidx/appcompat/view/menu/m;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/m;->a()Landroid/widget/ListAdapter;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroidx/appcompat/view/menu/l;

    .line 10
    .line 11
    invoke-virtual {v0, p2}, Landroidx/appcompat/view/menu/l;->b(I)Landroidx/appcompat/view/menu/t;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    const/4 v0, 0x0

    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-virtual {p1, p2, v0, v1}, Landroidx/appcompat/view/menu/q;->y(Landroid/view/MenuItem;Landroidx/appcompat/view/menu/F;I)Z

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final onCloseMenu(Landroidx/appcompat/view/menu/q;Z)V
    .locals 0

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    iget-object p2, p0, Landroidx/appcompat/view/menu/r;->a:Landroidx/appcompat/view/menu/q;

    .line 4
    .line 5
    if-ne p1, p2, :cond_1

    .line 6
    .line 7
    :cond_0
    iget-object p1, p0, Landroidx/appcompat/view/menu/r;->b:Landroidx/appcompat/app/n;

    .line 8
    .line 9
    if-eqz p1, :cond_1

    .line 10
    .line 11
    invoke-virtual {p1}, Landroidx/appcompat/app/n;->dismiss()V

    .line 12
    .line 13
    .line 14
    :cond_1
    return-void
.end method

.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .line 1
    iget-object p1, p0, Landroidx/appcompat/view/menu/r;->c:Landroidx/appcompat/view/menu/m;

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/appcompat/view/menu/r;->a:Landroidx/appcompat/view/menu/q;

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/view/menu/m;->onCloseMenu(Landroidx/appcompat/view/menu/q;Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 1
    const/16 v0, 0x52

    .line 2
    .line 3
    if-eq p2, v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x4

    .line 6
    if-ne p2, v0, :cond_2

    .line 7
    .line 8
    :cond_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x1

    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    iget-object p1, p0, Landroidx/appcompat/view/menu/r;->b:Landroidx/appcompat/app/n;

    .line 22
    .line 23
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    if-eqz p1, :cond_2

    .line 28
    .line 29
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    if-eqz p1, :cond_2

    .line 34
    .line 35
    invoke-virtual {p1}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    if-eqz p1, :cond_2

    .line 40
    .line 41
    invoke-virtual {p1, p3, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    return v1

    .line 45
    :cond_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-ne v0, v1, :cond_2

    .line 50
    .line 51
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isCanceled()Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-nez v0, :cond_2

    .line 56
    .line 57
    iget-object v0, p0, Landroidx/appcompat/view/menu/r;->b:Landroidx/appcompat/app/n;

    .line 58
    .line 59
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    if-eqz v0, :cond_2

    .line 64
    .line 65
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    if-eqz v0, :cond_2

    .line 70
    .line 71
    invoke-virtual {v0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    if-eqz v0, :cond_2

    .line 76
    .line 77
    invoke-virtual {v0, p3}, Landroid/view/KeyEvent$DispatcherState;->isTracking(Landroid/view/KeyEvent;)Z

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    if-eqz v0, :cond_2

    .line 82
    .line 83
    iget-object p2, p0, Landroidx/appcompat/view/menu/r;->a:Landroidx/appcompat/view/menu/q;

    .line 84
    .line 85
    invoke-virtual {p2, v1}, Landroidx/appcompat/view/menu/q;->e(Z)V

    .line 86
    .line 87
    .line 88
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 89
    .line 90
    .line 91
    return v1

    .line 92
    :cond_2
    iget-object p1, p0, Landroidx/appcompat/view/menu/r;->a:Landroidx/appcompat/view/menu/q;

    .line 93
    .line 94
    const/4 v0, 0x0

    .line 95
    invoke-virtual {p1, p2, p3, v0}, Landroidx/appcompat/view/menu/q;->performShortcut(ILandroid/view/KeyEvent;I)Z

    .line 96
    .line 97
    .line 98
    move-result p1

    .line 99
    return p1
.end method

.method public final onOpenSubMenu(Landroidx/appcompat/view/menu/q;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
