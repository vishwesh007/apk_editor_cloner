.class public final Lcom/bumptech/glide/manager/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/manager/e;


# virtual methods
.method public final a(Landroid/content/Context;Lcom/bumptech/glide/manager/c;)Lcom/bumptech/glide/manager/d;
    .locals 3

    .line 1
    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    .line 2
    .line 3
    invoke-static {p1, v0}, Landroidx/core/content/f;->a(Landroid/content/Context;Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    const-string v1, "ConnectivityMonitor"

    .line 13
    .line 14
    const/4 v2, 0x3

    .line 15
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_2

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    const-string v2, "ACCESS_NETWORK_STATE permission granted, registering connectivity monitor"

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_1
    const-string v2, "ACCESS_NETWORK_STATE permission missing, cannot register connectivity monitor"

    .line 27
    .line 28
    :goto_1
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    :cond_2
    if-eqz v0, :cond_3

    .line 32
    .line 33
    new-instance v0, Lcom/bumptech/glide/manager/f;

    .line 34
    .line 35
    invoke-direct {v0, p1, p2}, Lcom/bumptech/glide/manager/f;-><init>(Landroid/content/Context;Lcom/bumptech/glide/manager/c;)V

    .line 36
    .line 37
    .line 38
    goto :goto_2

    .line 39
    :cond_3
    new-instance v0, Lcom/bumptech/glide/manager/o;

    .line 40
    .line 41
    invoke-direct {v0}, Lcom/bumptech/glide/manager/o;-><init>()V

    .line 42
    .line 43
    .line 44
    :goto_2
    return-object v0
.end method
