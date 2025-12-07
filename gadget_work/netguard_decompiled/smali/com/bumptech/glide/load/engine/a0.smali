.class final Lcom/bumptech/glide/load/engine/a0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/data/d;


# instance fields
.field final synthetic d:LJ/F;

.field final synthetic e:Lcom/bumptech/glide/load/engine/b0;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/load/engine/b0;LJ/F;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/a0;->e:Lcom/bumptech/glide/load/engine/b0;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/bumptech/glide/load/engine/a0;->d:LJ/F;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Exception;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/a0;->e:Lcom/bumptech/glide/load/engine/b0;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/a0;->d:LJ/F;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/load/engine/b0;->c(LJ/F;)Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0, v1, p1}, Lcom/bumptech/glide/load/engine/b0;->e(LJ/F;Ljava/lang/Exception;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public final f(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/a0;->e:Lcom/bumptech/glide/load/engine/b0;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/a0;->d:LJ/F;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/load/engine/b0;->c(LJ/F;)Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0, v1, p1}, Lcom/bumptech/glide/load/engine/b0;->d(LJ/F;Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method
