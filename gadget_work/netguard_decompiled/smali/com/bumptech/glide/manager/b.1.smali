.class final Lcom/bumptech/glide/manager/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/manager/j;
.implements Lcom/bumptech/glide/manager/i;
.implements Lcom/bumptech/glide/manager/r;
.implements Lcom/bumptech/glide/manager/t;


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .line 1
    return-void
.end method

.method public b(Lcom/bumptech/glide/d;Lcom/bumptech/glide/manager/j;Lcom/bumptech/glide/manager/t;Landroid/content/Context;)Lcom/bumptech/glide/x;
    .locals 1

    .line 1
    new-instance v0, Lcom/bumptech/glide/x;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2, p3, p4}, Lcom/bumptech/glide/x;-><init>(Lcom/bumptech/glide/d;Lcom/bumptech/glide/manager/j;Lcom/bumptech/glide/manager/t;Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public c(Lcom/bumptech/glide/manager/k;)V
    .locals 0

    .line 1
    invoke-interface {p1}, Lcom/bumptech/glide/manager/k;->onStart()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public d()Ljava/util/Set;
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public f(Lcom/bumptech/glide/manager/k;)V
    .locals 0

    .line 1
    return-void
.end method
