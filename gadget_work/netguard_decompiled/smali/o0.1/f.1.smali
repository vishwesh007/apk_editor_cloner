.class public final Lo0/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field public static final o:Lcom/google/android/gms/common/api/Status;

.field private static final p:Lcom/google/android/gms/common/api/Status;

.field private static final q:Ljava/lang/Object;

.field private static r:Lo0/f;


# instance fields
.field private a:J

.field private b:Z

.field private c:Lp0/v;

.field private d:Lr0/d;

.field private final e:Landroid/content/Context;

.field private final f:Lm0/d;

.field private final g:Lp0/D;

.field private final h:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final i:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final j:Ljava/util/concurrent/ConcurrentHashMap;

.field private final k:Landroidx/collection/d;

.field private final l:Landroidx/collection/d;

.field private final m:Lv0/h;
    .annotation runtime Lorg/checkerframework/checker/initialization/qual/NotOnlyInitialized;
    .end annotation
.end field

.field private volatile n:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    const-string v2, "Sign-out occurred while this API call was in progress."

    .line 5
    .line 6
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lo0/f;->o:Lcom/google/android/gms/common/api/Status;

    .line 10
    .line 11
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    .line 12
    .line 13
    const-string v2, "The user must be signed in to make this API call."

    .line 14
    .line 15
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    .line 16
    .line 17
    .line 18
    sput-object v0, Lo0/f;->p:Lcom/google/android/gms/common/api/Status;

    .line 19
    .line 20
    new-instance v0, Ljava/lang/Object;

    .line 21
    .line 22
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 23
    .line 24
    .line 25
    sput-object v0, Lo0/f;->q:Ljava/lang/Object;

    .line 26
    .line 27
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lm0/d;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x2710

    .line 5
    .line 6
    iput-wide v0, p0, Lo0/f;->a:J

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lo0/f;->b:Z

    .line 10
    .line 11
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 12
    .line 13
    const/4 v2, 0x1

    .line 14
    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 15
    .line 16
    .line 17
    iput-object v1, p0, Lo0/f;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 18
    .line 19
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 20
    .line 21
    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 22
    .line 23
    .line 24
    iput-object v1, p0, Lo0/f;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 25
    .line 26
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 27
    .line 28
    const/4 v3, 0x5

    .line 29
    const/high16 v4, 0x3f400000    # 0.75f

    .line 30
    .line 31
    invoke-direct {v1, v3, v4, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    .line 32
    .line 33
    .line 34
    iput-object v1, p0, Lo0/f;->j:Ljava/util/concurrent/ConcurrentHashMap;

    .line 35
    .line 36
    new-instance v1, Landroidx/collection/d;

    .line 37
    .line 38
    invoke-direct {v1}, Landroidx/collection/d;-><init>()V

    .line 39
    .line 40
    .line 41
    iput-object v1, p0, Lo0/f;->k:Landroidx/collection/d;

    .line 42
    .line 43
    new-instance v1, Landroidx/collection/d;

    .line 44
    .line 45
    invoke-direct {v1}, Landroidx/collection/d;-><init>()V

    .line 46
    .line 47
    .line 48
    iput-object v1, p0, Lo0/f;->l:Landroidx/collection/d;

    .line 49
    .line 50
    iput-boolean v2, p0, Lo0/f;->n:Z

    .line 51
    .line 52
    iput-object p1, p0, Lo0/f;->e:Landroid/content/Context;

    .line 53
    .line 54
    new-instance v1, Lv0/h;

    .line 55
    .line 56
    invoke-direct {v1, p2, p0, v0}, Lv0/h;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;I)V

    .line 57
    .line 58
    .line 59
    iput-object v1, p0, Lo0/f;->m:Lv0/h;

    .line 60
    .line 61
    iput-object p3, p0, Lo0/f;->f:Lm0/d;

    .line 62
    .line 63
    new-instance p2, Lp0/D;

    .line 64
    .line 65
    invoke-direct {p2, p3}, Lp0/D;-><init>(Lm0/e;)V

    .line 66
    .line 67
    .line 68
    iput-object p2, p0, Lo0/f;->g:Lp0/D;

    .line 69
    .line 70
    invoke-static {p1}, Lt0/a;->y(Landroid/content/Context;)Z

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    if-eqz p1, :cond_0

    .line 75
    .line 76
    iput-boolean v0, p0, Lo0/f;->n:Z

    .line 77
    .line 78
    :cond_0
    const/4 p1, 0x6

    .line 79
    invoke-virtual {v1, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-virtual {v1, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 84
    .line 85
    .line 86
    return-void
.end method

.method static bridge synthetic a(Lo0/f;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lo0/f;->n:Z

    return p0
.end method

.method private static d(Lo0/a;Lm0/a;)Lcom/google/android/gms/common/api/Status;
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    .line 2
    .line 3
    invoke-virtual {p0}, Lo0/a;->b()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    new-instance v2, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v3, "API: "

    .line 14
    .line 15
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string p0, " is not available on this device. Connection failed with: "

    .line 22
    .line 23
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-direct {v0, p1, p0}, Lcom/google/android/gms/common/api/Status;-><init>(Lm0/a;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    return-object v0
.end method

.method private final e(Ln0/j;)Lo0/x;
    .locals 3
    .annotation runtime Lcom/google/errorprone/annotations/ResultIgnorabilityUnspecified;
    .end annotation

    .line 1
    iget-object v0, p0, Lo0/f;->j:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-virtual {p1}, Ln0/j;->c()Lo0/a;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    check-cast v2, Lo0/x;

    .line 12
    .line 13
    if-nez v2, :cond_0

    .line 14
    .line 15
    new-instance v2, Lo0/x;

    .line 16
    .line 17
    invoke-direct {v2, p0, p1}, Lo0/x;-><init>(Lo0/f;Ln0/j;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    :cond_0
    invoke-virtual {v2}, Lo0/x;->a()Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-eqz p1, :cond_1

    .line 28
    .line 29
    iget-object p1, p0, Lo0/f;->l:Landroidx/collection/d;

    .line 30
    .line 31
    invoke-virtual {p1, v1}, Landroidx/collection/d;->add(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    :cond_1
    invoke-virtual {v2}, Lo0/x;->B()V

    .line 35
    .line 36
    .line 37
    return-object v2
.end method

.method private final f()V
    .locals 3

    .line 1
    iget-object v0, p0, Lo0/f;->c:Lp0/v;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    invoke-virtual {v0}, Lp0/v;->b()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-gtz v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Lo0/f;->b()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_2

    .line 16
    .line 17
    :cond_0
    iget-object v1, p0, Lo0/f;->d:Lr0/d;

    .line 18
    .line 19
    if-nez v1, :cond_1

    .line 20
    .line 21
    new-instance v1, Lr0/d;

    .line 22
    .line 23
    iget-object v2, p0, Lo0/f;->e:Landroid/content/Context;

    .line 24
    .line 25
    invoke-direct {v1, v2}, Lr0/d;-><init>(Landroid/content/Context;)V

    .line 26
    .line 27
    .line 28
    iput-object v1, p0, Lo0/f;->d:Lr0/d;

    .line 29
    .line 30
    :cond_1
    iget-object v1, p0, Lo0/f;->d:Lr0/d;

    .line 31
    .line 32
    invoke-virtual {v1, v0}, Lr0/d;->g(Lp0/v;)Landroidx/core/view/accessibility/n;

    .line 33
    .line 34
    .line 35
    :cond_2
    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Lo0/f;->c:Lp0/v;

    .line 37
    .line 38
    :cond_3
    return-void
.end method

.method static bridge synthetic h(Lo0/f;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lo0/f;->a:J

    return-wide v0
.end method

.method static bridge synthetic i(Lo0/f;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lo0/f;->e:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic j(Lo0/f;)Lv0/h;
    .locals 0

    .line 1
    iget-object p0, p0, Lo0/f;->m:Lv0/h;

    return-object p0
.end method

.method static bridge synthetic k(Lo0/f;)Lm0/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lo0/f;->f:Lm0/d;

    return-object p0
.end method

.method static bridge synthetic l()Lcom/google/android/gms/common/api/Status;
    .locals 1

    .line 1
    sget-object v0, Lo0/f;->p:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

.method static bridge synthetic m(Lo0/a;Lm0/a;)Lcom/google/android/gms/common/api/Status;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lo0/f;->d(Lo0/a;Lm0/a;)Lcom/google/android/gms/common/api/Status;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic n(Lo0/f;)Lo0/p;
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0
.end method

.method public static p(Landroid/content/Context;)Lo0/f;
    .locals 4
    .annotation runtime Lcom/google/errorprone/annotations/ResultIgnorabilityUnspecified;
    .end annotation

    .line 1
    sget-object v0, Lo0/f;->q:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lo0/f;->r:Lo0/f;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    invoke-static {}, Lp0/m;->b()Landroid/os/HandlerThread;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    new-instance v2, Lo0/f;

    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-static {}, Lm0/d;->d()Lm0/d;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    invoke-direct {v2, p0, v1, v3}, Lo0/f;-><init>(Landroid/content/Context;Landroid/os/Looper;Lm0/d;)V

    .line 27
    .line 28
    .line 29
    sput-object v2, Lo0/f;->r:Lo0/f;

    .line 30
    .line 31
    :cond_0
    sget-object p0, Lo0/f;->r:Lo0/f;

    .line 32
    .line 33
    monitor-exit v0

    .line 34
    return-object p0

    .line 35
    :catchall_0
    move-exception p0

    .line 36
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    throw p0
.end method

.method static bridge synthetic q(Lo0/f;)Lp0/D;
    .locals 0

    .line 1
    iget-object p0, p0, Lo0/f;->g:Lp0/D;

    return-object p0
.end method

.method static bridge synthetic r()Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Lo0/f;->q:Ljava/lang/Object;

    return-object v0
.end method

.method static bridge synthetic s(Lo0/f;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lo0/f;->j:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static bridge synthetic t(Lo0/f;)Landroidx/collection/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lo0/f;->k:Landroidx/collection/d;

    return-object p0
.end method

.method static bridge synthetic u(Lo0/f;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo0/f;->b:Z

    return-void
.end method


# virtual methods
.method final b()Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Lo0/f;->b:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    invoke-static {}, Lp0/t;->a()Lp0/t;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    const v0, 0xc1fa340

    .line 15
    .line 16
    .line 17
    iget-object v2, p0, Lo0/f;->g:Lp0/D;

    .line 18
    .line 19
    invoke-virtual {v2, v0}, Lp0/D;->a(I)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    const/4 v2, -0x1

    .line 24
    if-eq v0, v2, :cond_2

    .line 25
    .line 26
    if-nez v0, :cond_1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    return v1

    .line 30
    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 31
    return v0
.end method

.method final c(Lm0/a;I)Z
    .locals 2
    .annotation runtime Lcom/google/errorprone/annotations/ResultIgnorabilityUnspecified;
    .end annotation

    .line 1
    iget-object v0, p0, Lo0/f;->f:Lm0/d;

    .line 2
    .line 3
    iget-object v1, p0, Lo0/f;->e:Landroid/content/Context;

    .line 4
    .line 5
    invoke-virtual {v0, v1, p1, p2}, Lm0/d;->j(Landroid/content/Context;Lm0/a;I)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public final g()I
    .locals 1

    .line 1
    iget-object v0, p0, Lo0/f;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .locals 12

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    iget-object v1, p0, Lo0/f;->m:Lv0/h;

    .line 4
    .line 5
    iget-object v2, p0, Lo0/f;->j:Ljava/util/concurrent/ConcurrentHashMap;

    .line 6
    .line 7
    iget-object v3, p0, Lo0/f;->e:Landroid/content/Context;

    .line 8
    .line 9
    const-wide/32 v4, 0x493e0

    .line 10
    .line 11
    .line 12
    const-string v6, "GoogleApiManager"

    .line 13
    .line 14
    const/16 v7, 0x11

    .line 15
    .line 16
    const/4 v8, 0x0

    .line 17
    const/4 v9, 0x1

    .line 18
    const/4 v10, 0x0

    .line 19
    packed-switch v0, :pswitch_data_0

    .line 20
    .line 21
    .line 22
    new-instance p1, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    const-string v1, "Unknown message id: "

    .line 25
    .line 26
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-static {v6, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    return v8

    .line 40
    :pswitch_0
    iput-boolean v8, p0, Lo0/f;->b:Z

    .line 41
    .line 42
    goto/16 :goto_6

    .line 43
    .line 44
    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast p1, Lo0/E;

    .line 47
    .line 48
    iget-wide v4, p1, Lo0/E;->c:J

    .line 49
    .line 50
    const-wide/16 v10, 0x0

    .line 51
    .line 52
    iget-object v0, p1, Lo0/E;->a:Lp0/p;

    .line 53
    .line 54
    iget v2, p1, Lo0/E;->b:I

    .line 55
    .line 56
    cmp-long v6, v4, v10

    .line 57
    .line 58
    if-nez v6, :cond_1

    .line 59
    .line 60
    new-instance p1, Lp0/v;

    .line 61
    .line 62
    new-array v1, v9, [Lp0/p;

    .line 63
    .line 64
    aput-object v0, v1, v8

    .line 65
    .line 66
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-direct {p1, v0, v2}, Lp0/v;-><init>(Ljava/util/List;I)V

    .line 71
    .line 72
    .line 73
    iget-object v0, p0, Lo0/f;->d:Lr0/d;

    .line 74
    .line 75
    if-nez v0, :cond_0

    .line 76
    .line 77
    new-instance v0, Lr0/d;

    .line 78
    .line 79
    invoke-direct {v0, v3}, Lr0/d;-><init>(Landroid/content/Context;)V

    .line 80
    .line 81
    .line 82
    iput-object v0, p0, Lo0/f;->d:Lr0/d;

    .line 83
    .line 84
    :cond_0
    iget-object v0, p0, Lo0/f;->d:Lr0/d;

    .line 85
    .line 86
    invoke-virtual {v0, p1}, Lr0/d;->g(Lp0/v;)Landroidx/core/view/accessibility/n;

    .line 87
    .line 88
    .line 89
    goto/16 :goto_6

    .line 90
    .line 91
    :cond_1
    iget-object v3, p0, Lo0/f;->c:Lp0/v;

    .line 92
    .line 93
    if-eqz v3, :cond_4

    .line 94
    .line 95
    invoke-virtual {v3}, Lp0/v;->c()Ljava/util/List;

    .line 96
    .line 97
    .line 98
    move-result-object v4

    .line 99
    invoke-virtual {v3}, Lp0/v;->b()I

    .line 100
    .line 101
    .line 102
    move-result v3

    .line 103
    if-ne v3, v2, :cond_3

    .line 104
    .line 105
    if-eqz v4, :cond_2

    .line 106
    .line 107
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 108
    .line 109
    .line 110
    move-result v3

    .line 111
    iget v4, p1, Lo0/E;->d:I

    .line 112
    .line 113
    if-lt v3, v4, :cond_2

    .line 114
    .line 115
    goto :goto_0

    .line 116
    :cond_2
    iget-object v3, p0, Lo0/f;->c:Lp0/v;

    .line 117
    .line 118
    invoke-virtual {v3, v0}, Lp0/v;->d(Lp0/p;)V

    .line 119
    .line 120
    .line 121
    goto :goto_1

    .line 122
    :cond_3
    :goto_0
    invoke-virtual {v1, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 123
    .line 124
    .line 125
    invoke-direct {p0}, Lo0/f;->f()V

    .line 126
    .line 127
    .line 128
    :cond_4
    :goto_1
    iget-object v3, p0, Lo0/f;->c:Lp0/v;

    .line 129
    .line 130
    if-nez v3, :cond_f

    .line 131
    .line 132
    new-instance v3, Ljava/util/ArrayList;

    .line 133
    .line 134
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    new-instance v0, Lp0/v;

    .line 141
    .line 142
    invoke-direct {v0, v3, v2}, Lp0/v;-><init>(Ljava/util/List;I)V

    .line 143
    .line 144
    .line 145
    iput-object v0, p0, Lo0/f;->c:Lp0/v;

    .line 146
    .line 147
    invoke-virtual {v1, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    iget-wide v2, p1, Lo0/E;->c:J

    .line 152
    .line 153
    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 154
    .line 155
    .line 156
    goto/16 :goto_6

    .line 157
    .line 158
    :pswitch_2
    invoke-direct {p0}, Lo0/f;->f()V

    .line 159
    .line 160
    .line 161
    goto/16 :goto_6

    .line 162
    .line 163
    :pswitch_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 164
    .line 165
    check-cast p1, Lo0/y;

    .line 166
    .line 167
    invoke-static {p1}, Lo0/y;->b(Lo0/y;)Lo0/a;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 172
    .line 173
    .line 174
    move-result v0

    .line 175
    if-eqz v0, :cond_f

    .line 176
    .line 177
    invoke-static {p1}, Lo0/y;->b(Lo0/y;)Lo0/a;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    check-cast v0, Lo0/x;

    .line 186
    .line 187
    invoke-static {v0, p1}, Lo0/x;->z(Lo0/x;Lo0/y;)V

    .line 188
    .line 189
    .line 190
    goto/16 :goto_6

    .line 191
    .line 192
    :pswitch_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 193
    .line 194
    check-cast p1, Lo0/y;

    .line 195
    .line 196
    invoke-static {p1}, Lo0/y;->b(Lo0/y;)Lo0/a;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 201
    .line 202
    .line 203
    move-result v0

    .line 204
    if-eqz v0, :cond_f

    .line 205
    .line 206
    invoke-static {p1}, Lo0/y;->b(Lo0/y;)Lo0/a;

    .line 207
    .line 208
    .line 209
    move-result-object v0

    .line 210
    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    .line 212
    .line 213
    move-result-object v0

    .line 214
    check-cast v0, Lo0/x;

    .line 215
    .line 216
    invoke-static {v0, p1}, Lo0/x;->y(Lo0/x;Lo0/y;)V

    .line 217
    .line 218
    .line 219
    goto/16 :goto_6

    .line 220
    .line 221
    :pswitch_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 222
    .line 223
    check-cast p1, Lo0/q;

    .line 224
    .line 225
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 226
    .line 227
    .line 228
    invoke-virtual {v2, v10}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 229
    .line 230
    .line 231
    move-result p1

    .line 232
    if-nez p1, :cond_5

    .line 233
    .line 234
    throw v10

    .line 235
    :cond_5
    invoke-virtual {v2, v10}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    .line 237
    .line 238
    move-result-object p1

    .line 239
    check-cast p1, Lo0/x;

    .line 240
    .line 241
    invoke-static {p1}, Lo0/x;->J(Lo0/x;)V

    .line 242
    .line 243
    .line 244
    throw v10

    .line 245
    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 246
    .line 247
    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 248
    .line 249
    .line 250
    move-result v0

    .line 251
    if-eqz v0, :cond_f

    .line 252
    .line 253
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 254
    .line 255
    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    .line 257
    .line 258
    move-result-object p1

    .line 259
    check-cast p1, Lo0/x;

    .line 260
    .line 261
    invoke-virtual {p1}, Lo0/x;->b()V

    .line 262
    .line 263
    .line 264
    goto/16 :goto_6

    .line 265
    .line 266
    :pswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 267
    .line 268
    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 269
    .line 270
    .line 271
    move-result v0

    .line 272
    if-eqz v0, :cond_f

    .line 273
    .line 274
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 275
    .line 276
    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    .line 278
    .line 279
    move-result-object p1

    .line 280
    check-cast p1, Lo0/x;

    .line 281
    .line 282
    invoke-virtual {p1}, Lo0/x;->H()V

    .line 283
    .line 284
    .line 285
    goto/16 :goto_6

    .line 286
    .line 287
    :pswitch_8
    iget-object p1, p0, Lo0/f;->l:Landroidx/collection/d;

    .line 288
    .line 289
    invoke-virtual {p1}, Landroidx/collection/d;->iterator()Ljava/util/Iterator;

    .line 290
    .line 291
    .line 292
    move-result-object v0

    .line 293
    :cond_6
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 294
    .line 295
    .line 296
    move-result v1

    .line 297
    if-eqz v1, :cond_7

    .line 298
    .line 299
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 300
    .line 301
    .line 302
    move-result-object v1

    .line 303
    check-cast v1, Lo0/a;

    .line 304
    .line 305
    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    .line 307
    .line 308
    move-result-object v1

    .line 309
    check-cast v1, Lo0/x;

    .line 310
    .line 311
    if-eqz v1, :cond_6

    .line 312
    .line 313
    invoke-virtual {v1}, Lo0/x;->G()V

    .line 314
    .line 315
    .line 316
    goto :goto_2

    .line 317
    :cond_7
    invoke-virtual {p1}, Landroidx/collection/d;->clear()V

    .line 318
    .line 319
    .line 320
    goto/16 :goto_6

    .line 321
    .line 322
    :pswitch_9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 323
    .line 324
    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 325
    .line 326
    .line 327
    move-result v0

    .line 328
    if-eqz v0, :cond_f

    .line 329
    .line 330
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 331
    .line 332
    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    .line 334
    .line 335
    move-result-object p1

    .line 336
    check-cast p1, Lo0/x;

    .line 337
    .line 338
    invoke-virtual {p1}, Lo0/x;->F()V

    .line 339
    .line 340
    .line 341
    goto/16 :goto_6

    .line 342
    .line 343
    :pswitch_a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 344
    .line 345
    check-cast p1, Ln0/j;

    .line 346
    .line 347
    invoke-direct {p0, p1}, Lo0/f;->e(Ln0/j;)Lo0/x;

    .line 348
    .line 349
    .line 350
    goto/16 :goto_6

    .line 351
    .line 352
    :pswitch_b
    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 353
    .line 354
    .line 355
    move-result-object p1

    .line 356
    instance-of p1, p1, Landroid/app/Application;

    .line 357
    .line 358
    if-eqz p1, :cond_f

    .line 359
    .line 360
    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 361
    .line 362
    .line 363
    move-result-object p1

    .line 364
    check-cast p1, Landroid/app/Application;

    .line 365
    .line 366
    invoke-static {p1}, Lo0/c;->c(Landroid/app/Application;)V

    .line 367
    .line 368
    .line 369
    invoke-static {}, Lo0/c;->b()Lo0/c;

    .line 370
    .line 371
    .line 372
    move-result-object p1

    .line 373
    new-instance v0, Lo0/s;

    .line 374
    .line 375
    invoke-direct {v0, p0}, Lo0/s;-><init>(Lo0/f;)V

    .line 376
    .line 377
    .line 378
    invoke-virtual {p1, v0}, Lo0/c;->a(Lo0/b;)V

    .line 379
    .line 380
    .line 381
    invoke-static {}, Lo0/c;->b()Lo0/c;

    .line 382
    .line 383
    .line 384
    move-result-object p1

    .line 385
    invoke-virtual {p1}, Lo0/c;->d()Z

    .line 386
    .line 387
    .line 388
    move-result p1

    .line 389
    if-nez p1, :cond_f

    .line 390
    .line 391
    iput-wide v4, p0, Lo0/f;->a:J

    .line 392
    .line 393
    goto/16 :goto_6

    .line 394
    .line 395
    :pswitch_c
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 396
    .line 397
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 398
    .line 399
    check-cast p1, Lm0/a;

    .line 400
    .line 401
    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    .line 402
    .line 403
    .line 404
    move-result-object v1

    .line 405
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 406
    .line 407
    .line 408
    move-result-object v1

    .line 409
    :cond_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 410
    .line 411
    .line 412
    move-result v2

    .line 413
    if-eqz v2, :cond_9

    .line 414
    .line 415
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 416
    .line 417
    .line 418
    move-result-object v2

    .line 419
    check-cast v2, Lo0/x;

    .line 420
    .line 421
    invoke-virtual {v2}, Lo0/x;->p()I

    .line 422
    .line 423
    .line 424
    move-result v3

    .line 425
    if-ne v3, v0, :cond_8

    .line 426
    .line 427
    move-object v10, v2

    .line 428
    :cond_9
    if-eqz v10, :cond_b

    .line 429
    .line 430
    invoke-virtual {p1}, Lm0/a;->b()I

    .line 431
    .line 432
    .line 433
    move-result v0

    .line 434
    const/16 v1, 0xd

    .line 435
    .line 436
    if-ne v0, v1, :cond_a

    .line 437
    .line 438
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    .line 439
    .line 440
    invoke-virtual {p1}, Lm0/a;->b()I

    .line 441
    .line 442
    .line 443
    move-result v1

    .line 444
    iget-object v2, p0, Lo0/f;->f:Lm0/d;

    .line 445
    .line 446
    invoke-virtual {v2, v1}, Lm0/d;->c(I)Ljava/lang/String;

    .line 447
    .line 448
    .line 449
    move-result-object v1

    .line 450
    invoke-virtual {p1}, Lm0/a;->c()Ljava/lang/String;

    .line 451
    .line 452
    .line 453
    move-result-object p1

    .line 454
    new-instance v2, Ljava/lang/StringBuilder;

    .line 455
    .line 456
    const-string v3, "Error resolution was canceled by the user, original error message: "

    .line 457
    .line 458
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 459
    .line 460
    .line 461
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 462
    .line 463
    .line 464
    const-string v1, ": "

    .line 465
    .line 466
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 467
    .line 468
    .line 469
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 470
    .line 471
    .line 472
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 473
    .line 474
    .line 475
    move-result-object p1

    .line 476
    invoke-direct {v0, v7, p1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    .line 477
    .line 478
    .line 479
    invoke-static {v10, v0}, Lo0/x;->v(Lo0/x;Lcom/google/android/gms/common/api/Status;)V

    .line 480
    .line 481
    .line 482
    goto/16 :goto_6

    .line 483
    .line 484
    :cond_a
    invoke-static {v10}, Lo0/x;->t(Lo0/x;)Lo0/a;

    .line 485
    .line 486
    .line 487
    move-result-object v0

    .line 488
    invoke-static {v0, p1}, Lo0/f;->d(Lo0/a;Lm0/a;)Lcom/google/android/gms/common/api/Status;

    .line 489
    .line 490
    .line 491
    move-result-object p1

    .line 492
    invoke-static {v10, p1}, Lo0/x;->v(Lo0/x;Lcom/google/android/gms/common/api/Status;)V

    .line 493
    .line 494
    .line 495
    goto/16 :goto_6

    .line 496
    .line 497
    :cond_b
    new-instance p1, Ljava/lang/StringBuilder;

    .line 498
    .line 499
    const-string v1, "Could not find API instance "

    .line 500
    .line 501
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 502
    .line 503
    .line 504
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 505
    .line 506
    .line 507
    const-string v0, " while trying to fail enqueued calls."

    .line 508
    .line 509
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 510
    .line 511
    .line 512
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 513
    .line 514
    .line 515
    move-result-object p1

    .line 516
    new-instance v0, Ljava/lang/Exception;

    .line 517
    .line 518
    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    .line 519
    .line 520
    .line 521
    invoke-static {v6, p1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 522
    .line 523
    .line 524
    goto/16 :goto_6

    .line 525
    .line 526
    :pswitch_d
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 527
    .line 528
    check-cast p1, Lo0/F;

    .line 529
    .line 530
    iget-object v0, p1, Lo0/F;->c:Ln0/j;

    .line 531
    .line 532
    invoke-virtual {v0}, Ln0/j;->c()Lo0/a;

    .line 533
    .line 534
    .line 535
    move-result-object v0

    .line 536
    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 537
    .line 538
    .line 539
    move-result-object v0

    .line 540
    check-cast v0, Lo0/x;

    .line 541
    .line 542
    if-nez v0, :cond_c

    .line 543
    .line 544
    iget-object v0, p1, Lo0/F;->c:Ln0/j;

    .line 545
    .line 546
    invoke-direct {p0, v0}, Lo0/f;->e(Ln0/j;)Lo0/x;

    .line 547
    .line 548
    .line 549
    move-result-object v0

    .line 550
    :cond_c
    invoke-virtual {v0}, Lo0/x;->a()Z

    .line 551
    .line 552
    .line 553
    move-result v1

    .line 554
    iget-object v2, p1, Lo0/F;->a:Lo0/N;

    .line 555
    .line 556
    if-eqz v1, :cond_d

    .line 557
    .line 558
    iget-object v1, p0, Lo0/f;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 559
    .line 560
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 561
    .line 562
    .line 563
    move-result v1

    .line 564
    iget p1, p1, Lo0/F;->b:I

    .line 565
    .line 566
    if-eq v1, p1, :cond_d

    .line 567
    .line 568
    sget-object p1, Lo0/f;->o:Lcom/google/android/gms/common/api/Status;

    .line 569
    .line 570
    invoke-virtual {v2, p1}, Lo0/N;->a(Lcom/google/android/gms/common/api/Status;)V

    .line 571
    .line 572
    .line 573
    invoke-virtual {v0}, Lo0/x;->G()V

    .line 574
    .line 575
    .line 576
    goto :goto_6

    .line 577
    :cond_d
    invoke-virtual {v0, v2}, Lo0/x;->C(Lo0/N;)V

    .line 578
    .line 579
    .line 580
    goto :goto_6

    .line 581
    :pswitch_e
    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    .line 582
    .line 583
    .line 584
    move-result-object p1

    .line 585
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 586
    .line 587
    .line 588
    move-result-object p1

    .line 589
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 590
    .line 591
    .line 592
    move-result v0

    .line 593
    if-eqz v0, :cond_f

    .line 594
    .line 595
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 596
    .line 597
    .line 598
    move-result-object v0

    .line 599
    check-cast v0, Lo0/x;

    .line 600
    .line 601
    invoke-virtual {v0}, Lo0/x;->A()V

    .line 602
    .line 603
    .line 604
    invoke-virtual {v0}, Lo0/x;->B()V

    .line 605
    .line 606
    .line 607
    goto :goto_3

    .line 608
    :pswitch_f
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 609
    .line 610
    check-cast p1, Lo0/O;

    .line 611
    .line 612
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 613
    .line 614
    .line 615
    throw v10

    .line 616
    :pswitch_10
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 617
    .line 618
    check-cast p1, Ljava/lang/Boolean;

    .line 619
    .line 620
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 621
    .line 622
    .line 623
    move-result p1

    .line 624
    if-eq v9, p1, :cond_e

    .line 625
    .line 626
    goto :goto_4

    .line 627
    :cond_e
    const-wide/16 v4, 0x2710

    .line 628
    .line 629
    :goto_4
    iput-wide v4, p0, Lo0/f;->a:J

    .line 630
    .line 631
    const/16 p1, 0xc

    .line 632
    .line 633
    invoke-virtual {v1, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 634
    .line 635
    .line 636
    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    .line 637
    .line 638
    .line 639
    move-result-object v0

    .line 640
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 641
    .line 642
    .line 643
    move-result-object v0

    .line 644
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 645
    .line 646
    .line 647
    move-result v2

    .line 648
    if-eqz v2, :cond_f

    .line 649
    .line 650
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 651
    .line 652
    .line 653
    move-result-object v2

    .line 654
    check-cast v2, Lo0/a;

    .line 655
    .line 656
    invoke-virtual {v1, p1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 657
    .line 658
    .line 659
    move-result-object v2

    .line 660
    iget-wide v3, p0, Lo0/f;->a:J

    .line 661
    .line 662
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 663
    .line 664
    .line 665
    goto :goto_5

    .line 666
    :cond_f
    :goto_6
    return v9

    .line 667
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_d
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_d
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method final o(Lo0/a;)Lo0/x;
    .locals 1

    .line 1
    iget-object v0, p0, Lo0/f;->j:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lo0/x;

    .line 8
    .line 9
    return-object p1
.end method

.method public final v(Ln0/j;Lo0/m;Lz0/c;LE/d;)V
    .locals 4

    .line 1
    invoke-virtual {p2}, Lo0/m;->d()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lo0/f;->m:Lv0/h;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1}, Ln0/j;->c()Lo0/a;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-static {p0, v0, v2}, Lo0/D;->b(Lo0/f;ILo0/a;)Lo0/D;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {p3}, Lz0/c;->a()Landroidx/core/view/accessibility/n;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    new-instance v3, Lo0/r;

    .line 27
    .line 28
    invoke-direct {v3, v1}, Lo0/r;-><init>(Lv0/h;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2, v3, v0}, Landroidx/core/view/accessibility/n;->b(Lo0/r;Lz0/b;)Landroidx/core/view/accessibility/n;

    .line 32
    .line 33
    .line 34
    :cond_0
    new-instance v0, Lo0/L;

    .line 35
    .line 36
    invoke-direct {v0, p2, p3, p4}, Lo0/L;-><init>(Lo0/m;Lz0/c;LE/d;)V

    .line 37
    .line 38
    .line 39
    iget-object p2, p0, Lo0/f;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 40
    .line 41
    new-instance p3, Lo0/F;

    .line 42
    .line 43
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 44
    .line 45
    .line 46
    move-result p2

    .line 47
    invoke-direct {p3, v0, p2, p1}, Lo0/F;-><init>(Lo0/L;ILn0/j;)V

    .line 48
    .line 49
    .line 50
    const/4 p1, 0x4

    .line 51
    invoke-virtual {v1, p1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-virtual {v1, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 56
    .line 57
    .line 58
    return-void
.end method

.method final w(Lp0/p;IJI)V
    .locals 7

    .line 1
    new-instance v6, Lo0/E;

    .line 2
    .line 3
    move-object v0, v6

    .line 4
    move-object v1, p1

    .line 5
    move v2, p2

    .line 6
    move-wide v3, p3

    .line 7
    move v5, p5

    .line 8
    invoke-direct/range {v0 .. v5}, Lo0/E;-><init>(Lp0/p;IJI)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lo0/f;->m:Lv0/h;

    .line 12
    .line 13
    const/16 p2, 0x12

    .line 14
    .line 15
    invoke-virtual {p1, p2, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final x(Lm0/a;I)V
    .locals 3

    .line 1
    invoke-virtual {p0, p1, p2}, Lo0/f;->c(Lm0/a;I)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lo0/f;->m:Lv0/h;

    .line 8
    .line 9
    const/4 v1, 0x5

    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-virtual {v0, v1, p2, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public final y()V
    .locals 2

    .line 1
    iget-object v0, p0, Lo0/f;->m:Lv0/h;

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final z(Ln0/j;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lo0/f;->m:Lv0/h;

    .line 2
    .line 3
    const/4 v1, 0x7

    .line 4
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method
