.class final Lp0/X;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field final synthetic a:Lp0/Y;


# direct methods
.method synthetic constructor <init>(Lp0/Y;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lp0/X;->a:Lp0/Y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 6

    .line 1
    const-string v0, "Timeout waiting for ServiceConnection callback "

    .line 2
    .line 3
    iget v1, p1, Landroid/os/Message;->what:I

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-eqz v1, :cond_4

    .line 7
    .line 8
    if-eq v1, v2, :cond_0

    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    return p1

    .line 12
    :cond_0
    iget-object v1, p0, Lp0/X;->a:Lp0/Y;

    .line 13
    .line 14
    invoke-static {v1}, Lp0/Y;->i(Lp0/Y;)Ljava/util/HashMap;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    monitor-enter v1

    .line 19
    :try_start_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast p1, Lp0/V;

    .line 22
    .line 23
    iget-object v3, p0, Lp0/X;->a:Lp0/Y;

    .line 24
    .line 25
    invoke-static {v3}, Lp0/Y;->i(Lp0/Y;)Ljava/util/HashMap;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    check-cast v3, Lp0/W;

    .line 34
    .line 35
    if-eqz v3, :cond_3

    .line 36
    .line 37
    invoke-virtual {v3}, Lp0/W;->a()I

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    const/4 v5, 0x3

    .line 42
    if-ne v4, v5, :cond_3

    .line 43
    .line 44
    const-string v4, "GmsClientSupervisor"

    .line 45
    .line 46
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v5

    .line 50
    invoke-virtual {v0, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    new-instance v5, Ljava/lang/Exception;

    .line 55
    .line 56
    invoke-direct {v5}, Ljava/lang/Exception;-><init>()V

    .line 57
    .line 58
    .line 59
    invoke-static {v4, v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 60
    .line 61
    .line 62
    invoke-virtual {v3}, Lp0/W;->b()Landroid/content/ComponentName;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    if-nez v0, :cond_1

    .line 67
    .line 68
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    .line 70
    .line 71
    const/4 v0, 0x0

    .line 72
    :cond_1
    if-nez v0, :cond_2

    .line 73
    .line 74
    new-instance v0, Landroid/content/ComponentName;

    .line 75
    .line 76
    invoke-virtual {p1}, Lp0/V;->b()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-static {p1}, Lp0/s;->b(Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    const-string v4, "unknown"

    .line 84
    .line 85
    invoke-direct {v0, p1, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    :cond_2
    invoke-virtual {v3, v0}, Lp0/W;->onServiceDisconnected(Landroid/content/ComponentName;)V

    .line 89
    .line 90
    .line 91
    :cond_3
    monitor-exit v1

    .line 92
    return v2

    .line 93
    :catchall_0
    move-exception p1

    .line 94
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    throw p1

    .line 96
    :cond_4
    iget-object v0, p0, Lp0/X;->a:Lp0/Y;

    .line 97
    .line 98
    invoke-static {v0}, Lp0/Y;->i(Lp0/Y;)Ljava/util/HashMap;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    monitor-enter v0

    .line 103
    :try_start_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 104
    .line 105
    check-cast p1, Lp0/V;

    .line 106
    .line 107
    iget-object v1, p0, Lp0/X;->a:Lp0/Y;

    .line 108
    .line 109
    invoke-static {v1}, Lp0/Y;->i(Lp0/Y;)Ljava/util/HashMap;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    check-cast v1, Lp0/W;

    .line 118
    .line 119
    if-eqz v1, :cond_6

    .line 120
    .line 121
    invoke-virtual {v1}, Lp0/W;->i()Z

    .line 122
    .line 123
    .line 124
    move-result v3

    .line 125
    if-eqz v3, :cond_6

    .line 126
    .line 127
    invoke-virtual {v1}, Lp0/W;->j()Z

    .line 128
    .line 129
    .line 130
    move-result v3

    .line 131
    if-eqz v3, :cond_5

    .line 132
    .line 133
    invoke-virtual {v1}, Lp0/W;->g()V

    .line 134
    .line 135
    .line 136
    :cond_5
    iget-object v1, p0, Lp0/X;->a:Lp0/Y;

    .line 137
    .line 138
    invoke-static {v1}, Lp0/Y;->i(Lp0/Y;)Ljava/util/HashMap;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    :cond_6
    monitor-exit v0

    .line 146
    return v2

    .line 147
    :catchall_1
    move-exception p1

    .line 148
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 149
    throw p1
.end method
