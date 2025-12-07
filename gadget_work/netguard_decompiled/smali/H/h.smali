.class public final LH/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LH/b;


# instance fields
.field private final a:LH/r;

.field private final b:Ljava/io/File;

.field private final c:J

.field private final d:LH/e;

.field private e:LC/g;


# direct methods
.method protected constructor <init>(Ljava/io/File;J)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, LH/e;

    .line 5
    .line 6
    invoke-direct {v0}, LH/e;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, LH/h;->d:LH/e;

    .line 10
    .line 11
    iput-object p1, p0, LH/h;->b:Ljava/io/File;

    .line 12
    .line 13
    iput-wide p2, p0, LH/h;->c:J

    .line 14
    .line 15
    new-instance p1, LH/r;

    .line 16
    .line 17
    invoke-direct {p1}, LH/r;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object p1, p0, LH/h;->a:LH/r;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final a(LE/e;LH/a;)V
    .locals 7

    .line 1
    const-string v0, "DiskLruCacheWrapper"

    .line 2
    .line 3
    const-string v1, "Had two simultaneous puts for: "

    .line 4
    .line 5
    const-string v2, "Put: Obtained: "

    .line 6
    .line 7
    iget-object v3, p0, LH/h;->a:LH/r;

    .line 8
    .line 9
    invoke-virtual {v3, p1}, LH/r;->a(LE/e;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    iget-object v4, p0, LH/h;->d:LH/e;

    .line 14
    .line 15
    invoke-virtual {v4, v3}, LH/e;->a(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const/4 v5, 0x2

    .line 19
    :try_start_0
    invoke-static {v0, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 20
    .line 21
    .line 22
    move-result v5

    .line 23
    if-eqz v5, :cond_0

    .line 24
    .line 25
    new-instance v5, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v2, " for for Key: "

    .line 34
    .line 35
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 46
    .line 47
    .line 48
    :cond_0
    :try_start_1
    monitor-enter p0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 49
    :try_start_2
    iget-object p1, p0, LH/h;->e:LC/g;

    .line 50
    .line 51
    if-nez p1, :cond_1

    .line 52
    .line 53
    iget-object p1, p0, LH/h;->b:Ljava/io/File;

    .line 54
    .line 55
    iget-wide v5, p0, LH/h;->c:J

    .line 56
    .line 57
    invoke-static {p1, v5, v6}, LC/g;->x(Ljava/io/File;J)LC/g;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    iput-object p1, p0, LH/h;->e:LC/g;

    .line 62
    .line 63
    :cond_1
    iget-object p1, p0, LH/h;->e:LC/g;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 64
    .line 65
    :try_start_3
    monitor-exit p0

    .line 66
    invoke-virtual {p1, v3}, LC/g;->v(Ljava/lang/String;)LC/f;

    .line 67
    .line 68
    .line 69
    move-result-object v2
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 70
    if-eqz v2, :cond_2

    .line 71
    .line 72
    invoke-virtual {v4, v3}, LH/e;->b(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    return-void

    .line 76
    :cond_2
    :try_start_4
    invoke-virtual {p1, v3}, LC/g;->t(Ljava/lang/String;)LC/d;

    .line 77
    .line 78
    .line 79
    move-result-object p1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 80
    if-eqz p1, :cond_4

    .line 81
    .line 82
    :try_start_5
    invoke-virtual {p1}, LC/d;->f()Ljava/io/File;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    invoke-interface {p2, v1}, LH/a;->a(Ljava/io/File;)Z

    .line 87
    .line 88
    .line 89
    move-result p2

    .line 90
    if-eqz p2, :cond_3

    .line 91
    .line 92
    invoke-virtual {p1}, LC/d;->e()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 93
    .line 94
    .line 95
    :cond_3
    :try_start_6
    invoke-virtual {p1}, LC/d;->b()V

    .line 96
    .line 97
    .line 98
    goto :goto_1

    .line 99
    :catchall_0
    move-exception p2

    .line 100
    invoke-virtual {p1}, LC/d;->b()V

    .line 101
    .line 102
    .line 103
    throw p2

    .line 104
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 105
    .line 106
    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p2

    .line 110
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    throw p1

    .line 114
    :catch_0
    move-exception p1

    .line 115
    goto :goto_0

    .line 116
    :catchall_1
    move-exception p1

    .line 117
    monitor-exit p0

    .line 118
    throw p1
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 119
    :goto_0
    const/4 p2, 0x5

    .line 120
    :try_start_7
    invoke-static {v0, p2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 121
    .line 122
    .line 123
    move-result p2

    .line 124
    if-eqz p2, :cond_5

    .line 125
    .line 126
    const-string p2, "Unable to put to disk cache"

    .line 127
    .line 128
    invoke-static {v0, p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 129
    .line 130
    .line 131
    :cond_5
    :goto_1
    invoke-virtual {v4, v3}, LH/e;->b(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    return-void

    .line 135
    :catchall_2
    move-exception p1

    .line 136
    invoke-virtual {v4, v3}, LH/e;->b(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    throw p1
.end method

.method public final b(LE/e;)Ljava/io/File;
    .locals 4

    .line 1
    iget-object v0, p0, LH/h;->a:LH/r;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, LH/r;->a(LE/e;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "DiskLruCacheWrapper"

    .line 8
    .line 9
    const/4 v2, 0x2

    .line 10
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    new-instance v2, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const-string v3, "Get: Obtained: "

    .line 19
    .line 20
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v3, " for for Key: "

    .line 27
    .line 28
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    :cond_0
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    :try_start_1
    iget-object p1, p0, LH/h;->e:LC/g;

    .line 43
    .line 44
    if-nez p1, :cond_1

    .line 45
    .line 46
    iget-object p1, p0, LH/h;->b:Ljava/io/File;

    .line 47
    .line 48
    iget-wide v2, p0, LH/h;->c:J

    .line 49
    .line 50
    invoke-static {p1, v2, v3}, LC/g;->x(Ljava/io/File;J)LC/g;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    iput-object p1, p0, LH/h;->e:LC/g;

    .line 55
    .line 56
    :cond_1
    iget-object p1, p0, LH/h;->e:LC/g;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    .line 58
    :try_start_2
    monitor-exit p0

    .line 59
    invoke-virtual {p1, v0}, LC/g;->v(Ljava/lang/String;)LC/f;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    if-eqz p1, :cond_2

    .line 64
    .line 65
    invoke-virtual {p1}, LC/f;->a()Ljava/io/File;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    goto :goto_1

    .line 70
    :catch_0
    move-exception p1

    .line 71
    goto :goto_0

    .line 72
    :catchall_0
    move-exception p1

    .line 73
    monitor-exit p0

    .line 74
    throw p1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 75
    :goto_0
    const/4 v0, 0x5

    .line 76
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    if-eqz v0, :cond_2

    .line 81
    .line 82
    const-string v0, "Unable to get from disk cache"

    .line 83
    .line 84
    invoke-static {v1, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 85
    .line 86
    .line 87
    :cond_2
    const/4 p1, 0x0

    .line 88
    :goto_1
    return-object p1
.end method
