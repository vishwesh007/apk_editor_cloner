.class public Leu/faircode/netguard/GlideRequests;
.super Lcom/bumptech/glide/x;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/d;Lcom/bumptech/glide/manager/j;Lcom/bumptech/glide/manager/t;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bumptech/glide/x;-><init>(Lcom/bumptech/glide/d;Lcom/bumptech/glide/manager/j;Lcom/bumptech/glide/manager/t;Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public declared-synchronized applyDefaultRequestOptions(Lcom/bumptech/glide/request/g;)Leu/faircode/netguard/GlideRequests;
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-super {p0, p1}, Lcom/bumptech/glide/x;->applyDefaultRequestOptions(Lcom/bumptech/glide/request/g;)Lcom/bumptech/glide/x;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    check-cast p1, Leu/faircode/netguard/GlideRequests;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    monitor-exit p0

    .line 9
    return-object p1

    .line 10
    :catchall_0
    move-exception p1

    .line 11
    monitor-exit p0

    .line 12
    throw p1
.end method

.method public bridge synthetic as(Ljava/lang/Class;)Lcom/bumptech/glide/u;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Leu/faircode/netguard/GlideRequests;->as(Ljava/lang/Class;)Leu/faircode/netguard/GlideRequest;

    move-result-object p1

    return-object p1
.end method

.method public as(Ljava/lang/Class;)Leu/faircode/netguard/GlideRequest;
    .locals 3

    .line 2
    new-instance v0, Leu/faircode/netguard/GlideRequest;

    iget-object v1, p0, Lcom/bumptech/glide/x;->glide:Lcom/bumptech/glide/d;

    iget-object v2, p0, Lcom/bumptech/glide/x;->context:Landroid/content/Context;

    invoke-direct {v0, v1, p0, p1, v2}, Leu/faircode/netguard/GlideRequest;-><init>(Lcom/bumptech/glide/d;Lcom/bumptech/glide/x;Ljava/lang/Class;Landroid/content/Context;)V

    return-object v0
.end method

.method public bridge synthetic asBitmap()Lcom/bumptech/glide/u;
    .locals 1

    .line 1
    invoke-virtual {p0}, Leu/faircode/netguard/GlideRequests;->asBitmap()Leu/faircode/netguard/GlideRequest;

    move-result-object v0

    return-object v0
.end method

.method public asBitmap()Leu/faircode/netguard/GlideRequest;
    .locals 1

    .line 2
    invoke-super {p0}, Lcom/bumptech/glide/x;->asBitmap()Lcom/bumptech/glide/u;

    move-result-object v0

    check-cast v0, Leu/faircode/netguard/GlideRequest;

    return-object v0
.end method

.method public bridge synthetic asDrawable()Lcom/bumptech/glide/u;
    .locals 1

    .line 1
    invoke-virtual {p0}, Leu/faircode/netguard/GlideRequests;->asDrawable()Leu/faircode/netguard/GlideRequest;

    move-result-object v0

    return-object v0
.end method

.method public asDrawable()Leu/faircode/netguard/GlideRequest;
    .locals 1

    .line 2
    invoke-super {p0}, Lcom/bumptech/glide/x;->asDrawable()Lcom/bumptech/glide/u;

    move-result-object v0

    check-cast v0, Leu/faircode/netguard/GlideRequest;

    return-object v0
.end method

.method public load(Landroid/net/Uri;)Leu/faircode/netguard/GlideRequest;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/bumptech/glide/x;->load(Landroid/net/Uri;)Lcom/bumptech/glide/u;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Leu/faircode/netguard/GlideRequest;

    .line 6
    .line 7
    return-object p1
.end method

.method protected setRequestOptions(Lcom/bumptech/glide/request/g;)V
    .locals 1

    .line 1
    instance-of v0, p1, Leu/faircode/netguard/GlideOptions;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-super {p0, p1}, Lcom/bumptech/glide/x;->setRequestOptions(Lcom/bumptech/glide/request/g;)V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    new-instance v0, Leu/faircode/netguard/GlideOptions;

    .line 10
    .line 11
    invoke-direct {v0}, Leu/faircode/netguard/GlideOptions;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p1}, Leu/faircode/netguard/GlideOptions;->apply(Lcom/bumptech/glide/request/a;)Leu/faircode/netguard/GlideOptions;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-super {p0, p1}, Lcom/bumptech/glide/x;->setRequestOptions(Lcom/bumptech/glide/request/g;)V

    .line 19
    .line 20
    .line 21
    :goto_0
    return-void
.end method
