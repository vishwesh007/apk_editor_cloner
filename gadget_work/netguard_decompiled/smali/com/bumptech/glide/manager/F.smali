.class final Lcom/bumptech/glide/manager/F;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic d:Z

.field final synthetic e:Lcom/bumptech/glide/manager/G;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/manager/G;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bumptech/glide/manager/F;->e:Lcom/bumptech/glide/manager/G;

    .line 2
    .line 3
    iput-boolean p2, p0, Lcom/bumptech/glide/manager/F;->d:Z

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/manager/F;->e:Lcom/bumptech/glide/manager/G;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/bumptech/glide/manager/G;->b:Lcom/bumptech/glide/manager/c;

    .line 4
    .line 5
    iget-boolean v1, p0, Lcom/bumptech/glide/manager/F;->d:Z

    .line 6
    .line 7
    invoke-interface {v0, v1}, Lcom/bumptech/glide/manager/c;->a(Z)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
