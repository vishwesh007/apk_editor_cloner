.class final Lcom/bumptech/glide/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic d:Lcom/bumptech/glide/x;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/x;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bumptech/glide/v;->d:Lcom/bumptech/glide/x;

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
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/v;->d:Lcom/bumptech/glide/x;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/bumptech/glide/x;->lifecycle:Lcom/bumptech/glide/manager/j;

    .line 4
    .line 5
    invoke-interface {v1, v0}, Lcom/bumptech/glide/manager/j;->c(Lcom/bumptech/glide/manager/k;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
