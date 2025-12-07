.class final Lcom/google/android/gms/internal/play_billing/j1;
.super Lcom/google/android/gms/internal/play_billing/Q0;
.source "SourceFile"


# instance fields
.field private k:Lcom/google/android/gms/internal/play_billing/a1;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field private l:Ljava/util/concurrent/ScheduledFuture;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/play_billing/a1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/play_billing/Q0;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/j1;->k:Lcom/google/android/gms/internal/play_billing/a1;

    .line 5
    .line 6
    return-void
.end method

.method static bridge synthetic A(Lcom/google/android/gms/internal/play_billing/j1;)Ljava/util/concurrent/ScheduledFuture;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/play_billing/j1;->l:Ljava/util/concurrent/ScheduledFuture;

    return-object p0
.end method

.method static bridge synthetic B(Lcom/google/android/gms/internal/play_billing/j1;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/play_billing/j1;->l:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method static bridge synthetic y(Lcom/google/android/gms/internal/play_billing/j1;)Lcom/google/android/gms/internal/play_billing/a1;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/play_billing/j1;->k:Lcom/google/android/gms/internal/play_billing/a1;

    return-object p0
.end method

.method static z(Lcom/google/android/gms/internal/play_billing/a1;Ljava/util/concurrent/TimeUnit;Lcom/google/android/gms/internal/play_billing/c1;)Lcom/google/android/gms/internal/play_billing/a1;
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/play_billing/j1;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/play_billing/j1;-><init>(Lcom/google/android/gms/internal/play_billing/a1;)V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/google/android/gms/internal/play_billing/h1;

    .line 7
    .line 8
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/play_billing/h1;-><init>(Lcom/google/android/gms/internal/play_billing/j1;)V

    .line 9
    .line 10
    .line 11
    const-wide/16 v2, 0x6f54

    .line 12
    .line 13
    invoke-interface {p2, v1, v2, v3, p1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iput-object p1, v0, Lcom/google/android/gms/internal/play_billing/j1;->l:Ljava/util/concurrent/ScheduledFuture;

    .line 18
    .line 19
    sget-object p1, Lcom/google/android/gms/internal/play_billing/P0;->d:Lcom/google/android/gms/internal/play_billing/P0;

    .line 20
    .line 21
    invoke-interface {p0, v1, p1}, Lcom/google/android/gms/internal/play_billing/a1;->f(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 22
    .line 23
    .line 24
    return-object v0
.end method


# virtual methods
.method protected final h()Ljava/lang/String;
    .locals 6
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/j1;->k:Lcom/google/android/gms/internal/play_billing/a1;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/play_billing/j1;->l:Ljava/util/concurrent/ScheduledFuture;

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v2, "inputFuture=["

    .line 12
    .line 13
    const-string v3, "]"

    .line 14
    .line 15
    invoke-static {v2, v0, v3}, LB/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 22
    .line 23
    invoke-interface {v1, v2}, Ljava/util/concurrent/Delayed;->getDelay(Ljava/util/concurrent/TimeUnit;)J

    .line 24
    .line 25
    .line 26
    move-result-wide v1

    .line 27
    const-wide/16 v3, 0x0

    .line 28
    .line 29
    cmp-long v5, v1, v3

    .line 30
    .line 31
    if-lez v5, :cond_0

    .line 32
    .line 33
    new-instance v3, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v0, ", remaining delay=["

    .line 42
    .line 43
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const-string v0, " ms]"

    .line 50
    .line 51
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    :cond_0
    return-object v0

    .line 59
    :cond_1
    const/4 v0, 0x0

    .line 60
    return-object v0
.end method

.method protected final m()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/j1;->k:Lcom/google/android/gms/internal/play_billing/a1;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v2, 0x0

    .line 9
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/K0;->isCancelled()Z

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    and-int/2addr v2, v3

    .line 14
    if-eqz v2, :cond_1

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/K0;->q()Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    invoke-interface {v0, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 21
    .line 22
    .line 23
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/j1;->l:Ljava/util/concurrent/ScheduledFuture;

    .line 24
    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 28
    .line 29
    .line 30
    :cond_2
    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lcom/google/android/gms/internal/play_billing/j1;->k:Lcom/google/android/gms/internal/play_billing/a1;

    .line 32
    .line 33
    iput-object v0, p0, Lcom/google/android/gms/internal/play_billing/j1;->l:Ljava/util/concurrent/ScheduledFuture;

    .line 34
    .line 35
    return-void
.end method
