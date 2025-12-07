.class final Landroidx/core/provider/m;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Landroidx/collection/g;

.field private static final b:Ljava/util/concurrent/ThreadPoolExecutor;

.field static final c:Ljava/lang/Object;

.field static final d:Landroidx/collection/n;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 1
    new-instance v0, Landroidx/collection/g;

    .line 2
    .line 3
    const/16 v1, 0x10

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroidx/collection/g;-><init>(I)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Landroidx/core/provider/m;->a:Landroidx/collection/g;

    .line 9
    .line 10
    new-instance v9, Landroidx/core/provider/r;

    .line 11
    .line 12
    invoke-direct {v9}, Landroidx/core/provider/r;-><init>()V

    .line 13
    .line 14
    .line 15
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    const/4 v4, 0x1

    .line 19
    const/16 v1, 0x2710

    .line 20
    .line 21
    int-to-long v5, v1

    .line 22
    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 23
    .line 24
    new-instance v8, Ljava/util/concurrent/LinkedBlockingDeque;

    .line 25
    .line 26
    invoke-direct {v8}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    .line 27
    .line 28
    .line 29
    move-object v2, v0

    .line 30
    invoke-direct/range {v2 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 31
    .line 32
    .line 33
    const/4 v1, 0x1

    .line 34
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 35
    .line 36
    .line 37
    sput-object v0, Landroidx/core/provider/m;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 38
    .line 39
    new-instance v0, Ljava/lang/Object;

    .line 40
    .line 41
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 42
    .line 43
    .line 44
    sput-object v0, Landroidx/core/provider/m;->c:Ljava/lang/Object;

    .line 45
    .line 46
    new-instance v0, Landroidx/collection/n;

    .line 47
    .line 48
    invoke-direct {v0}, Landroidx/collection/n;-><init>()V

    .line 49
    .line 50
    .line 51
    sput-object v0, Landroidx/core/provider/m;->d:Landroidx/collection/n;

    .line 52
    .line 53
    return-void
.end method

.method static a(Ljava/lang/String;Landroid/content/Context;Landroidx/core/provider/g;I)Landroidx/core/provider/l;
    .locals 7

    .line 1
    sget-object v0, Landroidx/core/provider/m;->a:Landroidx/collection/g;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Landroidx/collection/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    check-cast v1, Landroid/graphics/Typeface;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    new-instance p0, Landroidx/core/provider/l;

    .line 12
    .line 13
    invoke-direct {p0, v1}, Landroidx/core/provider/l;-><init>(Landroid/graphics/Typeface;)V

    .line 14
    .line 15
    .line 16
    return-object p0

    .line 17
    :cond_0
    :try_start_0
    invoke-static {p1, p2}, Landroidx/core/provider/f;->a(Landroid/content/Context;Landroidx/core/provider/g;)Landroidx/core/provider/n;

    .line 18
    .line 19
    .line 20
    move-result-object p2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    invoke-virtual {p2}, Landroidx/core/provider/n;->b()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    const/4 v2, -0x3

    .line 26
    const/4 v3, 0x1

    .line 27
    if-eqz v1, :cond_2

    .line 28
    .line 29
    invoke-virtual {p2}, Landroidx/core/provider/n;->b()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eq v1, v3, :cond_1

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_1
    const/4 v1, -0x2

    .line 37
    goto :goto_3

    .line 38
    :cond_2
    invoke-virtual {p2}, Landroidx/core/provider/n;->a()[Landroidx/core/provider/o;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    if-eqz v1, :cond_7

    .line 43
    .line 44
    array-length v4, v1

    .line 45
    if-nez v4, :cond_3

    .line 46
    .line 47
    goto :goto_2

    .line 48
    :cond_3
    array-length v3, v1

    .line 49
    const/4 v4, 0x0

    .line 50
    const/4 v5, 0x0

    .line 51
    :goto_0
    if-ge v5, v3, :cond_6

    .line 52
    .line 53
    aget-object v6, v1, v5

    .line 54
    .line 55
    invoke-virtual {v6}, Landroidx/core/provider/o;->a()I

    .line 56
    .line 57
    .line 58
    move-result v6

    .line 59
    if-eqz v6, :cond_5

    .line 60
    .line 61
    if-gez v6, :cond_4

    .line 62
    .line 63
    :goto_1
    const/4 v1, -0x3

    .line 64
    goto :goto_3

    .line 65
    :cond_4
    move v1, v6

    .line 66
    goto :goto_3

    .line 67
    :cond_5
    add-int/lit8 v5, v5, 0x1

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_6
    const/4 v3, 0x0

    .line 71
    :cond_7
    :goto_2
    move v1, v3

    .line 72
    :goto_3
    if-eqz v1, :cond_8

    .line 73
    .line 74
    new-instance p0, Landroidx/core/provider/l;

    .line 75
    .line 76
    invoke-direct {p0, v1}, Landroidx/core/provider/l;-><init>(I)V

    .line 77
    .line 78
    .line 79
    return-object p0

    .line 80
    :cond_8
    invoke-virtual {p2}, Landroidx/core/provider/n;->a()[Landroidx/core/provider/o;

    .line 81
    .line 82
    .line 83
    move-result-object p2

    .line 84
    invoke-static {p1, p2, p3}, Landroidx/core/graphics/i;->a(Landroid/content/Context;[Landroidx/core/provider/o;I)Landroid/graphics/Typeface;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    if-eqz p1, :cond_9

    .line 89
    .line 90
    invoke-virtual {v0, p0, p1}, Landroidx/collection/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    new-instance p0, Landroidx/core/provider/l;

    .line 94
    .line 95
    invoke-direct {p0, p1}, Landroidx/core/provider/l;-><init>(Landroid/graphics/Typeface;)V

    .line 96
    .line 97
    .line 98
    return-object p0

    .line 99
    :cond_9
    new-instance p0, Landroidx/core/provider/l;

    .line 100
    .line 101
    invoke-direct {p0, v2}, Landroidx/core/provider/l;-><init>(I)V

    .line 102
    .line 103
    .line 104
    return-object p0

    .line 105
    :catch_0
    new-instance p0, Landroidx/core/provider/l;

    .line 106
    .line 107
    const/4 p1, -0x1

    .line 108
    invoke-direct {p0, p1}, Landroidx/core/provider/l;-><init>(I)V

    .line 109
    .line 110
    .line 111
    return-object p0
.end method

.method static b(Landroid/content/Context;Landroidx/core/provider/g;ILandroidx/core/provider/c;)Landroid/graphics/Typeface;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroidx/core/provider/g;->b()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, "-"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    sget-object v1, Landroidx/core/provider/m;->a:Landroidx/collection/g;

    .line 26
    .line 27
    invoke-virtual {v1, v0}, Landroidx/collection/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Landroid/graphics/Typeface;

    .line 32
    .line 33
    if-eqz v1, :cond_0

    .line 34
    .line 35
    new-instance p0, Landroidx/core/provider/l;

    .line 36
    .line 37
    invoke-direct {p0, v1}, Landroidx/core/provider/l;-><init>(Landroid/graphics/Typeface;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p3, p0}, Landroidx/core/provider/c;->a(Landroidx/core/provider/l;)V

    .line 41
    .line 42
    .line 43
    return-object v1

    .line 44
    :cond_0
    new-instance v1, Landroidx/core/provider/i;

    .line 45
    .line 46
    invoke-direct {v1, p3}, Landroidx/core/provider/i;-><init>(Landroidx/core/provider/c;)V

    .line 47
    .line 48
    .line 49
    sget-object p3, Landroidx/core/provider/m;->c:Ljava/lang/Object;

    .line 50
    .line 51
    monitor-enter p3

    .line 52
    :try_start_0
    sget-object v2, Landroidx/core/provider/m;->d:Landroidx/collection/n;

    .line 53
    .line 54
    const/4 v3, 0x0

    .line 55
    invoke-virtual {v2, v0, v3}, Landroidx/collection/n;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    check-cast v4, Ljava/util/ArrayList;

    .line 60
    .line 61
    if-eqz v4, :cond_1

    .line 62
    .line 63
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    monitor-exit p3

    .line 67
    return-object v3

    .line 68
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    .line 69
    .line 70
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    invoke-virtual {v2, v0, v4}, Landroidx/collection/n;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    new-instance p3, Landroidx/core/provider/j;

    .line 81
    .line 82
    invoke-direct {p3, v0, p0, p1, p2}, Landroidx/core/provider/j;-><init>(Ljava/lang/String;Landroid/content/Context;Landroidx/core/provider/g;I)V

    .line 83
    .line 84
    .line 85
    sget-object p0, Landroidx/core/provider/m;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 86
    .line 87
    new-instance p1, Landroidx/core/provider/k;

    .line 88
    .line 89
    invoke-direct {p1, v0}, Landroidx/core/provider/k;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 93
    .line 94
    .line 95
    move-result-object p2

    .line 96
    if-nez p2, :cond_2

    .line 97
    .line 98
    new-instance p2, Landroid/os/Handler;

    .line 99
    .line 100
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 105
    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_2
    new-instance p2, Landroid/os/Handler;

    .line 109
    .line 110
    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    .line 111
    .line 112
    .line 113
    :goto_0
    new-instance v0, Landroidx/core/provider/t;

    .line 114
    .line 115
    invoke-direct {v0, p2, p3, p1}, Landroidx/core/provider/t;-><init>(Landroid/os/Handler;Ljava/util/concurrent/Callable;Landroidx/core/util/a;)V

    .line 116
    .line 117
    .line 118
    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 119
    .line 120
    .line 121
    return-object v3

    .line 122
    :catchall_0
    move-exception p0

    .line 123
    :try_start_1
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 124
    throw p0
.end method

.method static c(Landroid/content/Context;Landroidx/core/provider/g;Landroidx/core/provider/c;II)Landroid/graphics/Typeface;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroidx/core/provider/g;->b()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, "-"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    sget-object v1, Landroidx/core/provider/m;->a:Landroidx/collection/g;

    .line 26
    .line 27
    invoke-virtual {v1, v0}, Landroidx/collection/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Landroid/graphics/Typeface;

    .line 32
    .line 33
    if-eqz v1, :cond_0

    .line 34
    .line 35
    new-instance p0, Landroidx/core/provider/l;

    .line 36
    .line 37
    invoke-direct {p0, v1}, Landroidx/core/provider/l;-><init>(Landroid/graphics/Typeface;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p2, p0}, Landroidx/core/provider/c;->a(Landroidx/core/provider/l;)V

    .line 41
    .line 42
    .line 43
    return-object v1

    .line 44
    :cond_0
    const/4 v1, -0x1

    .line 45
    if-ne p4, v1, :cond_1

    .line 46
    .line 47
    invoke-static {v0, p0, p1, p3}, Landroidx/core/provider/m;->a(Ljava/lang/String;Landroid/content/Context;Landroidx/core/provider/g;I)Landroidx/core/provider/l;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    invoke-virtual {p2, p0}, Landroidx/core/provider/c;->a(Landroidx/core/provider/l;)V

    .line 52
    .line 53
    .line 54
    iget-object p0, p0, Landroidx/core/provider/l;->a:Landroid/graphics/Typeface;

    .line 55
    .line 56
    return-object p0

    .line 57
    :cond_1
    new-instance v1, Landroidx/core/provider/h;

    .line 58
    .line 59
    invoke-direct {v1, v0, p0, p1, p3}, Landroidx/core/provider/h;-><init>(Ljava/lang/String;Landroid/content/Context;Landroidx/core/provider/g;I)V

    .line 60
    .line 61
    .line 62
    :try_start_0
    sget-object p0, Landroidx/core/provider/m;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 63
    .line 64
    invoke-interface {p0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 65
    .line 66
    .line 67
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3

    .line 68
    int-to-long p3, p4

    .line 69
    :try_start_1
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 70
    .line 71
    invoke-interface {p0, p3, p4, p1}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object p0
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_0

    .line 75
    :try_start_2
    check-cast p0, Landroidx/core/provider/l;

    .line 76
    .line 77
    invoke-virtual {p2, p0}, Landroidx/core/provider/c;->a(Landroidx/core/provider/l;)V

    .line 78
    .line 79
    .line 80
    iget-object p0, p0, Landroidx/core/provider/l;->a:Landroid/graphics/Typeface;

    .line 81
    .line 82
    return-object p0

    .line 83
    :catch_0
    new-instance p0, Ljava/lang/InterruptedException;

    .line 84
    .line 85
    const-string p1, "timeout"

    .line 86
    .line 87
    invoke-direct {p0, p1}, Ljava/lang/InterruptedException;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    throw p0

    .line 91
    :catch_1
    move-exception p0

    .line 92
    throw p0

    .line 93
    :catch_2
    move-exception p0

    .line 94
    new-instance p1, Ljava/lang/RuntimeException;

    .line 95
    .line 96
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 97
    .line 98
    .line 99
    throw p1
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_3

    .line 100
    :catch_3
    new-instance p0, Landroidx/core/provider/l;

    .line 101
    .line 102
    const/4 p1, -0x3

    .line 103
    invoke-direct {p0, p1}, Landroidx/core/provider/l;-><init>(I)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p2, p0}, Landroidx/core/provider/c;->a(Landroidx/core/provider/l;)V

    .line 107
    .line 108
    .line 109
    const/4 p0, 0x0

    .line 110
    return-object p0
.end method
