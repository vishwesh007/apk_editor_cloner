.class final Lcom/bumptech/glide/manager/E;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic d:Lcom/bumptech/glide/manager/G;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/manager/G;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bumptech/glide/manager/E;->d:Lcom/bumptech/glide/manager/G;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/manager/E;->d:Lcom/bumptech/glide/manager/G;

    .line 2
    .line 3
    iget-boolean v0, v0, Lcom/bumptech/glide/manager/G;->d:Z

    .line 4
    .line 5
    iget-object v1, p0, Lcom/bumptech/glide/manager/E;->d:Lcom/bumptech/glide/manager/G;

    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/bumptech/glide/manager/G;->c()Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    iput-boolean v2, v1, Lcom/bumptech/glide/manager/G;->d:Z

    .line 12
    .line 13
    iget-object v1, p0, Lcom/bumptech/glide/manager/E;->d:Lcom/bumptech/glide/manager/G;

    .line 14
    .line 15
    iget-boolean v1, v1, Lcom/bumptech/glide/manager/G;->d:Z

    .line 16
    .line 17
    if-eq v0, v1, :cond_1

    .line 18
    .line 19
    const/4 v0, 0x3

    .line 20
    const-string v1, "ConnectivityMonitor"

    .line 21
    .line 22
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    const-string v2, "connectivity changed, isConnected: "

    .line 31
    .line 32
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iget-object v2, p0, Lcom/bumptech/glide/manager/E;->d:Lcom/bumptech/glide/manager/G;

    .line 36
    .line 37
    iget-boolean v2, v2, Lcom/bumptech/glide/manager/G;->d:Z

    .line 38
    .line 39
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/manager/E;->d:Lcom/bumptech/glide/manager/G;

    .line 50
    .line 51
    iget-boolean v1, v0, Lcom/bumptech/glide/manager/G;->d:Z

    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    .line 55
    .line 56
    new-instance v2, Lcom/bumptech/glide/manager/F;

    .line 57
    .line 58
    invoke-direct {v2, v0, v1}, Lcom/bumptech/glide/manager/F;-><init>(Lcom/bumptech/glide/manager/G;Z)V

    .line 59
    .line 60
    .line 61
    invoke-static {v2}, LX/s;->j(Ljava/lang/Runnable;)V

    .line 62
    .line 63
    .line 64
    :cond_1
    return-void
.end method
