.class final Landroidx/core/view/m0;
.super LK0/i;
.source "SourceFile"

# interfaces
.implements LO0/p;


# annotations
.annotation runtime LK0/e;
    c = "androidx.core.view.ViewKt$allViews$1"
    f = "View.kt"
    l = {
        0x19e,
        0x1a0
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field f:I

.field private synthetic g:Ljava/lang/Object;

.field final synthetic h:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;LI0/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/core/view/m0;->h:Landroid/view/View;

    invoke-direct {p0, p2}, LK0/i;-><init>(LI0/e;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;LI0/e;)LI0/e;
    .locals 2

    .line 1
    new-instance v0, Landroidx/core/view/m0;

    iget-object v1, p0, Landroidx/core/view/m0;->h:Landroid/view/View;

    invoke-direct {v0, v1, p2}, Landroidx/core/view/m0;-><init>(Landroid/view/View;LI0/e;)V

    iput-object p1, v0, Landroidx/core/view/m0;->g:Ljava/lang/Object;

    return-object v0
.end method

.method public final d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, LU0/d;

    .line 2
    .line 3
    check-cast p2, LI0/e;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Landroidx/core/view/m0;->a(Ljava/lang/Object;LI0/e;)LI0/e;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Landroidx/core/view/m0;

    .line 10
    .line 11
    sget-object p2, LG0/j;->a:LG0/j;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroidx/core/view/m0;->h(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public final h(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    sget-object v0, LJ0/a;->d:LJ0/a;

    .line 2
    .line 3
    iget v1, p0, Landroidx/core/view/m0;->f:I

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/core/view/m0;->h:Landroid/view/View;

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    if-eqz v1, :cond_4

    .line 9
    .line 10
    sget-object v4, LG0/j;->a:LG0/j;

    .line 11
    .line 12
    const/4 v5, 0x2

    .line 13
    if-eq v1, v3, :cond_1

    .line 14
    .line 15
    if-ne v1, v5, :cond_0

    .line 16
    .line 17
    invoke-static {p1}, LG0/a;->c(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 22
    .line 23
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 24
    .line 25
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    throw p1

    .line 29
    :cond_1
    iget-object v1, p0, Landroidx/core/view/m0;->g:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v1, LU0/d;

    .line 32
    .line 33
    invoke-static {p1}, LG0/a;->c(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    instance-of p1, v2, Landroid/view/ViewGroup;

    .line 37
    .line 38
    if-eqz p1, :cond_3

    .line 39
    .line 40
    check-cast v2, Landroid/view/ViewGroup;

    .line 41
    .line 42
    const-string p1, "<this>"

    .line 43
    .line 44
    invoke-static {v2, p1}, LP0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    new-instance p1, Landroidx/core/view/k0;

    .line 48
    .line 49
    const/4 v3, 0x0

    .line 50
    invoke-direct {p1, v2, v3}, Landroidx/core/view/k0;-><init>(Landroid/view/ViewGroup;LI0/e;)V

    .line 51
    .line 52
    .line 53
    new-instance v2, LU0/f;

    .line 54
    .line 55
    invoke-direct {v2, p1}, LU0/f;-><init>(LO0/p;)V

    .line 56
    .line 57
    .line 58
    iput-object v3, p0, Landroidx/core/view/m0;->g:Ljava/lang/Object;

    .line 59
    .line 60
    iput v5, p0, Landroidx/core/view/m0;->f:I

    .line 61
    .line 62
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v2}, LU0/f;->iterator()Ljava/util/Iterator;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-virtual {v1, p1, p0}, LU0/d;->b(Ljava/util/Iterator;LI0/e;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    if-ne p1, v0, :cond_2

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_2
    move-object p1, v4

    .line 77
    :goto_0
    if-ne p1, v0, :cond_3

    .line 78
    .line 79
    return-object v0

    .line 80
    :cond_3
    :goto_1
    return-object v4

    .line 81
    :cond_4
    invoke-static {p1}, LG0/a;->c(Ljava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    iget-object p1, p0, Landroidx/core/view/m0;->g:Ljava/lang/Object;

    .line 85
    .line 86
    check-cast p1, LU0/d;

    .line 87
    .line 88
    iput-object p1, p0, Landroidx/core/view/m0;->g:Ljava/lang/Object;

    .line 89
    .line 90
    iput v3, p0, Landroidx/core/view/m0;->f:I

    .line 91
    .line 92
    invoke-virtual {p1, v2, p0}, LU0/d;->a(Landroid/view/View;LI0/e;)V

    .line 93
    .line 94
    .line 95
    return-object v0
.end method
