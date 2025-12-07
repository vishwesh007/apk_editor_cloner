.class final Lcom/android/billingclient/api/C;
.super Lcom/android/billingclient/api/c;
.source "SourceFile"


# instance fields
.field private volatile A:I

.field private volatile B:Lcom/google/android/gms/internal/play_billing/j;

.field private volatile C:Lcom/android/billingclient/api/B;

.field private volatile D:Lcom/google/android/gms/internal/play_billing/c1;

.field private final z:Landroid/content/Context;


# direct methods
.method constructor <init>(Lt0/a;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/billingclient/api/c;-><init>(Lt0/a;Landroid/content/Context;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/billingclient/api/C;->A:I

    iput-object p2, p0, Lcom/android/billingclient/api/C;->z:Landroid/content/Context;

    return-void
.end method

.method constructor <init>(Lt0/a;Landroid/content/Context;Leu/faircode/netguard/IAB;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/android/billingclient/api/c;-><init>(Lt0/a;Landroid/content/Context;Leu/faircode/netguard/IAB;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/billingclient/api/C;->A:I

    iput-object p2, p0, Lcom/android/billingclient/api/C;->z:Landroid/content/Context;

    return-void
.end method

.method private final A0(IILcom/android/billingclient/api/i;)V
    .locals 0

    .line 1
    invoke-static {p1, p2, p3}, Lcom/android/billingclient/api/D;->b(IILcom/android/billingclient/api/i;)Lcom/google/android/gms/internal/play_billing/d3;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string p2, "ApiFailure should not be null"

    .line 6
    .line 7
    invoke-static {p1, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/android/billingclient/api/c;->g0()Lcom/android/billingclient/api/E;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    check-cast p2, Lcom/android/billingclient/api/k;

    .line 15
    .line 16
    invoke-virtual {p2, p1}, Lcom/android/billingclient/api/k;->d(Lcom/google/android/gms/internal/play_billing/d3;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method private final B0(I)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/android/billingclient/api/D;->d(I)Lcom/google/android/gms/internal/play_billing/g3;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, "ApiSuccess should not be null"

    .line 6
    .line 7
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/android/billingclient/api/c;->g0()Lcom/android/billingclient/api/E;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Lcom/android/billingclient/api/k;

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Lcom/android/billingclient/api/k;->f(Lcom/google/android/gms/internal/play_billing/g3;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method private final C0(ILjava/util/function/Consumer;Ljava/lang/Runnable;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lcom/android/billingclient/api/C;->z0(I)Lcom/google/android/gms/internal/play_billing/a1;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 6
    .line 7
    monitor-enter p0

    .line 8
    :try_start_0
    iget-object v2, p0, Lcom/android/billingclient/api/C;->D:Lcom/google/android/gms/internal/play_billing/c1;

    .line 9
    .line 10
    if-nez v2, :cond_0

    .line 11
    .line 12
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-static {v2}, Lcom/google/android/gms/internal/play_billing/p;->g(Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/internal/play_billing/c1;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    iput-object v2, p0, Lcom/android/billingclient/api/C;->D:Lcom/google/android/gms/internal/play_billing/c1;

    .line 21
    .line 22
    :cond_0
    iget-object v2, p0, Lcom/android/billingclient/api/C;->D:Lcom/google/android/gms/internal/play_billing/c1;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    .line 24
    monitor-exit p0

    .line 25
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/play_billing/q;->h(Lcom/google/android/gms/internal/play_billing/a1;Ljava/util/concurrent/TimeUnit;Lcom/google/android/gms/internal/play_billing/c1;)Lcom/google/android/gms/internal/play_billing/a1;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    new-instance v1, Lcom/android/billingclient/api/z;

    .line 30
    .line 31
    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/billingclient/api/z;-><init>(Lcom/android/billingclient/api/C;ILjava/util/function/Consumer;Ljava/lang/Runnable;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/android/billingclient/api/c;->l0()Lcom/google/android/gms/internal/play_billing/b1;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/play_billing/q;->j(Lcom/google/android/gms/internal/play_billing/a1;Lcom/google/android/gms/internal/play_billing/U0;Lcom/google/android/gms/internal/play_billing/b1;)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :catchall_0
    move-exception p1

    .line 43
    monitor-exit p0

    .line 44
    throw p1
.end method

.method static bridge synthetic E0(Lcom/android/billingclient/api/C;Lcom/google/android/gms/internal/play_billing/j;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/billingclient/api/C;->B:Lcom/google/android/gms/internal/play_billing/j;

    return-void
.end method

.method static bridge synthetic F0(Lcom/android/billingclient/api/C;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/billingclient/api/C;->A:I

    return-void
.end method

.method static v0(Lcom/android/billingclient/api/C;II)Lcom/android/billingclient/api/i;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-string v0, "Billing override value was set by a license tester."

    .line 5
    .line 6
    invoke-static {p2, v0}, Lcom/android/billingclient/api/F;->a(ILjava/lang/String;)Lcom/android/billingclient/api/i;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    const/16 v0, 0x69

    .line 11
    .line 12
    invoke-direct {p0, v0, p1, p2}, Lcom/android/billingclient/api/C;->A0(IILcom/android/billingclient/api/i;)V

    .line 13
    .line 14
    .line 15
    return-object p2
.end method

.method static bridge synthetic x0(Lcom/android/billingclient/api/C;ILcom/android/billingclient/api/i;)V
    .locals 1

    .line 1
    const/16 v0, 0x1c

    invoke-direct {p0, p1, v0, p2}, Lcom/android/billingclient/api/C;->A0(IILcom/android/billingclient/api/i;)V

    return-void
.end method

.method static bridge synthetic y0(Lcom/android/billingclient/api/C;)V
    .locals 1

    .line 1
    const/16 v0, 0x1a

    invoke-direct {p0, v0}, Lcom/android/billingclient/api/C;->B0(I)V

    return-void
.end method

.method private final z0(I)Lcom/google/android/gms/internal/play_billing/a1;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/billingclient/api/C;->u0()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string p1, "BillingClientTesting"

    .line 8
    .line 9
    const-string v0, "Billing Override Service is not ready."

    .line 10
    .line 11
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/play_billing/L0;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const/4 p1, -0x1

    .line 15
    const-string v0, "Billing Override Service connection is disconnected."

    .line 16
    .line 17
    invoke-static {p1, v0}, Lcom/android/billingclient/api/F;->a(ILjava/lang/String;)Lcom/android/billingclient/api/i;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    const/16 v0, 0x6a

    .line 22
    .line 23
    const/16 v1, 0x1c

    .line 24
    .line 25
    invoke-direct {p0, v0, v1, p1}, Lcom/android/billingclient/api/C;->A0(IILcom/android/billingclient/api/i;)V

    .line 26
    .line 27
    .line 28
    const/4 p1, 0x0

    .line 29
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-static {p1}, Lcom/google/android/gms/internal/play_billing/q;->c(Ljava/lang/Integer;)Lcom/google/android/gms/internal/play_billing/a1;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    return-object p1

    .line 38
    :cond_0
    new-instance v0, Lcom/android/billingclient/api/x;

    .line 39
    .line 40
    invoke-direct {v0, p0, p1}, Lcom/android/billingclient/api/x;-><init>(Lcom/android/billingclient/api/C;I)V

    .line 41
    .line 42
    .line 43
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/q;->b(Lcom/android/billingclient/api/x;)Lcom/google/android/gms/internal/play_billing/a1;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    return-object p1
.end method


# virtual methods
.method final synthetic D0(Landroid/app/Activity;Lcom/android/billingclient/api/g;)Lcom/android/billingclient/api/i;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/billingclient/api/c;->d(Landroid/app/Activity;Lcom/android/billingclient/api/g;)Lcom/android/billingclient/api/i;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public final a(LB/b;LB/c;)V
    .locals 3

    .line 1
    new-instance v0, LB/t;

    .line 2
    .line 3
    invoke-direct {v0, p2}, LB/t;-><init>(LB/c;)V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/android/billingclient/api/p;

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    invoke-direct {v1, p0, p1, p2, v2}, Lcom/android/billingclient/api/p;-><init>(Lcom/android/billingclient/api/c;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 10
    .line 11
    .line 12
    const/4 p1, 0x3

    .line 13
    invoke-direct {p0, p1, v0, v1}, Lcom/android/billingclient/api/C;->C0(ILjava/util/function/Consumer;Ljava/lang/Runnable;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final b(LB/a;LB/l;)V
    .locals 3

    .line 1
    new-instance v0, LB/r;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2}, LB/r;-><init>(LB/a;LB/l;)V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/android/billingclient/api/w;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-direct {v1, p0, p1, p2, v2}, Lcom/android/billingclient/api/w;-><init>(Lcom/android/billingclient/api/C;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 10
    .line 11
    .line 12
    const/4 p1, 0x4

    .line 13
    invoke-direct {p0, p1, v0, v1}, Lcom/android/billingclient/api/C;->C0(ILjava/util/function/Consumer;Ljava/lang/Runnable;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final c()V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    const/16 v0, 0x1b

    .line 3
    .line 4
    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/billingclient/api/C;->B0(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x3

    .line 8
    :try_start_1
    iget-object v1, p0, Lcom/android/billingclient/api/C;->C:Lcom/android/billingclient/api/B;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    iget-object v1, p0, Lcom/android/billingclient/api/C;->B:Lcom/google/android/gms/internal/play_billing/j;

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    const-string v1, "BillingClientTesting"

    .line 17
    .line 18
    const-string v2, "Unbinding from Billing Override Service."

    .line 19
    .line 20
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/play_billing/L0;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object v1, p0, Lcom/android/billingclient/api/C;->z:Landroid/content/Context;

    .line 24
    .line 25
    iget-object v2, p0, Lcom/android/billingclient/api/C;->C:Lcom/android/billingclient/api/B;

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 28
    .line 29
    .line 30
    new-instance v1, Lcom/android/billingclient/api/B;

    .line 31
    .line 32
    invoke-direct {v1, p0}, Lcom/android/billingclient/api/B;-><init>(Lcom/android/billingclient/api/C;)V

    .line 33
    .line 34
    .line 35
    iput-object v1, p0, Lcom/android/billingclient/api/C;->C:Lcom/android/billingclient/api/B;

    .line 36
    .line 37
    :cond_0
    const/4 v1, 0x0

    .line 38
    iput-object v1, p0, Lcom/android/billingclient/api/C;->B:Lcom/google/android/gms/internal/play_billing/j;

    .line 39
    .line 40
    iget-object v2, p0, Lcom/android/billingclient/api/C;->D:Lcom/google/android/gms/internal/play_billing/c1;

    .line 41
    .line 42
    if-eqz v2, :cond_1

    .line 43
    .line 44
    iget-object v2, p0, Lcom/android/billingclient/api/C;->D:Lcom/google/android/gms/internal/play_billing/c1;

    .line 45
    .line 46
    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 47
    .line 48
    .line 49
    iput-object v1, p0, Lcom/android/billingclient/api/C;->D:Lcom/google/android/gms/internal/play_billing/c1;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :catchall_0
    move-exception v1

    .line 53
    goto :goto_1

    .line 54
    :catch_0
    move-exception v1

    .line 55
    :try_start_2
    const-string v2, "BillingClientTesting"

    .line 56
    .line 57
    const-string v3, "There was an exception while ending Billing Override Service connection!"

    .line 58
    .line 59
    invoke-static {v2, v3, v1}, Lcom/google/android/gms/internal/play_billing/L0;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 60
    .line 61
    .line 62
    :cond_1
    :goto_0
    :try_start_3
    iput v0, p0, Lcom/android/billingclient/api/C;->A:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 63
    .line 64
    monitor-exit p0

    .line 65
    invoke-super {p0}, Lcom/android/billingclient/api/c;->c()V

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :goto_1
    :try_start_4
    iput v0, p0, Lcom/android/billingclient/api/C;->A:I

    .line 70
    .line 71
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 72
    :catchall_1
    move-exception v0

    .line 73
    monitor-exit p0

    .line 74
    throw v0
.end method

.method public final d(Landroid/app/Activity;Lcom/android/billingclient/api/g;)Lcom/android/billingclient/api/i;
    .locals 9

    .line 1
    const-string v0, "BillingClientTesting"

    .line 2
    .line 3
    new-instance v1, Lcom/android/billingclient/api/y;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lcom/android/billingclient/api/y;-><init>(Lcom/android/billingclient/api/C;)V

    .line 6
    .line 7
    .line 8
    const/4 v2, 0x2

    .line 9
    invoke-direct {p0, v2}, Lcom/android/billingclient/api/C;->z0(I)Lcom/google/android/gms/internal/play_billing/a1;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    const/4 v4, 0x0

    .line 14
    const/16 v5, 0x1c

    .line 15
    .line 16
    :try_start_0
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 17
    .line 18
    const-wide/16 v7, 0x6f54

    .line 19
    .line 20
    invoke-interface {v3, v7, v8, v6}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    check-cast v3, Ljava/lang/Integer;

    .line 25
    .line 26
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 27
    .line 28
    .line 29
    move-result v3
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    goto :goto_1

    .line 31
    :catch_0
    move-exception v3

    .line 32
    instance-of v6, v3, Ljava/lang/InterruptedException;

    .line 33
    .line 34
    if-eqz v6, :cond_0

    .line 35
    .line 36
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 37
    .line 38
    .line 39
    move-result-object v6

    .line 40
    invoke-virtual {v6}, Ljava/lang/Thread;->interrupt()V

    .line 41
    .line 42
    .line 43
    :cond_0
    const/16 v6, 0x6b

    .line 44
    .line 45
    sget-object v7, Lcom/android/billingclient/api/F;->u:Lcom/android/billingclient/api/i;

    .line 46
    .line 47
    invoke-direct {p0, v6, v5, v7}, Lcom/android/billingclient/api/C;->A0(IILcom/android/billingclient/api/i;)V

    .line 48
    .line 49
    .line 50
    const-string v5, "An error occurred while retrieving billing override."

    .line 51
    .line 52
    invoke-static {v0, v5, v3}, Lcom/google/android/gms/internal/play_billing/L0;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :catch_1
    move-exception v3

    .line 57
    const/16 v6, 0x72

    .line 58
    .line 59
    sget-object v7, Lcom/android/billingclient/api/F;->u:Lcom/android/billingclient/api/i;

    .line 60
    .line 61
    invoke-direct {p0, v6, v5, v7}, Lcom/android/billingclient/api/C;->A0(IILcom/android/billingclient/api/i;)V

    .line 62
    .line 63
    .line 64
    const-string v5, "Asynchronous call to Billing Override Service timed out."

    .line 65
    .line 66
    invoke-static {v0, v5, v3}, Lcom/google/android/gms/internal/play_billing/L0;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 67
    .line 68
    .line 69
    :goto_0
    const/4 v3, 0x0

    .line 70
    :goto_1
    if-lez v3, :cond_1

    .line 71
    .line 72
    const/4 v4, 0x1

    .line 73
    :cond_1
    if-eqz v4, :cond_2

    .line 74
    .line 75
    const-string p1, "Billing override value was set by a license tester."

    .line 76
    .line 77
    invoke-static {v3, p1}, Lcom/android/billingclient/api/F;->a(ILjava/lang/String;)Lcom/android/billingclient/api/i;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    const/16 p2, 0x69

    .line 82
    .line 83
    invoke-direct {p0, p2, v2, p1}, Lcom/android/billingclient/api/C;->A0(IILcom/android/billingclient/api/i;)V

    .line 84
    .line 85
    .line 86
    invoke-static {v1, p1}, LB/i;->e(Lcom/android/billingclient/api/y;Lcom/android/billingclient/api/i;)V

    .line 87
    .line 88
    .line 89
    goto :goto_2

    .line 90
    :cond_2
    :try_start_1
    invoke-virtual {p0, p1, p2}, Lcom/android/billingclient/api/C;->D0(Landroid/app/Activity;Lcom/android/billingclient/api/g;)Lcom/android/billingclient/api/i;

    .line 91
    .line 92
    .line 93
    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 94
    goto :goto_2

    .line 95
    :catch_2
    move-exception p1

    .line 96
    sget-object p2, Lcom/android/billingclient/api/F;->k:Lcom/android/billingclient/api/i;

    .line 97
    .line 98
    const/16 v1, 0x73

    .line 99
    .line 100
    invoke-direct {p0, v1, v2, p2}, Lcom/android/billingclient/api/C;->A0(IILcom/android/billingclient/api/i;)V

    .line 101
    .line 102
    .line 103
    const-string v1, "An internal error occurred."

    .line 104
    .line 105
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/play_billing/L0;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 106
    .line 107
    .line 108
    move-object p1, p2

    .line 109
    :goto_2
    return-object p1
.end method

.method public final g(Lcom/android/billingclient/api/l;LB/p;)V
    .locals 3

    .line 1
    new-instance v0, LB/s;

    .line 2
    .line 3
    invoke-direct {v0, p2}, LB/s;-><init>(LB/p;)V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/android/billingclient/api/w;

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    invoke-direct {v1, p0, p1, p2, v2}, Lcom/android/billingclient/api/w;-><init>(Lcom/android/billingclient/api/C;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 10
    .line 11
    .line 12
    const/16 p1, 0x8

    .line 13
    .line 14
    invoke-direct {p0, p1, v0, v1}, Lcom/android/billingclient/api/C;->C0(ILjava/util/function/Consumer;Ljava/lang/Runnable;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final h(LB/h;)V
    .locals 7

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/android/billingclient/api/C;->u0()Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    const/16 v1, 0x1a

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const-string v0, "BillingClientTesting"

    .line 11
    .line 12
    const-string v2, "Billing Override Service connection is valid. No need to re-initialize."

    .line 13
    .line 14
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/play_billing/L0;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-direct {p0, v1}, Lcom/android/billingclient/api/C;->B0(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    .line 19
    .line 20
    monitor-exit p0

    .line 21
    goto/16 :goto_2

    .line 22
    .line 23
    :cond_0
    :try_start_1
    iget v0, p0, Lcom/android/billingclient/api/C;->A:I

    .line 24
    .line 25
    const/4 v2, 0x1

    .line 26
    if-ne v0, v2, :cond_1

    .line 27
    .line 28
    const-string v0, "BillingClientTesting"

    .line 29
    .line 30
    const-string v1, "Client is already in the process of connecting to Billing Override Service."

    .line 31
    .line 32
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/play_billing/L0;->h(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 33
    .line 34
    .line 35
    monitor-exit p0

    .line 36
    goto/16 :goto_2

    .line 37
    .line 38
    :cond_1
    :try_start_2
    iget v0, p0, Lcom/android/billingclient/api/C;->A:I

    .line 39
    .line 40
    const/4 v3, 0x3

    .line 41
    if-ne v0, v3, :cond_2

    .line 42
    .line 43
    const-string v0, "BillingClientTesting"

    .line 44
    .line 45
    const-string v2, "Billing Override Service Client was already closed and can\'t be reused. Please create another instance."

    .line 46
    .line 47
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/play_billing/L0;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    const-string v0, "Billing Override Service connection is disconnected."

    .line 51
    .line 52
    const/4 v2, -0x1

    .line 53
    invoke-static {v2, v0}, Lcom/android/billingclient/api/F;->a(ILjava/lang/String;)Lcom/android/billingclient/api/i;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    const/16 v2, 0x26

    .line 58
    .line 59
    invoke-direct {p0, v2, v1, v0}, Lcom/android/billingclient/api/C;->A0(IILcom/android/billingclient/api/i;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 60
    .line 61
    .line 62
    monitor-exit p0

    .line 63
    goto/16 :goto_2

    .line 64
    .line 65
    :cond_2
    :try_start_3
    iput v2, p0, Lcom/android/billingclient/api/C;->A:I

    .line 66
    .line 67
    const-string v0, "BillingClientTesting"

    .line 68
    .line 69
    const-string v3, "Starting Billing Override Service setup."

    .line 70
    .line 71
    invoke-static {v0, v3}, Lcom/google/android/gms/internal/play_billing/L0;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    new-instance v0, Lcom/android/billingclient/api/B;

    .line 75
    .line 76
    invoke-direct {v0, p0}, Lcom/android/billingclient/api/B;-><init>(Lcom/android/billingclient/api/C;)V

    .line 77
    .line 78
    .line 79
    iput-object v0, p0, Lcom/android/billingclient/api/C;->C:Lcom/android/billingclient/api/B;

    .line 80
    .line 81
    new-instance v0, Landroid/content/Intent;

    .line 82
    .line 83
    const-string v3, "com.google.android.apps.play.billingtestcompanion.BillingOverrideService.BIND"

    .line 84
    .line 85
    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    const-string v3, "com.google.android.apps.play.billingtestcompanion"

    .line 89
    .line 90
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 91
    .line 92
    .line 93
    iget-object v3, p0, Lcom/android/billingclient/api/C;->z:Landroid/content/Context;

    .line 94
    .line 95
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    const/4 v4, 0x0

    .line 100
    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    .line 101
    .line 102
    .line 103
    move-result-object v3

    .line 104
    if-eqz v3, :cond_5

    .line 105
    .line 106
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 107
    .line 108
    .line 109
    move-result v5

    .line 110
    if-nez v5, :cond_5

    .line 111
    .line 112
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v3

    .line 116
    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 117
    .line 118
    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 119
    .line 120
    if-eqz v3, :cond_6

    .line 121
    .line 122
    iget-object v5, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 123
    .line 124
    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 125
    .line 126
    const-string v6, "com.google.android.apps.play.billingtestcompanion"

    .line 127
    .line 128
    invoke-static {v5, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    move-result v6

    .line 132
    if-eqz v6, :cond_4

    .line 133
    .line 134
    if-eqz v3, :cond_4

    .line 135
    .line 136
    new-instance v6, Landroid/content/ComponentName;

    .line 137
    .line 138
    invoke-direct {v6, v5, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    new-instance v3, Landroid/content/Intent;

    .line 142
    .line 143
    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v3, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 147
    .line 148
    .line 149
    iget-object v0, p0, Lcom/android/billingclient/api/C;->z:Landroid/content/Context;

    .line 150
    .line 151
    iget-object v5, p0, Lcom/android/billingclient/api/C;->C:Lcom/android/billingclient/api/B;

    .line 152
    .line 153
    invoke-virtual {v0, v3, v5, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 154
    .line 155
    .line 156
    move-result v0

    .line 157
    if-eqz v0, :cond_3

    .line 158
    .line 159
    const-string v0, "BillingClientTesting"

    .line 160
    .line 161
    const-string v1, "Billing Override Service was bonded successfully."

    .line 162
    .line 163
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/play_billing/L0;->g(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 164
    .line 165
    .line 166
    monitor-exit p0

    .line 167
    goto :goto_2

    .line 168
    :cond_3
    :try_start_4
    const-string v0, "BillingClientTesting"

    .line 169
    .line 170
    const-string v2, "Connection to Billing Override Service is blocked."

    .line 171
    .line 172
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/play_billing/L0;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    goto :goto_0

    .line 176
    :cond_4
    const-string v0, "BillingClientTesting"

    .line 177
    .line 178
    const-string v2, "The device doesn\'t have valid Play Billing Lab."

    .line 179
    .line 180
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/play_billing/L0;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    :goto_0
    const/16 v2, 0x27

    .line 184
    .line 185
    goto :goto_1

    .line 186
    :cond_5
    const/16 v2, 0x29

    .line 187
    .line 188
    :cond_6
    :goto_1
    iput v4, p0, Lcom/android/billingclient/api/C;->A:I

    .line 189
    .line 190
    const-string v0, "BillingClientTesting"

    .line 191
    .line 192
    const-string v3, "Billing Override Service unavailable on device."

    .line 193
    .line 194
    invoke-static {v0, v3}, Lcom/google/android/gms/internal/play_billing/L0;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    const-string v0, "Billing Override Service unavailable on device."

    .line 198
    .line 199
    const/4 v3, 0x2

    .line 200
    invoke-static {v3, v0}, Lcom/android/billingclient/api/F;->a(ILjava/lang/String;)Lcom/android/billingclient/api/i;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    invoke-direct {p0, v2, v1, v0}, Lcom/android/billingclient/api/C;->A0(IILcom/android/billingclient/api/i;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 205
    .line 206
    .line 207
    monitor-exit p0

    .line 208
    :goto_2
    invoke-super {p0, p1}, Lcom/android/billingclient/api/c;->h(LB/h;)V

    .line 209
    .line 210
    .line 211
    return-void

    .line 212
    :catchall_0
    move-exception p1

    .line 213
    monitor-exit p0

    .line 214
    throw p1
.end method

.method final synthetic r0(LB/b;LB/c;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/billingclient/api/c;->a(LB/b;LB/c;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method final synthetic s0(LB/a;LB/l;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/billingclient/api/c;->b(LB/a;LB/l;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method final synthetic t0(Lcom/android/billingclient/api/l;LB/p;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/billingclient/api/c;->g(Lcom/android/billingclient/api/l;LB/p;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final declared-synchronized u0()Z
    .locals 2

    .line 1
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/billingclient/api/C;->A:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/billingclient/api/C;->B:Lcom/google/android/gms/internal/play_billing/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/billingclient/api/C;->C:Lcom/android/billingclient/api/B;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    const/4 v0, 0x1

    return v0

    :cond_0
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final synthetic w0(ILcom/google/android/gms/internal/play_billing/N3;)V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/billingclient/api/C;->B:Lcom/google/android/gms/internal/play_billing/j;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    :try_start_1
    iget-object v0, p0, Lcom/android/billingclient/api/C;->B:Lcom/google/android/gms/internal/play_billing/j;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/billingclient/api/C;->z:Landroid/content/Context;

    .line 9
    .line 10
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    packed-switch p1, :pswitch_data_0

    .line 15
    .line 16
    .line 17
    const-string p1, "QUERY_SKU_DETAILS_ASYNC"

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :pswitch_0
    const-string p1, "QUERY_PRODUCT_DETAILS_ASYNC"

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :pswitch_1
    const-string p1, "START_CONNECTION"

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :pswitch_2
    const-string p1, "IS_FEATURE_SUPPORTED"

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :pswitch_3
    const-string p1, "CONSUME_ASYNC"

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :pswitch_4
    const-string p1, "ACKNOWLEDGE_PURCHASE"

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :pswitch_5
    const-string p1, "LAUNCH_BILLING_FLOW"

    .line 36
    .line 37
    :goto_0
    new-instance v2, Lcom/android/billingclient/api/A;

    .line 38
    .line 39
    invoke-direct {v2, p2}, Lcom/android/billingclient/api/A;-><init>(Lcom/google/android/gms/internal/play_billing/N3;)V

    .line 40
    .line 41
    .line 42
    invoke-interface {v0, v1, p1, v2}, Lcom/google/android/gms/internal/play_billing/j;->s(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/play_billing/l;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 43
    .line 44
    .line 45
    goto :goto_1

    .line 46
    :catch_0
    move-exception p1

    .line 47
    sget-object v0, Lcom/android/billingclient/api/F;->u:Lcom/android/billingclient/api/i;

    .line 48
    .line 49
    const/16 v1, 0x6b

    .line 50
    .line 51
    const/16 v2, 0x1c

    .line 52
    .line 53
    invoke-direct {p0, v1, v2, v0}, Lcom/android/billingclient/api/C;->A0(IILcom/android/billingclient/api/i;)V

    .line 54
    .line 55
    .line 56
    const-string v0, "BillingClientTesting"

    .line 57
    .line 58
    const-string v1, "An error occurred while retrieving billing override."

    .line 59
    .line 60
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/play_billing/L0;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 61
    .line 62
    .line 63
    const/4 p1, 0x0

    .line 64
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/play_billing/N3;->b(Ljava/lang/Integer;)V

    .line 69
    .line 70
    .line 71
    :goto_1
    return-void

    .line 72
    nop

    .line 73
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
