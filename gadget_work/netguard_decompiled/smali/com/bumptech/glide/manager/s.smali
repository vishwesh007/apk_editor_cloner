.class public final Lcom/bumptech/glide/manager/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field private static final i:Lcom/bumptech/glide/manager/r;


# instance fields
.field private volatile a:Lcom/bumptech/glide/x;

.field final b:Ljava/util/HashMap;

.field final c:Ljava/util/HashMap;

.field private final d:Landroid/os/Handler;

.field private final e:Lcom/bumptech/glide/manager/r;

.field private final f:Lcom/bumptech/glide/m;

.field private final g:Lcom/bumptech/glide/manager/i;

.field private final h:Lcom/bumptech/glide/manager/n;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/bumptech/glide/manager/b;

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-direct {v0, v1}, Lcom/bumptech/glide/manager/b;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/bumptech/glide/manager/s;->i:Lcom/bumptech/glide/manager/r;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/manager/r;Lcom/bumptech/glide/m;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
    iput-object v0, p0, Lcom/bumptech/glide/manager/s;->b:Ljava/util/HashMap;

    .line 10
    .line 11
    new-instance v0, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/bumptech/glide/manager/s;->c:Ljava/util/HashMap;

    .line 17
    .line 18
    new-instance v0, Landroidx/collection/b;

    .line 19
    .line 20
    invoke-direct {v0}, Landroidx/collection/b;-><init>()V

    .line 21
    .line 22
    .line 23
    new-instance v0, Landroidx/collection/b;

    .line 24
    .line 25
    invoke-direct {v0}, Landroidx/collection/b;-><init>()V

    .line 26
    .line 27
    .line 28
    new-instance v0, Landroid/os/Bundle;

    .line 29
    .line 30
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 31
    .line 32
    .line 33
    if-eqz p1, :cond_0

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    sget-object p1, Lcom/bumptech/glide/manager/s;->i:Lcom/bumptech/glide/manager/r;

    .line 37
    .line 38
    :goto_0
    iput-object p1, p0, Lcom/bumptech/glide/manager/s;->e:Lcom/bumptech/glide/manager/r;

    .line 39
    .line 40
    iput-object p2, p0, Lcom/bumptech/glide/manager/s;->f:Lcom/bumptech/glide/m;

    .line 41
    .line 42
    new-instance v0, Landroid/os/Handler;

    .line 43
    .line 44
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 49
    .line 50
    .line 51
    iput-object v0, p0, Lcom/bumptech/glide/manager/s;->d:Landroid/os/Handler;

    .line 52
    .line 53
    new-instance v0, Lcom/bumptech/glide/manager/n;

    .line 54
    .line 55
    invoke-direct {v0, p1}, Lcom/bumptech/glide/manager/n;-><init>(Lcom/bumptech/glide/manager/r;)V

    .line 56
    .line 57
    .line 58
    iput-object v0, p0, Lcom/bumptech/glide/manager/s;->h:Lcom/bumptech/glide/manager/n;

    .line 59
    .line 60
    sget-boolean p1, LM/B;->h:Z

    .line 61
    .line 62
    if-eqz p1, :cond_3

    .line 63
    .line 64
    sget-boolean p1, LM/B;->g:Z

    .line 65
    .line 66
    if-nez p1, :cond_1

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_1
    const-class p1, Lcom/bumptech/glide/i;

    .line 70
    .line 71
    invoke-virtual {p2, p1}, Lcom/bumptech/glide/m;->a(Ljava/lang/Class;)Z

    .line 72
    .line 73
    .line 74
    move-result p1

    .line 75
    if-eqz p1, :cond_2

    .line 76
    .line 77
    new-instance p1, Lcom/bumptech/glide/manager/h;

    .line 78
    .line 79
    invoke-direct {p1}, Lcom/bumptech/glide/manager/h;-><init>()V

    .line 80
    .line 81
    .line 82
    goto :goto_2

    .line 83
    :cond_2
    new-instance p1, Lcom/bumptech/glide/manager/b;

    .line 84
    .line 85
    const/4 p2, 0x2

    .line 86
    invoke-direct {p1, p2}, Lcom/bumptech/glide/manager/b;-><init>(I)V

    .line 87
    .line 88
    .line 89
    goto :goto_2

    .line 90
    :cond_3
    :goto_1
    new-instance p1, Lcom/bumptech/glide/manager/b;

    .line 91
    .line 92
    const/4 p2, 0x1

    .line 93
    invoke-direct {p1, p2}, Lcom/bumptech/glide/manager/b;-><init>(I)V

    .line 94
    .line 95
    .line 96
    :goto_2
    iput-object p1, p0, Lcom/bumptech/glide/manager/s;->g:Lcom/bumptech/glide/manager/i;

    .line 97
    .line 98
    return-void
.end method

.method private static a(Landroid/content/Context;)Landroid/app/Activity;
    .locals 1

    .line 1
    instance-of v0, p0, Landroid/app/Activity;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p0, Landroid/app/Activity;

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    instance-of v0, p0, Landroid/content/ContextWrapper;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    check-cast p0, Landroid/content/ContextWrapper;

    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-static {p0}, Lcom/bumptech/glide/manager/s;->a(Landroid/content/Context;)Landroid/app/Activity;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :cond_1
    const/4 p0, 0x0

    .line 24
    return-object p0
.end method

.method private e(Landroid/app/FragmentManager;)Lcom/bumptech/glide/manager/q;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/manager/s;->b:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    check-cast v1, Lcom/bumptech/glide/manager/q;

    .line 8
    .line 9
    if-nez v1, :cond_1

    .line 10
    .line 11
    const-string v1, "com.bumptech.glide.manager"

    .line 12
    .line 13
    invoke-virtual {p1, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    check-cast v2, Lcom/bumptech/glide/manager/q;

    .line 18
    .line 19
    if-nez v2, :cond_0

    .line 20
    .line 21
    new-instance v2, Lcom/bumptech/glide/manager/q;

    .line 22
    .line 23
    invoke-direct {v2}, Lcom/bumptech/glide/manager/q;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2}, Lcom/bumptech/glide/manager/q;->f()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v0, v2, v1}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lcom/bumptech/glide/manager/s;->d:Landroid/os/Handler;

    .line 44
    .line 45
    const/4 v1, 0x1

    .line 46
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 51
    .line 52
    .line 53
    :cond_0
    move-object v1, v2

    .line 54
    :cond_1
    return-object v1
.end method

.method private f(Landroidx/fragment/app/T;)Lcom/bumptech/glide/manager/I;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/manager/s;->c:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    check-cast v1, Lcom/bumptech/glide/manager/I;

    .line 8
    .line 9
    if-nez v1, :cond_1

    .line 10
    .line 11
    const-string v1, "com.bumptech.glide.manager"

    .line 12
    .line 13
    invoke-virtual {p1, v1}, Landroidx/fragment/app/T;->P(Ljava/lang/String;)Landroidx/fragment/app/u;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    check-cast v2, Lcom/bumptech/glide/manager/I;

    .line 18
    .line 19
    if-nez v2, :cond_0

    .line 20
    .line 21
    new-instance v2, Lcom/bumptech/glide/manager/I;

    .line 22
    .line 23
    invoke-direct {v2}, Lcom/bumptech/glide/manager/I;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2}, Lcom/bumptech/glide/manager/I;->i0()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Landroidx/fragment/app/T;->f()Landroidx/fragment/app/e0;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v0, v2, v1}, Landroidx/fragment/app/e0;->b(Landroidx/fragment/app/u;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Landroidx/fragment/app/e0;->d()I

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lcom/bumptech/glide/manager/s;->d:Landroid/os/Handler;

    .line 43
    .line 44
    const/4 v1, 0x2

    .line 45
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 50
    .line 51
    .line 52
    :cond_0
    move-object v1, v2

    .line 53
    :cond_1
    return-object v1
.end method


# virtual methods
.method public final b(Landroid/content/Context;)Lcom/bumptech/glide/x;
    .locals 6

    .line 1
    if-eqz p1, :cond_e

    .line 2
    .line 3
    sget v0, LX/s;->d:I

    .line 4
    .line 5
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const/4 v2, 0x1

    .line 14
    const/4 v3, 0x0

    .line 15
    if-ne v0, v1, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    :goto_0
    if-eqz v0, :cond_b

    .line 21
    .line 22
    instance-of v0, p1, Landroid/app/Application;

    .line 23
    .line 24
    if-nez v0, :cond_b

    .line 25
    .line 26
    instance-of v0, p1, Landroidx/fragment/app/y;

    .line 27
    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    check-cast p1, Landroidx/fragment/app/y;

    .line 31
    .line 32
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/manager/s;->c(Landroidx/fragment/app/y;)Lcom/bumptech/glide/x;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    return-object p1

    .line 37
    :cond_1
    instance-of v0, p1, Landroid/app/Activity;

    .line 38
    .line 39
    if-eqz v0, :cond_a

    .line 40
    .line 41
    check-cast p1, Landroid/app/Activity;

    .line 42
    .line 43
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    if-ne v0, v1, :cond_2

    .line 52
    .line 53
    const/4 v0, 0x1

    .line 54
    goto :goto_1

    .line 55
    :cond_2
    const/4 v0, 0x0

    .line 56
    :goto_1
    xor-int/2addr v0, v2

    .line 57
    if-eqz v0, :cond_3

    .line 58
    .line 59
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/manager/s;->b(Landroid/content/Context;)Lcom/bumptech/glide/x;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    goto :goto_3

    .line 68
    :cond_3
    instance-of v0, p1, Landroidx/fragment/app/y;

    .line 69
    .line 70
    if-eqz v0, :cond_4

    .line 71
    .line 72
    check-cast p1, Landroidx/fragment/app/y;

    .line 73
    .line 74
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/manager/s;->c(Landroidx/fragment/app/y;)Lcom/bumptech/glide/x;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    goto :goto_3

    .line 79
    :cond_4
    invoke-virtual {p1}, Landroid/app/Activity;->isDestroyed()Z

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    if-nez v0, :cond_9

    .line 84
    .line 85
    iget-object v0, p0, Lcom/bumptech/glide/manager/s;->g:Lcom/bumptech/glide/manager/i;

    .line 86
    .line 87
    invoke-interface {v0}, Lcom/bumptech/glide/manager/i;->a()V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    invoke-static {p1}, Lcom/bumptech/glide/manager/s;->a(Landroid/content/Context;)Landroid/app/Activity;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    if-eqz v1, :cond_6

    .line 99
    .line 100
    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    .line 101
    .line 102
    .line 103
    move-result v1

    .line 104
    if-nez v1, :cond_5

    .line 105
    .line 106
    goto :goto_2

    .line 107
    :cond_5
    const/4 v2, 0x0

    .line 108
    :cond_6
    :goto_2
    invoke-direct {p0, v0}, Lcom/bumptech/glide/manager/s;->e(Landroid/app/FragmentManager;)Lcom/bumptech/glide/manager/q;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    invoke-virtual {v0}, Lcom/bumptech/glide/manager/q;->c()Lcom/bumptech/glide/x;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    if-nez v1, :cond_8

    .line 117
    .line 118
    invoke-static {p1}, Lcom/bumptech/glide/d;->b(Landroid/content/Context;)Lcom/bumptech/glide/d;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    invoke-virtual {v0}, Lcom/bumptech/glide/manager/q;->b()Lcom/bumptech/glide/manager/a;

    .line 123
    .line 124
    .line 125
    move-result-object v3

    .line 126
    invoke-virtual {v0}, Lcom/bumptech/glide/manager/q;->d()Lcom/bumptech/glide/manager/t;

    .line 127
    .line 128
    .line 129
    move-result-object v4

    .line 130
    iget-object v5, p0, Lcom/bumptech/glide/manager/s;->e:Lcom/bumptech/glide/manager/r;

    .line 131
    .line 132
    invoke-interface {v5, v1, v3, v4, p1}, Lcom/bumptech/glide/manager/r;->b(Lcom/bumptech/glide/d;Lcom/bumptech/glide/manager/j;Lcom/bumptech/glide/manager/t;Landroid/content/Context;)Lcom/bumptech/glide/x;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    if-eqz v2, :cond_7

    .line 137
    .line 138
    invoke-virtual {p1}, Lcom/bumptech/glide/x;->onStart()V

    .line 139
    .line 140
    .line 141
    :cond_7
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/manager/q;->g(Lcom/bumptech/glide/x;)V

    .line 142
    .line 143
    .line 144
    goto :goto_3

    .line 145
    :cond_8
    move-object p1, v1

    .line 146
    :goto_3
    return-object p1

    .line 147
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 148
    .line 149
    const-string v0, "You cannot start a load for a destroyed activity"

    .line 150
    .line 151
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    throw p1

    .line 155
    :cond_a
    instance-of v0, p1, Landroid/content/ContextWrapper;

    .line 156
    .line 157
    if-eqz v0, :cond_b

    .line 158
    .line 159
    move-object v0, p1

    .line 160
    check-cast v0, Landroid/content/ContextWrapper;

    .line 161
    .line 162
    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 163
    .line 164
    .line 165
    move-result-object v1

    .line 166
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 167
    .line 168
    .line 169
    move-result-object v1

    .line 170
    if-eqz v1, :cond_b

    .line 171
    .line 172
    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 173
    .line 174
    .line 175
    move-result-object p1

    .line 176
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/manager/s;->b(Landroid/content/Context;)Lcom/bumptech/glide/x;

    .line 177
    .line 178
    .line 179
    move-result-object p1

    .line 180
    return-object p1

    .line 181
    :cond_b
    iget-object v0, p0, Lcom/bumptech/glide/manager/s;->a:Lcom/bumptech/glide/x;

    .line 182
    .line 183
    if-nez v0, :cond_d

    .line 184
    .line 185
    monitor-enter p0

    .line 186
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/manager/s;->a:Lcom/bumptech/glide/x;

    .line 187
    .line 188
    if-nez v0, :cond_c

    .line 189
    .line 190
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    invoke-static {v0}, Lcom/bumptech/glide/d;->b(Landroid/content/Context;)Lcom/bumptech/glide/d;

    .line 195
    .line 196
    .line 197
    move-result-object v0

    .line 198
    iget-object v1, p0, Lcom/bumptech/glide/manager/s;->e:Lcom/bumptech/glide/manager/r;

    .line 199
    .line 200
    new-instance v2, Lcom/bumptech/glide/manager/b;

    .line 201
    .line 202
    invoke-direct {v2, v3}, Lcom/bumptech/glide/manager/b;-><init>(I)V

    .line 203
    .line 204
    .line 205
    new-instance v3, Lcom/bumptech/glide/manager/b;

    .line 206
    .line 207
    invoke-direct {v3}, Lcom/bumptech/glide/manager/b;-><init>()V

    .line 208
    .line 209
    .line 210
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 211
    .line 212
    .line 213
    move-result-object p1

    .line 214
    invoke-interface {v1, v0, v2, v3, p1}, Lcom/bumptech/glide/manager/r;->b(Lcom/bumptech/glide/d;Lcom/bumptech/glide/manager/j;Lcom/bumptech/glide/manager/t;Landroid/content/Context;)Lcom/bumptech/glide/x;

    .line 215
    .line 216
    .line 217
    move-result-object p1

    .line 218
    iput-object p1, p0, Lcom/bumptech/glide/manager/s;->a:Lcom/bumptech/glide/x;

    .line 219
    .line 220
    :cond_c
    monitor-exit p0

    .line 221
    goto :goto_4

    .line 222
    :catchall_0
    move-exception p1

    .line 223
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 224
    throw p1

    .line 225
    :cond_d
    :goto_4
    iget-object p1, p0, Lcom/bumptech/glide/manager/s;->a:Lcom/bumptech/glide/x;

    .line 226
    .line 227
    return-object p1

    .line 228
    :cond_e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 229
    .line 230
    const-string v0, "You cannot start a load on a null Context"

    .line 231
    .line 232
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    throw p1
.end method

.method public final c(Landroidx/fragment/app/y;)Lcom/bumptech/glide/x;
    .locals 10

    .line 1
    sget v0, LX/s;->d:I

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const/4 v2, 0x0

    .line 12
    const/4 v3, 0x1

    .line 13
    if-ne v0, v1, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    xor-int/2addr v0, v3

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/manager/s;->b(Landroid/content/Context;)Lcom/bumptech/glide/x;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    return-object p1

    .line 30
    :cond_1
    invoke-virtual {p1}, Landroid/app/Activity;->isDestroyed()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-nez v0, :cond_7

    .line 35
    .line 36
    iget-object v0, p0, Lcom/bumptech/glide/manager/s;->g:Lcom/bumptech/glide/manager/i;

    .line 37
    .line 38
    invoke-interface {v0}, Lcom/bumptech/glide/manager/i;->a()V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Landroidx/fragment/app/y;->getSupportFragmentManager()Landroidx/fragment/app/T;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-static {p1}, Lcom/bumptech/glide/manager/s;->a(Landroid/content/Context;)Landroid/app/Activity;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    if-eqz v1, :cond_3

    .line 50
    .line 51
    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-nez v1, :cond_2

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_2
    const/4 v9, 0x0

    .line 59
    goto :goto_2

    .line 60
    :cond_3
    :goto_1
    const/4 v9, 0x1

    .line 61
    :goto_2
    iget-object v1, p0, Lcom/bumptech/glide/manager/s;->f:Lcom/bumptech/glide/m;

    .line 62
    .line 63
    const-class v2, Lcom/bumptech/glide/h;

    .line 64
    .line 65
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/m;->a(Ljava/lang/Class;)Z

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    if-eqz v1, :cond_4

    .line 70
    .line 71
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 72
    .line 73
    .line 74
    move-result-object v5

    .line 75
    invoke-static {v5}, Lcom/bumptech/glide/d;->b(Landroid/content/Context;)Lcom/bumptech/glide/d;

    .line 76
    .line 77
    .line 78
    move-result-object v6

    .line 79
    iget-object v4, p0, Lcom/bumptech/glide/manager/s;->h:Lcom/bumptech/glide/manager/n;

    .line 80
    .line 81
    invoke-virtual {p1}, Landroidx/activity/k;->getLifecycle()Landroidx/lifecycle/m;

    .line 82
    .line 83
    .line 84
    move-result-object v7

    .line 85
    invoke-virtual {p1}, Landroidx/fragment/app/y;->getSupportFragmentManager()Landroidx/fragment/app/T;

    .line 86
    .line 87
    .line 88
    move-result-object v8

    .line 89
    invoke-virtual/range {v4 .. v9}, Lcom/bumptech/glide/manager/n;->a(Landroid/content/Context;Lcom/bumptech/glide/d;Landroidx/lifecycle/m;Landroidx/fragment/app/T;Z)Lcom/bumptech/glide/x;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    return-object p1

    .line 94
    :cond_4
    invoke-direct {p0, v0}, Lcom/bumptech/glide/manager/s;->f(Landroidx/fragment/app/T;)Lcom/bumptech/glide/manager/I;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    invoke-virtual {v0}, Lcom/bumptech/glide/manager/I;->f0()Lcom/bumptech/glide/x;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    if-nez v1, :cond_6

    .line 103
    .line 104
    invoke-static {p1}, Lcom/bumptech/glide/d;->b(Landroid/content/Context;)Lcom/bumptech/glide/d;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    invoke-virtual {v0}, Lcom/bumptech/glide/manager/I;->e0()Lcom/bumptech/glide/manager/a;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    invoke-virtual {v0}, Lcom/bumptech/glide/manager/I;->g0()Lcom/bumptech/glide/manager/t;

    .line 113
    .line 114
    .line 115
    move-result-object v3

    .line 116
    iget-object v4, p0, Lcom/bumptech/glide/manager/s;->e:Lcom/bumptech/glide/manager/r;

    .line 117
    .line 118
    invoke-interface {v4, v1, v2, v3, p1}, Lcom/bumptech/glide/manager/r;->b(Lcom/bumptech/glide/d;Lcom/bumptech/glide/manager/j;Lcom/bumptech/glide/manager/t;Landroid/content/Context;)Lcom/bumptech/glide/x;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    if-eqz v9, :cond_5

    .line 123
    .line 124
    invoke-virtual {v1}, Lcom/bumptech/glide/x;->onStart()V

    .line 125
    .line 126
    .line 127
    :cond_5
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/manager/I;->j0(Lcom/bumptech/glide/x;)V

    .line 128
    .line 129
    .line 130
    :cond_6
    return-object v1

    .line 131
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 132
    .line 133
    const-string v0, "You cannot start a load for a destroyed activity"

    .line 134
    .line 135
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    throw p1
.end method

.method final d(Landroid/app/Activity;)Lcom/bumptech/glide/manager/q;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-direct {p0, p1}, Lcom/bumptech/glide/manager/s;->e(Landroid/app/FragmentManager;)Lcom/bumptech/glide/manager/q;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method final g(Landroidx/fragment/app/T;)Lcom/bumptech/glide/manager/I;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/bumptech/glide/manager/s;->f(Landroidx/fragment/app/T;)Lcom/bumptech/glide/manager/I;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget v2, v1, Landroid/os/Message;->arg1:I

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    const/4 v4, 0x0

    .line 9
    if-ne v2, v3, :cond_0

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v2, 0x0

    .line 14
    :goto_0
    iget v5, v1, Landroid/os/Message;->what:I

    .line 15
    .line 16
    iget-object v6, v0, Lcom/bumptech/glide/manager/s;->d:Landroid/os/Handler;

    .line 17
    .line 18
    const-string v8, "We failed to add our Fragment the first time around, trying again..."

    .line 19
    .line 20
    const/4 v9, 0x3

    .line 21
    const-string v10, " New: "

    .line 22
    .line 23
    const-string v11, "We\'ve added two fragments with requests! Old: "

    .line 24
    .line 25
    const-string v12, "com.bumptech.glide.manager"

    .line 26
    .line 27
    const-string v13, "RMRetriever"

    .line 28
    .line 29
    if-eq v5, v3, :cond_b

    .line 30
    .line 31
    const/4 v14, 0x2

    .line 32
    if-eq v5, v14, :cond_1

    .line 33
    .line 34
    const/4 v3, 0x0

    .line 35
    goto/16 :goto_c

    .line 36
    .line 37
    :cond_1
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast v1, Landroidx/fragment/app/T;

    .line 40
    .line 41
    iget-object v5, v0, Lcom/bumptech/glide/manager/s;->c:Ljava/util/HashMap;

    .line 42
    .line 43
    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v15

    .line 47
    check-cast v15, Lcom/bumptech/glide/manager/I;

    .line 48
    .line 49
    invoke-virtual {v1, v12}, Landroidx/fragment/app/T;->P(Ljava/lang/String;)Landroidx/fragment/app/u;

    .line 50
    .line 51
    .line 52
    move-result-object v16

    .line 53
    move-object/from16 v7, v16

    .line 54
    .line 55
    check-cast v7, Lcom/bumptech/glide/manager/I;

    .line 56
    .line 57
    if-ne v7, v15, :cond_2

    .line 58
    .line 59
    goto/16 :goto_4

    .line 60
    .line 61
    :cond_2
    if-eqz v7, :cond_4

    .line 62
    .line 63
    invoke-virtual {v7}, Lcom/bumptech/glide/manager/I;->f0()Lcom/bumptech/glide/x;

    .line 64
    .line 65
    .line 66
    move-result-object v16

    .line 67
    if-nez v16, :cond_3

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 71
    .line 72
    new-instance v2, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    invoke-direct {v2, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    throw v1

    .line 94
    :cond_4
    :goto_1
    if-nez v2, :cond_8

    .line 95
    .line 96
    invoke-virtual {v1}, Landroidx/fragment/app/T;->e0()Z

    .line 97
    .line 98
    .line 99
    move-result v2

    .line 100
    if-eqz v2, :cond_5

    .line 101
    .line 102
    goto :goto_2

    .line 103
    :cond_5
    invoke-virtual {v1}, Landroidx/fragment/app/T;->f()Landroidx/fragment/app/e0;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    invoke-virtual {v2, v15, v12}, Landroidx/fragment/app/e0;->b(Landroidx/fragment/app/u;Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    if-eqz v7, :cond_6

    .line 111
    .line 112
    invoke-virtual {v2, v7}, Landroidx/fragment/app/e0;->g(Landroidx/fragment/app/u;)Landroidx/fragment/app/e0;

    .line 113
    .line 114
    .line 115
    :cond_6
    invoke-virtual {v2}, Landroidx/fragment/app/e0;->e()V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v6, v14, v3, v4, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 119
    .line 120
    .line 121
    move-result-object v2

    .line 122
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 123
    .line 124
    .line 125
    invoke-static {v13, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 126
    .line 127
    .line 128
    move-result v2

    .line 129
    if-eqz v2, :cond_7

    .line 130
    .line 131
    invoke-static {v13, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    .line 133
    .line 134
    :cond_7
    const/4 v2, 0x0

    .line 135
    goto :goto_5

    .line 136
    :cond_8
    :goto_2
    invoke-virtual {v1}, Landroidx/fragment/app/T;->e0()Z

    .line 137
    .line 138
    .line 139
    move-result v2

    .line 140
    if-eqz v2, :cond_9

    .line 141
    .line 142
    const/4 v2, 0x5

    .line 143
    invoke-static {v13, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 144
    .line 145
    .line 146
    move-result v6

    .line 147
    if-eqz v6, :cond_a

    .line 148
    .line 149
    const-string v2, "Parent was destroyed before our Fragment could be added, all requests for the destroyed parent are cancelled"

    .line 150
    .line 151
    invoke-static {v13, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    .line 153
    .line 154
    goto :goto_3

    .line 155
    :cond_9
    const/4 v2, 0x6

    .line 156
    invoke-static {v13, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 157
    .line 158
    .line 159
    move-result v2

    .line 160
    if-eqz v2, :cond_a

    .line 161
    .line 162
    const-string v2, "ERROR: Tried adding Fragment twice and failed twice, giving up and cancelling all associated requests! This probably means you\'re starting loads in a unit test with an Activity that you haven\'t created and never create. If you\'re using Robolectric, create the Activity as part of your test setup"

    .line 163
    .line 164
    invoke-static {v13, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    .line 166
    .line 167
    :cond_a
    :goto_3
    invoke-virtual {v15}, Lcom/bumptech/glide/manager/I;->e0()Lcom/bumptech/glide/manager/a;

    .line 168
    .line 169
    .line 170
    move-result-object v2

    .line 171
    invoke-virtual {v2}, Lcom/bumptech/glide/manager/a;->a()V

    .line 172
    .line 173
    .line 174
    :goto_4
    const/4 v2, 0x1

    .line 175
    :goto_5
    if-eqz v2, :cond_15

    .line 176
    .line 177
    invoke-virtual {v5, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    move-result-object v2

    .line 181
    goto/16 :goto_b

    .line 182
    .line 183
    :cond_b
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 184
    .line 185
    check-cast v1, Landroid/app/FragmentManager;

    .line 186
    .line 187
    iget-object v5, v0, Lcom/bumptech/glide/manager/s;->b:Ljava/util/HashMap;

    .line 188
    .line 189
    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    move-result-object v7

    .line 193
    check-cast v7, Lcom/bumptech/glide/manager/q;

    .line 194
    .line 195
    invoke-virtual {v1, v12}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    .line 196
    .line 197
    .line 198
    move-result-object v14

    .line 199
    check-cast v14, Lcom/bumptech/glide/manager/q;

    .line 200
    .line 201
    if-ne v14, v7, :cond_c

    .line 202
    .line 203
    goto :goto_9

    .line 204
    :cond_c
    if-eqz v14, :cond_e

    .line 205
    .line 206
    invoke-virtual {v14}, Lcom/bumptech/glide/manager/q;->c()Lcom/bumptech/glide/x;

    .line 207
    .line 208
    .line 209
    move-result-object v15

    .line 210
    if-nez v15, :cond_d

    .line 211
    .line 212
    goto :goto_6

    .line 213
    :cond_d
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 214
    .line 215
    new-instance v2, Ljava/lang/StringBuilder;

    .line 216
    .line 217
    invoke-direct {v2, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 227
    .line 228
    .line 229
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v2

    .line 233
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 234
    .line 235
    .line 236
    throw v1

    .line 237
    :cond_e
    :goto_6
    if-nez v2, :cond_12

    .line 238
    .line 239
    invoke-virtual {v1}, Landroid/app/FragmentManager;->isDestroyed()Z

    .line 240
    .line 241
    .line 242
    move-result v2

    .line 243
    if-eqz v2, :cond_f

    .line 244
    .line 245
    goto :goto_7

    .line 246
    :cond_f
    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    .line 247
    .line 248
    .line 249
    move-result-object v2

    .line 250
    invoke-virtual {v2, v7, v12}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 251
    .line 252
    .line 253
    move-result-object v2

    .line 254
    if-eqz v14, :cond_10

    .line 255
    .line 256
    invoke-virtual {v2, v14}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 257
    .line 258
    .line 259
    :cond_10
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 260
    .line 261
    .line 262
    invoke-virtual {v6, v3, v3, v4, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 263
    .line 264
    .line 265
    move-result-object v2

    .line 266
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 267
    .line 268
    .line 269
    invoke-static {v13, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 270
    .line 271
    .line 272
    move-result v2

    .line 273
    if-eqz v2, :cond_11

    .line 274
    .line 275
    invoke-static {v13, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    .line 277
    .line 278
    :cond_11
    const/4 v2, 0x0

    .line 279
    goto :goto_a

    .line 280
    :cond_12
    :goto_7
    const/4 v2, 0x5

    .line 281
    invoke-static {v13, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 282
    .line 283
    .line 284
    move-result v6

    .line 285
    if-eqz v6, :cond_14

    .line 286
    .line 287
    invoke-virtual {v1}, Landroid/app/FragmentManager;->isDestroyed()Z

    .line 288
    .line 289
    .line 290
    move-result v2

    .line 291
    if-eqz v2, :cond_13

    .line 292
    .line 293
    const-string v2, "Parent was destroyed before our Fragment could be added"

    .line 294
    .line 295
    invoke-static {v13, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    .line 297
    .line 298
    goto :goto_8

    .line 299
    :cond_13
    const-string v2, "Tried adding Fragment twice and failed twice, giving up!"

    .line 300
    .line 301
    invoke-static {v13, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    .line 303
    .line 304
    :cond_14
    :goto_8
    invoke-virtual {v7}, Lcom/bumptech/glide/manager/q;->b()Lcom/bumptech/glide/manager/a;

    .line 305
    .line 306
    .line 307
    move-result-object v2

    .line 308
    invoke-virtual {v2}, Lcom/bumptech/glide/manager/a;->a()V

    .line 309
    .line 310
    .line 311
    :goto_9
    const/4 v2, 0x1

    .line 312
    :goto_a
    if-eqz v2, :cond_15

    .line 313
    .line 314
    invoke-virtual {v5, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    .line 316
    .line 317
    move-result-object v2

    .line 318
    :goto_b
    const/4 v4, 0x1

    .line 319
    goto :goto_d

    .line 320
    :cond_15
    :goto_c
    const/4 v1, 0x0

    .line 321
    move-object v2, v1

    .line 322
    move v4, v3

    .line 323
    const/4 v3, 0x0

    .line 324
    :goto_d
    const/4 v5, 0x5

    .line 325
    invoke-static {v13, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 326
    .line 327
    .line 328
    move-result v5

    .line 329
    if-eqz v5, :cond_16

    .line 330
    .line 331
    if-eqz v3, :cond_16

    .line 332
    .line 333
    if-nez v2, :cond_16

    .line 334
    .line 335
    new-instance v2, Ljava/lang/StringBuilder;

    .line 336
    .line 337
    const-string v3, "Failed to remove expected request manager fragment, manager: "

    .line 338
    .line 339
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 340
    .line 341
    .line 342
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 343
    .line 344
    .line 345
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 346
    .line 347
    .line 348
    move-result-object v1

    .line 349
    invoke-static {v13, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    .line 351
    .line 352
    :cond_16
    return v4
.end method
