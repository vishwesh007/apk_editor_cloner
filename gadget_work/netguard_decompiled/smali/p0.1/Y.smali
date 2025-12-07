.class final Lp0/Y;
.super Lp0/m;
.source "SourceFile"


# instance fields
.field private final d:Ljava/util/HashMap;

.field private final e:Landroid/content/Context;

.field private volatile f:Lv0/h;

.field private final g:Ls0/a;

.field private final h:J

.field private final i:J

.field private volatile j:Ljava/util/concurrent/Executor;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lp0/m;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lp0/Y;->d:Ljava/util/HashMap;

    .line 10
    .line 11
    new-instance v0, Lp0/X;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lp0/X;-><init>(Lp0/Y;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iput-object p1, p0, Lp0/Y;->e:Landroid/content/Context;

    .line 21
    .line 22
    new-instance p1, Lv0/h;

    .line 23
    .line 24
    const/4 v1, 0x1

    .line 25
    invoke-direct {p1, p2, v0, v1}, Lv0/h;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;I)V

    .line 26
    .line 27
    .line 28
    iput-object p1, p0, Lp0/Y;->f:Lv0/h;

    .line 29
    .line 30
    invoke-static {}, Ls0/a;->a()Ls0/a;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    iput-object p1, p0, Lp0/Y;->g:Ls0/a;

    .line 35
    .line 36
    const-wide/16 p1, 0x1388

    .line 37
    .line 38
    iput-wide p1, p0, Lp0/Y;->h:J

    .line 39
    .line 40
    const-wide/32 p1, 0x493e0

    .line 41
    .line 42
    .line 43
    iput-wide p1, p0, Lp0/Y;->i:J

    .line 44
    .line 45
    const/4 p1, 0x0

    .line 46
    iput-object p1, p0, Lp0/Y;->j:Ljava/util/concurrent/Executor;

    .line 47
    .line 48
    return-void
.end method

.method static bridge synthetic e(Lp0/Y;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lp0/Y;->i:J

    return-wide v0
.end method

.method static bridge synthetic f(Lp0/Y;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lp0/Y;->e:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic g(Lp0/Y;)Lv0/h;
    .locals 0

    .line 1
    iget-object p0, p0, Lp0/Y;->f:Lv0/h;

    return-object p0
.end method

.method static bridge synthetic h(Lp0/Y;)Ls0/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lp0/Y;->g:Ls0/a;

    return-object p0
.end method

.method static bridge synthetic i(Lp0/Y;)Ljava/util/HashMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lp0/Y;->d:Ljava/util/HashMap;

    return-object p0
.end method


# virtual methods
.method protected final c(Lp0/V;Lp0/Q;Ljava/lang/String;)V
    .locals 4

    .line 1
    const-string p3, "Trying to unbind a GmsServiceConnection  that was not bound before.  config="

    .line 2
    .line 3
    const-string v0, "Nonexistent connection status for service config: "

    .line 4
    .line 5
    iget-object v1, p0, Lp0/Y;->d:Ljava/util/HashMap;

    .line 6
    .line 7
    monitor-enter v1

    .line 8
    :try_start_0
    iget-object v2, p0, Lp0/Y;->d:Ljava/util/HashMap;

    .line 9
    .line 10
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    check-cast v2, Lp0/W;

    .line 15
    .line 16
    if-eqz v2, :cond_2

    .line 17
    .line 18
    invoke-virtual {v2, p2}, Lp0/W;->h(Lp0/Q;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    invoke-virtual {v2, p2}, Lp0/W;->f(Lp0/Q;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2}, Lp0/W;->i()Z

    .line 28
    .line 29
    .line 30
    move-result p2

    .line 31
    if-eqz p2, :cond_0

    .line 32
    .line 33
    iget-object p2, p0, Lp0/Y;->f:Lv0/h;

    .line 34
    .line 35
    const/4 p3, 0x0

    .line 36
    invoke-virtual {p2, p3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    iget-object p2, p0, Lp0/Y;->f:Lv0/h;

    .line 41
    .line 42
    iget-wide v2, p0, Lp0/Y;->h:J

    .line 43
    .line 44
    invoke-virtual {p2, p1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 45
    .line 46
    .line 47
    :cond_0
    monitor-exit v1

    .line 48
    return-void

    .line 49
    :cond_1
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 50
    .line 51
    invoke-virtual {p1}, Lp0/V;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-virtual {p3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    throw p2

    .line 63
    :cond_2
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 64
    .line 65
    invoke-virtual {p1}, Lp0/V;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    throw p2

    .line 77
    :catchall_0
    move-exception p1

    .line 78
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    throw p1
.end method

.method protected final d(Lp0/V;Lp0/Q;Ljava/lang/String;Ljava/util/concurrent/Executor;)Z
    .locals 5

    .line 1
    const-string v0, "Trying to bind a GmsServiceConnection that was already connected before.  config="

    .line 2
    .line 3
    iget-object v1, p0, Lp0/Y;->d:Ljava/util/HashMap;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    iget-object v2, p0, Lp0/Y;->d:Ljava/util/HashMap;

    .line 7
    .line 8
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    check-cast v2, Lp0/W;

    .line 13
    .line 14
    if-nez p4, :cond_0

    .line 15
    .line 16
    iget-object p4, p0, Lp0/Y;->j:Ljava/util/concurrent/Executor;

    .line 17
    .line 18
    :cond_0
    if-nez v2, :cond_1

    .line 19
    .line 20
    new-instance v2, Lp0/W;

    .line 21
    .line 22
    invoke-direct {v2, p0, p1}, Lp0/W;-><init>(Lp0/Y;Lp0/V;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2, p2, p2}, Lp0/W;->d(Lp0/Q;Lp0/Q;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2, p3, p4}, Lp0/W;->e(Ljava/lang/String;Ljava/util/concurrent/Executor;)V

    .line 29
    .line 30
    .line 31
    iget-object p2, p0, Lp0/Y;->d:Ljava/util/HashMap;

    .line 32
    .line 33
    invoke-virtual {p2, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    iget-object v3, p0, Lp0/Y;->f:Lv0/h;

    .line 38
    .line 39
    const/4 v4, 0x0

    .line 40
    invoke-virtual {v3, v4, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2, p2}, Lp0/W;->h(Lp0/Q;)Z

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    if-nez v3, :cond_4

    .line 48
    .line 49
    invoke-virtual {v2, p2, p2}, Lp0/W;->d(Lp0/Q;Lp0/Q;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2}, Lp0/W;->a()I

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    const/4 v0, 0x1

    .line 57
    if-eq p1, v0, :cond_3

    .line 58
    .line 59
    const/4 p2, 0x2

    .line 60
    if-eq p1, p2, :cond_2

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_2
    invoke-virtual {v2, p3, p4}, Lp0/W;->e(Ljava/lang/String;Ljava/util/concurrent/Executor;)V

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_3
    invoke-virtual {v2}, Lp0/W;->b()Landroid/content/ComponentName;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-virtual {v2}, Lp0/W;->c()Landroid/os/IBinder;

    .line 72
    .line 73
    .line 74
    move-result-object p3

    .line 75
    invoke-virtual {p2, p1, p3}, Lp0/Q;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    .line 76
    .line 77
    .line 78
    :goto_0
    invoke-virtual {v2}, Lp0/W;->j()Z

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    monitor-exit v1

    .line 83
    return p1

    .line 84
    :cond_4
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 85
    .line 86
    invoke-virtual {p1}, Lp0/V;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    throw p2

    .line 98
    :catchall_0
    move-exception p1

    .line 99
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    throw p1
.end method
