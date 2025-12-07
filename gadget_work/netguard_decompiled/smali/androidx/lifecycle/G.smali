.class public final Landroidx/lifecycle/G;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/s;


# static fields
.field private static final i:Landroidx/lifecycle/G;


# instance fields
.field private a:I

.field private b:I

.field private c:Z

.field private d:Z

.field private e:Landroid/os/Handler;

.field private final f:Landroidx/lifecycle/u;

.field private g:Ljava/lang/Runnable;

.field h:Landroidx/lifecycle/D;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/lifecycle/G;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/lifecycle/G;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/lifecycle/G;->i:Landroidx/lifecycle/G;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Landroidx/lifecycle/G;->a:I

    .line 6
    .line 7
    iput v0, p0, Landroidx/lifecycle/G;->b:I

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Landroidx/lifecycle/G;->c:Z

    .line 11
    .line 12
    iput-boolean v0, p0, Landroidx/lifecycle/G;->d:Z

    .line 13
    .line 14
    new-instance v0, Landroidx/lifecycle/u;

    .line 15
    .line 16
    invoke-direct {v0, p0}, Landroidx/lifecycle/u;-><init>(Landroidx/lifecycle/s;)V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Landroidx/lifecycle/G;->f:Landroidx/lifecycle/u;

    .line 20
    .line 21
    new-instance v0, Landroidx/lifecycle/x;

    .line 22
    .line 23
    invoke-direct {v0, p0}, Landroidx/lifecycle/x;-><init>(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Landroidx/lifecycle/G;->g:Ljava/lang/Runnable;

    .line 27
    .line 28
    new-instance v0, Landroidx/lifecycle/D;

    .line 29
    .line 30
    invoke-direct {v0, p0}, Landroidx/lifecycle/D;-><init>(Landroidx/lifecycle/G;)V

    .line 31
    .line 32
    .line 33
    iput-object v0, p0, Landroidx/lifecycle/G;->h:Landroidx/lifecycle/D;

    .line 34
    .line 35
    return-void
.end method

.method public static g()Landroidx/lifecycle/G;
    .locals 1

    .line 1
    sget-object v0, Landroidx/lifecycle/G;->i:Landroidx/lifecycle/G;

    .line 2
    .line 3
    return-object v0
.end method

.method static h(Landroid/content/Context;)V
    .locals 3

    .line 1
    sget-object v0, Landroidx/lifecycle/G;->i:Landroidx/lifecycle/G;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance v1, Landroid/os/Handler;

    .line 7
    .line 8
    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object v1, v0, Landroidx/lifecycle/G;->e:Landroid/os/Handler;

    .line 12
    .line 13
    iget-object v1, v0, Landroidx/lifecycle/G;->f:Landroidx/lifecycle/u;

    .line 14
    .line 15
    sget-object v2, Landroidx/lifecycle/k;->ON_CREATE:Landroidx/lifecycle/k;

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Landroidx/lifecycle/u;->f(Landroidx/lifecycle/k;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    check-cast p0, Landroid/app/Application;

    .line 25
    .line 26
    new-instance v1, Landroidx/lifecycle/F;

    .line 27
    .line 28
    invoke-direct {v1, v0}, Landroidx/lifecycle/F;-><init>(Landroidx/lifecycle/G;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method


# virtual methods
.method final a()V
    .locals 4

    .line 1
    iget v0, p0, Landroidx/lifecycle/G;->b:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, -0x1

    .line 4
    .line 5
    iput v0, p0, Landroidx/lifecycle/G;->b:I

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Landroidx/lifecycle/G;->e:Landroid/os/Handler;

    .line 10
    .line 11
    iget-object v1, p0, Landroidx/lifecycle/G;->g:Ljava/lang/Runnable;

    .line 12
    .line 13
    const-wide/16 v2, 0x2bc

    .line 14
    .line 15
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method final b()V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/lifecycle/G;->b:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    add-int/2addr v0, v1

    .line 5
    iput v0, p0, Landroidx/lifecycle/G;->b:I

    .line 6
    .line 7
    if-ne v0, v1, :cond_1

    .line 8
    .line 9
    iget-boolean v0, p0, Landroidx/lifecycle/G;->c:Z

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Landroidx/lifecycle/G;->f:Landroidx/lifecycle/u;

    .line 14
    .line 15
    sget-object v1, Landroidx/lifecycle/k;->ON_RESUME:Landroidx/lifecycle/k;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroidx/lifecycle/u;->f(Landroidx/lifecycle/k;)V

    .line 18
    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Landroidx/lifecycle/G;->c:Z

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iget-object v0, p0, Landroidx/lifecycle/G;->e:Landroid/os/Handler;

    .line 25
    .line 26
    iget-object v1, p0, Landroidx/lifecycle/G;->g:Ljava/lang/Runnable;

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 29
    .line 30
    .line 31
    :cond_1
    :goto_0
    return-void
.end method

.method final c()V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/lifecycle/G;->a:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    add-int/2addr v0, v1

    .line 5
    iput v0, p0, Landroidx/lifecycle/G;->a:I

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    iget-boolean v0, p0, Landroidx/lifecycle/G;->d:Z

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Landroidx/lifecycle/G;->f:Landroidx/lifecycle/u;

    .line 14
    .line 15
    sget-object v1, Landroidx/lifecycle/k;->ON_START:Landroidx/lifecycle/k;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroidx/lifecycle/u;->f(Landroidx/lifecycle/k;)V

    .line 18
    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Landroidx/lifecycle/G;->d:Z

    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method final d()V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/lifecycle/G;->a:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, -0x1

    .line 4
    .line 5
    iput v0, p0, Landroidx/lifecycle/G;->a:I

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/lifecycle/G;->f()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method final e()V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/lifecycle/G;->b:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Landroidx/lifecycle/G;->c:Z

    .line 7
    .line 8
    iget-object v0, p0, Landroidx/lifecycle/G;->f:Landroidx/lifecycle/u;

    .line 9
    .line 10
    sget-object v1, Landroidx/lifecycle/k;->ON_PAUSE:Landroidx/lifecycle/k;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroidx/lifecycle/u;->f(Landroidx/lifecycle/k;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method final f()V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/lifecycle/G;->a:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p0, Landroidx/lifecycle/G;->c:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Landroidx/lifecycle/G;->f:Landroidx/lifecycle/u;

    .line 10
    .line 11
    sget-object v1, Landroidx/lifecycle/k;->ON_STOP:Landroidx/lifecycle/k;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroidx/lifecycle/u;->f(Landroidx/lifecycle/k;)V

    .line 14
    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    iput-boolean v0, p0, Landroidx/lifecycle/G;->d:Z

    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public final getLifecycle()Landroidx/lifecycle/m;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/lifecycle/G;->f:Landroidx/lifecycle/u;

    .line 2
    .line 3
    return-object v0
.end method
