.class final Lcom/bumptech/glide/manager/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/manager/k;


# instance fields
.field final synthetic a:Landroidx/lifecycle/m;

.field final synthetic b:Lcom/bumptech/glide/manager/n;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/manager/n;Landroidx/lifecycle/m;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bumptech/glide/manager/l;->b:Lcom/bumptech/glide/manager/n;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/bumptech/glide/manager/l;->a:Landroidx/lifecycle/m;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onDestroy()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/manager/l;->b:Lcom/bumptech/glide/manager/n;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/bumptech/glide/manager/n;->a:Ljava/util/HashMap;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/bumptech/glide/manager/l;->a:Landroidx/lifecycle/m;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final onStart()V
    .locals 0

    return-void
.end method

.method public final onStop()V
    .locals 0

    return-void
.end method
