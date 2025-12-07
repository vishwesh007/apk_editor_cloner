.class final Leu/faircode/netguard/ServiceSinkhole$LogHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field public queue:I

.field final synthetic this$0:Leu/faircode/netguard/ServiceSinkhole;


# direct methods
.method public constructor <init>(Leu/faircode/netguard/ServiceSinkhole;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Leu/faircode/netguard/ServiceSinkhole$LogHandler;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput p1, p0, Leu/faircode/netguard/ServiceSinkhole$LogHandler;->queue:I

    .line 8
    .line 9
    return-void
.end method

.method private log(Leu/faircode/netguard/Packet;IZ)V
    .locals 6

    .line 1
    iget-object v0, p0, Leu/faircode/netguard/ServiceSinkhole$LogHandler;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 2
    .line 3
    invoke-static {v0}, Lt0/a;->s(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "log"

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    const-string v3, "log_app"

    .line 15
    .line 16
    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    iget-object v3, p0, Leu/faircode/netguard/ServiceSinkhole$LogHandler;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 21
    .line 22
    invoke-static {v3}, Leu/faircode/netguard/DatabaseHelper;->getInstance(Landroid/content/Context;)Leu/faircode/netguard/DatabaseHelper;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    iget v4, p1, Leu/faircode/netguard/Packet;->uid:I

    .line 27
    .line 28
    iget-object v5, p1, Leu/faircode/netguard/Packet;->daddr:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v3, v4, v5}, Leu/faircode/netguard/DatabaseHelper;->getQName(ILjava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    if-eqz v1, :cond_0

    .line 35
    .line 36
    invoke-virtual {v3, p1, v4, p2, p3}, Leu/faircode/netguard/DatabaseHelper;->insertLog(Leu/faircode/netguard/Packet;Ljava/lang/String;IZ)V

    .line 37
    .line 38
    .line 39
    :cond_0
    if-eqz v0, :cond_6

    .line 40
    .line 41
    iget p2, p1, Leu/faircode/netguard/Packet;->uid:I

    .line 42
    .line 43
    if-ltz p2, :cond_6

    .line 44
    .line 45
    const/16 p3, 0x11

    .line 46
    .line 47
    const/4 v0, 0x6

    .line 48
    if-nez p2, :cond_2

    .line 49
    .line 50
    iget p2, p1, Leu/faircode/netguard/Packet;->protocol:I

    .line 51
    .line 52
    if-eq p2, v0, :cond_1

    .line 53
    .line 54
    if-ne p2, p3, :cond_2

    .line 55
    .line 56
    :cond_1
    iget p2, p1, Leu/faircode/netguard/Packet;->dport:I

    .line 57
    .line 58
    const/16 v1, 0x35

    .line 59
    .line 60
    if-eq p2, v1, :cond_6

    .line 61
    .line 62
    :cond_2
    iget p2, p1, Leu/faircode/netguard/Packet;->protocol:I

    .line 63
    .line 64
    if-eq p2, v0, :cond_3

    .line 65
    .line 66
    if-eq p2, p3, :cond_3

    .line 67
    .line 68
    iput v2, p1, Leu/faircode/netguard/Packet;->dport:I

    .line 69
    .line 70
    :cond_3
    const/4 p2, -0x1

    .line 71
    invoke-virtual {v3, p1, v4, p2}, Leu/faircode/netguard/DatabaseHelper;->updateAccess(Leu/faircode/netguard/Packet;Ljava/lang/String;I)Z

    .line 72
    .line 73
    .line 74
    move-result p2

    .line 75
    if-eqz p2, :cond_6

    .line 76
    .line 77
    iget-object p2, p0, Leu/faircode/netguard/ServiceSinkhole$LogHandler;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 78
    .line 79
    invoke-static {p2}, Leu/faircode/netguard/ServiceSinkhole;->access$3300(Leu/faircode/netguard/ServiceSinkhole;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 80
    .line 81
    .line 82
    move-result-object p2

    .line 83
    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 84
    .line 85
    .line 86
    move-result-object p2

    .line 87
    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 88
    .line 89
    .line 90
    iget-object p2, p0, Leu/faircode/netguard/ServiceSinkhole$LogHandler;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 91
    .line 92
    invoke-static {p2}, Leu/faircode/netguard/ServiceSinkhole;->access$3400(Leu/faircode/netguard/ServiceSinkhole;)Ljava/util/Map;

    .line 93
    .line 94
    .line 95
    move-result-object p2

    .line 96
    iget p3, p1, Leu/faircode/netguard/Packet;->uid:I

    .line 97
    .line 98
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 99
    .line 100
    .line 101
    move-result-object p3

    .line 102
    invoke-interface {p2, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result p2

    .line 106
    if-eqz p2, :cond_4

    .line 107
    .line 108
    iget-object p2, p0, Leu/faircode/netguard/ServiceSinkhole$LogHandler;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 109
    .line 110
    invoke-static {p2}, Leu/faircode/netguard/ServiceSinkhole;->access$3400(Leu/faircode/netguard/ServiceSinkhole;)Ljava/util/Map;

    .line 111
    .line 112
    .line 113
    move-result-object p2

    .line 114
    iget p3, p1, Leu/faircode/netguard/Packet;->uid:I

    .line 115
    .line 116
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 117
    .line 118
    .line 119
    move-result-object p3

    .line 120
    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object p2

    .line 124
    check-cast p2, Ljava/lang/Boolean;

    .line 125
    .line 126
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 127
    .line 128
    .line 129
    move-result p2

    .line 130
    if-eqz p2, :cond_5

    .line 131
    .line 132
    :cond_4
    iget-object p2, p0, Leu/faircode/netguard/ServiceSinkhole$LogHandler;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 133
    .line 134
    iget p1, p1, Leu/faircode/netguard/Packet;->uid:I

    .line 135
    .line 136
    invoke-static {p2, p1}, Leu/faircode/netguard/ServiceSinkhole;->access$3500(Leu/faircode/netguard/ServiceSinkhole;I)V

    .line 137
    .line 138
    .line 139
    :cond_5
    iget-object p1, p0, Leu/faircode/netguard/ServiceSinkhole$LogHandler;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 140
    .line 141
    invoke-static {p1}, Leu/faircode/netguard/ServiceSinkhole;->access$3300(Leu/faircode/netguard/ServiceSinkhole;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 150
    .line 151
    .line 152
    :cond_6
    return-void
.end method

.method private usage(Leu/faircode/netguard/Usage;)V
    .locals 5

    .line 1
    iget v0, p1, Leu/faircode/netguard/Usage;->Uid:I

    .line 2
    .line 3
    if-ltz v0, :cond_1

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget v0, p1, Leu/faircode/netguard/Usage;->Protocol:I

    .line 8
    .line 9
    const/16 v1, 0x11

    .line 10
    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    iget v0, p1, Leu/faircode/netguard/Usage;->DPort:I

    .line 14
    .line 15
    const/16 v1, 0x35

    .line 16
    .line 17
    if-eq v0, v1, :cond_1

    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Leu/faircode/netguard/ServiceSinkhole$LogHandler;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 20
    .line 21
    invoke-static {v0}, Lt0/a;->s(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const-string v1, "filter"

    .line 26
    .line 27
    const/4 v2, 0x0

    .line 28
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    const-string v3, "log_app"

    .line 33
    .line 34
    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    const-string v4, "track_usage"

    .line 39
    .line 40
    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-eqz v1, :cond_1

    .line 45
    .line 46
    if-eqz v3, :cond_1

    .line 47
    .line 48
    if-eqz v0, :cond_1

    .line 49
    .line 50
    iget-object v0, p0, Leu/faircode/netguard/ServiceSinkhole$LogHandler;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 51
    .line 52
    invoke-static {v0}, Leu/faircode/netguard/DatabaseHelper;->getInstance(Landroid/content/Context;)Leu/faircode/netguard/DatabaseHelper;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    iget v1, p1, Leu/faircode/netguard/Usage;->Uid:I

    .line 57
    .line 58
    iget-object v2, p1, Leu/faircode/netguard/Usage;->DAddr:Ljava/lang/String;

    .line 59
    .line 60
    invoke-virtual {v0, v1, v2}, Leu/faircode/netguard/DatabaseHelper;->getQName(ILjava/lang/String;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    new-instance v2, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    const-string v3, "Usage account "

    .line 67
    .line 68
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    const-string v3, " dname="

    .line 75
    .line 76
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    const-string v3, "NetGuard.Service"

    .line 87
    .line 88
    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0, p1, v1}, Leu/faircode/netguard/DatabaseHelper;->updateUsage(Leu/faircode/netguard/Usage;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    :cond_1
    return-void
.end method


# virtual methods
.method public account(Leu/faircode/netguard/Usage;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 6
    .line 7
    const/4 p1, 0x5

    .line 8
    iput p1, v0, Landroid/os/Message;->what:I

    .line 9
    .line 10
    monitor-enter p0

    .line 11
    :try_start_0
    iget p1, p0, Leu/faircode/netguard/ServiceSinkhole$LogHandler;->queue:I

    .line 12
    .line 13
    const/16 v1, 0xfa

    .line 14
    .line 15
    if-le p1, v1, :cond_0

    .line 16
    .line 17
    const-string p1, "NetGuard.Service"

    .line 18
    .line 19
    const-string v0, "Log queue full"

    .line 20
    .line 21
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    monitor-exit p0

    .line 25
    return-void

    .line 26
    :cond_0
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 27
    .line 28
    .line 29
    iget p1, p0, Leu/faircode/netguard/ServiceSinkhole$LogHandler;->queue:I

    .line 30
    .line 31
    add-int/lit8 p1, p1, 0x1

    .line 32
    .line 33
    iput p1, p0, Leu/faircode/netguard/ServiceSinkhole$LogHandler;->queue:I

    .line 34
    .line 35
    monitor-exit p0

    .line 36
    return-void

    .line 37
    :catchall_0
    move-exception p1

    .line 38
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    throw p1
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 1
    const-string v0, "Unknown log message="

    .line 2
    .line 3
    :try_start_0
    iget v1, p1, Landroid/os/Message;->what:I

    .line 4
    .line 5
    const/4 v2, 0x4

    .line 6
    if-eq v1, v2, :cond_1

    .line 7
    .line 8
    const/4 v2, 0x5

    .line 9
    if-eq v1, v2, :cond_0

    .line 10
    .line 11
    const-string v1, "NetGuard.Service"

    .line 12
    .line 13
    new-instance v2, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget p1, p1, Landroid/os/Message;->what:I

    .line 19
    .line 20
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast p1, Leu/faircode/netguard/Usage;

    .line 34
    .line 35
    invoke-direct {p0, p1}, Leu/faircode/netguard/ServiceSinkhole$LogHandler;->usage(Leu/faircode/netguard/Usage;)V

    .line 36
    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast v0, Leu/faircode/netguard/Packet;

    .line 42
    .line 43
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 44
    .line 45
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 46
    .line 47
    if-lez p1, :cond_2

    .line 48
    .line 49
    const/4 p1, 0x1

    .line 50
    goto :goto_0

    .line 51
    :cond_2
    const/4 p1, 0x0

    .line 52
    :goto_0
    invoke-direct {p0, v0, v1, p1}, Leu/faircode/netguard/ServiceSinkhole$LogHandler;->log(Leu/faircode/netguard/Packet;IZ)V

    .line 53
    .line 54
    .line 55
    :goto_1
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 56
    :try_start_1
    iget p1, p0, Leu/faircode/netguard/ServiceSinkhole$LogHandler;->queue:I

    .line 57
    .line 58
    add-int/lit8 p1, p1, -0x1

    .line 59
    .line 60
    iput p1, p0, Leu/faircode/netguard/ServiceSinkhole$LogHandler;->queue:I

    .line 61
    .line 62
    monitor-exit p0

    .line 63
    goto :goto_2

    .line 64
    :catchall_0
    move-exception p1

    .line 65
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 66
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 67
    :catchall_1
    move-exception p1

    .line 68
    const-string v0, "NetGuard.Service"

    .line 69
    .line 70
    new-instance v1, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    .line 74
    .line 75
    const-string v2, "\n"

    .line 76
    .line 77
    invoke-static {p1, v1, v2, p1, v0}, LB/g;->i(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    :goto_2
    return-void
.end method

.method public queue(Leu/faircode/netguard/Packet;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 6
    .line 7
    const/4 p1, 0x4

    .line 8
    iput p1, v0, Landroid/os/Message;->what:I

    .line 9
    .line 10
    iget-object p1, p0, Leu/faircode/netguard/ServiceSinkhole$LogHandler;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 11
    .line 12
    invoke-static {p1}, Leu/faircode/netguard/ServiceSinkhole;->access$1300(Leu/faircode/netguard/ServiceSinkhole;)Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    const/4 v1, 0x1

    .line 17
    if-eqz p1, :cond_1

    .line 18
    .line 19
    iget-object p1, p0, Leu/faircode/netguard/ServiceSinkhole$LogHandler;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 20
    .line 21
    invoke-static {p1}, Leu/faircode/netguard/ServiceSinkhole;->access$1400(Leu/faircode/netguard/ServiceSinkhole;)Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    if-eqz p1, :cond_0

    .line 26
    .line 27
    const/4 p1, 0x2

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 p1, 0x1

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const/4 p1, 0x0

    .line 32
    :goto_0
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 33
    .line 34
    iget-object p1, p0, Leu/faircode/netguard/ServiceSinkhole$LogHandler;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 35
    .line 36
    invoke-static {p1}, Leu/faircode/netguard/ServiceSinkhole;->access$700(Leu/faircode/netguard/ServiceSinkhole;)Z

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    iput p1, v0, Landroid/os/Message;->arg2:I

    .line 41
    .line 42
    monitor-enter p0

    .line 43
    :try_start_0
    iget p1, p0, Leu/faircode/netguard/ServiceSinkhole$LogHandler;->queue:I

    .line 44
    .line 45
    const/16 v2, 0xfa

    .line 46
    .line 47
    if-le p1, v2, :cond_2

    .line 48
    .line 49
    const-string p1, "NetGuard.Service"

    .line 50
    .line 51
    const-string v0, "Log queue full"

    .line 52
    .line 53
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    monitor-exit p0

    .line 57
    return-void

    .line 58
    :cond_2
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 59
    .line 60
    .line 61
    iget p1, p0, Leu/faircode/netguard/ServiceSinkhole$LogHandler;->queue:I

    .line 62
    .line 63
    add-int/2addr p1, v1

    .line 64
    iput p1, p0, Leu/faircode/netguard/ServiceSinkhole$LogHandler;->queue:I

    .line 65
    .line 66
    monitor-exit p0

    .line 67
    return-void

    .line 68
    :catchall_0
    move-exception p1

    .line 69
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    throw p1
.end method
