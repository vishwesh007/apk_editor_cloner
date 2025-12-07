.class final Lcom/google/android/gms/internal/play_billing/K3;
.super Lcom/google/android/gms/internal/play_billing/y0;
.source "SourceFile"


# virtual methods
.method final b(Lcom/google/android/gms/internal/play_billing/L3;Lcom/google/android/gms/internal/play_billing/L3;)V
    .locals 0

    .line 1
    iput-object p2, p1, Lcom/google/android/gms/internal/play_billing/L3;->b:Lcom/google/android/gms/internal/play_billing/L3;

    return-void
.end method

.method final d(Lcom/google/android/gms/internal/play_billing/L3;Ljava/lang/Thread;)V
    .locals 0

    .line 1
    iput-object p2, p1, Lcom/google/android/gms/internal/play_billing/L3;->a:Ljava/lang/Thread;

    return-void
.end method

.method final f(Lcom/google/android/gms/internal/play_billing/M3;Lcom/google/android/gms/internal/play_billing/K2;Lcom/google/android/gms/internal/play_billing/K2;)Z
    .locals 1

    .line 1
    monitor-enter p1

    .line 2
    :try_start_0
    iget-object v0, p1, Lcom/google/android/gms/internal/play_billing/M3;->e:Lcom/google/android/gms/internal/play_billing/K2;

    .line 3
    .line 4
    if-ne v0, p2, :cond_0

    .line 5
    .line 6
    iput-object p3, p1, Lcom/google/android/gms/internal/play_billing/M3;->e:Lcom/google/android/gms/internal/play_billing/K2;

    .line 7
    .line 8
    monitor-exit p1

    .line 9
    const/4 p1, 0x1

    .line 10
    return p1

    .line 11
    :cond_0
    monitor-exit p1

    .line 12
    const/4 p1, 0x0

    .line 13
    return p1

    .line 14
    :catchall_0
    move-exception p2

    .line 15
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    throw p2
.end method

.method final h(Lcom/google/android/gms/internal/play_billing/M3;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .line 1
    monitor-enter p1

    .line 2
    :try_start_0
    iget-object v0, p1, Lcom/google/android/gms/internal/play_billing/M3;->d:Ljava/lang/Object;

    .line 3
    .line 4
    if-ne v0, p2, :cond_0

    .line 5
    .line 6
    iput-object p3, p1, Lcom/google/android/gms/internal/play_billing/M3;->d:Ljava/lang/Object;

    .line 7
    .line 8
    monitor-exit p1

    .line 9
    const/4 p1, 0x1

    .line 10
    return p1

    .line 11
    :cond_0
    monitor-exit p1

    .line 12
    const/4 p1, 0x0

    .line 13
    return p1

    .line 14
    :catchall_0
    move-exception p2

    .line 15
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    throw p2
.end method

.method final j(Lcom/google/android/gms/internal/play_billing/M3;Lcom/google/android/gms/internal/play_billing/L3;Lcom/google/android/gms/internal/play_billing/L3;)Z
    .locals 1

    .line 1
    monitor-enter p1

    .line 2
    :try_start_0
    iget-object v0, p1, Lcom/google/android/gms/internal/play_billing/M3;->f:Lcom/google/android/gms/internal/play_billing/L3;

    .line 3
    .line 4
    if-ne v0, p2, :cond_0

    .line 5
    .line 6
    iput-object p3, p1, Lcom/google/android/gms/internal/play_billing/M3;->f:Lcom/google/android/gms/internal/play_billing/L3;

    .line 7
    .line 8
    monitor-exit p1

    .line 9
    const/4 p1, 0x1

    .line 10
    return p1

    .line 11
    :cond_0
    monitor-exit p1

    .line 12
    const/4 p1, 0x0

    .line 13
    return p1

    .line 14
    :catchall_0
    move-exception p2

    .line 15
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    throw p2
.end method
