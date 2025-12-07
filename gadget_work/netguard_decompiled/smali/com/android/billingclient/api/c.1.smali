.class Lcom/android/billingclient/api/c;
.super Lcom/android/billingclient/api/b;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/Object;

.field private volatile b:I

.field private final c:Ljava/lang/String;

.field private final d:Landroid/os/Handler;

.field private volatile e:Lcom/android/billingclient/api/M;

.field private f:Landroid/content/Context;

.field private g:Lcom/android/billingclient/api/E;

.field private volatile h:Lcom/google/android/gms/internal/play_billing/d;

.field private volatile i:Lcom/android/billingclient/api/v;

.field private j:Z

.field private k:I

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:Z

.field private u:Lt0/a;

.field private v:Z

.field private w:Ljava/util/concurrent/ExecutorService;

.field private volatile x:Lcom/google/android/gms/internal/play_billing/b1;

.field private final y:Ljava/lang/Long;


# direct methods
.method constructor <init>(Lt0/a;Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/android/billingclient/api/b;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/billingclient/api/c;->a:Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/billingclient/api/c;->b:I

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/billingclient/api/c;->d:Landroid/os/Handler;

    iput v0, p0, Lcom/android/billingclient/api/c;->k:I

    new-instance v0, Ljava/util/Random;

    .line 2
    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/android/billingclient/api/c;->y:Ljava/lang/Long;

    .line 3
    invoke-static {}, Lcom/android/billingclient/api/c;->A()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/billingclient/api/c;->c:Ljava/lang/String;

    .line 4
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcom/android/billingclient/api/c;->f:Landroid/content/Context;

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/s3;->y()Lcom/google/android/gms/internal/play_billing/r3;

    move-result-object p2

    .line 6
    invoke-static {}, Lcom/android/billingclient/api/c;->A()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/google/android/gms/internal/play_billing/r3;->p(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/billingclient/api/c;->f:Landroid/content/Context;

    .line 7
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/google/android/gms/internal/play_billing/r3;->o(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/google/android/gms/internal/play_billing/r3;->n(J)V

    iget-object v0, p0, Lcom/android/billingclient/api/c;->f:Landroid/content/Context;

    .line 9
    invoke-virtual {p2}, Lcom/google/android/gms/internal/play_billing/V1;->j()Lcom/google/android/gms/internal/play_billing/Z1;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/play_billing/s3;

    .line 10
    new-instance v1, Lcom/android/billingclient/api/k;

    invoke-direct {v1, v0, p2}, Lcom/android/billingclient/api/k;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/play_billing/s3;)V

    iput-object v1, p0, Lcom/android/billingclient/api/c;->g:Lcom/android/billingclient/api/E;

    const-string p2, "BillingClient"

    const-string v0, "Billing client should have a valid listener but the provided is null."

    .line 11
    invoke-static {p2, v0}, Lcom/google/android/gms/internal/play_billing/L0;->h(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Lcom/android/billingclient/api/M;

    iget-object v0, p0, Lcom/android/billingclient/api/c;->f:Landroid/content/Context;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/billingclient/api/c;->g:Lcom/android/billingclient/api/E;

    .line 12
    invoke-direct {p2, v0, v1, v2}, Lcom/android/billingclient/api/M;-><init>(Landroid/content/Context;Leu/faircode/netguard/IAB;Lcom/android/billingclient/api/E;)V

    iput-object p2, p0, Lcom/android/billingclient/api/c;->e:Lcom/android/billingclient/api/M;

    iput-object p1, p0, Lcom/android/billingclient/api/c;->u:Lt0/a;

    iget-object p1, p0, Lcom/android/billingclient/api/c;->f:Landroid/content/Context;

    .line 13
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lt0/a;Landroid/content/Context;Leu/faircode/netguard/IAB;)V
    .locals 4

    .line 14
    invoke-static {}, Lcom/android/billingclient/api/c;->A()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/billingclient/api/b;-><init>()V

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/billingclient/api/c;->a:Ljava/lang/Object;

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/billingclient/api/c;->b:I

    new-instance v2, Landroid/os/Handler;

    .line 15
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/billingclient/api/c;->d:Landroid/os/Handler;

    iput v1, p0, Lcom/android/billingclient/api/c;->k:I

    new-instance v2, Ljava/util/Random;

    .line 16
    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    invoke-virtual {v2}, Ljava/util/Random;->nextLong()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lcom/android/billingclient/api/c;->y:Ljava/lang/Long;

    iput-object v0, p0, Lcom/android/billingclient/api/c;->c:Ljava/lang/String;

    .line 17
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcom/android/billingclient/api/c;->f:Landroid/content/Context;

    .line 18
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/s3;->y()Lcom/google/android/gms/internal/play_billing/r3;

    move-result-object p2

    .line 19
    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/play_billing/r3;->p(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/billingclient/api/c;->f:Landroid/content/Context;

    .line 20
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/play_billing/r3;->o(Ljava/lang/String;)V

    .line 21
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p2, v2, v3}, Lcom/google/android/gms/internal/play_billing/r3;->n(J)V

    .line 22
    iget-object v0, p0, Lcom/android/billingclient/api/c;->f:Landroid/content/Context;

    .line 23
    invoke-virtual {p2}, Lcom/google/android/gms/internal/play_billing/V1;->j()Lcom/google/android/gms/internal/play_billing/Z1;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/play_billing/s3;

    .line 24
    new-instance v2, Lcom/android/billingclient/api/k;

    invoke-direct {v2, v0, p2}, Lcom/android/billingclient/api/k;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/play_billing/s3;)V

    iput-object v2, p0, Lcom/android/billingclient/api/c;->g:Lcom/android/billingclient/api/E;

    if-nez p3, :cond_0

    const-string p2, "BillingClient"

    const-string v0, "Billing client should have a valid listener but the provided is null."

    .line 25
    invoke-static {p2, v0}, Lcom/google/android/gms/internal/play_billing/L0;->h(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-instance p2, Lcom/android/billingclient/api/M;

    iget-object v0, p0, Lcom/android/billingclient/api/c;->f:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/billingclient/api/c;->g:Lcom/android/billingclient/api/E;

    .line 26
    invoke-direct {p2, v0, p3, v2}, Lcom/android/billingclient/api/M;-><init>(Landroid/content/Context;Leu/faircode/netguard/IAB;Lcom/android/billingclient/api/E;)V

    iput-object p2, p0, Lcom/android/billingclient/api/c;->e:Lcom/android/billingclient/api/M;

    iput-object p1, p0, Lcom/android/billingclient/api/c;->u:Lt0/a;

    iput-boolean v1, p0, Lcom/android/billingclient/api/c;->v:Z

    iget-object p1, p0, Lcom/android/billingclient/api/c;->f:Landroid/content/Context;

    .line 27
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    return-void
.end method

.method private static A()Ljava/lang/String;
    .locals 2

    .line 1
    :try_start_0
    const-string v0, "com.android.billingclient.ktx.BuildConfig"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "VERSION_NAME"

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    .line 20
    return-object v0

    .line 21
    :catch_0
    const-string v0, "7.1.1"

    .line 22
    .line 23
    return-object v0
.end method

.method private final declared-synchronized B()Ljava/util/concurrent/ExecutorService;
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/billingclient/api/c;->w:Ljava/util/concurrent/ExecutorService;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    sget v0, Lcom/google/android/gms/internal/play_billing/L0;->a:I

    .line 7
    .line 8
    new-instance v1, Lcom/android/billingclient/api/r;

    .line 9
    .line 10
    invoke-direct {v1}, Lcom/android/billingclient/api/r;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-static {v0, v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Lcom/android/billingclient/api/c;->w:Ljava/util/concurrent/ExecutorService;

    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Lcom/android/billingclient/api/c;->w:Ljava/util/concurrent/ExecutorService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    .line 21
    monitor-exit p0

    .line 22
    return-object v0

    .line 23
    :catchall_0
    move-exception v0

    .line 24
    monitor-exit p0

    .line 25
    throw v0
.end method

.method private final C(I)V
    .locals 6

    .line 1
    const-string v0, "Setting clientState from "

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/billingclient/api/c;->a:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    iget v2, p0, Lcom/android/billingclient/api/c;->b:I

    .line 7
    .line 8
    const/4 v3, 0x3

    .line 9
    if-ne v2, v3, :cond_0

    .line 10
    .line 11
    monitor-exit v1

    .line 12
    return-void

    .line 13
    :cond_0
    const-string v2, "BillingClient"

    .line 14
    .line 15
    iget v3, p0, Lcom/android/billingclient/api/c;->b:I

    .line 16
    .line 17
    const/4 v4, 0x2

    .line 18
    const/4 v5, 0x1

    .line 19
    if-eqz v3, :cond_3

    .line 20
    .line 21
    if-eq v3, v5, :cond_2

    .line 22
    .line 23
    if-eq v3, v4, :cond_1

    .line 24
    .line 25
    const-string v3, "CLOSED"

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    const-string v3, "CONNECTED"

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_2
    const-string v3, "CONNECTING"

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_3
    const-string v3, "DISCONNECTED"

    .line 35
    .line 36
    :goto_0
    if-eqz p1, :cond_6

    .line 37
    .line 38
    if-eq p1, v5, :cond_5

    .line 39
    .line 40
    if-eq p1, v4, :cond_4

    .line 41
    .line 42
    const-string v4, "CLOSED"

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_4
    const-string v4, "CONNECTED"

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_5
    const-string v4, "CONNECTING"

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_6
    const-string v4, "DISCONNECTED"

    .line 52
    .line 53
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string v0, " to "

    .line 62
    .line 63
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/play_billing/L0;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    iput p1, p0, Lcom/android/billingclient/api/c;->b:I

    .line 77
    .line 78
    monitor-exit v1

    .line 79
    return-void

    .line 80
    :catchall_0
    move-exception p1

    .line 81
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    throw p1
.end method

.method private final declared-synchronized D()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/billingclient/api/c;->w:Ljava/util/concurrent/ExecutorService;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/android/billingclient/api/c;->w:Ljava/util/concurrent/ExecutorService;

    .line 11
    .line 12
    iput-object v0, p0, Lcom/android/billingclient/api/c;->x:Lcom/google/android/gms/internal/play_billing/b1;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    monitor-exit p0

    .line 15
    return-void

    .line 16
    :cond_0
    monitor-exit p0

    .line 17
    return-void

    .line 18
    :catchall_0
    move-exception v0

    .line 19
    monitor-exit p0

    .line 20
    throw v0
.end method

.method private final E()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/c;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/billingclient/api/c;->i:Lcom/android/billingclient/api/v;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    :try_start_1
    iget-object v2, p0, Lcom/android/billingclient/api/c;->f:Landroid/content/Context;

    .line 10
    .line 11
    iget-object v3, p0, Lcom/android/billingclient/api/c;->i:Lcom/android/billingclient/api/v;

    .line 12
    .line 13
    invoke-virtual {v2, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    .line 15
    .line 16
    :try_start_2
    iput-object v1, p0, Lcom/android/billingclient/api/c;->h:Lcom/google/android/gms/internal/play_billing/d;

    .line 17
    .line 18
    iput-object v1, p0, Lcom/android/billingclient/api/c;->i:Lcom/android/billingclient/api/v;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception v2

    .line 22
    :try_start_3
    const-string v3, "BillingClient"

    .line 23
    .line 24
    const-string v4, "There was an exception while unbinding service!"

    .line 25
    .line 26
    invoke-static {v3, v4, v2}, Lcom/google/android/gms/internal/play_billing/L0;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 27
    .line 28
    .line 29
    :try_start_4
    iput-object v1, p0, Lcom/android/billingclient/api/c;->h:Lcom/google/android/gms/internal/play_billing/d;

    .line 30
    .line 31
    iput-object v1, p0, Lcom/android/billingclient/api/c;->i:Lcom/android/billingclient/api/v;

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :catchall_1
    move-exception v2

    .line 35
    iput-object v1, p0, Lcom/android/billingclient/api/c;->h:Lcom/google/android/gms/internal/play_billing/d;

    .line 36
    .line 37
    iput-object v1, p0, Lcom/android/billingclient/api/c;->i:Lcom/android/billingclient/api/v;

    .line 38
    .line 39
    throw v2

    .line 40
    :cond_0
    :goto_0
    monitor-exit v0

    .line 41
    return-void

    .line 42
    :catchall_2
    move-exception v1

    .line 43
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 44
    throw v1
.end method

.method private final F(Lcom/android/billingclient/api/i;ILjava/lang/String;Ljava/lang/Exception;)Lcom/android/billingclient/api/l;
    .locals 2

    .line 1
    const/16 v0, 0x9

    .line 2
    .line 3
    invoke-static {p4}, Lcom/android/billingclient/api/D;->a(Ljava/lang/Exception;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {p0, p2, v0, p1, v1}, Lcom/android/billingclient/api/c;->Z(IILcom/android/billingclient/api/i;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string p2, "BillingClient"

    .line 11
    .line 12
    invoke-static {p2, p3, p4}, Lcom/google/android/gms/internal/play_billing/L0;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 13
    .line 14
    .line 15
    new-instance p2, Lcom/android/billingclient/api/l;

    .line 16
    .line 17
    const/4 p3, 0x0

    .line 18
    invoke-direct {p2, p1, p3}, Lcom/android/billingclient/api/l;-><init>(Lcom/android/billingclient/api/i;Ljava/util/ArrayList;)V

    .line 19
    .line 20
    .line 21
    return-object p2
.end method

.method private final G(Lcom/android/billingclient/api/i;ILjava/lang/String;Ljava/lang/Exception;)Lcom/android/billingclient/api/K;
    .locals 1

    .line 1
    const-string v0, "BillingClient"

    .line 2
    .line 3
    invoke-static {v0, p3, p4}, Lcom/google/android/gms/internal/play_billing/L0;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4
    .line 5
    .line 6
    const/16 p3, 0x8

    .line 7
    .line 8
    invoke-static {p4}, Lcom/android/billingclient/api/D;->a(Ljava/lang/Exception;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p4

    .line 12
    invoke-direct {p0, p2, p3, p1, p4}, Lcom/android/billingclient/api/c;->Z(IILcom/android/billingclient/api/i;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    new-instance p2, Lcom/android/billingclient/api/K;

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/android/billingclient/api/i;->b()I

    .line 18
    .line 19
    .line 20
    move-result p3

    .line 21
    invoke-virtual {p1}, Lcom/android/billingclient/api/i;->a()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    const/4 p4, 0x0

    .line 26
    invoke-direct {p2, p3, p1, p4}, Lcom/android/billingclient/api/K;-><init>(ILjava/lang/String;Ljava/util/ArrayList;)V

    .line 27
    .line 28
    .line 29
    return-object p2
.end method

.method private final H(LB/c;Lcom/android/billingclient/api/i;ILjava/lang/Exception;)V
    .locals 2

    .line 1
    const-string v0, "BillingClient"

    .line 2
    .line 3
    const-string v1, "Error in acknowledge purchase!"

    .line 4
    .line 5
    invoke-static {v0, v1, p4}, Lcom/google/android/gms/internal/play_billing/L0;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x3

    .line 9
    invoke-static {p4}, Lcom/android/billingclient/api/D;->a(Ljava/lang/Exception;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p4

    .line 13
    invoke-direct {p0, p3, v0, p2, p4}, Lcom/android/billingclient/api/c;->Z(IILcom/android/billingclient/api/i;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-interface {p1, p2}, LB/c;->onAcknowledgePurchaseResponse(Lcom/android/billingclient/api/i;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method private final I(LB/l;Ljava/lang/String;Lcom/android/billingclient/api/i;ILjava/lang/String;Ljava/lang/Exception;)V
    .locals 1

    .line 1
    const-string v0, "BillingClient"

    .line 2
    .line 3
    invoke-static {v0, p5, p6}, Lcom/google/android/gms/internal/play_billing/L0;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4
    .line 5
    .line 6
    const/4 p5, 0x4

    .line 7
    invoke-static {p6}, Lcom/android/billingclient/api/D;->a(Ljava/lang/Exception;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p6

    .line 11
    invoke-direct {p0, p4, p5, p3, p6}, Lcom/android/billingclient/api/c;->Z(IILcom/android/billingclient/api/i;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-interface {p1, p3, p2}, LB/l;->onConsumeResponse(Lcom/android/billingclient/api/i;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method static bridge synthetic J(Lcom/android/billingclient/api/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/billingclient/api/c;->E()V

    return-void
.end method

.method static bridge synthetic P(Lcom/android/billingclient/api/c;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/billingclient/api/c;->t:Z

    return p0
.end method

.method static bridge synthetic Q(Lcom/android/billingclient/api/c;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/c;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget p0, p0, Lcom/android/billingclient/api/c;->b:I

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    if-ne p0, v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v1, 0x0

    .line 11
    :goto_0
    monitor-exit v0

    .line 12
    return v1

    .line 13
    :catchall_0
    move-exception p0

    .line 14
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    throw p0
.end method

.method static R(Lcom/android/billingclient/api/c;Ljava/lang/String;)Lcom/android/billingclient/api/l;
    .locals 14

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-string v0, "Querying owned items, item type: "

    .line 5
    .line 6
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const-string v2, "BillingClient"

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/play_billing/L0;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    new-instance v0, Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 22
    .line 23
    .line 24
    iget-boolean v1, p0, Lcom/android/billingclient/api/c;->m:Z

    .line 25
    .line 26
    iget-boolean v2, p0, Lcom/android/billingclient/api/c;->s:Z

    .line 27
    .line 28
    iget-object v2, p0, Lcom/android/billingclient/api/c;->u:Lt0/a;

    .line 29
    .line 30
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    iget-object v2, p0, Lcom/android/billingclient/api/c;->u:Lt0/a;

    .line 34
    .line 35
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    iget-object v2, p0, Lcom/android/billingclient/api/c;->y:Ljava/lang/Long;

    .line 39
    .line 40
    iget-object v3, p0, Lcom/android/billingclient/api/c;->c:Ljava/lang/String;

    .line 41
    .line 42
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 43
    .line 44
    .line 45
    move-result-wide v4

    .line 46
    new-instance v2, Landroid/os/Bundle;

    .line 47
    .line 48
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 49
    .line 50
    .line 51
    invoke-static {v2, v3, v4, v5}, Lcom/google/android/gms/internal/play_billing/L0;->b(Landroid/os/Bundle;Ljava/lang/String;J)V

    .line 52
    .line 53
    .line 54
    const/4 v3, 0x1

    .line 55
    if-eqz v1, :cond_0

    .line 56
    .line 57
    const-string v1, "enablePendingPurchases"

    .line 58
    .line 59
    invoke-virtual {v2, v1, v3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 60
    .line 61
    .line 62
    :cond_0
    const/4 v1, 0x0

    .line 63
    move-object v10, v1

    .line 64
    :goto_0
    const/16 v4, 0x34

    .line 65
    .line 66
    :try_start_0
    iget-object v5, p0, Lcom/android/billingclient/api/c;->a:Ljava/lang/Object;

    .line 67
    .line 68
    monitor-enter v5
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 69
    :try_start_1
    iget-object v6, p0, Lcom/android/billingclient/api/c;->h:Lcom/google/android/gms/internal/play_billing/d;

    .line 70
    .line 71
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 72
    if-nez v6, :cond_1

    .line 73
    .line 74
    :try_start_2
    sget-object p1, Lcom/android/billingclient/api/F;->m:Lcom/android/billingclient/api/i;

    .line 75
    .line 76
    const-string v0, "Service has been reset to null"

    .line 77
    .line 78
    const/16 v2, 0x77

    .line 79
    .line 80
    invoke-direct {p0, p1, v2, v0, v1}, Lcom/android/billingclient/api/c;->F(Lcom/android/billingclient/api/i;ILjava/lang/String;Ljava/lang/Exception;)Lcom/android/billingclient/api/l;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    goto/16 :goto_6

    .line 85
    .line 86
    :cond_1
    iget-boolean v5, p0, Lcom/android/billingclient/api/c;->m:Z

    .line 87
    .line 88
    const/16 v12, 0x9

    .line 89
    .line 90
    if-eqz v5, :cond_3

    .line 91
    .line 92
    iget-boolean v5, p0, Lcom/android/billingclient/api/c;->s:Z

    .line 93
    .line 94
    if-eq v3, v5, :cond_2

    .line 95
    .line 96
    const/16 v5, 0x9

    .line 97
    .line 98
    const/16 v7, 0x9

    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_2
    const/16 v5, 0x13

    .line 102
    .line 103
    const/16 v7, 0x13

    .line 104
    .line 105
    :goto_1
    iget-object v5, p0, Lcom/android/billingclient/api/c;->f:Landroid/content/Context;

    .line 106
    .line 107
    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v8

    .line 111
    move-object v9, p1

    .line 112
    move-object v11, v2

    .line 113
    invoke-interface/range {v6 .. v11}, Lcom/google/android/gms/internal/play_billing/d;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 114
    .line 115
    .line 116
    move-result-object v4

    .line 117
    goto :goto_2

    .line 118
    :cond_3
    iget-object v5, p0, Lcom/android/billingclient/api/c;->f:Landroid/content/Context;

    .line 119
    .line 120
    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v5

    .line 124
    invoke-interface {v6, v5, p1, v10}, Lcom/google/android/gms/internal/play_billing/d;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    .line 125
    .line 126
    .line 127
    move-result-object v4
    :try_end_2
    .catch Landroid/os/DeadObjectException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 128
    :goto_2
    const-string v5, "getPurchase()"

    .line 129
    .line 130
    sget-object v6, Lcom/android/billingclient/api/F;->k:Lcom/android/billingclient/api/i;

    .line 131
    .line 132
    const-string v7, "BillingClient"

    .line 133
    .line 134
    const/4 v8, 0x0

    .line 135
    if-nez v4, :cond_4

    .line 136
    .line 137
    new-array v3, v3, [Ljava/lang/Object;

    .line 138
    .line 139
    aput-object v5, v3, v8

    .line 140
    .line 141
    const-string v5, "%s got null owned items list"

    .line 142
    .line 143
    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v3

    .line 147
    invoke-static {v7, v3}, Lcom/google/android/gms/internal/play_billing/L0;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    new-instance v3, Lcom/android/billingclient/api/J;

    .line 151
    .line 152
    const/16 v5, 0x36

    .line 153
    .line 154
    invoke-direct {v3, v6, v5}, Lcom/android/billingclient/api/J;-><init>(Lcom/android/billingclient/api/i;I)V

    .line 155
    .line 156
    .line 157
    goto/16 :goto_4

    .line 158
    .line 159
    :cond_4
    invoke-static {v7, v4}, Lcom/google/android/gms/internal/play_billing/L0;->a(Ljava/lang/String;Landroid/os/Bundle;)I

    .line 160
    .line 161
    .line 162
    move-result v9

    .line 163
    invoke-static {v7, v4}, Lcom/google/android/gms/internal/play_billing/L0;->d(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v10

    .line 167
    new-instance v11, Lcom/android/billingclient/api/h;

    .line 168
    .line 169
    invoke-direct {v11}, Lcom/android/billingclient/api/h;-><init>()V

    .line 170
    .line 171
    .line 172
    invoke-static {v11, v9, v10}, LB/g;->a(Lcom/android/billingclient/api/h;ILjava/lang/String;)Lcom/android/billingclient/api/i;

    .line 173
    .line 174
    .line 175
    move-result-object v10

    .line 176
    if-eqz v9, :cond_5

    .line 177
    .line 178
    const/4 v6, 0x2

    .line 179
    new-array v6, v6, [Ljava/lang/Object;

    .line 180
    .line 181
    aput-object v5, v6, v8

    .line 182
    .line 183
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 184
    .line 185
    .line 186
    move-result-object v5

    .line 187
    aput-object v5, v6, v3

    .line 188
    .line 189
    const-string v3, "%s failed. Response code: %s"

    .line 190
    .line 191
    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v3

    .line 195
    invoke-static {v7, v3}, Lcom/google/android/gms/internal/play_billing/L0;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    new-instance v3, Lcom/android/billingclient/api/J;

    .line 199
    .line 200
    const/16 v5, 0x17

    .line 201
    .line 202
    invoke-direct {v3, v10, v5}, Lcom/android/billingclient/api/J;-><init>(Lcom/android/billingclient/api/i;I)V

    .line 203
    .line 204
    .line 205
    goto/16 :goto_4

    .line 206
    .line 207
    :cond_5
    const-string v9, "INAPP_PURCHASE_ITEM_LIST"

    .line 208
    .line 209
    invoke-virtual {v4, v9}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 210
    .line 211
    .line 212
    move-result v10

    .line 213
    if-eqz v10, :cond_a

    .line 214
    .line 215
    const-string v10, "INAPP_PURCHASE_DATA_LIST"

    .line 216
    .line 217
    invoke-virtual {v4, v10}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 218
    .line 219
    .line 220
    move-result v11

    .line 221
    if-eqz v11, :cond_a

    .line 222
    .line 223
    const-string v11, "INAPP_DATA_SIGNATURE_LIST"

    .line 224
    .line 225
    invoke-virtual {v4, v11}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 226
    .line 227
    .line 228
    move-result v13

    .line 229
    if-nez v13, :cond_6

    .line 230
    .line 231
    goto :goto_3

    .line 232
    :cond_6
    invoke-virtual {v4, v9}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 233
    .line 234
    .line 235
    move-result-object v9

    .line 236
    invoke-virtual {v4, v10}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 237
    .line 238
    .line 239
    move-result-object v10

    .line 240
    invoke-virtual {v4, v11}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 241
    .line 242
    .line 243
    move-result-object v11

    .line 244
    if-nez v9, :cond_7

    .line 245
    .line 246
    new-array v3, v3, [Ljava/lang/Object;

    .line 247
    .line 248
    aput-object v5, v3, v8

    .line 249
    .line 250
    const-string v5, "Bundle returned from %s contains null SKUs list."

    .line 251
    .line 252
    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object v3

    .line 256
    invoke-static {v7, v3}, Lcom/google/android/gms/internal/play_billing/L0;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    .line 258
    .line 259
    new-instance v3, Lcom/android/billingclient/api/J;

    .line 260
    .line 261
    const/16 v5, 0x38

    .line 262
    .line 263
    invoke-direct {v3, v6, v5}, Lcom/android/billingclient/api/J;-><init>(Lcom/android/billingclient/api/i;I)V

    .line 264
    .line 265
    .line 266
    goto :goto_4

    .line 267
    :cond_7
    if-nez v10, :cond_8

    .line 268
    .line 269
    new-array v3, v3, [Ljava/lang/Object;

    .line 270
    .line 271
    aput-object v5, v3, v8

    .line 272
    .line 273
    const-string v5, "Bundle returned from %s contains null purchases list."

    .line 274
    .line 275
    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object v3

    .line 279
    invoke-static {v7, v3}, Lcom/google/android/gms/internal/play_billing/L0;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    .line 281
    .line 282
    new-instance v3, Lcom/android/billingclient/api/J;

    .line 283
    .line 284
    const/16 v5, 0x39

    .line 285
    .line 286
    invoke-direct {v3, v6, v5}, Lcom/android/billingclient/api/J;-><init>(Lcom/android/billingclient/api/i;I)V

    .line 287
    .line 288
    .line 289
    goto :goto_4

    .line 290
    :cond_8
    if-nez v11, :cond_9

    .line 291
    .line 292
    new-array v3, v3, [Ljava/lang/Object;

    .line 293
    .line 294
    aput-object v5, v3, v8

    .line 295
    .line 296
    const-string v5, "Bundle returned from %s contains null signatures list."

    .line 297
    .line 298
    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 299
    .line 300
    .line 301
    move-result-object v3

    .line 302
    invoke-static {v7, v3}, Lcom/google/android/gms/internal/play_billing/L0;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    .line 304
    .line 305
    new-instance v3, Lcom/android/billingclient/api/J;

    .line 306
    .line 307
    const/16 v5, 0x3a

    .line 308
    .line 309
    invoke-direct {v3, v6, v5}, Lcom/android/billingclient/api/J;-><init>(Lcom/android/billingclient/api/i;I)V

    .line 310
    .line 311
    .line 312
    goto :goto_4

    .line 313
    :cond_9
    new-instance v5, Lcom/android/billingclient/api/J;

    .line 314
    .line 315
    sget-object v6, Lcom/android/billingclient/api/F;->l:Lcom/android/billingclient/api/i;

    .line 316
    .line 317
    invoke-direct {v5, v6, v3}, Lcom/android/billingclient/api/J;-><init>(Lcom/android/billingclient/api/i;I)V

    .line 318
    .line 319
    .line 320
    move-object v3, v5

    .line 321
    goto :goto_4

    .line 322
    :cond_a
    :goto_3
    new-array v3, v3, [Ljava/lang/Object;

    .line 323
    .line 324
    aput-object v5, v3, v8

    .line 325
    .line 326
    const-string v5, "Bundle returned from %s doesn\'t contain required fields."

    .line 327
    .line 328
    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 329
    .line 330
    .line 331
    move-result-object v3

    .line 332
    invoke-static {v7, v3}, Lcom/google/android/gms/internal/play_billing/L0;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    .line 334
    .line 335
    new-instance v3, Lcom/android/billingclient/api/J;

    .line 336
    .line 337
    const/16 v5, 0x37

    .line 338
    .line 339
    invoke-direct {v3, v6, v5}, Lcom/android/billingclient/api/J;-><init>(Lcom/android/billingclient/api/i;I)V

    .line 340
    .line 341
    .line 342
    :goto_4
    invoke-virtual {v3}, Lcom/android/billingclient/api/J;->a()Lcom/android/billingclient/api/i;

    .line 343
    .line 344
    .line 345
    move-result-object v5

    .line 346
    sget-object v6, Lcom/android/billingclient/api/F;->l:Lcom/android/billingclient/api/i;

    .line 347
    .line 348
    if-eq v5, v6, :cond_b

    .line 349
    .line 350
    invoke-virtual {v3}, Lcom/android/billingclient/api/J;->b()I

    .line 351
    .line 352
    .line 353
    move-result p1

    .line 354
    const-string v0, "Purchase bundle invalid"

    .line 355
    .line 356
    invoke-direct {p0, v5, p1, v0, v1}, Lcom/android/billingclient/api/c;->F(Lcom/android/billingclient/api/i;ILjava/lang/String;Ljava/lang/Exception;)Lcom/android/billingclient/api/l;

    .line 357
    .line 358
    .line 359
    move-result-object p0

    .line 360
    goto/16 :goto_6

    .line 361
    .line 362
    :cond_b
    const-string v1, "INAPP_PURCHASE_ITEM_LIST"

    .line 363
    .line 364
    invoke-virtual {v4, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 365
    .line 366
    .line 367
    move-result-object v1

    .line 368
    const-string v3, "INAPP_PURCHASE_DATA_LIST"

    .line 369
    .line 370
    invoke-virtual {v4, v3}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 371
    .line 372
    .line 373
    move-result-object v3

    .line 374
    const-string v5, "INAPP_DATA_SIGNATURE_LIST"

    .line 375
    .line 376
    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 377
    .line 378
    .line 379
    move-result-object v5

    .line 380
    const/4 v6, 0x0

    .line 381
    :goto_5
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 382
    .line 383
    .line 384
    move-result v7

    .line 385
    if-ge v8, v7, :cond_d

    .line 386
    .line 387
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 388
    .line 389
    .line 390
    move-result-object v7

    .line 391
    check-cast v7, Ljava/lang/String;

    .line 392
    .line 393
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 394
    .line 395
    .line 396
    move-result-object v9

    .line 397
    check-cast v9, Ljava/lang/String;

    .line 398
    .line 399
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 400
    .line 401
    .line 402
    move-result-object v10

    .line 403
    check-cast v10, Ljava/lang/String;

    .line 404
    .line 405
    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 406
    .line 407
    .line 408
    move-result-object v10

    .line 409
    const-string v11, "Sku is owned: "

    .line 410
    .line 411
    const-string v13, "BillingClient"

    .line 412
    .line 413
    invoke-virtual {v11, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 414
    .line 415
    .line 416
    move-result-object v10

    .line 417
    invoke-static {v13, v10}, Lcom/google/android/gms/internal/play_billing/L0;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    .line 419
    .line 420
    :try_start_3
    new-instance v10, LB/n;

    .line 421
    .line 422
    invoke-direct {v10, v7, v9}, LB/n;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    .line 423
    .line 424
    .line 425
    invoke-virtual {v10}, LB/n;->b()Ljava/lang/String;

    .line 426
    .line 427
    .line 428
    move-result-object v7

    .line 429
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 430
    .line 431
    .line 432
    move-result v7

    .line 433
    if-eqz v7, :cond_c

    .line 434
    .line 435
    const-string v6, "BillingClient"

    .line 436
    .line 437
    const-string v7, "BUG: empty/null token!"

    .line 438
    .line 439
    invoke-static {v6, v7}, Lcom/google/android/gms/internal/play_billing/L0;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    .line 441
    .line 442
    const/4 v6, 0x1

    .line 443
    :cond_c
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 444
    .line 445
    .line 446
    add-int/lit8 v8, v8, 0x1

    .line 447
    .line 448
    goto :goto_5

    .line 449
    :catch_0
    move-exception p1

    .line 450
    const-string v0, "Got an exception trying to decode the purchase!"

    .line 451
    .line 452
    sget-object v1, Lcom/android/billingclient/api/F;->k:Lcom/android/billingclient/api/i;

    .line 453
    .line 454
    const/16 v2, 0x33

    .line 455
    .line 456
    invoke-direct {p0, v1, v2, v0, p1}, Lcom/android/billingclient/api/c;->F(Lcom/android/billingclient/api/i;ILjava/lang/String;Ljava/lang/Exception;)Lcom/android/billingclient/api/l;

    .line 457
    .line 458
    .line 459
    move-result-object p0

    .line 460
    goto :goto_6

    .line 461
    :cond_d
    if-eqz v6, :cond_e

    .line 462
    .line 463
    const/16 v1, 0x1a

    .line 464
    .line 465
    sget-object v3, Lcom/android/billingclient/api/F;->k:Lcom/android/billingclient/api/i;

    .line 466
    .line 467
    invoke-direct {p0, v1, v12, v3}, Lcom/android/billingclient/api/c;->Y(IILcom/android/billingclient/api/i;)V

    .line 468
    .line 469
    .line 470
    :cond_e
    const-string v1, "INAPP_CONTINUATION_TOKEN"

    .line 471
    .line 472
    invoke-virtual {v4, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 473
    .line 474
    .line 475
    move-result-object v10

    .line 476
    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 477
    .line 478
    .line 479
    move-result-object v1

    .line 480
    const-string v3, "Continuation token: "

    .line 481
    .line 482
    const-string v4, "BillingClient"

    .line 483
    .line 484
    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 485
    .line 486
    .line 487
    move-result-object v1

    .line 488
    invoke-static {v4, v1}, Lcom/google/android/gms/internal/play_billing/L0;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    .line 490
    .line 491
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 492
    .line 493
    .line 494
    move-result v1

    .line 495
    if-eqz v1, :cond_f

    .line 496
    .line 497
    new-instance p0, Lcom/android/billingclient/api/l;

    .line 498
    .line 499
    sget-object p1, Lcom/android/billingclient/api/F;->l:Lcom/android/billingclient/api/i;

    .line 500
    .line 501
    invoke-direct {p0, p1, v0}, Lcom/android/billingclient/api/l;-><init>(Lcom/android/billingclient/api/i;Ljava/util/ArrayList;)V

    .line 502
    .line 503
    .line 504
    goto :goto_6

    .line 505
    :cond_f
    const/4 v1, 0x0

    .line 506
    const/4 v3, 0x1

    .line 507
    goto/16 :goto_0

    .line 508
    .line 509
    :catchall_0
    move-exception p1

    .line 510
    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 511
    :try_start_5
    throw p1
    :try_end_5
    .catch Landroid/os/DeadObjectException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 512
    :catch_1
    move-exception p1

    .line 513
    const-string v0, "Got exception trying to get purchases try to reconnect"

    .line 514
    .line 515
    sget-object v1, Lcom/android/billingclient/api/F;->k:Lcom/android/billingclient/api/i;

    .line 516
    .line 517
    invoke-direct {p0, v1, v4, v0, p1}, Lcom/android/billingclient/api/c;->F(Lcom/android/billingclient/api/i;ILjava/lang/String;Ljava/lang/Exception;)Lcom/android/billingclient/api/l;

    .line 518
    .line 519
    .line 520
    move-result-object p0

    .line 521
    goto :goto_6

    .line 522
    :catch_2
    move-exception p1

    .line 523
    const-string v0, "Got exception trying to get purchases try to reconnect"

    .line 524
    .line 525
    sget-object v1, Lcom/android/billingclient/api/F;->m:Lcom/android/billingclient/api/i;

    .line 526
    .line 527
    invoke-direct {p0, v1, v4, v0, p1}, Lcom/android/billingclient/api/c;->F(Lcom/android/billingclient/api/i;ILjava/lang/String;Ljava/lang/Exception;)Lcom/android/billingclient/api/l;

    .line 528
    .line 529
    .line 530
    move-result-object p0

    .line 531
    :goto_6
    return-object p0
.end method

.method static bridge synthetic S(Lcom/android/billingclient/api/c;ILcom/android/billingclient/api/i;)V
    .locals 1

    .line 1
    const/4 v0, 0x6

    invoke-direct {p0, p1, v0, p2}, Lcom/android/billingclient/api/c;->Y(IILcom/android/billingclient/api/i;)V

    return-void
.end method

.method static bridge synthetic T(Lcom/android/billingclient/api/c;ILcom/android/billingclient/api/i;Ljava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x6

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/android/billingclient/api/c;->Z(IILcom/android/billingclient/api/i;Ljava/lang/String;)V

    return-void
.end method

.method static U(Lcom/android/billingclient/api/c;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-string v0, "Unable to log."

    .line 5
    .line 6
    const-string v1, "BillingClient"

    .line 7
    .line 8
    const/4 v2, 0x6

    .line 9
    :try_start_0
    invoke-static {v2}, Lcom/android/billingclient/api/D;->d(I)Lcom/google/android/gms/internal/play_billing/g3;

    .line 10
    .line 11
    .line 12
    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 13
    :try_start_1
    iget-object v3, p0, Lcom/android/billingclient/api/c;->g:Lcom/android/billingclient/api/E;

    .line 14
    .line 15
    iget p0, p0, Lcom/android/billingclient/api/c;->k:I

    .line 16
    .line 17
    check-cast v3, Lcom/android/billingclient/api/k;

    .line 18
    .line 19
    invoke-virtual {v3, v2, p0}, Lcom/android/billingclient/api/k;->g(Lcom/google/android/gms/internal/play_billing/g3;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    :try_start_2
    invoke-static {v1, v0, p0}, Lcom/google/android/gms/internal/play_billing/L0;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catchall_1
    move-exception p0

    .line 29
    invoke-static {v1, v0, p0}, Lcom/google/android/gms/internal/play_billing/L0;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 30
    .line 31
    .line 32
    :goto_0
    return-void
.end method

.method private final V()Landroid/os/Handler;
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/billingclient/api/c;->d:Landroid/os/Handler;

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance v0, Landroid/os/Handler;

    .line 11
    .line 12
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 17
    .line 18
    .line 19
    :goto_0
    return-object v0
.end method

.method private final W()Lcom/android/billingclient/api/i;
    .locals 4

    .line 1
    const-string v0, "Service connection is valid. No need to re-initialize."

    .line 2
    .line 3
    const-string v1, "BillingClient"

    .line 4
    .line 5
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/play_billing/L0;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/g3;->w()Lcom/google/android/gms/internal/play_billing/f3;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const/4 v2, 0x6

    .line 13
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/play_billing/f3;->n(I)V

    .line 14
    .line 15
    .line 16
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/I3;->v()Lcom/google/android/gms/internal/play_billing/H3;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {v2}, Lcom/google/android/gms/internal/play_billing/H3;->m()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/play_billing/f3;->m(Lcom/google/android/gms/internal/play_billing/H3;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/V1;->j()Lcom/google/android/gms/internal/play_billing/Z1;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Lcom/google/android/gms/internal/play_billing/g3;

    .line 31
    .line 32
    :try_start_0
    iget-object v2, p0, Lcom/android/billingclient/api/c;->g:Lcom/android/billingclient/api/E;

    .line 33
    .line 34
    iget v3, p0, Lcom/android/billingclient/api/c;->k:I

    .line 35
    .line 36
    check-cast v2, Lcom/android/billingclient/api/k;

    .line 37
    .line 38
    invoke-virtual {v2, v0, v3}, Lcom/android/billingclient/api/k;->g(Lcom/google/android/gms/internal/play_billing/g3;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :catchall_0
    move-exception v0

    .line 43
    const-string v2, "Unable to log."

    .line 44
    .line 45
    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/play_billing/L0;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 46
    .line 47
    .line 48
    :goto_0
    sget-object v0, Lcom/android/billingclient/api/F;->l:Lcom/android/billingclient/api/i;

    .line 49
    .line 50
    return-object v0
.end method

.method static bridge synthetic X(Lcom/android/billingclient/api/c;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/billingclient/api/c;->k:I

    return p0
.end method

.method private Y(IILcom/android/billingclient/api/i;)V
    .locals 2

    .line 1
    const-string v0, "Unable to log."

    .line 2
    .line 3
    const-string v1, "BillingClient"

    .line 4
    .line 5
    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/android/billingclient/api/D;->b(IILcom/android/billingclient/api/i;)Lcom/google/android/gms/internal/play_billing/d3;

    .line 6
    .line 7
    .line 8
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 9
    :try_start_1
    iget-object p2, p0, Lcom/android/billingclient/api/c;->g:Lcom/android/billingclient/api/E;

    .line 10
    .line 11
    iget p3, p0, Lcom/android/billingclient/api/c;->k:I

    .line 12
    .line 13
    check-cast p2, Lcom/android/billingclient/api/k;

    .line 14
    .line 15
    invoke-virtual {p2, p1, p3}, Lcom/android/billingclient/api/k;->e(Lcom/google/android/gms/internal/play_billing/d3;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception p1

    .line 20
    :try_start_2
    invoke-static {v1, v0, p1}, Lcom/google/android/gms/internal/play_billing/L0;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 21
    .line 22
    .line 23
    :goto_0
    return-void

    .line 24
    :catchall_1
    move-exception p1

    .line 25
    invoke-static {v1, v0, p1}, Lcom/google/android/gms/internal/play_billing/L0;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method private final Z(IILcom/android/billingclient/api/i;Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "Unable to log."

    .line 2
    .line 3
    const-string v1, "BillingClient"

    .line 4
    .line 5
    :try_start_0
    invoke-static {p1, p2, p3, p4}, Lcom/android/billingclient/api/D;->c(IILcom/android/billingclient/api/i;Ljava/lang/String;)Lcom/google/android/gms/internal/play_billing/d3;

    .line 6
    .line 7
    .line 8
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 9
    :try_start_1
    iget-object p2, p0, Lcom/android/billingclient/api/c;->g:Lcom/android/billingclient/api/E;

    .line 10
    .line 11
    iget p3, p0, Lcom/android/billingclient/api/c;->k:I

    .line 12
    .line 13
    check-cast p2, Lcom/android/billingclient/api/k;

    .line 14
    .line 15
    invoke-virtual {p2, p1, p3}, Lcom/android/billingclient/api/k;->e(Lcom/google/android/gms/internal/play_billing/d3;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception p1

    .line 20
    :try_start_2
    invoke-static {v1, v0, p1}, Lcom/google/android/gms/internal/play_billing/L0;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 21
    .line 22
    .line 23
    :goto_0
    return-void

    .line 24
    :catchall_1
    move-exception p1

    .line 25
    invoke-static {v1, v0, p1}, Lcom/google/android/gms/internal/play_billing/L0;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method static bridge synthetic a0(Lcom/android/billingclient/api/c;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/billingclient/api/c;->f:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic d0(Lcom/android/billingclient/api/c;)Landroid/os/Handler;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/billingclient/api/c;->V()Landroid/os/Handler;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic e0(Lcom/android/billingclient/api/c;)Lcom/android/billingclient/api/M;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/billingclient/api/c;->e:Lcom/android/billingclient/api/M;

    return-object p0
.end method

.method static bridge synthetic f0(Lcom/android/billingclient/api/c;)Lcom/android/billingclient/api/E;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/billingclient/api/c;->g:Lcom/android/billingclient/api/E;

    return-object p0
.end method

.method static bridge synthetic h0(Lcom/android/billingclient/api/c;)Lcom/android/billingclient/api/i;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/billingclient/api/c;->z()Lcom/android/billingclient/api/i;

    move-result-object p0

    return-object p0
.end method

.method static synthetic j(Lcom/android/billingclient/api/c;Lcom/android/billingclient/api/t;Lcom/android/billingclient/api/u;Landroid/os/Handler;)Ljava/util/concurrent/Future;
    .locals 6

    .line 1
    const-wide/16 v1, 0x7530

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/android/billingclient/api/c;->B()Ljava/util/concurrent/ExecutorService;

    .line 4
    .line 5
    .line 6
    move-result-object v5

    .line 7
    move-object v0, p1

    .line 8
    move-object v3, p2

    .line 9
    move-object v4, p3

    .line 10
    invoke-static/range {v0 .. v5}, Lcom/android/billingclient/api/c;->k(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;Landroid/os/Handler;Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/Future;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0
.end method

.method static k(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;Landroid/os/Handler;Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/Future;
    .locals 2

    .line 1
    :try_start_0
    invoke-interface {p5, p0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 2
    .line 3
    .line 4
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    long-to-double p1, p1

    .line 6
    new-instance p5, LB/q;

    .line 7
    .line 8
    invoke-direct {p5, p0, p3}, LB/q;-><init>(Ljava/util/concurrent/Future;Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    const-wide v0, 0x3fee666666666666L    # 0.95

    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    mul-double p1, p1, v0

    .line 17
    .line 18
    double-to-long p1, p1

    .line 19
    invoke-virtual {p4, p5, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 20
    .line 21
    .line 22
    return-object p0

    .line 23
    :catch_0
    move-exception p0

    .line 24
    const-string p1, "BillingClient"

    .line 25
    .line 26
    const-string p2, "Async task throws exception!"

    .line 27
    .line 28
    invoke-static {p1, p2, p0}, Lcom/google/android/gms/internal/play_billing/L0;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 29
    .line 30
    .line 31
    const/4 p0, 0x0

    .line 32
    return-object p0
.end method

.method static bridge synthetic k0(Lcom/android/billingclient/api/c;)Lcom/google/android/gms/internal/play_billing/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/billingclient/api/c;->h:Lcom/google/android/gms/internal/play_billing/d;

    return-object p0
.end method

.method static bridge synthetic l(Lcom/android/billingclient/api/c;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/billingclient/api/c;->k:I

    return-void
.end method

.method static bridge synthetic m(Lcom/android/billingclient/api/c;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/billingclient/api/c;->n:Z

    return-void
.end method

.method static bridge synthetic m0(Lcom/android/billingclient/api/c;)Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/billingclient/api/c;->y:Ljava/lang/Long;

    return-object p0
.end method

.method static bridge synthetic n(Lcom/android/billingclient/api/c;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/billingclient/api/c;->o:Z

    return-void
.end method

.method static bridge synthetic n0(Lcom/android/billingclient/api/c;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/billingclient/api/c;->a:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic o(Lcom/android/billingclient/api/c;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/billingclient/api/c;->p:Z

    return-void
.end method

.method static bridge synthetic p(Lcom/android/billingclient/api/c;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/billingclient/api/c;->q:Z

    return-void
.end method

.method static bridge synthetic q(Lcom/android/billingclient/api/c;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/billingclient/api/c;->r:Z

    return-void
.end method

.method static bridge synthetic q0(Lcom/android/billingclient/api/c;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/billingclient/api/c;->c:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic r(Lcom/android/billingclient/api/c;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/billingclient/api/c;->s:Z

    return-void
.end method

.method static bridge synthetic s(Lcom/android/billingclient/api/c;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/billingclient/api/c;->t:Z

    return-void
.end method

.method static bridge synthetic t(Lcom/android/billingclient/api/c;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/billingclient/api/c;->l:Z

    return-void
.end method

.method static bridge synthetic u(Lcom/android/billingclient/api/c;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/billingclient/api/c;->m:Z

    return-void
.end method

.method static bridge synthetic v(Lcom/android/billingclient/api/c;Lcom/google/android/gms/internal/play_billing/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/billingclient/api/c;->h:Lcom/google/android/gms/internal/play_billing/d;

    return-void
.end method

.method static bridge synthetic w(Lcom/android/billingclient/api/c;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/billingclient/api/c;->j:Z

    return-void
.end method

.method static bridge synthetic x(Lcom/android/billingclient/api/c;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/billingclient/api/c;->C(I)V

    return-void
.end method

.method static bridge synthetic y(Lcom/android/billingclient/api/c;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/billingclient/api/c;->b:I

    return p0
.end method

.method private final z()Lcom/android/billingclient/api/i;
    .locals 5

    .line 1
    const/4 v0, 0x3

    .line 2
    const/4 v1, 0x0

    .line 3
    filled-new-array {v1, v0}, [I

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v2, p0, Lcom/android/billingclient/api/c;->a:Ljava/lang/Object;

    .line 8
    .line 9
    monitor-enter v2

    .line 10
    :goto_0
    const/4 v3, 0x2

    .line 11
    if-ge v1, v3, :cond_1

    .line 12
    .line 13
    :try_start_0
    aget v3, v0, v1

    .line 14
    .line 15
    iget v4, p0, Lcom/android/billingclient/api/c;->b:I

    .line 16
    .line 17
    if-ne v4, v3, :cond_0

    .line 18
    .line 19
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    sget-object v0, Lcom/android/billingclient/api/F;->m:Lcom/android/billingclient/api/i;

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    sget-object v0, Lcom/android/billingclient/api/F;->k:Lcom/android/billingclient/api/i;

    .line 28
    .line 29
    :goto_1
    return-object v0

    .line 30
    :catchall_0
    move-exception v0

    .line 31
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 32
    throw v0
.end method


# virtual methods
.method final synthetic K(LB/c;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/billingclient/api/F;->n:Lcom/android/billingclient/api/i;

    .line 2
    .line 3
    const/16 v1, 0x18

    .line 4
    .line 5
    const/4 v2, 0x3

    .line 6
    invoke-direct {p0, v1, v2, v0}, Lcom/android/billingclient/api/c;->Y(IILcom/android/billingclient/api/i;)V

    .line 7
    .line 8
    .line 9
    invoke-interface {p1, v0}, LB/c;->onAcknowledgePurchaseResponse(Lcom/android/billingclient/api/i;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method final synthetic L(Lcom/android/billingclient/api/i;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/c;->e:Lcom/android/billingclient/api/M;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/billingclient/api/M;->c()Leu/faircode/netguard/IAB;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/billingclient/api/c;->e:Lcom/android/billingclient/api/M;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/android/billingclient/api/M;->c()Leu/faircode/netguard/IAB;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-virtual {v0, p1, v1}, Leu/faircode/netguard/IAB;->onPurchasesUpdated(Lcom/android/billingclient/api/i;Ljava/util/List;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    const-string p1, "BillingClient"

    .line 21
    .line 22
    const-string v0, "No valid listener is set in BroadcastManager"

    .line 23
    .line 24
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/play_billing/L0;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method final synthetic M(LB/a;LB/l;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/billingclient/api/F;->n:Lcom/android/billingclient/api/i;

    .line 2
    .line 3
    const/16 v1, 0x18

    .line 4
    .line 5
    const/4 v2, 0x4

    .line 6
    invoke-direct {p0, v1, v2, v0}, Lcom/android/billingclient/api/c;->Y(IILcom/android/billingclient/api/i;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, LB/a;->b()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-interface {p2, v0, p1}, LB/l;->onConsumeResponse(Lcom/android/billingclient/api/i;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method final synthetic N(LB/o;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/billingclient/api/F;->n:Lcom/android/billingclient/api/i;

    .line 2
    .line 3
    const/16 v1, 0x18

    .line 4
    .line 5
    const/16 v2, 0x9

    .line 6
    .line 7
    invoke-direct {p0, v1, v2, v0}, Lcom/android/billingclient/api/c;->Y(IILcom/android/billingclient/api/i;)V

    .line 8
    .line 9
    .line 10
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/T;->m()Lcom/google/android/gms/internal/play_billing/T;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-interface {p1, v0, v1}, LB/o;->onQueryPurchasesResponse(Lcom/android/billingclient/api/i;Ljava/util/List;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method final synthetic O(LB/p;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/billingclient/api/F;->n:Lcom/android/billingclient/api/i;

    .line 2
    .line 3
    const/16 v1, 0x18

    .line 4
    .line 5
    const/16 v2, 0x8

    .line 6
    .line 7
    invoke-direct {p0, v1, v2, v0}, Lcom/android/billingclient/api/c;->Y(IILcom/android/billingclient/api/i;)V

    .line 8
    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-interface {p1, v0, v1}, LB/p;->onSkuDetailsResponse(Lcom/android/billingclient/api/i;Ljava/util/List;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public a(LB/b;LB/c;)V
    .locals 9

    .line 1
    invoke-virtual {p0}, Lcom/android/billingclient/api/c;->i()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x2

    .line 6
    const/4 v2, 0x3

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget-object p1, Lcom/android/billingclient/api/F;->m:Lcom/android/billingclient/api/i;

    .line 10
    .line 11
    invoke-direct {p0, v1, v2, p1}, Lcom/android/billingclient/api/c;->Y(IILcom/android/billingclient/api/i;)V

    .line 12
    .line 13
    .line 14
    invoke-interface {p2, p1}, LB/c;->onAcknowledgePurchaseResponse(Lcom/android/billingclient/api/i;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    invoke-virtual {p1}, LB/b;->a()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    const-string p1, "BillingClient"

    .line 29
    .line 30
    const-string v0, "Please provide a valid purchase token."

    .line 31
    .line 32
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/play_billing/L0;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    sget-object p1, Lcom/android/billingclient/api/F;->j:Lcom/android/billingclient/api/i;

    .line 36
    .line 37
    const/16 v0, 0x1a

    .line 38
    .line 39
    invoke-direct {p0, v0, v2, p1}, Lcom/android/billingclient/api/c;->Y(IILcom/android/billingclient/api/i;)V

    .line 40
    .line 41
    .line 42
    invoke-interface {p2, p1}, LB/c;->onAcknowledgePurchaseResponse(Lcom/android/billingclient/api/i;)V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :cond_1
    iget-boolean v0, p0, Lcom/android/billingclient/api/c;->m:Z

    .line 47
    .line 48
    if-nez v0, :cond_2

    .line 49
    .line 50
    sget-object p1, Lcom/android/billingclient/api/F;->b:Lcom/android/billingclient/api/i;

    .line 51
    .line 52
    const/16 v0, 0x1b

    .line 53
    .line 54
    invoke-direct {p0, v0, v2, p1}, Lcom/android/billingclient/api/c;->Y(IILcom/android/billingclient/api/i;)V

    .line 55
    .line 56
    .line 57
    invoke-interface {p2, p1}, LB/c;->onAcknowledgePurchaseResponse(Lcom/android/billingclient/api/i;)V

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :cond_2
    new-instance v3, Lcom/android/billingclient/api/o;

    .line 62
    .line 63
    invoke-direct {v3, p0, p2, p1, v1}, Lcom/android/billingclient/api/o;-><init>(Lcom/android/billingclient/api/c;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 64
    .line 65
    .line 66
    const-wide/16 v4, 0x7530

    .line 67
    .line 68
    new-instance v6, Lcom/android/billingclient/api/n;

    .line 69
    .line 70
    invoke-direct {v6, p0, p2, v1}, Lcom/android/billingclient/api/n;-><init>(Lcom/android/billingclient/api/c;Ljava/lang/Object;I)V

    .line 71
    .line 72
    .line 73
    invoke-direct {p0}, Lcom/android/billingclient/api/c;->V()Landroid/os/Handler;

    .line 74
    .line 75
    .line 76
    move-result-object v7

    .line 77
    invoke-direct {p0}, Lcom/android/billingclient/api/c;->B()Ljava/util/concurrent/ExecutorService;

    .line 78
    .line 79
    .line 80
    move-result-object v8

    .line 81
    invoke-static/range {v3 .. v8}, Lcom/android/billingclient/api/c;->k(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;Landroid/os/Handler;Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/Future;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    if-nez p1, :cond_3

    .line 86
    .line 87
    invoke-direct {p0}, Lcom/android/billingclient/api/c;->z()Lcom/android/billingclient/api/i;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    const/16 v0, 0x19

    .line 92
    .line 93
    invoke-direct {p0, v0, v2, p1}, Lcom/android/billingclient/api/c;->Y(IILcom/android/billingclient/api/i;)V

    .line 94
    .line 95
    .line 96
    invoke-interface {p2, p1}, LB/c;->onAcknowledgePurchaseResponse(Lcom/android/billingclient/api/i;)V

    .line 97
    .line 98
    .line 99
    :cond_3
    return-void
.end method

.method public b(LB/a;LB/l;)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/android/billingclient/api/c;->i()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x4

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    sget-object v0, Lcom/android/billingclient/api/F;->m:Lcom/android/billingclient/api/i;

    .line 9
    .line 10
    const/4 v2, 0x2

    .line 11
    invoke-direct {p0, v2, v1, v0}, Lcom/android/billingclient/api/c;->Y(IILcom/android/billingclient/api/i;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, LB/a;->b()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-interface {p2, v0, p1}, LB/l;->onConsumeResponse(Lcom/android/billingclient/api/i;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    new-instance v2, Lcom/android/billingclient/api/o;

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    invoke-direct {v2, p0, p1, p2, v0}, Lcom/android/billingclient/api/o;-><init>(Lcom/android/billingclient/api/c;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 26
    .line 27
    .line 28
    const-wide/16 v3, 0x7530

    .line 29
    .line 30
    new-instance v5, Lcom/android/billingclient/api/p;

    .line 31
    .line 32
    invoke-direct {v5, p0, p2, p1, v0}, Lcom/android/billingclient/api/p;-><init>(Lcom/android/billingclient/api/c;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 33
    .line 34
    .line 35
    invoke-direct {p0}, Lcom/android/billingclient/api/c;->V()Landroid/os/Handler;

    .line 36
    .line 37
    .line 38
    move-result-object v6

    .line 39
    invoke-direct {p0}, Lcom/android/billingclient/api/c;->B()Ljava/util/concurrent/ExecutorService;

    .line 40
    .line 41
    .line 42
    move-result-object v7

    .line 43
    invoke-static/range {v2 .. v7}, Lcom/android/billingclient/api/c;->k(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;Landroid/os/Handler;Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/Future;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    if-nez v0, :cond_1

    .line 48
    .line 49
    invoke-direct {p0}, Lcom/android/billingclient/api/c;->z()Lcom/android/billingclient/api/i;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    const/16 v2, 0x19

    .line 54
    .line 55
    invoke-direct {p0, v2, v1, v0}, Lcom/android/billingclient/api/c;->Y(IILcom/android/billingclient/api/i;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1}, LB/a;->b()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-interface {p2, v0, p1}, LB/l;->onConsumeResponse(Lcom/android/billingclient/api/i;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    :cond_1
    return-void
.end method

.method final synthetic b0(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 7

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/billingclient/api/c;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    :try_start_1
    iget-object v1, p0, Lcom/android/billingclient/api/c;->h:Lcom/google/android/gms/internal/play_billing/d;

    .line 5
    .line 6
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    :try_start_2
    sget-object p1, Lcom/android/billingclient/api/F;->m:Lcom/android/billingclient/api/i;

    .line 10
    .line 11
    const/16 p2, 0x77

    .line 12
    .line 13
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/play_billing/L0;->j(Lcom/android/billingclient/api/i;I)Landroid/os/Bundle;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/android/billingclient/api/c;->f:Landroid/content/Context;

    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    move v2, p1

    .line 25
    move-object v4, p2

    .line 26
    move-object v5, p3

    .line 27
    move-object v6, p4

    .line 28
    invoke-interface/range {v1 .. v6}, Lcom/google/android/gms/internal/play_billing/d;->e(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 29
    .line 30
    .line 31
    move-result-object p1
    :try_end_2
    .catch Landroid/os/DeadObjectException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 32
    return-object p1

    .line 33
    :catchall_0
    move-exception p1

    .line 34
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 35
    :try_start_4
    throw p1
    :try_end_4
    .catch Landroid/os/DeadObjectException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 36
    :catch_0
    move-exception p1

    .line 37
    sget-object p2, Lcom/android/billingclient/api/F;->k:Lcom/android/billingclient/api/i;

    .line 38
    .line 39
    invoke-static {p1}, Lcom/android/billingclient/api/D;->a(Ljava/lang/Exception;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/play_billing/L0;->k(Lcom/android/billingclient/api/i;Ljava/lang/String;)Landroid/os/Bundle;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    return-object p1

    .line 48
    :catch_1
    move-exception p1

    .line 49
    sget-object p2, Lcom/android/billingclient/api/F;->m:Lcom/android/billingclient/api/i;

    .line 50
    .line 51
    invoke-static {p1}, Lcom/android/billingclient/api/D;->a(Ljava/lang/Exception;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/play_billing/L0;->k(Lcom/android/billingclient/api/i;Ljava/lang/String;)Landroid/os/Bundle;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    return-object p1
.end method

.method public c()V
    .locals 5

    .line 1
    const-string v0, "Unable to log."

    .line 2
    .line 3
    const-string v1, "BillingClient"

    .line 4
    .line 5
    const/16 v2, 0xc

    .line 6
    .line 7
    :try_start_0
    invoke-static {v2}, Lcom/android/billingclient/api/D;->d(I)Lcom/google/android/gms/internal/play_billing/g3;

    .line 8
    .line 9
    .line 10
    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 11
    :try_start_1
    iget-object v3, p0, Lcom/android/billingclient/api/c;->g:Lcom/android/billingclient/api/E;

    .line 12
    .line 13
    iget v4, p0, Lcom/android/billingclient/api/c;->k:I

    .line 14
    .line 15
    check-cast v3, Lcom/android/billingclient/api/k;

    .line 16
    .line 17
    invoke-virtual {v3, v2, v4}, Lcom/android/billingclient/api/k;->g(Lcom/google/android/gms/internal/play_billing/g3;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception v2

    .line 22
    :try_start_2
    invoke-static {v1, v0, v2}, Lcom/google/android/gms/internal/play_billing/L0;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :catchall_1
    move-exception v2

    .line 27
    invoke-static {v1, v0, v2}, Lcom/google/android/gms/internal/play_billing/L0;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 28
    .line 29
    .line 30
    :goto_0
    iget-object v0, p0, Lcom/android/billingclient/api/c;->a:Ljava/lang/Object;

    .line 31
    .line 32
    monitor-enter v0

    .line 33
    :try_start_3
    iget-object v1, p0, Lcom/android/billingclient/api/c;->e:Lcom/android/billingclient/api/M;

    .line 34
    .line 35
    if-eqz v1, :cond_0

    .line 36
    .line 37
    iget-object v1, p0, Lcom/android/billingclient/api/c;->e:Lcom/android/billingclient/api/M;

    .line 38
    .line 39
    invoke-virtual {v1}, Lcom/android/billingclient/api/M;->d()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 40
    .line 41
    .line 42
    goto :goto_1

    .line 43
    :catchall_2
    move-exception v1

    .line 44
    :try_start_4
    const-string v2, "BillingClient"

    .line 45
    .line 46
    const-string v3, "There was an exception while shutting down broadcast manager while ending connection!"

    .line 47
    .line 48
    invoke-static {v2, v3, v1}, Lcom/google/android/gms/internal/play_billing/L0;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    .line 49
    .line 50
    .line 51
    :cond_0
    :goto_1
    :try_start_5
    const-string v1, "BillingClient"

    .line 52
    .line 53
    const-string v2, "Unbinding from service."

    .line 54
    .line 55
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/play_billing/L0;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-direct {p0}, Lcom/android/billingclient/api/c;->E()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 59
    .line 60
    .line 61
    goto :goto_2

    .line 62
    :catchall_3
    move-exception v1

    .line 63
    :try_start_6
    const-string v2, "BillingClient"

    .line 64
    .line 65
    const-string v3, "There was an exception while unbinding from the service while ending connection!"

    .line 66
    .line 67
    invoke-static {v2, v3, v1}, Lcom/google/android/gms/internal/play_billing/L0;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    .line 68
    .line 69
    .line 70
    :goto_2
    const/4 v1, 0x3

    .line 71
    :try_start_7
    invoke-direct {p0}, Lcom/android/billingclient/api/c;->D()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 72
    .line 73
    .line 74
    goto :goto_3

    .line 75
    :catchall_4
    move-exception v2

    .line 76
    :try_start_8
    const-string v3, "BillingClient"

    .line 77
    .line 78
    const-string v4, "There was an exception while shutting down the executor service while ending connection!"

    .line 79
    .line 80
    invoke-static {v3, v4, v2}, Lcom/google/android/gms/internal/play_billing/L0;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 81
    .line 82
    .line 83
    :goto_3
    :try_start_9
    invoke-direct {p0, v1}, Lcom/android/billingclient/api/c;->C(I)V

    .line 84
    .line 85
    .line 86
    monitor-exit v0

    .line 87
    return-void

    .line 88
    :catchall_5
    move-exception v2

    .line 89
    invoke-direct {p0, v1}, Lcom/android/billingclient/api/c;->C(I)V

    .line 90
    .line 91
    .line 92
    throw v2

    .line 93
    :catchall_6
    move-exception v1

    .line 94
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    .line 95
    throw v1
.end method

.method final synthetic c0(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/billingclient/api/c;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    :try_start_1
    iget-object v1, p0, Lcom/android/billingclient/api/c;->h:Lcom/google/android/gms/internal/play_billing/d;

    .line 5
    .line 6
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    :try_start_2
    sget-object p1, Lcom/android/billingclient/api/F;->m:Lcom/android/billingclient/api/i;

    .line 10
    .line 11
    const/16 p2, 0x77

    .line 12
    .line 13
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/play_billing/L0;->j(Lcom/android/billingclient/api/i;I)Landroid/os/Bundle;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/android/billingclient/api/c;->f:Landroid/content/Context;

    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-interface {v1, v0, p1, p2}, Lcom/google/android/gms/internal/play_billing/d;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    .line 25
    .line 26
    .line 27
    move-result-object p1
    :try_end_2
    .catch Landroid/os/DeadObjectException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 28
    return-object p1

    .line 29
    :catchall_0
    move-exception p1

    .line 30
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 31
    :try_start_4
    throw p1
    :try_end_4
    .catch Landroid/os/DeadObjectException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 32
    :catch_0
    move-exception p1

    .line 33
    sget-object p2, Lcom/android/billingclient/api/F;->k:Lcom/android/billingclient/api/i;

    .line 34
    .line 35
    invoke-static {p1}, Lcom/android/billingclient/api/D;->a(Ljava/lang/Exception;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/play_billing/L0;->k(Lcom/android/billingclient/api/i;Ljava/lang/String;)Landroid/os/Bundle;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    return-object p1

    .line 44
    :catch_1
    move-exception p1

    .line 45
    sget-object p2, Lcom/android/billingclient/api/F;->m:Lcom/android/billingclient/api/i;

    .line 46
    .line 47
    invoke-static {p1}, Lcom/android/billingclient/api/D;->a(Ljava/lang/Exception;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/play_billing/L0;->k(Lcom/android/billingclient/api/i;Ljava/lang/String;)Landroid/os/Bundle;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    return-object p1
.end method

.method public d(Landroid/app/Activity;Lcom/android/billingclient/api/g;)Lcom/android/billingclient/api/i;
    .locals 32

    .line 1
    move-object/from16 v8, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    const-string v1, "proxyPackageVersion"

    .line 6
    .line 7
    const-string v9, "BUY_INTENT"

    .line 8
    .line 9
    iget-object v2, v8, Lcom/android/billingclient/api/c;->e:Lcom/android/billingclient/api/M;

    .line 10
    .line 11
    const/4 v10, 0x2

    .line 12
    if-eqz v2, :cond_39

    .line 13
    .line 14
    iget-object v2, v8, Lcom/android/billingclient/api/c;->e:Lcom/android/billingclient/api/M;

    .line 15
    .line 16
    invoke-virtual {v2}, Lcom/android/billingclient/api/M;->c()Leu/faircode/netguard/IAB;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    if-eqz v2, :cond_39

    .line 21
    .line 22
    invoke-virtual/range {p0 .. p0}, Lcom/android/billingclient/api/c;->i()Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-nez v2, :cond_0

    .line 27
    .line 28
    sget-object v0, Lcom/android/billingclient/api/F;->m:Lcom/android/billingclient/api/i;

    .line 29
    .line 30
    invoke-direct {v8, v10, v10, v0}, Lcom/android/billingclient/api/c;->Y(IILcom/android/billingclient/api/i;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v8, v0}, Lcom/android/billingclient/api/c;->i0(Lcom/android/billingclient/api/i;)V

    .line 34
    .line 35
    .line 36
    return-object v0

    .line 37
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/android/billingclient/api/g;->h()Ljava/util/ArrayList;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-virtual/range {p2 .. p2}, Lcom/android/billingclient/api/g;->i()Lcom/google/android/gms/internal/play_billing/T;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 50
    .line 51
    .line 52
    move-result v5

    .line 53
    if-eqz v5, :cond_1

    .line 54
    .line 55
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    goto :goto_0

    .line 60
    :cond_1
    const/4 v4, 0x0

    .line 61
    :goto_0
    check-cast v4, Lcom/android/billingclient/api/j;

    .line 62
    .line 63
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 64
    .line 65
    .line 66
    move-result-object v5

    .line 67
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 68
    .line 69
    .line 70
    move-result v6

    .line 71
    if-eqz v6, :cond_2

    .line 72
    .line 73
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v5

    .line 77
    goto :goto_1

    .line 78
    :cond_2
    const/4 v5, 0x0

    .line 79
    :goto_1
    check-cast v5, LB/j;

    .line 80
    .line 81
    if-eqz v4, :cond_38

    .line 82
    .line 83
    invoke-virtual {v4}, Lcom/android/billingclient/api/j;->a()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v6

    .line 87
    invoke-virtual {v4}, Lcom/android/billingclient/api/j;->b()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v7

    .line 91
    const-string v12, "subs"

    .line 92
    .line 93
    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result v12

    .line 97
    const/16 v13, 0x9

    .line 98
    .line 99
    const-string v14, "BillingClient"

    .line 100
    .line 101
    if-eqz v12, :cond_4

    .line 102
    .line 103
    iget-boolean v12, v8, Lcom/android/billingclient/api/c;->j:Z

    .line 104
    .line 105
    if-eqz v12, :cond_3

    .line 106
    .line 107
    goto :goto_2

    .line 108
    :cond_3
    const-string v0, "Current client doesn\'t support subscriptions."

    .line 109
    .line 110
    invoke-static {v14, v0}, Lcom/google/android/gms/internal/play_billing/L0;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    sget-object v0, Lcom/android/billingclient/api/F;->o:Lcom/android/billingclient/api/i;

    .line 114
    .line 115
    invoke-direct {v8, v13, v10, v0}, Lcom/android/billingclient/api/c;->Y(IILcom/android/billingclient/api/i;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v8, v0}, Lcom/android/billingclient/api/c;->i0(Lcom/android/billingclient/api/i;)V

    .line 119
    .line 120
    .line 121
    return-object v0

    .line 122
    :cond_4
    :goto_2
    invoke-virtual/range {p2 .. p2}, Lcom/android/billingclient/api/g;->r()Z

    .line 123
    .line 124
    .line 125
    move-result v12

    .line 126
    if-eqz v12, :cond_6

    .line 127
    .line 128
    iget-boolean v12, v8, Lcom/android/billingclient/api/c;->l:Z

    .line 129
    .line 130
    if-eqz v12, :cond_5

    .line 131
    .line 132
    goto :goto_3

    .line 133
    :cond_5
    const-string v0, "Current client doesn\'t support extra params for buy intent."

    .line 134
    .line 135
    invoke-static {v14, v0}, Lcom/google/android/gms/internal/play_billing/L0;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    sget-object v0, Lcom/android/billingclient/api/F;->i:Lcom/android/billingclient/api/i;

    .line 139
    .line 140
    const/16 v1, 0x12

    .line 141
    .line 142
    invoke-direct {v8, v1, v10, v0}, Lcom/android/billingclient/api/c;->Y(IILcom/android/billingclient/api/i;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v8, v0}, Lcom/android/billingclient/api/c;->i0(Lcom/android/billingclient/api/i;)V

    .line 146
    .line 147
    .line 148
    return-object v0

    .line 149
    :cond_6
    :goto_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 150
    .line 151
    .line 152
    move-result v12

    .line 153
    const/4 v15, 0x1

    .line 154
    if-le v12, v15, :cond_8

    .line 155
    .line 156
    iget-boolean v12, v8, Lcom/android/billingclient/api/c;->q:Z

    .line 157
    .line 158
    if-eqz v12, :cond_7

    .line 159
    .line 160
    goto :goto_4

    .line 161
    :cond_7
    const-string v0, "Current client doesn\'t support multi-item purchases."

    .line 162
    .line 163
    invoke-static {v14, v0}, Lcom/google/android/gms/internal/play_billing/L0;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    sget-object v0, Lcom/android/billingclient/api/F;->p:Lcom/android/billingclient/api/i;

    .line 167
    .line 168
    const/16 v1, 0x13

    .line 169
    .line 170
    invoke-direct {v8, v1, v10, v0}, Lcom/android/billingclient/api/c;->Y(IILcom/android/billingclient/api/i;)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v8, v0}, Lcom/android/billingclient/api/c;->i0(Lcom/android/billingclient/api/i;)V

    .line 174
    .line 175
    .line 176
    return-object v0

    .line 177
    :cond_8
    :goto_4
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 178
    .line 179
    .line 180
    move-result v12

    .line 181
    if-nez v12, :cond_a

    .line 182
    .line 183
    iget-boolean v12, v8, Lcom/android/billingclient/api/c;->r:Z

    .line 184
    .line 185
    if-eqz v12, :cond_9

    .line 186
    .line 187
    goto :goto_5

    .line 188
    :cond_9
    const-string v0, "Current client doesn\'t support purchases with ProductDetails."

    .line 189
    .line 190
    invoke-static {v14, v0}, Lcom/google/android/gms/internal/play_billing/L0;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    sget-object v0, Lcom/android/billingclient/api/F;->r:Lcom/android/billingclient/api/i;

    .line 194
    .line 195
    const/16 v1, 0x14

    .line 196
    .line 197
    invoke-direct {v8, v1, v10, v0}, Lcom/android/billingclient/api/c;->Y(IILcom/android/billingclient/api/i;)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {v8, v0}, Lcom/android/billingclient/api/c;->i0(Lcom/android/billingclient/api/i;)V

    .line 201
    .line 202
    .line 203
    return-object v0

    .line 204
    :cond_a
    :goto_5
    invoke-virtual/range {p2 .. p2}, Lcom/android/billingclient/api/g;->c()Lcom/android/billingclient/api/i;

    .line 205
    .line 206
    .line 207
    move-result-object v12

    .line 208
    sget-object v13, Lcom/android/billingclient/api/F;->l:Lcom/android/billingclient/api/i;

    .line 209
    .line 210
    if-eq v12, v13, :cond_b

    .line 211
    .line 212
    const/16 v0, 0x78

    .line 213
    .line 214
    invoke-direct {v8, v0, v10, v12}, Lcom/android/billingclient/api/c;->Y(IILcom/android/billingclient/api/i;)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {v8, v12}, Lcom/android/billingclient/api/c;->i0(Lcom/android/billingclient/api/i;)V

    .line 218
    .line 219
    .line 220
    return-object v12

    .line 221
    :cond_b
    iget-boolean v12, v8, Lcom/android/billingclient/api/c;->l:Z

    .line 222
    .line 223
    if-eqz v12, :cond_30

    .line 224
    .line 225
    iget-boolean v12, v8, Lcom/android/billingclient/api/c;->m:Z

    .line 226
    .line 227
    iget-boolean v13, v8, Lcom/android/billingclient/api/c;->s:Z

    .line 228
    .line 229
    iget-object v10, v8, Lcom/android/billingclient/api/c;->u:Lt0/a;

    .line 230
    .line 231
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 232
    .line 233
    .line 234
    iget-object v10, v8, Lcom/android/billingclient/api/c;->u:Lt0/a;

    .line 235
    .line 236
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 237
    .line 238
    .line 239
    iget-boolean v10, v8, Lcom/android/billingclient/api/c;->v:Z

    .line 240
    .line 241
    iget-object v11, v8, Lcom/android/billingclient/api/c;->c:Ljava/lang/String;

    .line 242
    .line 243
    iget-object v15, v8, Lcom/android/billingclient/api/c;->y:Ljava/lang/Long;

    .line 244
    .line 245
    move-object/from16 v18, v6

    .line 246
    .line 247
    move-object/from16 v19, v7

    .line 248
    .line 249
    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    .line 250
    .line 251
    .line 252
    move-result-wide v6

    .line 253
    iget-object v15, v8, Lcom/android/billingclient/api/c;->f:Landroid/content/Context;

    .line 254
    .line 255
    invoke-virtual {v15}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v15

    .line 259
    move-object/from16 v20, v9

    .line 260
    .line 261
    new-instance v9, Landroid/os/Bundle;

    .line 262
    .line 263
    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 264
    .line 265
    .line 266
    invoke-static {v9, v11, v6, v7}, Lcom/google/android/gms/internal/play_billing/L0;->b(Landroid/os/Bundle;Ljava/lang/String;J)V

    .line 267
    .line 268
    .line 269
    invoke-virtual/range {p2 .. p2}, Lcom/android/billingclient/api/g;->b()I

    .line 270
    .line 271
    .line 272
    move-result v6

    .line 273
    if-eqz v6, :cond_c

    .line 274
    .line 275
    invoke-virtual/range {p2 .. p2}, Lcom/android/billingclient/api/g;->b()I

    .line 276
    .line 277
    .line 278
    move-result v6

    .line 279
    const-string v7, "prorationMode"

    .line 280
    .line 281
    invoke-virtual {v9, v7, v6}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 282
    .line 283
    .line 284
    :cond_c
    invoke-virtual/range {p2 .. p2}, Lcom/android/billingclient/api/g;->d()Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object v6

    .line 288
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 289
    .line 290
    .line 291
    move-result v6

    .line 292
    if-nez v6, :cond_d

    .line 293
    .line 294
    invoke-virtual/range {p2 .. p2}, Lcom/android/billingclient/api/g;->d()Ljava/lang/String;

    .line 295
    .line 296
    .line 297
    move-result-object v6

    .line 298
    const-string v7, "accountId"

    .line 299
    .line 300
    invoke-virtual {v9, v7, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    .line 302
    .line 303
    :cond_d
    invoke-virtual/range {p2 .. p2}, Lcom/android/billingclient/api/g;->e()Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object v6

    .line 307
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 308
    .line 309
    .line 310
    move-result v6

    .line 311
    if-nez v6, :cond_e

    .line 312
    .line 313
    invoke-virtual/range {p2 .. p2}, Lcom/android/billingclient/api/g;->e()Ljava/lang/String;

    .line 314
    .line 315
    .line 316
    move-result-object v6

    .line 317
    const-string v7, "obfuscatedProfileId"

    .line 318
    .line 319
    invoke-virtual {v9, v7, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    .line 321
    .line 322
    :cond_e
    invoke-virtual/range {p2 .. p2}, Lcom/android/billingclient/api/g;->q()Z

    .line 323
    .line 324
    .line 325
    move-result v6

    .line 326
    if-eqz v6, :cond_f

    .line 327
    .line 328
    const-string v6, "isOfferPersonalizedByDeveloper"

    .line 329
    .line 330
    const/4 v7, 0x1

    .line 331
    invoke-virtual {v9, v6, v7}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 332
    .line 333
    .line 334
    :cond_f
    const/4 v6, 0x0

    .line 335
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 336
    .line 337
    .line 338
    move-result v7

    .line 339
    if-nez v7, :cond_10

    .line 340
    .line 341
    new-instance v7, Ljava/util/ArrayList;

    .line 342
    .line 343
    filled-new-array {v6}, [Ljava/lang/String;

    .line 344
    .line 345
    .line 346
    move-result-object v11

    .line 347
    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 348
    .line 349
    .line 350
    move-result-object v6

    .line 351
    invoke-direct {v7, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 352
    .line 353
    .line 354
    const-string v6, "skusToReplace"

    .line 355
    .line 356
    invoke-virtual {v9, v6, v7}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 357
    .line 358
    .line 359
    :cond_10
    invoke-virtual/range {p2 .. p2}, Lcom/android/billingclient/api/g;->f()Ljava/lang/String;

    .line 360
    .line 361
    .line 362
    move-result-object v6

    .line 363
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 364
    .line 365
    .line 366
    move-result v6

    .line 367
    if-nez v6, :cond_11

    .line 368
    .line 369
    invoke-virtual/range {p2 .. p2}, Lcom/android/billingclient/api/g;->f()Ljava/lang/String;

    .line 370
    .line 371
    .line 372
    move-result-object v6

    .line 373
    const-string v7, "oldSkuPurchaseToken"

    .line 374
    .line 375
    invoke-virtual {v9, v7, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    .line 377
    .line 378
    :cond_11
    const/4 v6, 0x0

    .line 379
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 380
    .line 381
    .line 382
    move-result v7

    .line 383
    if-nez v7, :cond_12

    .line 384
    .line 385
    const-string v7, "oldSkuPurchaseId"

    .line 386
    .line 387
    invoke-virtual {v9, v7, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    .line 389
    .line 390
    :cond_12
    invoke-virtual/range {p2 .. p2}, Lcom/android/billingclient/api/g;->g()Ljava/lang/String;

    .line 391
    .line 392
    .line 393
    move-result-object v7

    .line 394
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 395
    .line 396
    .line 397
    move-result v7

    .line 398
    if-nez v7, :cond_13

    .line 399
    .line 400
    invoke-virtual/range {p2 .. p2}, Lcom/android/billingclient/api/g;->g()Ljava/lang/String;

    .line 401
    .line 402
    .line 403
    move-result-object v7

    .line 404
    const-string v11, "originalExternalTransactionId"

    .line 405
    .line 406
    invoke-virtual {v9, v11, v7}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    .line 408
    .line 409
    :cond_13
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 410
    .line 411
    .line 412
    move-result v7

    .line 413
    if-nez v7, :cond_14

    .line 414
    .line 415
    const-string v7, "paymentsPurchaseParams"

    .line 416
    .line 417
    invoke-virtual {v9, v7, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    .line 419
    .line 420
    :cond_14
    if-eqz v12, :cond_15

    .line 421
    .line 422
    const-string v6, "enablePendingPurchases"

    .line 423
    .line 424
    const/4 v7, 0x1

    .line 425
    invoke-virtual {v9, v6, v7}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 426
    .line 427
    .line 428
    goto :goto_6

    .line 429
    :cond_15
    const/4 v7, 0x1

    .line 430
    :goto_6
    if-eqz v10, :cond_16

    .line 431
    .line 432
    const-string v6, "enableAlternativeBilling"

    .line 433
    .line 434
    invoke-virtual {v9, v6, v7}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 435
    .line 436
    .line 437
    :cond_16
    invoke-virtual/range {p2 .. p2}, Lcom/android/billingclient/api/g;->i()Lcom/google/android/gms/internal/play_billing/T;

    .line 438
    .line 439
    .line 440
    move-result-object v6

    .line 441
    invoke-static {v6}, LB/d;->h(Lcom/google/android/gms/internal/play_billing/T;)Ljava/util/stream/Stream;

    .line 442
    .line 443
    .line 444
    move-result-object v6

    .line 445
    new-instance v7, Lcom/google/android/gms/internal/play_billing/a;

    .line 446
    .line 447
    invoke-direct {v7}, Lcom/google/android/gms/internal/play_billing/a;-><init>()V

    .line 448
    .line 449
    .line 450
    invoke-static {v6, v7}, LB/e;->h(Ljava/util/stream/Stream;Lcom/google/android/gms/internal/play_billing/a;)Z

    .line 451
    .line 452
    .line 453
    move-result v6

    .line 454
    if-eqz v6, :cond_17

    .line 455
    .line 456
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/q1;->t()Lcom/google/android/gms/internal/play_billing/p1;

    .line 457
    .line 458
    .line 459
    move-result-object v6

    .line 460
    invoke-virtual/range {p2 .. p2}, Lcom/android/billingclient/api/g;->i()Lcom/google/android/gms/internal/play_billing/T;

    .line 461
    .line 462
    .line 463
    move-result-object v7

    .line 464
    invoke-static {v7}, LB/d;->h(Lcom/google/android/gms/internal/play_billing/T;)Ljava/util/stream/Stream;

    .line 465
    .line 466
    .line 467
    move-result-object v7

    .line 468
    new-instance v10, Lcom/google/android/gms/internal/play_billing/n;

    .line 469
    .line 470
    invoke-direct {v10}, Lcom/google/android/gms/internal/play_billing/n;-><init>()V

    .line 471
    .line 472
    .line 473
    invoke-static {v7, v10}, LB/f;->g(Ljava/util/stream/Stream;Lcom/google/android/gms/internal/play_billing/n;)Ljava/util/stream/Stream;

    .line 474
    .line 475
    .line 476
    move-result-object v7

    .line 477
    new-instance v10, Lcom/google/android/gms/internal/play_billing/H;

    .line 478
    .line 479
    invoke-direct {v10, v15}, Lcom/google/android/gms/internal/play_billing/H;-><init>(Ljava/lang/String;)V

    .line 480
    .line 481
    .line 482
    invoke-static {v7, v10}, LB/d;->i(Ljava/util/stream/Stream;Lcom/google/android/gms/internal/play_billing/H;)Ljava/util/stream/Stream;

    .line 483
    .line 484
    .line 485
    move-result-object v7

    .line 486
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/T;->o()Ljava/util/stream/Collector;

    .line 487
    .line 488
    .line 489
    move-result-object v10

    .line 490
    invoke-static {v7, v10}, LB/e;->d(Ljava/util/stream/Stream;Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 491
    .line 492
    .line 493
    move-result-object v7

    .line 494
    check-cast v7, Ljava/lang/Iterable;

    .line 495
    .line 496
    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/play_billing/p1;->m(Ljava/lang/Iterable;)V

    .line 497
    .line 498
    .line 499
    invoke-virtual {v6}, Lcom/google/android/gms/internal/play_billing/V1;->j()Lcom/google/android/gms/internal/play_billing/Z1;

    .line 500
    .line 501
    .line 502
    move-result-object v6

    .line 503
    check-cast v6, Lcom/google/android/gms/internal/play_billing/q1;

    .line 504
    .line 505
    invoke-virtual {v6}, Lcom/google/android/gms/internal/play_billing/v1;->h()[B

    .line 506
    .line 507
    .line 508
    move-result-object v6

    .line 509
    const-string v7, "subscriptionProductReplacementParamsList"

    .line 510
    .line 511
    invoke-virtual {v9, v7, v6}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 512
    .line 513
    .line 514
    :cond_17
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 515
    .line 516
    .line 517
    move-result v6

    .line 518
    const-string v10, "additionalSkuTypes"

    .line 519
    .line 520
    const-string v11, "additionalSkus"

    .line 521
    .line 522
    const-string v12, "SKU_SERIALIZED_DOCID_LIST"

    .line 523
    .line 524
    const-string v13, "skuDetailsTokens"

    .line 525
    .line 526
    const-string v15, "SKU_OFFER_ID_TOKEN_LIST"

    .line 527
    .line 528
    if-nez v6, :cond_21

    .line 529
    .line 530
    new-instance v6, Ljava/util/ArrayList;

    .line 531
    .line 532
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 533
    .line 534
    .line 535
    new-instance v7, Ljava/util/ArrayList;

    .line 536
    .line 537
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 538
    .line 539
    .line 540
    new-instance v0, Ljava/util/ArrayList;

    .line 541
    .line 542
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 543
    .line 544
    .line 545
    move-object/from16 v21, v1

    .line 546
    .line 547
    new-instance v1, Ljava/util/ArrayList;

    .line 548
    .line 549
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 550
    .line 551
    .line 552
    move-object/from16 v22, v14

    .line 553
    .line 554
    new-instance v14, Ljava/util/ArrayList;

    .line 555
    .line 556
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 557
    .line 558
    .line 559
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 560
    .line 561
    .line 562
    move-result-object v23

    .line 563
    const/16 v24, 0x0

    .line 564
    .line 565
    const/16 v25, 0x0

    .line 566
    .line 567
    const/16 v26, 0x0

    .line 568
    .line 569
    const/16 v27, 0x0

    .line 570
    .line 571
    :goto_7
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    .line 572
    .line 573
    .line 574
    move-result v28

    .line 575
    if-eqz v28, :cond_1a

    .line 576
    .line 577
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 578
    .line 579
    .line 580
    move-result-object v28

    .line 581
    check-cast v28, Lcom/android/billingclient/api/j;

    .line 582
    .line 583
    invoke-virtual/range {v28 .. v28}, Lcom/android/billingclient/api/j;->h()Ljava/lang/String;

    .line 584
    .line 585
    .line 586
    move-result-object v29

    .line 587
    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->isEmpty()Z

    .line 588
    .line 589
    .line 590
    move-result v29

    .line 591
    if-nez v29, :cond_18

    .line 592
    .line 593
    move-object/from16 v29, v5

    .line 594
    .line 595
    invoke-virtual/range {v28 .. v28}, Lcom/android/billingclient/api/j;->h()Ljava/lang/String;

    .line 596
    .line 597
    .line 598
    move-result-object v5

    .line 599
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 600
    .line 601
    .line 602
    goto :goto_8

    .line 603
    :cond_18
    move-object/from16 v29, v5

    .line 604
    .line 605
    :goto_8
    invoke-virtual/range {v28 .. v28}, Lcom/android/billingclient/api/j;->e()Ljava/lang/String;

    .line 606
    .line 607
    .line 608
    move-result-object v5

    .line 609
    move-object/from16 v30, v4

    .line 610
    .line 611
    invoke-virtual/range {v28 .. v28}, Lcom/android/billingclient/api/j;->d()Ljava/lang/String;

    .line 612
    .line 613
    .line 614
    move-result-object v4

    .line 615
    invoke-virtual/range {v28 .. v28}, Lcom/android/billingclient/api/j;->c()I

    .line 616
    .line 617
    .line 618
    move-result v31

    .line 619
    invoke-virtual/range {v28 .. v28}, Lcom/android/billingclient/api/j;->g()Ljava/lang/String;

    .line 620
    .line 621
    .line 622
    move-result-object v8

    .line 623
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 624
    .line 625
    .line 626
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 627
    .line 628
    .line 629
    move-result v5

    .line 630
    const/16 v17, 0x1

    .line 631
    .line 632
    xor-int/lit8 v5, v5, 0x1

    .line 633
    .line 634
    or-int v24, v24, v5

    .line 635
    .line 636
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 637
    .line 638
    .line 639
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 640
    .line 641
    .line 642
    move-result v4

    .line 643
    xor-int/lit8 v4, v4, 0x1

    .line 644
    .line 645
    or-int v25, v25, v4

    .line 646
    .line 647
    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 648
    .line 649
    .line 650
    move-result-object v4

    .line 651
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 652
    .line 653
    .line 654
    if-eqz v31, :cond_19

    .line 655
    .line 656
    const/4 v4, 0x1

    .line 657
    goto :goto_9

    .line 658
    :cond_19
    const/4 v4, 0x0

    .line 659
    :goto_9
    or-int v26, v26, v4

    .line 660
    .line 661
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 662
    .line 663
    .line 664
    move-result v4

    .line 665
    xor-int/lit8 v4, v4, 0x1

    .line 666
    .line 667
    or-int v27, v27, v4

    .line 668
    .line 669
    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 670
    .line 671
    .line 672
    move-object/from16 v8, p0

    .line 673
    .line 674
    move-object/from16 v5, v29

    .line 675
    .line 676
    move-object/from16 v4, v30

    .line 677
    .line 678
    goto :goto_7

    .line 679
    :cond_1a
    move-object/from16 v30, v4

    .line 680
    .line 681
    move-object/from16 v29, v5

    .line 682
    .line 683
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    .line 684
    .line 685
    .line 686
    move-result v4

    .line 687
    if-nez v4, :cond_1b

    .line 688
    .line 689
    invoke-virtual {v9, v13, v6}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 690
    .line 691
    .line 692
    :cond_1b
    if-eqz v24, :cond_1c

    .line 693
    .line 694
    invoke-virtual {v9, v15, v7}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 695
    .line 696
    .line 697
    :cond_1c
    if-eqz v25, :cond_1d

    .line 698
    .line 699
    const-string v4, "SKU_OFFER_ID_LIST"

    .line 700
    .line 701
    invoke-virtual {v9, v4, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 702
    .line 703
    .line 704
    :cond_1d
    if-eqz v26, :cond_1e

    .line 705
    .line 706
    const-string v0, "SKU_OFFER_TYPE_LIST"

    .line 707
    .line 708
    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 709
    .line 710
    .line 711
    :cond_1e
    if-eqz v27, :cond_1f

    .line 712
    .line 713
    invoke-virtual {v9, v12, v14}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 714
    .line 715
    .line 716
    :cond_1f
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 717
    .line 718
    .line 719
    move-result v0

    .line 720
    const/4 v1, 0x1

    .line 721
    if-le v0, v1, :cond_24

    .line 722
    .line 723
    new-instance v0, Ljava/util/ArrayList;

    .line 724
    .line 725
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 726
    .line 727
    .line 728
    move-result v1

    .line 729
    add-int/lit8 v1, v1, -0x1

    .line 730
    .line 731
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 732
    .line 733
    .line 734
    new-instance v1, Ljava/util/ArrayList;

    .line 735
    .line 736
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 737
    .line 738
    .line 739
    move-result v4

    .line 740
    add-int/lit8 v4, v4, -0x1

    .line 741
    .line 742
    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 743
    .line 744
    .line 745
    const/4 v7, 0x1

    .line 746
    :goto_a
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 747
    .line 748
    .line 749
    move-result v4

    .line 750
    if-ge v7, v4, :cond_20

    .line 751
    .line 752
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 753
    .line 754
    .line 755
    move-result-object v4

    .line 756
    check-cast v4, Lcom/android/billingclient/api/j;

    .line 757
    .line 758
    invoke-virtual {v4}, Lcom/android/billingclient/api/j;->a()Ljava/lang/String;

    .line 759
    .line 760
    .line 761
    move-result-object v4

    .line 762
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 763
    .line 764
    .line 765
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 766
    .line 767
    .line 768
    move-result-object v4

    .line 769
    check-cast v4, Lcom/android/billingclient/api/j;

    .line 770
    .line 771
    invoke-virtual {v4}, Lcom/android/billingclient/api/j;->b()Ljava/lang/String;

    .line 772
    .line 773
    .line 774
    move-result-object v4

    .line 775
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 776
    .line 777
    .line 778
    add-int/lit8 v7, v7, 0x1

    .line 779
    .line 780
    goto :goto_a

    .line 781
    :cond_20
    invoke-virtual {v9, v11, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 782
    .line 783
    .line 784
    invoke-virtual {v9, v10, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 785
    .line 786
    .line 787
    goto :goto_b

    .line 788
    :cond_21
    move-object/from16 v21, v1

    .line 789
    .line 790
    move-object/from16 v30, v4

    .line 791
    .line 792
    move-object/from16 v29, v5

    .line 793
    .line 794
    move-object/from16 v22, v14

    .line 795
    .line 796
    new-instance v0, Ljava/util/ArrayList;

    .line 797
    .line 798
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 799
    .line 800
    .line 801
    move-result v1

    .line 802
    add-int/lit8 v1, v1, -0x1

    .line 803
    .line 804
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 805
    .line 806
    .line 807
    new-instance v1, Ljava/util/ArrayList;

    .line 808
    .line 809
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 810
    .line 811
    .line 812
    move-result v2

    .line 813
    add-int/lit8 v2, v2, -0x1

    .line 814
    .line 815
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 816
    .line 817
    .line 818
    new-instance v2, Ljava/util/ArrayList;

    .line 819
    .line 820
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 821
    .line 822
    .line 823
    new-instance v4, Ljava/util/ArrayList;

    .line 824
    .line 825
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 826
    .line 827
    .line 828
    new-instance v5, Ljava/util/ArrayList;

    .line 829
    .line 830
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 831
    .line 832
    .line 833
    new-instance v6, Ljava/util/ArrayList;

    .line 834
    .line 835
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 836
    .line 837
    .line 838
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 839
    .line 840
    .line 841
    move-result v7

    .line 842
    if-gtz v7, :cond_2f

    .line 843
    .line 844
    invoke-virtual {v9, v15, v4}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 845
    .line 846
    .line 847
    const-string v4, "AUTO_PAY_BALANCE_THRESHOLD_LIST"

    .line 848
    .line 849
    invoke-virtual {v9, v4, v6}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 850
    .line 851
    .line 852
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 853
    .line 854
    .line 855
    move-result v4

    .line 856
    if-nez v4, :cond_22

    .line 857
    .line 858
    invoke-virtual {v9, v13, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 859
    .line 860
    .line 861
    :cond_22
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    .line 862
    .line 863
    .line 864
    move-result v2

    .line 865
    if-nez v2, :cond_23

    .line 866
    .line 867
    invoke-virtual {v9, v12, v5}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 868
    .line 869
    .line 870
    :cond_23
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 871
    .line 872
    .line 873
    move-result v2

    .line 874
    if-nez v2, :cond_24

    .line 875
    .line 876
    invoke-virtual {v9, v11, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 877
    .line 878
    .line 879
    invoke-virtual {v9, v10, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 880
    .line 881
    .line 882
    :cond_24
    :goto_b
    invoke-virtual {v9, v15}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 883
    .line 884
    .line 885
    move-result v0

    .line 886
    move-object/from16 v8, p0

    .line 887
    .line 888
    if-eqz v0, :cond_26

    .line 889
    .line 890
    iget-boolean v0, v8, Lcom/android/billingclient/api/c;->o:Z

    .line 891
    .line 892
    if-eqz v0, :cond_25

    .line 893
    .line 894
    goto :goto_c

    .line 895
    :cond_25
    sget-object v0, Lcom/android/billingclient/api/F;->q:Lcom/android/billingclient/api/i;

    .line 896
    .line 897
    const/16 v1, 0x15

    .line 898
    .line 899
    const/4 v2, 0x2

    .line 900
    invoke-direct {v8, v1, v2, v0}, Lcom/android/billingclient/api/c;->Y(IILcom/android/billingclient/api/i;)V

    .line 901
    .line 902
    .line 903
    invoke-virtual {v8, v0}, Lcom/android/billingclient/api/c;->i0(Lcom/android/billingclient/api/i;)V

    .line 904
    .line 905
    .line 906
    return-object v0

    .line 907
    :cond_26
    :goto_c
    invoke-virtual/range {v30 .. v30}, Lcom/android/billingclient/api/j;->f()Ljava/lang/String;

    .line 908
    .line 909
    .line 910
    move-result-object v0

    .line 911
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 912
    .line 913
    .line 914
    move-result v0

    .line 915
    if-nez v0, :cond_27

    .line 916
    .line 917
    invoke-virtual/range {v30 .. v30}, Lcom/android/billingclient/api/j;->f()Ljava/lang/String;

    .line 918
    .line 919
    .line 920
    move-result-object v0

    .line 921
    const-string v1, "skuPackageName"

    .line 922
    .line 923
    invoke-virtual {v9, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 924
    .line 925
    .line 926
    const/4 v1, 0x0

    .line 927
    const/4 v7, 0x1

    .line 928
    goto :goto_d

    .line 929
    :cond_27
    if-nez v29, :cond_2e

    .line 930
    .line 931
    const/4 v1, 0x0

    .line 932
    const/4 v7, 0x0

    .line 933
    :goto_d
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 934
    .line 935
    .line 936
    move-result v0

    .line 937
    if-nez v0, :cond_28

    .line 938
    .line 939
    const-string v0, "accountName"

    .line 940
    .line 941
    invoke-virtual {v9, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 942
    .line 943
    .line 944
    :cond_28
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 945
    .line 946
    .line 947
    move-result-object v0

    .line 948
    if-nez v0, :cond_29

    .line 949
    .line 950
    const-string v0, "Activity\'s intent is null."

    .line 951
    .line 952
    move-object/from16 v10, v22

    .line 953
    .line 954
    invoke-static {v10, v0}, Lcom/google/android/gms/internal/play_billing/L0;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 955
    .line 956
    .line 957
    goto :goto_e

    .line 958
    :cond_29
    move-object/from16 v10, v22

    .line 959
    .line 960
    const-string v1, "PROXY_PACKAGE"

    .line 961
    .line 962
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 963
    .line 964
    .line 965
    move-result-object v2

    .line 966
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 967
    .line 968
    .line 969
    move-result v2

    .line 970
    if-nez v2, :cond_2a

    .line 971
    .line 972
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 973
    .line 974
    .line 975
    move-result-object v0

    .line 976
    const-string v1, "proxyPackage"

    .line 977
    .line 978
    invoke-virtual {v9, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 979
    .line 980
    .line 981
    :try_start_0
    iget-object v1, v8, Lcom/android/billingclient/api/c;->f:Landroid/content/Context;

    .line 982
    .line 983
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 984
    .line 985
    .line 986
    move-result-object v1

    .line 987
    const/4 v2, 0x0

    .line 988
    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 989
    .line 990
    .line 991
    move-result-object v0

    .line 992
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 993
    .line 994
    move-object/from16 v1, v21

    .line 995
    .line 996
    :try_start_1
    invoke-virtual {v9, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 997
    .line 998
    .line 999
    goto :goto_e

    .line 1000
    :catch_0
    move-object/from16 v1, v21

    .line 1001
    .line 1002
    :catch_1
    const-string v0, "package not found"

    .line 1003
    .line 1004
    invoke-virtual {v9, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1005
    .line 1006
    .line 1007
    :cond_2a
    :goto_e
    iget-boolean v0, v8, Lcom/android/billingclient/api/c;->r:Z

    .line 1008
    .line 1009
    if-eqz v0, :cond_2b

    .line 1010
    .line 1011
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 1012
    .line 1013
    .line 1014
    move-result v0

    .line 1015
    if-nez v0, :cond_2b

    .line 1016
    .line 1017
    const/16 v0, 0x11

    .line 1018
    .line 1019
    const/16 v3, 0x11

    .line 1020
    .line 1021
    goto :goto_f

    .line 1022
    :cond_2b
    iget-boolean v0, v8, Lcom/android/billingclient/api/c;->p:Z

    .line 1023
    .line 1024
    if-eqz v0, :cond_2c

    .line 1025
    .line 1026
    if-eqz v7, :cond_2c

    .line 1027
    .line 1028
    const/16 v0, 0xf

    .line 1029
    .line 1030
    const/16 v3, 0xf

    .line 1031
    .line 1032
    goto :goto_f

    .line 1033
    :cond_2c
    iget-boolean v0, v8, Lcom/android/billingclient/api/c;->m:Z

    .line 1034
    .line 1035
    if-eqz v0, :cond_2d

    .line 1036
    .line 1037
    const/16 v3, 0x9

    .line 1038
    .line 1039
    goto :goto_f

    .line 1040
    :cond_2d
    const/4 v0, 0x6

    .line 1041
    const/4 v3, 0x6

    .line 1042
    :goto_f
    new-instance v11, Lcom/android/billingclient/api/q;

    .line 1043
    .line 1044
    move-object v1, v11

    .line 1045
    move-object/from16 v2, p0

    .line 1046
    .line 1047
    move-object/from16 v4, v18

    .line 1048
    .line 1049
    move-object/from16 v5, v19

    .line 1050
    .line 1051
    move-object/from16 v6, p2

    .line 1052
    .line 1053
    move-object v7, v9

    .line 1054
    invoke-direct/range {v1 .. v7}, Lcom/android/billingclient/api/q;-><init>(Lcom/android/billingclient/api/c;ILjava/lang/String;Ljava/lang/String;Lcom/android/billingclient/api/g;Landroid/os/Bundle;)V

    .line 1055
    .line 1056
    .line 1057
    const-wide/16 v12, 0x1388

    .line 1058
    .line 1059
    const/4 v14, 0x0

    .line 1060
    iget-object v15, v8, Lcom/android/billingclient/api/c;->d:Landroid/os/Handler;

    .line 1061
    .line 1062
    invoke-direct/range {p0 .. p0}, Lcom/android/billingclient/api/c;->B()Ljava/util/concurrent/ExecutorService;

    .line 1063
    .line 1064
    .line 1065
    move-result-object v16

    .line 1066
    invoke-static/range {v11 .. v16}, Lcom/android/billingclient/api/c;->k(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;Landroid/os/Handler;Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/Future;

    .line 1067
    .line 1068
    .line 1069
    move-result-object v0

    .line 1070
    goto :goto_10

    .line 1071
    :cond_2e
    const/4 v1, 0x0

    .line 1072
    throw v1

    .line 1073
    :cond_2f
    move-object/from16 v8, p0

    .line 1074
    .line 1075
    const/4 v0, 0x0

    .line 1076
    const/4 v1, 0x0

    .line 1077
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1078
    .line 1079
    .line 1080
    move-result-object v0

    .line 1081
    check-cast v0, LB/j;

    .line 1082
    .line 1083
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1084
    .line 1085
    .line 1086
    throw v1

    .line 1087
    :cond_30
    move-object/from16 v18, v6

    .line 1088
    .line 1089
    move-object/from16 v19, v7

    .line 1090
    .line 1091
    move-object/from16 v20, v9

    .line 1092
    .line 1093
    move-object v10, v14

    .line 1094
    new-instance v2, Lcom/android/billingclient/api/N;

    .line 1095
    .line 1096
    move-object/from16 v0, v18

    .line 1097
    .line 1098
    move-object/from16 v1, v19

    .line 1099
    .line 1100
    invoke-direct {v2, v8, v0, v1}, Lcom/android/billingclient/api/N;-><init>(Lcom/android/billingclient/api/c;Ljava/lang/String;Ljava/lang/String;)V

    .line 1101
    .line 1102
    .line 1103
    const-wide/16 v3, 0x1388

    .line 1104
    .line 1105
    const/4 v5, 0x0

    .line 1106
    iget-object v6, v8, Lcom/android/billingclient/api/c;->d:Landroid/os/Handler;

    .line 1107
    .line 1108
    invoke-direct/range {p0 .. p0}, Lcom/android/billingclient/api/c;->B()Ljava/util/concurrent/ExecutorService;

    .line 1109
    .line 1110
    .line 1111
    move-result-object v7

    .line 1112
    invoke-static/range {v2 .. v7}, Lcom/android/billingclient/api/c;->k(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;Landroid/os/Handler;Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/Future;

    .line 1113
    .line 1114
    .line 1115
    move-result-object v0

    .line 1116
    :goto_10
    if-nez v0, :cond_31

    .line 1117
    .line 1118
    :try_start_2
    sget-object v0, Lcom/android/billingclient/api/F;->d:Lcom/android/billingclient/api/i;

    .line 1119
    .line 1120
    const/16 v1, 0x19

    .line 1121
    .line 1122
    const/4 v2, 0x2

    .line 1123
    invoke-direct {v8, v1, v2, v0}, Lcom/android/billingclient/api/c;->Y(IILcom/android/billingclient/api/i;)V

    .line 1124
    .line 1125
    .line 1126
    invoke-virtual {v8, v0}, Lcom/android/billingclient/api/c;->i0(Lcom/android/billingclient/api/i;)V

    .line 1127
    .line 1128
    .line 1129
    return-object v0

    .line 1130
    :cond_31
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 1131
    .line 1132
    const-wide/16 v2, 0x1388

    .line 1133
    .line 1134
    invoke-interface {v0, v2, v3, v1}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 1135
    .line 1136
    .line 1137
    move-result-object v0

    .line 1138
    move-object v1, v0

    .line 1139
    check-cast v1, Landroid/os/Bundle;

    .line 1140
    .line 1141
    invoke-static {v10, v1}, Lcom/google/android/gms/internal/play_billing/L0;->a(Ljava/lang/String;Landroid/os/Bundle;)I

    .line 1142
    .line 1143
    .line 1144
    move-result v0

    .line 1145
    invoke-static {v10, v1}, Lcom/google/android/gms/internal/play_billing/L0;->d(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    .line 1146
    .line 1147
    .line 1148
    move-result-object v2

    .line 1149
    if-eqz v0, :cond_37

    .line 1150
    .line 1151
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1152
    .line 1153
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1154
    .line 1155
    .line 1156
    const-string v4, "Unable to buy item, Error response code: "

    .line 1157
    .line 1158
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1159
    .line 1160
    .line 1161
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1162
    .line 1163
    .line 1164
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1165
    .line 1166
    .line 1167
    move-result-object v3

    .line 1168
    invoke-static {v10, v3}, Lcom/google/android/gms/internal/play_billing/L0;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 1169
    .line 1170
    .line 1171
    invoke-static {v0, v2}, Lcom/android/billingclient/api/F;->a(ILjava/lang/String;)Lcom/android/billingclient/api/i;

    .line 1172
    .line 1173
    .line 1174
    move-result-object v2
    :try_end_2
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 1175
    if-nez v1, :cond_32

    .line 1176
    .line 1177
    goto :goto_11

    .line 1178
    :cond_32
    :try_start_3
    const-string v0, "LOG_REASON"

    .line 1179
    .line 1180
    invoke-virtual {v1, v0}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 1181
    .line 1182
    .line 1183
    move-result-object v0

    .line 1184
    if-nez v0, :cond_33

    .line 1185
    .line 1186
    goto :goto_11

    .line 1187
    :cond_33
    instance-of v3, v0, Ljava/lang/Integer;

    .line 1188
    .line 1189
    if-eqz v3, :cond_34

    .line 1190
    .line 1191
    check-cast v0, Ljava/lang/Integer;

    .line 1192
    .line 1193
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 1194
    .line 1195
    .line 1196
    move-result v0

    .line 1197
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/q;->g(I)I

    .line 1198
    .line 1199
    .line 1200
    move-result v7

    .line 1201
    const/4 v3, 0x1

    .line 1202
    goto :goto_12

    .line 1203
    :cond_34
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1204
    .line 1205
    .line 1206
    move-result-object v0

    .line 1207
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 1208
    .line 1209
    .line 1210
    move-result-object v0

    .line 1211
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1212
    .line 1213
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1214
    .line 1215
    .line 1216
    const-string v4, "Unexpected type for bundle log reason: "

    .line 1217
    .line 1218
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1219
    .line 1220
    .line 1221
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1222
    .line 1223
    .line 1224
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1225
    .line 1226
    .line 1227
    move-result-object v0

    .line 1228
    invoke-static {v10, v0}, Lcom/google/android/gms/internal/play_billing/L0;->h(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1229
    .line 1230
    .line 1231
    goto :goto_11

    .line 1232
    :catchall_0
    move-exception v0

    .line 1233
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 1234
    .line 1235
    .line 1236
    move-result-object v0

    .line 1237
    const-string v3, "Failed to get log reason from bundle: "

    .line 1238
    .line 1239
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 1240
    .line 1241
    .line 1242
    move-result-object v0

    .line 1243
    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1244
    .line 1245
    .line 1246
    move-result-object v0

    .line 1247
    invoke-static {v10, v0}, Lcom/google/android/gms/internal/play_billing/L0;->h(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/util/concurrent/CancellationException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 1248
    .line 1249
    .line 1250
    :goto_11
    const/4 v3, 0x1

    .line 1251
    const/4 v7, 0x1

    .line 1252
    :goto_12
    if-ne v7, v3, :cond_35

    .line 1253
    .line 1254
    const/16 v7, 0x17

    .line 1255
    .line 1256
    :cond_35
    if-nez v1, :cond_36

    .line 1257
    .line 1258
    goto :goto_13

    .line 1259
    :cond_36
    :try_start_5
    const-string v0, "ADDITIONAL_LOG_DETAILS"

    .line 1260
    .line 1261
    invoke-virtual {v1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 1262
    .line 1263
    .line 1264
    move-result-object v11
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1265
    const/4 v1, 0x2

    .line 1266
    goto :goto_14

    .line 1267
    :catchall_1
    move-exception v0

    .line 1268
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 1269
    .line 1270
    .line 1271
    move-result-object v0

    .line 1272
    const-string v1, "Failed to get additional log details from bundle: "

    .line 1273
    .line 1274
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 1275
    .line 1276
    .line 1277
    move-result-object v0

    .line 1278
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1279
    .line 1280
    .line 1281
    move-result-object v0

    .line 1282
    invoke-static {v10, v0}, Lcom/google/android/gms/internal/play_billing/L0;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 1283
    .line 1284
    .line 1285
    :goto_13
    const/4 v1, 0x2

    .line 1286
    const/4 v11, 0x0

    .line 1287
    :goto_14
    invoke-direct {v8, v7, v1, v2, v11}, Lcom/android/billingclient/api/c;->Z(IILcom/android/billingclient/api/i;Ljava/lang/String;)V

    .line 1288
    .line 1289
    .line 1290
    invoke-virtual {v8, v2}, Lcom/android/billingclient/api/c;->i0(Lcom/android/billingclient/api/i;)V

    .line 1291
    .line 1292
    .line 1293
    return-object v2

    .line 1294
    :cond_37
    new-instance v0, Landroid/content/Intent;

    .line 1295
    .line 1296
    const-class v2, Lcom/android/billingclient/api/ProxyBillingActivity;

    .line 1297
    .line 1298
    move-object/from16 v3, p1

    .line 1299
    .line 1300
    invoke-direct {v0, v3, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1301
    .line 1302
    .line 1303
    move-object/from16 v2, v20

    .line 1304
    .line 1305
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 1306
    .line 1307
    .line 1308
    move-result-object v1

    .line 1309
    check-cast v1, Landroid/app/PendingIntent;

    .line 1310
    .line 1311
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1312
    .line 1313
    .line 1314
    invoke-virtual {v3, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_6
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/util/concurrent/CancellationException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 1315
    .line 1316
    .line 1317
    sget-object v0, Lcom/android/billingclient/api/F;->l:Lcom/android/billingclient/api/i;

    .line 1318
    .line 1319
    return-object v0

    .line 1320
    :catch_2
    move-exception v0

    .line 1321
    const-string v1, "Exception while launching billing flow. Try to reconnect"

    .line 1322
    .line 1323
    invoke-static {v10, v1, v0}, Lcom/google/android/gms/internal/play_billing/L0;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1324
    .line 1325
    .line 1326
    sget-object v1, Lcom/android/billingclient/api/F;->m:Lcom/android/billingclient/api/i;

    .line 1327
    .line 1328
    invoke-static {v0}, Lcom/android/billingclient/api/D;->a(Ljava/lang/Exception;)Ljava/lang/String;

    .line 1329
    .line 1330
    .line 1331
    move-result-object v0

    .line 1332
    const/4 v2, 0x5

    .line 1333
    const/4 v3, 0x2

    .line 1334
    invoke-direct {v8, v2, v3, v1, v0}, Lcom/android/billingclient/api/c;->Z(IILcom/android/billingclient/api/i;Ljava/lang/String;)V

    .line 1335
    .line 1336
    .line 1337
    invoke-virtual {v8, v1}, Lcom/android/billingclient/api/c;->i0(Lcom/android/billingclient/api/i;)V

    .line 1338
    .line 1339
    .line 1340
    return-object v1

    .line 1341
    :catch_3
    move-exception v0

    .line 1342
    goto :goto_15

    .line 1343
    :catch_4
    move-exception v0

    .line 1344
    :goto_15
    const-string v1, "Time out while launching billing flow. Try to reconnect"

    .line 1345
    .line 1346
    invoke-static {v10, v1, v0}, Lcom/google/android/gms/internal/play_billing/L0;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1347
    .line 1348
    .line 1349
    sget-object v1, Lcom/android/billingclient/api/F;->n:Lcom/android/billingclient/api/i;

    .line 1350
    .line 1351
    invoke-static {v0}, Lcom/android/billingclient/api/D;->a(Ljava/lang/Exception;)Ljava/lang/String;

    .line 1352
    .line 1353
    .line 1354
    move-result-object v0

    .line 1355
    const/4 v2, 0x4

    .line 1356
    const/4 v3, 0x2

    .line 1357
    invoke-direct {v8, v2, v3, v1, v0}, Lcom/android/billingclient/api/c;->Z(IILcom/android/billingclient/api/i;Ljava/lang/String;)V

    .line 1358
    .line 1359
    .line 1360
    invoke-virtual {v8, v1}, Lcom/android/billingclient/api/c;->i0(Lcom/android/billingclient/api/i;)V

    .line 1361
    .line 1362
    .line 1363
    return-object v1

    .line 1364
    :cond_38
    move-object/from16 v29, v5

    .line 1365
    .line 1366
    invoke-virtual/range {v29 .. v29}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1367
    .line 1368
    .line 1369
    const/4 v1, 0x0

    .line 1370
    throw v1

    .line 1371
    :cond_39
    const/4 v3, 0x2

    .line 1372
    sget-object v0, Lcom/android/billingclient/api/F;->t:Lcom/android/billingclient/api/i;

    .line 1373
    .line 1374
    const/16 v1, 0xc

    .line 1375
    .line 1376
    invoke-direct {v8, v1, v3, v0}, Lcom/android/billingclient/api/c;->Y(IILcom/android/billingclient/api/i;)V

    .line 1377
    .line 1378
    .line 1379
    return-object v0
.end method

.method public final f(Ljava/lang/String;LB/o;)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/android/billingclient/api/c;->i()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x9

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget-object p1, Lcom/android/billingclient/api/F;->m:Lcom/android/billingclient/api/i;

    .line 10
    .line 11
    const/4 v0, 0x2

    .line 12
    invoke-direct {p0, v0, v1, p1}, Lcom/android/billingclient/api/c;->Y(IILcom/android/billingclient/api/i;)V

    .line 13
    .line 14
    .line 15
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/T;->m()Lcom/google/android/gms/internal/play_billing/T;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-interface {p2, p1, v0}, LB/o;->onQueryPurchasesResponse(Lcom/android/billingclient/api/i;Ljava/util/List;)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    const-string p1, "BillingClient"

    .line 30
    .line 31
    const-string v0, "Please provide a valid product type."

    .line 32
    .line 33
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/play_billing/L0;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    sget-object p1, Lcom/android/billingclient/api/F;->h:Lcom/android/billingclient/api/i;

    .line 37
    .line 38
    const/16 v0, 0x32

    .line 39
    .line 40
    invoke-direct {p0, v0, v1, p1}, Lcom/android/billingclient/api/c;->Y(IILcom/android/billingclient/api/i;)V

    .line 41
    .line 42
    .line 43
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/T;->m()Lcom/google/android/gms/internal/play_billing/T;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-interface {p2, p1, v0}, LB/o;->onQueryPurchasesResponse(Lcom/android/billingclient/api/i;Ljava/util/List;)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    new-instance v2, Lcom/android/billingclient/api/s;

    .line 52
    .line 53
    invoke-direct {v2, p0, p1, p2}, Lcom/android/billingclient/api/s;-><init>(Lcom/android/billingclient/api/c;Ljava/lang/String;LB/o;)V

    .line 54
    .line 55
    .line 56
    const-wide/16 v3, 0x7530

    .line 57
    .line 58
    new-instance v5, Lcom/android/billingclient/api/n;

    .line 59
    .line 60
    const/4 p1, 0x0

    .line 61
    invoke-direct {v5, p0, p2, p1}, Lcom/android/billingclient/api/n;-><init>(Lcom/android/billingclient/api/c;Ljava/lang/Object;I)V

    .line 62
    .line 63
    .line 64
    invoke-direct {p0}, Lcom/android/billingclient/api/c;->V()Landroid/os/Handler;

    .line 65
    .line 66
    .line 67
    move-result-object v6

    .line 68
    invoke-direct {p0}, Lcom/android/billingclient/api/c;->B()Ljava/util/concurrent/ExecutorService;

    .line 69
    .line 70
    .line 71
    move-result-object v7

    .line 72
    invoke-static/range {v2 .. v7}, Lcom/android/billingclient/api/c;->k(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;Landroid/os/Handler;Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/Future;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    if-nez p1, :cond_2

    .line 77
    .line 78
    invoke-direct {p0}, Lcom/android/billingclient/api/c;->z()Lcom/android/billingclient/api/i;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    const/16 v0, 0x19

    .line 83
    .line 84
    invoke-direct {p0, v0, v1, p1}, Lcom/android/billingclient/api/c;->Y(IILcom/android/billingclient/api/i;)V

    .line 85
    .line 86
    .line 87
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/T;->m()Lcom/google/android/gms/internal/play_billing/T;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-interface {p2, p1, v0}, LB/o;->onQueryPurchasesResponse(Lcom/android/billingclient/api/i;Ljava/util/List;)V

    .line 92
    .line 93
    .line 94
    :cond_2
    :goto_0
    return-void
.end method

.method public g(Lcom/android/billingclient/api/l;LB/p;)V
    .locals 9

    .line 1
    invoke-virtual {p0}, Lcom/android/billingclient/api/c;->i()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/16 v2, 0x8

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    sget-object p1, Lcom/android/billingclient/api/F;->m:Lcom/android/billingclient/api/i;

    .line 11
    .line 12
    const/4 v0, 0x2

    .line 13
    invoke-direct {p0, v0, v2, p1}, Lcom/android/billingclient/api/c;->Y(IILcom/android/billingclient/api/i;)V

    .line 14
    .line 15
    .line 16
    invoke-interface {p2, p1, v1}, LB/p;->onSkuDetailsResponse(Lcom/android/billingclient/api/i;Ljava/util/List;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    invoke-virtual {p1}, Lcom/android/billingclient/api/l;->a()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {p1}, Lcom/android/billingclient/api/l;->b()Ljava/util/List;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    const-string v4, "BillingClient"

    .line 33
    .line 34
    if-eqz v3, :cond_1

    .line 35
    .line 36
    const-string p1, "Please fix the input params. SKU type can\'t be empty."

    .line 37
    .line 38
    invoke-static {v4, p1}, Lcom/google/android/gms/internal/play_billing/L0;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    sget-object p1, Lcom/android/billingclient/api/F;->g:Lcom/android/billingclient/api/i;

    .line 42
    .line 43
    const/16 v0, 0x31

    .line 44
    .line 45
    invoke-direct {p0, v0, v2, p1}, Lcom/android/billingclient/api/c;->Y(IILcom/android/billingclient/api/i;)V

    .line 46
    .line 47
    .line 48
    invoke-interface {p2, p1, v1}, LB/p;->onSkuDetailsResponse(Lcom/android/billingclient/api/i;Ljava/util/List;)V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :cond_1
    if-nez p1, :cond_2

    .line 53
    .line 54
    const-string p1, "Please fix the input params. The list of SKUs can\'t be empty."

    .line 55
    .line 56
    invoke-static {v4, p1}, Lcom/google/android/gms/internal/play_billing/L0;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    sget-object p1, Lcom/android/billingclient/api/F;->f:Lcom/android/billingclient/api/i;

    .line 60
    .line 61
    const/16 v0, 0x30

    .line 62
    .line 63
    invoke-direct {p0, v0, v2, p1}, Lcom/android/billingclient/api/c;->Y(IILcom/android/billingclient/api/i;)V

    .line 64
    .line 65
    .line 66
    invoke-interface {p2, p1, v1}, LB/p;->onSkuDetailsResponse(Lcom/android/billingclient/api/i;Ljava/util/List;)V

    .line 67
    .line 68
    .line 69
    return-void

    .line 70
    :cond_2
    new-instance v3, Lcom/android/billingclient/api/O;

    .line 71
    .line 72
    invoke-direct {v3, p0, v0, p1, p2}, Lcom/android/billingclient/api/O;-><init>(Lcom/android/billingclient/api/c;Ljava/lang/String;Ljava/util/List;LB/p;)V

    .line 73
    .line 74
    .line 75
    const-wide/16 v4, 0x7530

    .line 76
    .line 77
    new-instance v6, Lcom/android/billingclient/api/m;

    .line 78
    .line 79
    invoke-direct {v6, p0, p2}, Lcom/android/billingclient/api/m;-><init>(Lcom/android/billingclient/api/c;LB/p;)V

    .line 80
    .line 81
    .line 82
    invoke-direct {p0}, Lcom/android/billingclient/api/c;->V()Landroid/os/Handler;

    .line 83
    .line 84
    .line 85
    move-result-object v7

    .line 86
    invoke-direct {p0}, Lcom/android/billingclient/api/c;->B()Ljava/util/concurrent/ExecutorService;

    .line 87
    .line 88
    .line 89
    move-result-object v8

    .line 90
    invoke-static/range {v3 .. v8}, Lcom/android/billingclient/api/c;->k(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;Landroid/os/Handler;Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/Future;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    if-nez p1, :cond_3

    .line 95
    .line 96
    invoke-direct {p0}, Lcom/android/billingclient/api/c;->z()Lcom/android/billingclient/api/i;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    const/16 v0, 0x19

    .line 101
    .line 102
    invoke-direct {p0, v0, v2, p1}, Lcom/android/billingclient/api/c;->Y(IILcom/android/billingclient/api/i;)V

    .line 103
    .line 104
    .line 105
    invoke-interface {p2, p1, v1}, LB/p;->onSkuDetailsResponse(Lcom/android/billingclient/api/i;Ljava/util/List;)V

    .line 106
    .line 107
    .line 108
    :cond_3
    return-void
.end method

.method final g0()Lcom/android/billingclient/api/E;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/c;->g:Lcom/android/billingclient/api/E;

    return-object v0
.end method

.method public h(LB/h;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/c;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Lcom/android/billingclient/api/c;->i()Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    invoke-direct {p0}, Lcom/android/billingclient/api/c;->W()Lcom/android/billingclient/api/i;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    monitor-exit v0

    .line 15
    goto/16 :goto_2

    .line 16
    .line 17
    :cond_0
    iget v1, p0, Lcom/android/billingclient/api/c;->b:I

    .line 18
    .line 19
    const/4 v2, 0x6

    .line 20
    const/4 v3, 0x1

    .line 21
    if-ne v1, v3, :cond_1

    .line 22
    .line 23
    const-string v1, "BillingClient"

    .line 24
    .line 25
    const-string v3, "Client is already in the process of connecting to billing service."

    .line 26
    .line 27
    invoke-static {v1, v3}, Lcom/google/android/gms/internal/play_billing/L0;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    sget-object v1, Lcom/android/billingclient/api/F;->e:Lcom/android/billingclient/api/i;

    .line 31
    .line 32
    const/16 v3, 0x25

    .line 33
    .line 34
    invoke-direct {p0, v3, v2, v1}, Lcom/android/billingclient/api/c;->Y(IILcom/android/billingclient/api/i;)V

    .line 35
    .line 36
    .line 37
    monitor-exit v0

    .line 38
    goto/16 :goto_2

    .line 39
    .line 40
    :cond_1
    iget v1, p0, Lcom/android/billingclient/api/c;->b:I

    .line 41
    .line 42
    const/4 v4, 0x3

    .line 43
    if-ne v1, v4, :cond_2

    .line 44
    .line 45
    const-string v1, "BillingClient"

    .line 46
    .line 47
    const-string v3, "Client was already closed and can\'t be reused. Please create another instance."

    .line 48
    .line 49
    invoke-static {v1, v3}, Lcom/google/android/gms/internal/play_billing/L0;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    sget-object v1, Lcom/android/billingclient/api/F;->m:Lcom/android/billingclient/api/i;

    .line 53
    .line 54
    const/16 v3, 0x26

    .line 55
    .line 56
    invoke-direct {p0, v3, v2, v1}, Lcom/android/billingclient/api/c;->Y(IILcom/android/billingclient/api/i;)V

    .line 57
    .line 58
    .line 59
    monitor-exit v0

    .line 60
    goto/16 :goto_2

    .line 61
    .line 62
    :cond_2
    invoke-direct {p0, v3}, Lcom/android/billingclient/api/c;->C(I)V

    .line 63
    .line 64
    .line 65
    invoke-direct {p0}, Lcom/android/billingclient/api/c;->E()V

    .line 66
    .line 67
    .line 68
    const-string v1, "BillingClient"

    .line 69
    .line 70
    const-string v4, "Starting in-app billing setup."

    .line 71
    .line 72
    invoke-static {v1, v4}, Lcom/google/android/gms/internal/play_billing/L0;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    new-instance v1, Lcom/android/billingclient/api/v;

    .line 76
    .line 77
    invoke-direct {v1, p0, p1}, Lcom/android/billingclient/api/v;-><init>(Lcom/android/billingclient/api/c;LB/h;)V

    .line 78
    .line 79
    .line 80
    iput-object v1, p0, Lcom/android/billingclient/api/c;->i:Lcom/android/billingclient/api/v;

    .line 81
    .line 82
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 83
    new-instance v0, Landroid/content/Intent;

    .line 84
    .line 85
    const-string v1, "com.android.vending.billing.InAppBillingService.BIND"

    .line 86
    .line 87
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    const-string v1, "com.android.vending"

    .line 91
    .line 92
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 93
    .line 94
    .line 95
    iget-object v1, p0, Lcom/android/billingclient/api/c;->f:Landroid/content/Context;

    .line 96
    .line 97
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    const/4 v4, 0x0

    .line 102
    invoke-virtual {v1, v0, v4}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    if-eqz v1, :cond_8

    .line 107
    .line 108
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 109
    .line 110
    .line 111
    move-result v5

    .line 112
    if-nez v5, :cond_8

    .line 113
    .line 114
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 119
    .line 120
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 121
    .line 122
    if-eqz v1, :cond_7

    .line 123
    .line 124
    iget-object v5, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 125
    .line 126
    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 127
    .line 128
    const-string v6, "com.android.vending"

    .line 129
    .line 130
    invoke-static {v5, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    move-result v6

    .line 134
    if-eqz v6, :cond_6

    .line 135
    .line 136
    if-eqz v1, :cond_6

    .line 137
    .line 138
    new-instance v6, Landroid/content/ComponentName;

    .line 139
    .line 140
    invoke-direct {v6, v5, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    new-instance v1, Landroid/content/Intent;

    .line 144
    .line 145
    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v1, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 149
    .line 150
    .line 151
    iget-object v0, p0, Lcom/android/billingclient/api/c;->c:Ljava/lang/String;

    .line 152
    .line 153
    const-string v5, "playBillingLibraryVersion"

    .line 154
    .line 155
    invoke-virtual {v1, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 156
    .line 157
    .line 158
    iget-object v0, p0, Lcom/android/billingclient/api/c;->a:Ljava/lang/Object;

    .line 159
    .line 160
    monitor-enter v0

    .line 161
    :try_start_1
    iget v5, p0, Lcom/android/billingclient/api/c;->b:I

    .line 162
    .line 163
    const/4 v6, 0x2

    .line 164
    if-ne v5, v6, :cond_3

    .line 165
    .line 166
    invoke-direct {p0}, Lcom/android/billingclient/api/c;->W()Lcom/android/billingclient/api/i;

    .line 167
    .line 168
    .line 169
    move-result-object v1

    .line 170
    monitor-exit v0

    .line 171
    goto :goto_2

    .line 172
    :cond_3
    iget v5, p0, Lcom/android/billingclient/api/c;->b:I

    .line 173
    .line 174
    if-eq v5, v3, :cond_4

    .line 175
    .line 176
    const-string v1, "BillingClient"

    .line 177
    .line 178
    const-string v3, "Client state no longer CONNECTING, returning service disconnected."

    .line 179
    .line 180
    invoke-static {v1, v3}, Lcom/google/android/gms/internal/play_billing/L0;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    sget-object v1, Lcom/android/billingclient/api/F;->m:Lcom/android/billingclient/api/i;

    .line 184
    .line 185
    const/16 v3, 0x75

    .line 186
    .line 187
    invoke-direct {p0, v3, v2, v1}, Lcom/android/billingclient/api/c;->Y(IILcom/android/billingclient/api/i;)V

    .line 188
    .line 189
    .line 190
    monitor-exit v0

    .line 191
    goto :goto_2

    .line 192
    :cond_4
    iget-object v5, p0, Lcom/android/billingclient/api/c;->i:Lcom/android/billingclient/api/v;

    .line 193
    .line 194
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 195
    iget-object v0, p0, Lcom/android/billingclient/api/c;->f:Landroid/content/Context;

    .line 196
    .line 197
    invoke-virtual {v0, v1, v5, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 198
    .line 199
    .line 200
    move-result v0

    .line 201
    if-eqz v0, :cond_5

    .line 202
    .line 203
    const-string v0, "BillingClient"

    .line 204
    .line 205
    const-string v1, "Service was bonded successfully."

    .line 206
    .line 207
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/play_billing/L0;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    const/4 v1, 0x0

    .line 211
    goto :goto_2

    .line 212
    :cond_5
    const-string v0, "BillingClient"

    .line 213
    .line 214
    const-string v1, "Connection to Billing service is blocked."

    .line 215
    .line 216
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/play_billing/L0;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    const/16 v0, 0x27

    .line 220
    .line 221
    goto :goto_1

    .line 222
    :catchall_0
    move-exception p1

    .line 223
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 224
    throw p1

    .line 225
    :cond_6
    const-string v0, "BillingClient"

    .line 226
    .line 227
    const-string v1, "The device doesn\'t have valid Play Store."

    .line 228
    .line 229
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/play_billing/L0;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    .line 231
    .line 232
    goto :goto_0

    .line 233
    :cond_7
    const-string v0, "BillingClient"

    .line 234
    .line 235
    const-string v1, "The device doesn\'t have valid Play Store."

    .line 236
    .line 237
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/play_billing/L0;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    .line 239
    .line 240
    :goto_0
    const/16 v0, 0x28

    .line 241
    .line 242
    goto :goto_1

    .line 243
    :cond_8
    const/16 v0, 0x29

    .line 244
    .line 245
    :goto_1
    invoke-direct {p0, v4}, Lcom/android/billingclient/api/c;->C(I)V

    .line 246
    .line 247
    .line 248
    const-string v1, "BillingClient"

    .line 249
    .line 250
    const-string v3, "Billing service unavailable on device."

    .line 251
    .line 252
    invoke-static {v1, v3}, Lcom/google/android/gms/internal/play_billing/L0;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    .line 254
    .line 255
    sget-object v1, Lcom/android/billingclient/api/F;->c:Lcom/android/billingclient/api/i;

    .line 256
    .line 257
    invoke-direct {p0, v0, v2, v1}, Lcom/android/billingclient/api/c;->Y(IILcom/android/billingclient/api/i;)V

    .line 258
    .line 259
    .line 260
    :goto_2
    if-eqz v1, :cond_9

    .line 261
    .line 262
    invoke-interface {p1, v1}, LB/h;->onBillingSetupFinished(Lcom/android/billingclient/api/i;)V

    .line 263
    .line 264
    .line 265
    :cond_9
    return-void

    .line 266
    :catchall_1
    move-exception p1

    .line 267
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 268
    throw p1
.end method

.method public final i()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/c;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget v1, p0, Lcom/android/billingclient/api/c;->b:I

    .line 5
    .line 6
    const/4 v2, 0x2

    .line 7
    const/4 v3, 0x0

    .line 8
    if-ne v1, v2, :cond_0

    .line 9
    .line 10
    iget-object v1, p0, Lcom/android/billingclient/api/c;->h:Lcom/google/android/gms/internal/play_billing/d;

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    iget-object v1, p0, Lcom/android/billingclient/api/c;->i:Lcom/android/billingclient/api/v;

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    const/4 v3, 0x1

    .line 19
    :cond_0
    monitor-exit v0

    .line 20
    return v3

    .line 21
    :catchall_0
    move-exception v1

    .line 22
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    throw v1
.end method

.method final i0(Lcom/android/billingclient/api/i;)V
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance v0, Lcom/android/billingclient/api/n;

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    invoke-direct {v0, p0, p1, v1}, Lcom/android/billingclient/api/n;-><init>(Lcom/android/billingclient/api/c;Ljava/lang/Object;I)V

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lcom/android/billingclient/api/c;->d:Landroid/os/Handler;

    .line 15
    .line 16
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method final j0(Ljava/lang/String;Ljava/util/List;)Lcom/android/billingclient/api/K;
    .locals 13

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x0

    .line 11
    :goto_0
    if-ge v2, v1, :cond_b

    .line 12
    .line 13
    add-int/lit8 v3, v2, 0x14

    .line 14
    .line 15
    if-le v3, v1, :cond_0

    .line 16
    .line 17
    move v4, v1

    .line 18
    goto :goto_1

    .line 19
    :cond_0
    move v4, v3

    .line 20
    :goto_1
    new-instance v5, Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-interface {p2, v2, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-direct {v5, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 27
    .line 28
    .line 29
    new-instance v2, Landroid/os/Bundle;

    .line 30
    .line 31
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 32
    .line 33
    .line 34
    const-string v4, "ITEM_ID_LIST"

    .line 35
    .line 36
    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 37
    .line 38
    .line 39
    iget-object v4, p0, Lcom/android/billingclient/api/c;->c:Ljava/lang/String;

    .line 40
    .line 41
    const-string v5, "playBillingLibraryVersion"

    .line 42
    .line 43
    invoke-virtual {v2, v5, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    :try_start_0
    iget-object v4, p0, Lcom/android/billingclient/api/c;->a:Ljava/lang/Object;

    .line 47
    .line 48
    monitor-enter v4
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 49
    :try_start_1
    iget-object v5, p0, Lcom/android/billingclient/api/c;->h:Lcom/google/android/gms/internal/play_billing/d;

    .line 50
    .line 51
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52
    const/4 v4, 0x0

    .line 53
    if-nez v5, :cond_1

    .line 54
    .line 55
    :try_start_2
    sget-object p1, Lcom/android/billingclient/api/F;->m:Lcom/android/billingclient/api/i;

    .line 56
    .line 57
    const-string p2, "Service has been reset to null."

    .line 58
    .line 59
    const/16 v0, 0x77

    .line 60
    .line 61
    invoke-direct {p0, p1, v0, p2, v4}, Lcom/android/billingclient/api/c;->G(Lcom/android/billingclient/api/i;ILjava/lang/String;Ljava/lang/Exception;)Lcom/android/billingclient/api/K;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    return-object p1

    .line 66
    :cond_1
    iget-boolean v6, p0, Lcom/android/billingclient/api/c;->n:Z

    .line 67
    .line 68
    if-eqz v6, :cond_5

    .line 69
    .line 70
    iget-object v6, p0, Lcom/android/billingclient/api/c;->f:Landroid/content/Context;

    .line 71
    .line 72
    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v6

    .line 76
    iget v7, p0, Lcom/android/billingclient/api/c;->k:I

    .line 77
    .line 78
    iget-object v8, p0, Lcom/android/billingclient/api/c;->u:Lt0/a;

    .line 79
    .line 80
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 81
    .line 82
    .line 83
    iget-boolean v8, p0, Lcom/android/billingclient/api/c;->s:Z

    .line 84
    .line 85
    if-eqz v8, :cond_2

    .line 86
    .line 87
    iget-object v8, p0, Lcom/android/billingclient/api/c;->u:Lt0/a;

    .line 88
    .line 89
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 90
    .line 91
    .line 92
    :cond_2
    iget-object v8, p0, Lcom/android/billingclient/api/c;->c:Ljava/lang/String;

    .line 93
    .line 94
    iget-object v9, p0, Lcom/android/billingclient/api/c;->y:Ljava/lang/Long;

    .line 95
    .line 96
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    .line 97
    .line 98
    .line 99
    move-result-wide v9

    .line 100
    new-instance v11, Landroid/os/Bundle;

    .line 101
    .line 102
    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    .line 103
    .line 104
    .line 105
    const/16 v12, 0x9

    .line 106
    .line 107
    if-lt v7, v12, :cond_3

    .line 108
    .line 109
    invoke-static {v11, v8, v9, v10}, Lcom/google/android/gms/internal/play_billing/L0;->b(Landroid/os/Bundle;Ljava/lang/String;J)V

    .line 110
    .line 111
    .line 112
    :cond_3
    if-lt v7, v12, :cond_4

    .line 113
    .line 114
    const-string v7, "enablePendingPurchases"

    .line 115
    .line 116
    const/4 v8, 0x1

    .line 117
    invoke-virtual {v11, v7, v8}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 118
    .line 119
    .line 120
    :cond_4
    invoke-interface {v5, v6, p1, v2, v11}, Lcom/google/android/gms/internal/play_billing/d;->f(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    goto :goto_2

    .line 125
    :cond_5
    iget-object v6, p0, Lcom/android/billingclient/api/c;->f:Landroid/content/Context;

    .line 126
    .line 127
    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v6

    .line 131
    invoke-interface {v5, v6, p1, v2}, Lcom/google/android/gms/internal/play_billing/d;->n(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 132
    .line 133
    .line 134
    move-result-object v2
    :try_end_2
    .catch Landroid/os/DeadObjectException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 135
    :goto_2
    if-nez v2, :cond_6

    .line 136
    .line 137
    const-string p1, "querySkuDetailsAsync got null sku details list"

    .line 138
    .line 139
    sget-object p2, Lcom/android/billingclient/api/F;->s:Lcom/android/billingclient/api/i;

    .line 140
    .line 141
    const/16 v0, 0x2c

    .line 142
    .line 143
    invoke-direct {p0, p2, v0, p1, v4}, Lcom/android/billingclient/api/c;->G(Lcom/android/billingclient/api/i;ILjava/lang/String;Ljava/lang/Exception;)Lcom/android/billingclient/api/K;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    return-object p1

    .line 148
    :cond_6
    const-string v5, "DETAILS_LIST"

    .line 149
    .line 150
    invoke-virtual {v2, v5}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 151
    .line 152
    .line 153
    move-result v5

    .line 154
    const/4 v6, 0x6

    .line 155
    if-nez v5, :cond_8

    .line 156
    .line 157
    const-string p1, "BillingClient"

    .line 158
    .line 159
    invoke-static {p1, v2}, Lcom/google/android/gms/internal/play_billing/L0;->a(Ljava/lang/String;Landroid/os/Bundle;)I

    .line 160
    .line 161
    .line 162
    move-result p1

    .line 163
    const-string p2, "BillingClient"

    .line 164
    .line 165
    invoke-static {p2, v2}, Lcom/google/android/gms/internal/play_billing/L0;->d(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object p2

    .line 169
    if-eqz p1, :cond_7

    .line 170
    .line 171
    invoke-static {p1, p2}, Lcom/android/billingclient/api/F;->a(ILjava/lang/String;)Lcom/android/billingclient/api/i;

    .line 172
    .line 173
    .line 174
    move-result-object p2

    .line 175
    const-string v0, "getSkuDetails() failed. Response code: "

    .line 176
    .line 177
    invoke-static {v0, p1}, LB/g;->c(Ljava/lang/String;I)Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object p1

    .line 181
    const/16 v0, 0x17

    .line 182
    .line 183
    invoke-direct {p0, p2, v0, p1, v4}, Lcom/android/billingclient/api/c;->G(Lcom/android/billingclient/api/i;ILjava/lang/String;Ljava/lang/Exception;)Lcom/android/billingclient/api/K;

    .line 184
    .line 185
    .line 186
    move-result-object p1

    .line 187
    return-object p1

    .line 188
    :cond_7
    invoke-static {v6, p2}, Lcom/android/billingclient/api/F;->a(ILjava/lang/String;)Lcom/android/billingclient/api/i;

    .line 189
    .line 190
    .line 191
    move-result-object p1

    .line 192
    const/16 p2, 0x2d

    .line 193
    .line 194
    const-string v0, "getSkuDetails() returned a bundle with neither an error nor a detail list."

    .line 195
    .line 196
    invoke-direct {p0, p1, p2, v0, v4}, Lcom/android/billingclient/api/c;->G(Lcom/android/billingclient/api/i;ILjava/lang/String;Ljava/lang/Exception;)Lcom/android/billingclient/api/K;

    .line 197
    .line 198
    .line 199
    move-result-object p1

    .line 200
    return-object p1

    .line 201
    :cond_8
    const-string v5, "DETAILS_LIST"

    .line 202
    .line 203
    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 204
    .line 205
    .line 206
    move-result-object v2

    .line 207
    if-eqz v2, :cond_a

    .line 208
    .line 209
    const/4 v4, 0x0

    .line 210
    :goto_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 211
    .line 212
    .line 213
    move-result v5

    .line 214
    if-ge v4, v5, :cond_9

    .line 215
    .line 216
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 217
    .line 218
    .line 219
    move-result-object v5

    .line 220
    check-cast v5, Ljava/lang/String;

    .line 221
    .line 222
    :try_start_3
    new-instance v7, Lcom/android/billingclient/api/j;

    .line 223
    .line 224
    invoke-direct {v7, v5}, Lcom/android/billingclient/api/j;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    .line 225
    .line 226
    .line 227
    invoke-virtual {v7}, Lcom/android/billingclient/api/j;->toString()Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v5

    .line 231
    const-string v8, "Got sku details: "

    .line 232
    .line 233
    invoke-virtual {v8, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v5

    .line 237
    const-string v8, "BillingClient"

    .line 238
    .line 239
    invoke-static {v8, v5}, Lcom/google/android/gms/internal/play_billing/L0;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    .line 241
    .line 242
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 243
    .line 244
    .line 245
    add-int/lit8 v4, v4, 0x1

    .line 246
    .line 247
    goto :goto_3

    .line 248
    :catch_0
    move-exception p1

    .line 249
    const-string p2, "Error trying to decode SkuDetails."

    .line 250
    .line 251
    invoke-static {v6, p2}, Lcom/android/billingclient/api/F;->a(ILjava/lang/String;)Lcom/android/billingclient/api/i;

    .line 252
    .line 253
    .line 254
    move-result-object p2

    .line 255
    const/16 v0, 0x2f

    .line 256
    .line 257
    const-string v1, "Got a JSON exception trying to decode SkuDetails."

    .line 258
    .line 259
    invoke-direct {p0, p2, v0, v1, p1}, Lcom/android/billingclient/api/c;->G(Lcom/android/billingclient/api/i;ILjava/lang/String;Ljava/lang/Exception;)Lcom/android/billingclient/api/K;

    .line 260
    .line 261
    .line 262
    move-result-object p1

    .line 263
    return-object p1

    .line 264
    :cond_9
    move v2, v3

    .line 265
    goto/16 :goto_0

    .line 266
    .line 267
    :cond_a
    const-string p1, "querySkuDetailsAsync got null response list"

    .line 268
    .line 269
    sget-object p2, Lcom/android/billingclient/api/F;->s:Lcom/android/billingclient/api/i;

    .line 270
    .line 271
    const/16 v0, 0x2e

    .line 272
    .line 273
    invoke-direct {p0, p2, v0, p1, v4}, Lcom/android/billingclient/api/c;->G(Lcom/android/billingclient/api/i;ILjava/lang/String;Ljava/lang/Exception;)Lcom/android/billingclient/api/K;

    .line 274
    .line 275
    .line 276
    move-result-object p1

    .line 277
    return-object p1

    .line 278
    :catchall_0
    move-exception p1

    .line 279
    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 280
    :try_start_5
    throw p1
    :try_end_5
    .catch Landroid/os/DeadObjectException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 281
    :catch_1
    move-exception p1

    .line 282
    const-string p2, "querySkuDetailsAsync got a remote exception (try to reconnect)."

    .line 283
    .line 284
    sget-object v0, Lcom/android/billingclient/api/F;->k:Lcom/android/billingclient/api/i;

    .line 285
    .line 286
    const/16 v1, 0x2b

    .line 287
    .line 288
    invoke-direct {p0, v0, v1, p2, p1}, Lcom/android/billingclient/api/c;->G(Lcom/android/billingclient/api/i;ILjava/lang/String;Ljava/lang/Exception;)Lcom/android/billingclient/api/K;

    .line 289
    .line 290
    .line 291
    move-result-object p1

    .line 292
    return-object p1

    .line 293
    :catch_2
    move-exception p1

    .line 294
    const/16 p2, 0x2b

    .line 295
    .line 296
    const-string v0, "querySkuDetailsAsync got a remote exception (try to reconnect)."

    .line 297
    .line 298
    sget-object v1, Lcom/android/billingclient/api/F;->m:Lcom/android/billingclient/api/i;

    .line 299
    .line 300
    invoke-direct {p0, v1, p2, v0, p1}, Lcom/android/billingclient/api/c;->G(Lcom/android/billingclient/api/i;ILjava/lang/String;Ljava/lang/Exception;)Lcom/android/billingclient/api/K;

    .line 301
    .line 302
    .line 303
    move-result-object p1

    .line 304
    return-object p1

    .line 305
    :cond_b
    const-string p1, ""

    .line 306
    .line 307
    new-instance p2, Lcom/android/billingclient/api/K;

    .line 308
    .line 309
    const/4 v1, 0x0

    .line 310
    invoke-direct {p2, v1, p1, v0}, Lcom/android/billingclient/api/K;-><init>(ILjava/lang/String;Ljava/util/ArrayList;)V

    .line 311
    .line 312
    .line 313
    return-object p2
.end method

.method final declared-synchronized l0()Lcom/google/android/gms/internal/play_billing/b1;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/billingclient/api/c;->x:Lcom/google/android/gms/internal/play_billing/b1;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    invoke-direct {p0}, Lcom/android/billingclient/api/c;->B()Ljava/util/concurrent/ExecutorService;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/p;->b(Ljava/util/concurrent/ExecutorService;)Lcom/google/android/gms/internal/play_billing/b1;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lcom/android/billingclient/api/c;->x:Lcom/google/android/gms/internal/play_billing/b1;

    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lcom/android/billingclient/api/c;->x:Lcom/google/android/gms/internal/play_billing/b1;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    monitor-exit p0

    .line 19
    return-object v0

    .line 20
    :catchall_0
    move-exception v0

    .line 21
    monitor-exit p0

    .line 22
    throw v0
.end method

.method final synthetic o0(LB/b;LB/c;)V
    .locals 7

    .line 1
    const/16 v0, 0x1c

    .line 2
    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/android/billingclient/api/c;->a:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v1
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    :try_start_1
    iget-object v2, p0, Lcom/android/billingclient/api/c;->h:Lcom/google/android/gms/internal/play_billing/d;

    .line 7
    .line 8
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    :try_start_2
    sget-object p1, Lcom/android/billingclient/api/F;->m:Lcom/android/billingclient/api/i;

    .line 12
    .line 13
    const/16 v1, 0x77

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    invoke-direct {p0, p2, p1, v1, v2}, Lcom/android/billingclient/api/c;->H(LB/c;Lcom/android/billingclient/api/i;ILjava/lang/Exception;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    iget-object v1, p0, Lcom/android/billingclient/api/c;->f:Landroid/content/Context;

    .line 21
    .line 22
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {p1}, LB/b;->a()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    iget-object v3, p0, Lcom/android/billingclient/api/c;->c:Ljava/lang/String;

    .line 31
    .line 32
    iget-object v4, p0, Lcom/android/billingclient/api/c;->y:Ljava/lang/Long;

    .line 33
    .line 34
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 35
    .line 36
    .line 37
    move-result-wide v4

    .line 38
    new-instance v6, Landroid/os/Bundle;

    .line 39
    .line 40
    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 41
    .line 42
    .line 43
    invoke-static {v6, v3, v4, v5}, Lcom/google/android/gms/internal/play_billing/L0;->b(Landroid/os/Bundle;Ljava/lang/String;J)V

    .line 44
    .line 45
    .line 46
    invoke-interface {v2, v1, p1, v6}, Lcom/google/android/gms/internal/play_billing/d;->i(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 47
    .line 48
    .line 49
    move-result-object p1
    :try_end_2
    .catch Landroid/os/DeadObjectException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 50
    const-string v0, "BillingClient"

    .line 51
    .line 52
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/play_billing/L0;->a(Ljava/lang/String;Landroid/os/Bundle;)I

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    const-string v1, "BillingClient"

    .line 57
    .line 58
    invoke-static {v1, p1}, Lcom/google/android/gms/internal/play_billing/L0;->d(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-static {v0, p1}, Lcom/android/billingclient/api/F;->a(ILjava/lang/String;)Lcom/android/billingclient/api/i;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-interface {p2, p1}, LB/c;->onAcknowledgePurchaseResponse(Lcom/android/billingclient/api/i;)V

    .line 67
    .line 68
    .line 69
    return-void

    .line 70
    :catchall_0
    move-exception p1

    .line 71
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 72
    :try_start_4
    throw p1
    :try_end_4
    .catch Landroid/os/DeadObjectException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 73
    :catch_0
    move-exception p1

    .line 74
    sget-object v1, Lcom/android/billingclient/api/F;->k:Lcom/android/billingclient/api/i;

    .line 75
    .line 76
    invoke-direct {p0, p2, v1, v0, p1}, Lcom/android/billingclient/api/c;->H(LB/c;Lcom/android/billingclient/api/i;ILjava/lang/Exception;)V

    .line 77
    .line 78
    .line 79
    return-void

    .line 80
    :catch_1
    move-exception p1

    .line 81
    sget-object v1, Lcom/android/billingclient/api/F;->m:Lcom/android/billingclient/api/i;

    .line 82
    .line 83
    invoke-direct {p0, p2, v1, v0, p1}, Lcom/android/billingclient/api/c;->H(LB/c;Lcom/android/billingclient/api/i;ILjava/lang/Exception;)V

    .line 84
    .line 85
    .line 86
    return-void
.end method

.method final p0(LB/a;LB/l;)V
    .locals 9

    .line 1
    const-string v0, "Error consuming purchase with token. Response code: "

    .line 2
    .line 3
    const-string v1, "Consuming purchase with token: "

    .line 4
    .line 5
    invoke-virtual {p1}, LB/a;->b()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    :try_start_0
    const-string v2, "BillingClient"

    .line 10
    .line 11
    new-instance v3, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-static {v2, v1}, Lcom/google/android/gms/internal/play_billing/L0;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Lcom/android/billingclient/api/c;->a:Ljava/lang/Object;

    .line 27
    .line 28
    monitor-enter v1
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    :try_start_1
    iget-object v2, p0, Lcom/android/billingclient/api/c;->h:Lcom/google/android/gms/internal/play_billing/d;

    .line 30
    .line 31
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    if-nez v2, :cond_0

    .line 33
    .line 34
    :try_start_2
    sget-object v5, Lcom/android/billingclient/api/F;->m:Lcom/android/billingclient/api/i;

    .line 35
    .line 36
    const/16 v6, 0x77

    .line 37
    .line 38
    const-string v7, "Service has been reset to null."

    .line 39
    .line 40
    const/4 v8, 0x0

    .line 41
    move-object v2, p0

    .line 42
    move-object v3, p2

    .line 43
    move-object v4, p1

    .line 44
    invoke-direct/range {v2 .. v8}, Lcom/android/billingclient/api/c;->I(LB/l;Ljava/lang/String;Lcom/android/billingclient/api/i;ILjava/lang/String;Ljava/lang/Exception;)V

    .line 45
    .line 46
    .line 47
    goto/16 :goto_1

    .line 48
    .line 49
    :cond_0
    iget-boolean v1, p0, Lcom/android/billingclient/api/c;->m:Z

    .line 50
    .line 51
    if-eqz v1, :cond_2

    .line 52
    .line 53
    iget-object v1, p0, Lcom/android/billingclient/api/c;->f:Landroid/content/Context;

    .line 54
    .line 55
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    iget-boolean v3, p0, Lcom/android/billingclient/api/c;->m:Z

    .line 60
    .line 61
    iget-object v4, p0, Lcom/android/billingclient/api/c;->c:Ljava/lang/String;

    .line 62
    .line 63
    iget-object v5, p0, Lcom/android/billingclient/api/c;->y:Ljava/lang/Long;

    .line 64
    .line 65
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    .line 66
    .line 67
    .line 68
    move-result-wide v5

    .line 69
    new-instance v7, Landroid/os/Bundle;

    .line 70
    .line 71
    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 72
    .line 73
    .line 74
    if-eqz v3, :cond_1

    .line 75
    .line 76
    invoke-static {v7, v4, v5, v6}, Lcom/google/android/gms/internal/play_billing/L0;->b(Landroid/os/Bundle;Ljava/lang/String;J)V

    .line 77
    .line 78
    .line 79
    :cond_1
    invoke-interface {v2, v1, p1, v7}, Lcom/google/android/gms/internal/play_billing/d;->t(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    const-string v2, "RESPONSE_CODE"

    .line 84
    .line 85
    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    const-string v3, "BillingClient"

    .line 90
    .line 91
    invoke-static {v3, v1}, Lcom/google/android/gms/internal/play_billing/L0;->d(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    goto :goto_0

    .line 96
    :cond_2
    iget-object v1, p0, Lcom/android/billingclient/api/c;->f:Landroid/content/Context;

    .line 97
    .line 98
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    invoke-interface {v2, v1, p1}, Lcom/google/android/gms/internal/play_billing/d;->j(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    .line 104
    .line 105
    move-result v2

    .line 106
    const-string v1, ""

    .line 107
    .line 108
    :goto_0
    invoke-static {v2, v1}, Lcom/android/billingclient/api/F;->a(ILjava/lang/String;)Lcom/android/billingclient/api/i;

    .line 109
    .line 110
    .line 111
    move-result-object v5

    .line 112
    if-nez v2, :cond_3

    .line 113
    .line 114
    const-string v0, "BillingClient"

    .line 115
    .line 116
    const-string v1, "Successfully consumed purchase."

    .line 117
    .line 118
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/play_billing/L0;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    invoke-interface {p2, v5, p1}, LB/l;->onConsumeResponse(Lcom/android/billingclient/api/i;Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    goto :goto_1

    .line 125
    :cond_3
    const/16 v6, 0x17

    .line 126
    .line 127
    new-instance v1, Ljava/lang/StringBuilder;

    .line 128
    .line 129
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v7

    .line 139
    const/4 v8, 0x0

    .line 140
    move-object v2, p0

    .line 141
    move-object v3, p2

    .line 142
    move-object v4, p1

    .line 143
    invoke-direct/range {v2 .. v8}, Lcom/android/billingclient/api/c;->I(LB/l;Ljava/lang/String;Lcom/android/billingclient/api/i;ILjava/lang/String;Ljava/lang/Exception;)V
    :try_end_2
    .catch Landroid/os/DeadObjectException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 144
    .line 145
    .line 146
    goto :goto_1

    .line 147
    :catchall_0
    move-exception v0

    .line 148
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 149
    :try_start_4
    throw v0
    :try_end_4
    .catch Landroid/os/DeadObjectException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 150
    :catch_0
    move-exception v0

    .line 151
    move-object v8, v0

    .line 152
    const-string v7, "Error consuming purchase!"

    .line 153
    .line 154
    sget-object v5, Lcom/android/billingclient/api/F;->k:Lcom/android/billingclient/api/i;

    .line 155
    .line 156
    const/16 v6, 0x1d

    .line 157
    .line 158
    move-object v2, p0

    .line 159
    move-object v3, p2

    .line 160
    move-object v4, p1

    .line 161
    invoke-direct/range {v2 .. v8}, Lcom/android/billingclient/api/c;->I(LB/l;Ljava/lang/String;Lcom/android/billingclient/api/i;ILjava/lang/String;Ljava/lang/Exception;)V

    .line 162
    .line 163
    .line 164
    goto :goto_1

    .line 165
    :catch_1
    move-exception v0

    .line 166
    move-object v8, v0

    .line 167
    const-string v7, "Error consuming purchase!"

    .line 168
    .line 169
    sget-object v5, Lcom/android/billingclient/api/F;->m:Lcom/android/billingclient/api/i;

    .line 170
    .line 171
    const/16 v6, 0x1d

    .line 172
    .line 173
    move-object v2, p0

    .line 174
    move-object v3, p2

    .line 175
    move-object v4, p1

    .line 176
    invoke-direct/range {v2 .. v8}, Lcom/android/billingclient/api/c;->I(LB/l;Ljava/lang/String;Lcom/android/billingclient/api/i;ILjava/lang/String;Ljava/lang/Exception;)V

    .line 177
    .line 178
    .line 179
    :goto_1
    return-void
.end method
