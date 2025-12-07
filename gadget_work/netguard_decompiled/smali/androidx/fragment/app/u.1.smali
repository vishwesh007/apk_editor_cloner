.class public Landroidx/fragment/app/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ComponentCallbacks;
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Landroidx/lifecycle/s;
.implements Landroidx/lifecycle/Z;
.implements Landroidx/lifecycle/i;
.implements Lv/f;


# static fields
.field static final P:Ljava/lang/Object;


# instance fields
.field A:Z

.field B:Z

.field private C:Z

.field D:Landroid/view/ViewGroup;

.field E:Z

.field F:Z

.field G:Landroidx/fragment/app/r;

.field H:Z

.field I:Z

.field J:Landroidx/lifecycle/l;

.field K:Landroidx/lifecycle/u;

.field L:Landroidx/fragment/app/f0;

.field M:Landroidx/lifecycle/A;

.field N:Lv/e;

.field private final O:Ljava/util/ArrayList;

.field a:I

.field b:Landroid/os/Bundle;

.field c:Landroid/util/SparseArray;

.field d:Landroid/os/Bundle;

.field e:Ljava/lang/String;

.field f:Landroid/os/Bundle;

.field g:Landroidx/fragment/app/u;

.field h:Ljava/lang/String;

.field i:I

.field private j:Ljava/lang/Boolean;

.field k:Z

.field l:Z

.field m:Z

.field n:Z

.field o:Z

.field p:Z

.field q:I

.field r:Landroidx/fragment/app/T;

.field s:Landroidx/fragment/app/E;

.field t:Landroidx/fragment/app/T;

.field u:Landroidx/fragment/app/u;

.field v:I

.field w:I

.field x:Ljava/lang/String;

.field y:Z

.field z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/fragment/app/u;->P:Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Landroidx/fragment/app/u;->a:I

    .line 6
    .line 7
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Landroidx/fragment/app/u;->e:Ljava/lang/String;

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Landroidx/fragment/app/u;->h:Ljava/lang/String;

    .line 19
    .line 20
    iput-object v0, p0, Landroidx/fragment/app/u;->j:Ljava/lang/Boolean;

    .line 21
    .line 22
    new-instance v0, Landroidx/fragment/app/U;

    .line 23
    .line 24
    invoke-direct {v0}, Landroidx/fragment/app/U;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Landroidx/fragment/app/u;->t:Landroidx/fragment/app/T;

    .line 28
    .line 29
    const/4 v0, 0x1

    .line 30
    iput-boolean v0, p0, Landroidx/fragment/app/u;->B:Z

    .line 31
    .line 32
    iput-boolean v0, p0, Landroidx/fragment/app/u;->F:Z

    .line 33
    .line 34
    sget-object v0, Landroidx/lifecycle/l;->h:Landroidx/lifecycle/l;

    .line 35
    .line 36
    iput-object v0, p0, Landroidx/fragment/app/u;->J:Landroidx/lifecycle/l;

    .line 37
    .line 38
    new-instance v0, Landroidx/lifecycle/A;

    .line 39
    .line 40
    invoke-direct {v0}, Landroidx/lifecycle/A;-><init>()V

    .line 41
    .line 42
    .line 43
    iput-object v0, p0, Landroidx/fragment/app/u;->M:Landroidx/lifecycle/A;

    .line 44
    .line 45
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 46
    .line 47
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 48
    .line 49
    .line 50
    new-instance v0, Ljava/util/ArrayList;

    .line 51
    .line 52
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 53
    .line 54
    .line 55
    iput-object v0, p0, Landroidx/fragment/app/u;->O:Ljava/util/ArrayList;

    .line 56
    .line 57
    new-instance v0, Landroidx/lifecycle/u;

    .line 58
    .line 59
    invoke-direct {v0, p0}, Landroidx/lifecycle/u;-><init>(Landroidx/lifecycle/s;)V

    .line 60
    .line 61
    .line 62
    iput-object v0, p0, Landroidx/fragment/app/u;->K:Landroidx/lifecycle/u;

    .line 63
    .line 64
    new-instance v0, Lv/e;

    .line 65
    .line 66
    invoke-direct {v0, p0}, Lv/e;-><init>(Lv/f;)V

    .line 67
    .line 68
    .line 69
    iput-object v0, p0, Landroidx/fragment/app/u;->N:Lv/e;

    .line 70
    .line 71
    return-void
.end method

.method private d()Landroidx/fragment/app/r;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/u;->G:Landroidx/fragment/app/r;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroidx/fragment/app/r;

    .line 6
    .line 7
    invoke-direct {v0}, Landroidx/fragment/app/r;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Landroidx/fragment/app/u;->G:Landroidx/fragment/app/r;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/u;->G:Landroidx/fragment/app/r;

    .line 13
    .line 14
    return-object v0
.end method

.method private i()I
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/u;->J:Landroidx/lifecycle/l;

    .line 2
    .line 3
    sget-object v1, Landroidx/lifecycle/l;->e:Landroidx/lifecycle/l;

    .line 4
    .line 5
    if-eq v0, v1, :cond_1

    .line 6
    .line 7
    iget-object v1, p0, Landroidx/fragment/app/u;->u:Landroidx/fragment/app/u;

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iget-object v1, p0, Landroidx/fragment/app/u;->u:Landroidx/fragment/app/u;

    .line 17
    .line 18
    invoke-direct {v1}, Landroidx/fragment/app/u;->i()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    return v0

    .line 27
    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    return v0
.end method


# virtual methods
.method public A()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/fragment/app/u;->C:Z

    .line 3
    .line 4
    return-void
.end method

.method final B()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/u;->t:Landroidx/fragment/app/T;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/fragment/app/T;->m0()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x3

    .line 7
    iput v0, p0, Landroidx/fragment/app/u;->a:I

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    iput-boolean v1, p0, Landroidx/fragment/app/u;->C:Z

    .line 11
    .line 12
    invoke-static {v0}, Landroidx/fragment/app/T;->f0(I)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    const-string v1, "moveto RESTORE_VIEW_STATE: "

    .line 21
    .line 22
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const-string v1, "FragmentManager"

    .line 33
    .line 34
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    :cond_0
    const/4 v0, 0x0

    .line 38
    iput-object v0, p0, Landroidx/fragment/app/u;->b:Landroid/os/Bundle;

    .line 39
    .line 40
    iget-object v0, p0, Landroidx/fragment/app/u;->t:Landroidx/fragment/app/T;

    .line 41
    .line 42
    invoke-virtual {v0}, Landroidx/fragment/app/T;->k()V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method final C()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/u;->O:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    check-cast v2, Landroidx/fragment/app/t;

    .line 18
    .line 19
    invoke-virtual {v2}, Landroidx/fragment/app/t;->a()V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Landroidx/fragment/app/u;->t:Landroidx/fragment/app/T;

    .line 27
    .line 28
    iget-object v1, p0, Landroidx/fragment/app/u;->s:Landroidx/fragment/app/E;

    .line 29
    .line 30
    invoke-virtual {p0}, Landroidx/fragment/app/u;->b()Landroidx/core/view/accessibility/n;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-virtual {v0, v1, v2, p0}, Landroidx/fragment/app/T;->d(Landroidx/fragment/app/E;Landroidx/core/view/accessibility/n;Landroidx/fragment/app/u;)V

    .line 35
    .line 36
    .line 37
    const/4 v0, 0x0

    .line 38
    iput v0, p0, Landroidx/fragment/app/u;->a:I

    .line 39
    .line 40
    iput-boolean v0, p0, Landroidx/fragment/app/u;->C:Z

    .line 41
    .line 42
    iget-object v0, p0, Landroidx/fragment/app/u;->s:Landroidx/fragment/app/E;

    .line 43
    .line 44
    invoke-virtual {v0}, Landroidx/fragment/app/E;->u()Landroid/content/Context;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {p0, v0}, Landroidx/fragment/app/u;->q(Landroid/content/Context;)V

    .line 49
    .line 50
    .line 51
    iget-boolean v0, p0, Landroidx/fragment/app/u;->C:Z

    .line 52
    .line 53
    if-eqz v0, :cond_1

    .line 54
    .line 55
    iget-object v0, p0, Landroidx/fragment/app/u;->r:Landroidx/fragment/app/T;

    .line 56
    .line 57
    invoke-virtual {v0, p0}, Landroidx/fragment/app/T;->u(Landroidx/fragment/app/u;)V

    .line 58
    .line 59
    .line 60
    iget-object v0, p0, Landroidx/fragment/app/u;->t:Landroidx/fragment/app/T;

    .line 61
    .line 62
    invoke-virtual {v0}, Landroidx/fragment/app/T;->l()V

    .line 63
    .line 64
    .line 65
    return-void

    .line 66
    :cond_1
    new-instance v0, Landroidx/fragment/app/l0;

    .line 67
    .line 68
    new-instance v1, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    const-string v2, "Fragment "

    .line 71
    .line 72
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    const-string v2, " did not call through to super.onAttach()"

    .line 79
    .line 80
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    invoke-direct {v0, v1}, Landroidx/fragment/app/l0;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    throw v0
.end method

.method final D(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Landroidx/fragment/app/u;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/fragment/app/u;->t:Landroidx/fragment/app/T;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Landroidx/fragment/app/T;->m(Landroid/content/res/Configuration;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method final E()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/fragment/app/u;->y:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/fragment/app/u;->t:Landroidx/fragment/app/T;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/fragment/app/T;->n()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    return v0
.end method

.method final F(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/u;->t:Landroidx/fragment/app/T;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/fragment/app/T;->m0()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    iput v0, p0, Landroidx/fragment/app/u;->a:I

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    iput-boolean v1, p0, Landroidx/fragment/app/u;->C:Z

    .line 11
    .line 12
    iget-object v1, p0, Landroidx/fragment/app/u;->K:Landroidx/lifecycle/u;

    .line 13
    .line 14
    new-instance v2, Landroidx/fragment/app/Fragment$5;

    .line 15
    .line 16
    invoke-direct {v2, p0}, Landroidx/fragment/app/Fragment$5;-><init>(Landroidx/fragment/app/u;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, v2}, Landroidx/lifecycle/u;->a(Landroidx/lifecycle/r;)V

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Landroidx/fragment/app/u;->N:Lv/e;

    .line 23
    .line 24
    invoke-virtual {v1, p1}, Lv/e;->c(Landroid/os/Bundle;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, p1}, Landroidx/fragment/app/u;->r(Landroid/os/Bundle;)V

    .line 28
    .line 29
    .line 30
    iput-boolean v0, p0, Landroidx/fragment/app/u;->I:Z

    .line 31
    .line 32
    iget-boolean p1, p0, Landroidx/fragment/app/u;->C:Z

    .line 33
    .line 34
    if-eqz p1, :cond_0

    .line 35
    .line 36
    iget-object p1, p0, Landroidx/fragment/app/u;->K:Landroidx/lifecycle/u;

    .line 37
    .line 38
    sget-object v0, Landroidx/lifecycle/k;->ON_CREATE:Landroidx/lifecycle/k;

    .line 39
    .line 40
    invoke-virtual {p1, v0}, Landroidx/lifecycle/u;->f(Landroidx/lifecycle/k;)V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :cond_0
    new-instance p1, Landroidx/fragment/app/l0;

    .line 45
    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    const-string v1, "Fragment "

    .line 49
    .line 50
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v1, " did not call through to super.onCreate()"

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-direct {p1, v0}, Landroidx/fragment/app/l0;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    throw p1
.end method

.method G(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroidx/fragment/app/u;->t:Landroidx/fragment/app/T;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroidx/fragment/app/T;->m0()V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Landroidx/fragment/app/u;->p:Z

    .line 8
    .line 9
    new-instance p1, Landroidx/fragment/app/f0;

    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/u;->getViewModelStore()Landroidx/lifecycle/Y;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    invoke-direct {p1, p2}, Landroidx/fragment/app/f0;-><init>(Landroidx/lifecycle/Y;)V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Landroidx/fragment/app/u;->L:Landroidx/fragment/app/f0;

    .line 19
    .line 20
    invoke-virtual {p1}, Landroidx/fragment/app/f0;->b()Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-nez p1, :cond_0

    .line 25
    .line 26
    const/4 p1, 0x0

    .line 27
    iput-object p1, p0, Landroidx/fragment/app/u;->L:Landroidx/fragment/app/f0;

    .line 28
    .line 29
    return-void

    .line 30
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 31
    .line 32
    const-string p2, "Called getViewLifecycleOwner() but onCreateView() returned null"

    .line 33
    .line 34
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw p1
.end method

.method final H()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/u;->t:Landroidx/fragment/app/T;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/fragment/app/T;->q()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/fragment/app/u;->K:Landroidx/lifecycle/u;

    .line 7
    .line 8
    sget-object v1, Landroidx/lifecycle/k;->ON_DESTROY:Landroidx/lifecycle/k;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroidx/lifecycle/u;->f(Landroidx/lifecycle/k;)V

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    iput v0, p0, Landroidx/fragment/app/u;->a:I

    .line 15
    .line 16
    iput-boolean v0, p0, Landroidx/fragment/app/u;->C:Z

    .line 17
    .line 18
    iput-boolean v0, p0, Landroidx/fragment/app/u;->I:Z

    .line 19
    .line 20
    invoke-virtual {p0}, Landroidx/fragment/app/u;->s()V

    .line 21
    .line 22
    .line 23
    iget-boolean v0, p0, Landroidx/fragment/app/u;->C:Z

    .line 24
    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    return-void

    .line 28
    :cond_0
    new-instance v0, Landroidx/fragment/app/l0;

    .line 29
    .line 30
    new-instance v1, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    const-string v2, "Fragment "

    .line 33
    .line 34
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v2, " did not call through to super.onDestroy()"

    .line 41
    .line 42
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-direct {v0, v1}, Landroidx/fragment/app/l0;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw v0
.end method

.method final I()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/u;->t:Landroidx/fragment/app/T;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/fragment/app/T;->r()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    iput v0, p0, Landroidx/fragment/app/u;->a:I

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Landroidx/fragment/app/u;->C:Z

    .line 11
    .line 12
    invoke-virtual {p0}, Landroidx/fragment/app/u;->t()V

    .line 13
    .line 14
    .line 15
    iget-boolean v1, p0, Landroidx/fragment/app/u;->C:Z

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    invoke-static {p0}, Landroidx/loader/app/a;->b(Landroidx/lifecycle/s;)Landroidx/loader/app/a;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v1}, Landroidx/loader/app/a;->c()V

    .line 24
    .line 25
    .line 26
    iput-boolean v0, p0, Landroidx/fragment/app/u;->p:Z

    .line 27
    .line 28
    return-void

    .line 29
    :cond_0
    new-instance v0, Landroidx/fragment/app/l0;

    .line 30
    .line 31
    new-instance v1, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    const-string v2, "Fragment "

    .line 34
    .line 35
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v2, " did not call through to super.onDestroyView()"

    .line 42
    .line 43
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-direct {v0, v1}, Landroidx/fragment/app/l0;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw v0
.end method

.method final J()V
    .locals 3

    .line 1
    const/4 v0, -0x1

    .line 2
    iput v0, p0, Landroidx/fragment/app/u;->a:I

    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Landroidx/fragment/app/u;->C:Z

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/u;->u()V

    .line 8
    .line 9
    .line 10
    iget-boolean v0, p0, Landroidx/fragment/app/u;->C:Z

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iget-object v0, p0, Landroidx/fragment/app/u;->t:Landroidx/fragment/app/T;

    .line 15
    .line 16
    invoke-virtual {v0}, Landroidx/fragment/app/T;->e0()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    iget-object v0, p0, Landroidx/fragment/app/u;->t:Landroidx/fragment/app/T;

    .line 23
    .line 24
    invoke-virtual {v0}, Landroidx/fragment/app/T;->q()V

    .line 25
    .line 26
    .line 27
    new-instance v0, Landroidx/fragment/app/U;

    .line 28
    .line 29
    invoke-direct {v0}, Landroidx/fragment/app/U;-><init>()V

    .line 30
    .line 31
    .line 32
    iput-object v0, p0, Landroidx/fragment/app/u;->t:Landroidx/fragment/app/T;

    .line 33
    .line 34
    :cond_0
    return-void

    .line 35
    :cond_1
    new-instance v0, Landroidx/fragment/app/l0;

    .line 36
    .line 37
    new-instance v1, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    const-string v2, "Fragment "

    .line 40
    .line 41
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string v2, " did not call through to super.onDetach()"

    .line 48
    .line 49
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-direct {v0, v1}, Landroidx/fragment/app/l0;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    throw v0
.end method

.method final K()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/u;->onLowMemory()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/fragment/app/u;->t:Landroidx/fragment/app/T;

    .line 5
    .line 6
    invoke-virtual {v0}, Landroidx/fragment/app/T;->s()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method final L(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/u;->t:Landroidx/fragment/app/T;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/fragment/app/T;->t(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method final M()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/fragment/app/u;->y:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/fragment/app/u;->t:Landroidx/fragment/app/T;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/fragment/app/T;->v()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    return v0
.end method

.method final N()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/fragment/app/u;->y:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/fragment/app/u;->t:Landroidx/fragment/app/T;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/fragment/app/T;->w()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method final O()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/u;->t:Landroidx/fragment/app/T;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/fragment/app/T;->y()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/fragment/app/u;->K:Landroidx/lifecycle/u;

    .line 7
    .line 8
    sget-object v1, Landroidx/lifecycle/k;->ON_PAUSE:Landroidx/lifecycle/k;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroidx/lifecycle/u;->f(Landroidx/lifecycle/k;)V

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x6

    .line 14
    iput v0, p0, Landroidx/fragment/app/u;->a:I

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    iput-boolean v0, p0, Landroidx/fragment/app/u;->C:Z

    .line 18
    .line 19
    return-void
.end method

.method final P(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/u;->t:Landroidx/fragment/app/T;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/fragment/app/T;->z(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method final Q()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroidx/fragment/app/u;->y:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Landroidx/fragment/app/u;->t:Landroidx/fragment/app/T;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/fragment/app/T;->A()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    or-int/2addr v1, v0

    .line 13
    :cond_0
    return v1
.end method

.method final R()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/u;->r:Landroidx/fragment/app/T;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Landroidx/fragment/app/T;->i0(Landroidx/fragment/app/u;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    iget-object v1, p0, Landroidx/fragment/app/u;->j:Ljava/lang/Boolean;

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eq v1, v0, :cond_1

    .line 19
    .line 20
    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Landroidx/fragment/app/u;->j:Ljava/lang/Boolean;

    .line 25
    .line 26
    iget-object v0, p0, Landroidx/fragment/app/u;->t:Landroidx/fragment/app/T;

    .line 27
    .line 28
    invoke-virtual {v0}, Landroidx/fragment/app/T;->B()V

    .line 29
    .line 30
    .line 31
    :cond_1
    return-void
.end method

.method final S()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/u;->t:Landroidx/fragment/app/T;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/fragment/app/T;->m0()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/fragment/app/u;->t:Landroidx/fragment/app/T;

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-virtual {v0, v1}, Landroidx/fragment/app/T;->J(Z)Z

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x7

    .line 13
    iput v0, p0, Landroidx/fragment/app/u;->a:I

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Landroidx/fragment/app/u;->C:Z

    .line 17
    .line 18
    invoke-virtual {p0}, Landroidx/fragment/app/u;->x()V

    .line 19
    .line 20
    .line 21
    iget-boolean v0, p0, Landroidx/fragment/app/u;->C:Z

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    iget-object v0, p0, Landroidx/fragment/app/u;->K:Landroidx/lifecycle/u;

    .line 26
    .line 27
    sget-object v1, Landroidx/lifecycle/k;->ON_RESUME:Landroidx/lifecycle/k;

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroidx/lifecycle/u;->f(Landroidx/lifecycle/k;)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Landroidx/fragment/app/u;->t:Landroidx/fragment/app/T;

    .line 33
    .line 34
    invoke-virtual {v0}, Landroidx/fragment/app/T;->C()V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_0
    new-instance v0, Landroidx/fragment/app/l0;

    .line 39
    .line 40
    new-instance v1, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    const-string v2, "Fragment "

    .line 43
    .line 44
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string v2, " did not call through to super.onResume()"

    .line 51
    .line 52
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-direct {v0, v1}, Landroidx/fragment/app/l0;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    throw v0
.end method

.method final T()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/u;->t:Landroidx/fragment/app/T;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/fragment/app/T;->m0()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/fragment/app/u;->t:Landroidx/fragment/app/T;

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-virtual {v0, v1}, Landroidx/fragment/app/T;->J(Z)Z

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x5

    .line 13
    iput v0, p0, Landroidx/fragment/app/u;->a:I

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Landroidx/fragment/app/u;->C:Z

    .line 17
    .line 18
    invoke-virtual {p0}, Landroidx/fragment/app/u;->z()V

    .line 19
    .line 20
    .line 21
    iget-boolean v0, p0, Landroidx/fragment/app/u;->C:Z

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    iget-object v0, p0, Landroidx/fragment/app/u;->K:Landroidx/lifecycle/u;

    .line 26
    .line 27
    sget-object v1, Landroidx/lifecycle/k;->ON_START:Landroidx/lifecycle/k;

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroidx/lifecycle/u;->f(Landroidx/lifecycle/k;)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Landroidx/fragment/app/u;->t:Landroidx/fragment/app/T;

    .line 33
    .line 34
    invoke-virtual {v0}, Landroidx/fragment/app/T;->D()V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_0
    new-instance v0, Landroidx/fragment/app/l0;

    .line 39
    .line 40
    new-instance v1, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    const-string v2, "Fragment "

    .line 43
    .line 44
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string v2, " did not call through to super.onStart()"

    .line 51
    .line 52
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-direct {v0, v1}, Landroidx/fragment/app/l0;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    throw v0
.end method

.method final U()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/u;->t:Landroidx/fragment/app/T;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/fragment/app/T;->F()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/fragment/app/u;->K:Landroidx/lifecycle/u;

    .line 7
    .line 8
    sget-object v1, Landroidx/lifecycle/k;->ON_STOP:Landroidx/lifecycle/k;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroidx/lifecycle/u;->f(Landroidx/lifecycle/k;)V

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x4

    .line 14
    iput v0, p0, Landroidx/fragment/app/u;->a:I

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    iput-boolean v0, p0, Landroidx/fragment/app/u;->C:Z

    .line 18
    .line 19
    invoke-virtual {p0}, Landroidx/fragment/app/u;->A()V

    .line 20
    .line 21
    .line 22
    iget-boolean v0, p0, Landroidx/fragment/app/u;->C:Z

    .line 23
    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    new-instance v0, Landroidx/fragment/app/l0;

    .line 28
    .line 29
    new-instance v1, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    const-string v2, "Fragment "

    .line 32
    .line 33
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string v2, " did not call through to super.onStop()"

    .line 40
    .line 41
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-direct {v0, v1}, Landroidx/fragment/app/l0;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    throw v0
.end method

.method public final V()Landroid/content/Context;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/u;->g()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 9
    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v2, "Fragment "

    .line 13
    .line 14
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v2, " not attached to a context."

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    throw v0
.end method

.method public final W()Landroid/view/View;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "Fragment "

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v2, " did not return a View from onCreateView() or this was called before onCreateView()."

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw v0
.end method

.method final X()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0}, Landroidx/fragment/app/u;->d()Landroidx/fragment/app/r;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    iput-object v0, v1, Landroidx/fragment/app/r;->a:Landroid/view/View;

    .line 7
    .line 8
    return-void
.end method

.method final Y(IIII)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/u;->G:Landroidx/fragment/app/r;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    if-nez p2, :cond_0

    .line 8
    .line 9
    if-nez p3, :cond_0

    .line 10
    .line 11
    if-nez p4, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    invoke-direct {p0}, Landroidx/fragment/app/u;->d()Landroidx/fragment/app/r;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iput p1, v0, Landroidx/fragment/app/r;->c:I

    .line 19
    .line 20
    invoke-direct {p0}, Landroidx/fragment/app/u;->d()Landroidx/fragment/app/r;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iput p2, p1, Landroidx/fragment/app/r;->d:I

    .line 25
    .line 26
    invoke-direct {p0}, Landroidx/fragment/app/u;->d()Landroidx/fragment/app/r;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    iput p3, p1, Landroidx/fragment/app/r;->e:I

    .line 31
    .line 32
    invoke-direct {p0}, Landroidx/fragment/app/u;->d()Landroidx/fragment/app/r;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    iput p4, p1, Landroidx/fragment/app/r;->f:I

    .line 37
    .line 38
    return-void
.end method

.method final Z(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/u;->d()Landroidx/fragment/app/r;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object p1, v0, Landroidx/fragment/app/r;->k:Landroid/view/View;

    .line 6
    .line 7
    return-void
.end method

.method final a(Z)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroidx/fragment/app/u;->G:Landroidx/fragment/app/r;

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    :goto_0
    return-void
.end method

.method final a0(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/u;->G:Landroidx/fragment/app/r;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-direct {p0}, Landroidx/fragment/app/u;->d()Landroidx/fragment/app/r;

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Landroidx/fragment/app/u;->G:Landroidx/fragment/app/r;

    .line 12
    .line 13
    iput p1, v0, Landroidx/fragment/app/r;->g:I

    .line 14
    .line 15
    return-void
.end method

.method b()Landroidx/core/view/accessibility/n;
    .locals 1

    .line 1
    new-instance v0, Landroidx/fragment/app/q;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroidx/fragment/app/q;-><init>(Landroidx/fragment/app/u;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method final b0(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/u;->G:Landroidx/fragment/app/r;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-direct {p0}, Landroidx/fragment/app/u;->d()Landroidx/fragment/app/r;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-boolean p1, v0, Landroidx/fragment/app/r;->b:Z

    .line 11
    .line 12
    return-void
.end method

.method public c(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mFragmentId=#"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2
    iget v0, p0, Landroidx/fragment/app/u;->v:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mContainerId=#"

    .line 3
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4
    iget v0, p0, Landroidx/fragment/app/u;->w:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mTag="

    .line 5
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/fragment/app/u;->x:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mState="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroidx/fragment/app/u;->a:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mWho="

    .line 7
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/fragment/app/u;->e:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mBackStackNesting="

    .line 8
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroidx/fragment/app/u;->q:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 9
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mAdded="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/fragment/app/u;->k:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mRemoving="

    .line 10
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/fragment/app/u;->l:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mFromLayout="

    .line 11
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/fragment/app/u;->m:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mInLayout="

    .line 12
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/fragment/app/u;->n:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 13
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mHidden="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/fragment/app/u;->y:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mDetached="

    .line 14
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/fragment/app/u;->z:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mMenuVisible="

    .line 15
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/fragment/app/u;->B:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mHasMenu="

    .line 16
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 17
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mRetainInstance="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Landroidx/fragment/app/u;->A:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, " mUserVisibleHint="

    .line 18
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Landroidx/fragment/app/u;->F:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 19
    iget-object v1, p0, Landroidx/fragment/app/u;->r:Landroidx/fragment/app/T;

    if-eqz v1, :cond_0

    .line 20
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mFragmentManager="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 21
    iget-object v1, p0, Landroidx/fragment/app/u;->r:Landroidx/fragment/app/T;

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 22
    :cond_0
    iget-object v1, p0, Landroidx/fragment/app/u;->s:Landroidx/fragment/app/E;

    if-eqz v1, :cond_1

    .line 23
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mHost="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 24
    iget-object v1, p0, Landroidx/fragment/app/u;->s:Landroidx/fragment/app/E;

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 25
    :cond_1
    iget-object v1, p0, Landroidx/fragment/app/u;->u:Landroidx/fragment/app/u;

    if-eqz v1, :cond_2

    .line 26
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mParentFragment="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 27
    iget-object v1, p0, Landroidx/fragment/app/u;->u:Landroidx/fragment/app/u;

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 28
    :cond_2
    iget-object v1, p0, Landroidx/fragment/app/u;->f:Landroid/os/Bundle;

    if-eqz v1, :cond_3

    .line 29
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mArguments="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/fragment/app/u;->f:Landroid/os/Bundle;

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 30
    :cond_3
    iget-object v1, p0, Landroidx/fragment/app/u;->b:Landroid/os/Bundle;

    if-eqz v1, :cond_4

    .line 31
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mSavedFragmentState="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 32
    iget-object v1, p0, Landroidx/fragment/app/u;->b:Landroid/os/Bundle;

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 33
    :cond_4
    iget-object v1, p0, Landroidx/fragment/app/u;->c:Landroid/util/SparseArray;

    if-eqz v1, :cond_5

    .line 34
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mSavedViewState="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 35
    iget-object v1, p0, Landroidx/fragment/app/u;->c:Landroid/util/SparseArray;

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 36
    :cond_5
    iget-object v1, p0, Landroidx/fragment/app/u;->d:Landroid/os/Bundle;

    if-eqz v1, :cond_6

    .line 37
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mSavedViewRegistryState="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 38
    iget-object v1, p0, Landroidx/fragment/app/u;->d:Landroid/os/Bundle;

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 39
    :cond_6
    iget-object v1, p0, Landroidx/fragment/app/u;->g:Landroidx/fragment/app/u;

    const/4 v2, 0x0

    if-eqz v1, :cond_7

    goto :goto_0

    .line 40
    :cond_7
    iget-object v1, p0, Landroidx/fragment/app/u;->r:Landroidx/fragment/app/T;

    if-eqz v1, :cond_8

    iget-object v3, p0, Landroidx/fragment/app/u;->h:Ljava/lang/String;

    if-eqz v3, :cond_8

    .line 41
    invoke-virtual {v1, v3}, Landroidx/fragment/app/T;->N(Ljava/lang/String;)Landroidx/fragment/app/u;

    move-result-object v1

    goto :goto_0

    :cond_8
    move-object v1, v2

    :goto_0
    if-eqz v1, :cond_9

    .line 42
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "mTarget="

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v1, " mTargetRequestCode="

    .line 43
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 44
    iget v1, p0, Landroidx/fragment/app/u;->i:I

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 45
    :cond_9
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mPopDirection="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 46
    iget-object v1, p0, Landroidx/fragment/app/u;->G:Landroidx/fragment/app/r;

    if-nez v1, :cond_a

    const/4 v1, 0x0

    goto :goto_1

    .line 47
    :cond_a
    iget-boolean v1, v1, Landroidx/fragment/app/r;->b:Z

    .line 48
    :goto_1
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 49
    iget-object v1, p0, Landroidx/fragment/app/u;->G:Landroidx/fragment/app/r;

    if-nez v1, :cond_b

    const/4 v1, 0x0

    goto :goto_2

    .line 50
    :cond_b
    iget v1, v1, Landroidx/fragment/app/r;->c:I

    :goto_2
    if-eqz v1, :cond_d

    .line 51
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "getEnterAnim="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 52
    iget-object v1, p0, Landroidx/fragment/app/u;->G:Landroidx/fragment/app/r;

    if-nez v1, :cond_c

    const/4 v1, 0x0

    goto :goto_3

    .line 53
    :cond_c
    iget v1, v1, Landroidx/fragment/app/r;->c:I

    .line 54
    :goto_3
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 55
    :cond_d
    iget-object v1, p0, Landroidx/fragment/app/u;->G:Landroidx/fragment/app/r;

    if-nez v1, :cond_e

    const/4 v1, 0x0

    goto :goto_4

    .line 56
    :cond_e
    iget v1, v1, Landroidx/fragment/app/r;->d:I

    :goto_4
    if-eqz v1, :cond_10

    .line 57
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "getExitAnim="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 58
    iget-object v1, p0, Landroidx/fragment/app/u;->G:Landroidx/fragment/app/r;

    if-nez v1, :cond_f

    const/4 v1, 0x0

    goto :goto_5

    .line 59
    :cond_f
    iget v1, v1, Landroidx/fragment/app/r;->d:I

    .line 60
    :goto_5
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 61
    :cond_10
    iget-object v1, p0, Landroidx/fragment/app/u;->G:Landroidx/fragment/app/r;

    if-nez v1, :cond_11

    const/4 v1, 0x0

    goto :goto_6

    .line 62
    :cond_11
    iget v1, v1, Landroidx/fragment/app/r;->e:I

    :goto_6
    if-eqz v1, :cond_13

    .line 63
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "getPopEnterAnim="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 64
    iget-object v1, p0, Landroidx/fragment/app/u;->G:Landroidx/fragment/app/r;

    if-nez v1, :cond_12

    const/4 v1, 0x0

    goto :goto_7

    .line 65
    :cond_12
    iget v1, v1, Landroidx/fragment/app/r;->e:I

    .line 66
    :goto_7
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 67
    :cond_13
    iget-object v1, p0, Landroidx/fragment/app/u;->G:Landroidx/fragment/app/r;

    if-nez v1, :cond_14

    const/4 v1, 0x0

    goto :goto_8

    .line 68
    :cond_14
    iget v1, v1, Landroidx/fragment/app/r;->f:I

    :goto_8
    if-eqz v1, :cond_16

    .line 69
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "getPopExitAnim="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 70
    iget-object v1, p0, Landroidx/fragment/app/u;->G:Landroidx/fragment/app/r;

    if-nez v1, :cond_15

    goto :goto_9

    .line 71
    :cond_15
    iget v0, v1, Landroidx/fragment/app/r;->f:I

    .line 72
    :goto_9
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 73
    :cond_16
    iget-object v0, p0, Landroidx/fragment/app/u;->D:Landroid/view/ViewGroup;

    if-eqz v0, :cond_17

    .line 74
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mContainer="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/fragment/app/u;->D:Landroid/view/ViewGroup;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 75
    :cond_17
    iget-object v0, p0, Landroidx/fragment/app/u;->G:Landroidx/fragment/app/r;

    if-nez v0, :cond_18

    move-object v0, v2

    goto :goto_a

    .line 76
    :cond_18
    iget-object v0, v0, Landroidx/fragment/app/r;->a:Landroid/view/View;

    :goto_a
    if-eqz v0, :cond_1a

    .line 77
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mAnimatingAway="

    .line 78
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Landroidx/fragment/app/u;->G:Landroidx/fragment/app/r;

    if-nez v0, :cond_19

    goto :goto_b

    .line 80
    :cond_19
    iget-object v2, v0, Landroidx/fragment/app/r;->a:Landroid/view/View;

    .line 81
    :goto_b
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 82
    :cond_1a
    invoke-virtual {p0}, Landroidx/fragment/app/u;->g()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 83
    invoke-static {p0}, Landroidx/loader/app/a;->b(Landroidx/lifecycle/s;)Landroidx/loader/app/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/loader/app/a;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 84
    :cond_1b
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Child "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/fragment/app/u;->t:Landroidx/fragment/app/T;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Landroidx/fragment/app/u;->t:Landroidx/fragment/app/T;

    const-string v1, "  "

    .line 87
    invoke-static {p1, v1}, Landroidx/fragment/app/h0;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 88
    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/fragment/app/T;->G(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method final c0(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/u;->d()Landroidx/fragment/app/r;

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Landroidx/fragment/app/u;->G:Landroidx/fragment/app/r;

    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final e()Landroidx/fragment/app/y;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/u;->s:Landroidx/fragment/app/E;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v0}, Landroidx/fragment/app/E;->t()Landroid/app/Activity;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroidx/fragment/app/y;

    .line 12
    .line 13
    :goto_0
    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public final f()Landroidx/fragment/app/T;
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/u;->s:Landroidx/fragment/app/E;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/fragment/app/u;->t:Landroidx/fragment/app/T;

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 9
    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v2, "Fragment "

    .line 13
    .line 14
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v2, " has not been attached yet."

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    throw v0
.end method

.method public final g()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/u;->s:Landroidx/fragment/app/E;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v0}, Landroidx/fragment/app/E;->u()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :goto_0
    return-object v0
.end method

.method public final getDefaultViewModelCreationExtras()Lq/c;
    .locals 1

    .line 1
    sget-object v0, Lq/a;->b:Lq/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getLifecycle()Landroidx/lifecycle/m;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/u;->K:Landroidx/lifecycle/u;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSavedStateRegistry()Lv/d;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/u;->N:Lv/e;

    .line 2
    .line 3
    invoke-virtual {v0}, Lv/e;->a()Lv/d;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final getViewModelStore()Landroidx/lifecycle/Y;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/u;->r:Landroidx/fragment/app/T;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-direct {p0}, Landroidx/fragment/app/u;->i()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-eq v0, v1, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Landroidx/fragment/app/u;->r:Landroidx/fragment/app/T;

    .line 13
    .line 14
    invoke-virtual {v0, p0}, Landroidx/fragment/app/T;->a0(Landroidx/fragment/app/u;)Landroidx/lifecycle/Y;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    return-object v0

    .line 19
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 20
    .line 21
    const-string v1, "Calling getViewModelStore() before a Fragment reaches onCreate() when using setMaxLifecycle(INITIALIZED) is not supported"

    .line 22
    .line 23
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw v0

    .line 27
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 28
    .line 29
    const-string v1, "Can\'t access ViewModels from detached fragment"

    .line 30
    .line 31
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    throw v0
.end method

.method public final h()Landroidx/fragment/app/T;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/u;->r:Landroidx/fragment/app/T;

    .line 2
    .line 3
    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public final j()Landroidx/fragment/app/u;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/u;->u:Landroidx/fragment/app/u;

    .line 2
    .line 3
    return-object v0
.end method

.method public final k()Landroidx/fragment/app/T;
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/u;->r:Landroidx/fragment/app/T;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 7
    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string v2, "Fragment "

    .line 11
    .line 12
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v2, " not associated with a fragment manager."

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    throw v0
.end method

.method public final l()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/u;->G:Landroidx/fragment/app/r;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return-object v1

    .line 7
    :cond_0
    iget-object v0, v0, Landroidx/fragment/app/r;->i:Ljava/lang/Object;

    .line 8
    .line 9
    sget-object v2, Landroidx/fragment/app/u;->P:Ljava/lang/Object;

    .line 10
    .line 11
    if-ne v0, v2, :cond_1

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_1
    move-object v1, v0

    .line 15
    :goto_0
    return-object v1
.end method

.method public final m()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/u;->G:Landroidx/fragment/app/r;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return-object v1

    .line 7
    :cond_0
    iget-object v0, v0, Landroidx/fragment/app/r;->h:Ljava/lang/Object;

    .line 8
    .line 9
    sget-object v2, Landroidx/fragment/app/u;->P:Ljava/lang/Object;

    .line 10
    .line 11
    if-ne v0, v2, :cond_1

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_1
    move-object v1, v0

    .line 15
    :goto_0
    return-object v1
.end method

.method public final n()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/u;->G:Landroidx/fragment/app/r;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return-object v1

    .line 7
    :cond_0
    iget-object v0, v0, Landroidx/fragment/app/r;->j:Ljava/lang/Object;

    .line 8
    .line 9
    sget-object v2, Landroidx/fragment/app/u;->P:Ljava/lang/Object;

    .line 10
    .line 11
    if-ne v0, v2, :cond_1

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_1
    move-object v1, v0

    .line 15
    :goto_0
    return-object v1
.end method

.method final o()V
    .locals 3

    .line 1
    new-instance v0, Landroidx/lifecycle/u;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroidx/lifecycle/u;-><init>(Landroidx/lifecycle/s;)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Landroidx/fragment/app/u;->K:Landroidx/lifecycle/u;

    .line 7
    .line 8
    new-instance v0, Lv/e;

    .line 9
    .line 10
    invoke-direct {v0, p0}, Lv/e;-><init>(Lv/f;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Landroidx/fragment/app/u;->N:Lv/e;

    .line 14
    .line 15
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iput-object v0, p0, Landroidx/fragment/app/u;->e:Ljava/lang/String;

    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    iput-boolean v0, p0, Landroidx/fragment/app/u;->k:Z

    .line 27
    .line 28
    iput-boolean v0, p0, Landroidx/fragment/app/u;->l:Z

    .line 29
    .line 30
    iput-boolean v0, p0, Landroidx/fragment/app/u;->m:Z

    .line 31
    .line 32
    iput-boolean v0, p0, Landroidx/fragment/app/u;->n:Z

    .line 33
    .line 34
    iput-boolean v0, p0, Landroidx/fragment/app/u;->o:Z

    .line 35
    .line 36
    iput v0, p0, Landroidx/fragment/app/u;->q:I

    .line 37
    .line 38
    const/4 v1, 0x0

    .line 39
    iput-object v1, p0, Landroidx/fragment/app/u;->r:Landroidx/fragment/app/T;

    .line 40
    .line 41
    new-instance v2, Landroidx/fragment/app/U;

    .line 42
    .line 43
    invoke-direct {v2}, Landroidx/fragment/app/U;-><init>()V

    .line 44
    .line 45
    .line 46
    iput-object v2, p0, Landroidx/fragment/app/u;->t:Landroidx/fragment/app/T;

    .line 47
    .line 48
    iput-object v1, p0, Landroidx/fragment/app/u;->s:Landroidx/fragment/app/E;

    .line 49
    .line 50
    iput v0, p0, Landroidx/fragment/app/u;->v:I

    .line 51
    .line 52
    iput v0, p0, Landroidx/fragment/app/u;->w:I

    .line 53
    .line 54
    iput-object v1, p0, Landroidx/fragment/app/u;->x:Ljava/lang/String;

    .line 55
    .line 56
    iput-boolean v0, p0, Landroidx/fragment/app/u;->y:Z

    .line 57
    .line 58
    iput-boolean v0, p0, Landroidx/fragment/app/u;->z:Z

    .line 59
    .line 60
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Landroidx/fragment/app/u;->C:Z

    .line 3
    .line 4
    return-void
.end method

.method public final onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/u;->e()Landroidx/fragment/app/y;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0, p1, p2, p3}, Landroid/app/Activity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 12
    .line 13
    new-instance p2, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string p3, "Fragment "

    .line 16
    .line 17
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string p3, " not attached to an activity."

    .line 24
    .line 25
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    throw p1
.end method

.method public final onLowMemory()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/fragment/app/u;->C:Z

    .line 3
    .line 4
    return-void
.end method

.method public p(IILandroid/content/Intent;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-static {v0}, Landroidx/fragment/app/T;->f0(I)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string v1, "Fragment "

    .line 11
    .line 12
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v1, " received the following in onActivityResult(): requestCode: "

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string p1, " resultCode: "

    .line 27
    .line 28
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string p1, " data: "

    .line 35
    .line 36
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    const-string p2, "FragmentManager"

    .line 47
    .line 48
    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    :cond_0
    return-void
.end method

.method public q(Landroid/content/Context;)V
    .locals 1

    .line 1
    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Landroidx/fragment/app/u;->C:Z

    .line 3
    .line 4
    iget-object v0, p0, Landroidx/fragment/app/u;->s:Landroidx/fragment/app/E;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {v0}, Landroidx/fragment/app/E;->t()Landroid/app/Activity;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    :goto_0
    if-eqz v0, :cond_1

    .line 15
    .line 16
    iput-boolean p1, p0, Landroidx/fragment/app/u;->C:Z

    .line 17
    .line 18
    :cond_1
    return-void
.end method

.method public r(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/fragment/app/u;->C:Z

    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    const-string v1, "android:support:fragments"

    .line 7
    .line 8
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    iget-object v1, p0, Landroidx/fragment/app/u;->t:Landroidx/fragment/app/T;

    .line 15
    .line 16
    invoke-virtual {v1, p1}, Landroidx/fragment/app/T;->t0(Landroid/os/Parcelable;)V

    .line 17
    .line 18
    .line 19
    iget-object p1, p0, Landroidx/fragment/app/u;->t:Landroidx/fragment/app/T;

    .line 20
    .line 21
    invoke-virtual {p1}, Landroidx/fragment/app/T;->o()V

    .line 22
    .line 23
    .line 24
    :cond_0
    iget-object p1, p0, Landroidx/fragment/app/u;->t:Landroidx/fragment/app/T;

    .line 25
    .line 26
    iget v1, p1, Landroidx/fragment/app/T;->n:I

    .line 27
    .line 28
    if-lt v1, v0, :cond_1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const/4 v0, 0x0

    .line 32
    :goto_0
    if-nez v0, :cond_2

    .line 33
    .line 34
    invoke-virtual {p1}, Landroidx/fragment/app/T;->o()V

    .line 35
    .line 36
    .line 37
    :cond_2
    return-void
.end method

.method public s()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/fragment/app/u;->C:Z

    .line 3
    .line 4
    return-void
.end method

.method public t()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/fragment/app/u;->C:Z

    .line 3
    .line 4
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const/16 v1, 0x80

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v1, "{"

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v1, "} ("

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    iget-object v1, p0, Landroidx/fragment/app/u;->e:Ljava/lang/String;

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    iget v1, p0, Landroidx/fragment/app/u;->v:I

    .line 46
    .line 47
    if-eqz v1, :cond_0

    .line 48
    .line 49
    const-string v1, " id=0x"

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    iget v1, p0, Landroidx/fragment/app/u;->v:I

    .line 55
    .line 56
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    :cond_0
    iget-object v1, p0, Landroidx/fragment/app/u;->x:Ljava/lang/String;

    .line 64
    .line 65
    if-eqz v1, :cond_1

    .line 66
    .line 67
    const-string v1, " tag="

    .line 68
    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    iget-object v1, p0, Landroidx/fragment/app/u;->x:Ljava/lang/String;

    .line 73
    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    :cond_1
    const-string v1, ")"

    .line 78
    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    return-object v0
.end method

.method public u()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/fragment/app/u;->C:Z

    .line 3
    .line 4
    return-void
.end method

.method public v(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .locals 1

    .line 1
    iget-object p1, p0, Landroidx/fragment/app/u;->s:Landroidx/fragment/app/E;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Landroidx/fragment/app/E;->x()Landroid/view/LayoutInflater;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iget-object v0, p0, Landroidx/fragment/app/u;->t:Landroidx/fragment/app/T;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroidx/fragment/app/T;->W()Landroid/view/LayoutInflater$Factory2;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {p1, v0}, Landroid/view/LayoutInflater;->setFactory2(Landroid/view/LayoutInflater$Factory2;)V

    .line 16
    .line 17
    .line 18
    return-object p1

    .line 19
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 20
    .line 21
    const-string v0, "onGetLayoutInflater() cannot be executed until the Fragment is attached to the FragmentManager."

    .line 22
    .line 23
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw p1
.end method

.method public final w()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/fragment/app/u;->C:Z

    .line 3
    .line 4
    iget-object v1, p0, Landroidx/fragment/app/u;->s:Landroidx/fragment/app/E;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {v1}, Landroidx/fragment/app/E;->t()Landroid/app/Activity;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    :goto_0
    if-eqz v1, :cond_1

    .line 15
    .line 16
    iput-boolean v0, p0, Landroidx/fragment/app/u;->C:Z

    .line 17
    .line 18
    :cond_1
    return-void
.end method

.method public x()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/fragment/app/u;->C:Z

    .line 3
    .line 4
    return-void
.end method

.method public y(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    return-void
.end method

.method public z()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/fragment/app/u;->C:Z

    .line 3
    .line 4
    return-void
.end method
