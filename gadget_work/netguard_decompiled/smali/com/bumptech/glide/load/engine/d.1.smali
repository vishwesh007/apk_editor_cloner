.class final Lcom/bumptech/glide/load/engine/d;
.super Ljava/lang/ref/WeakReference;
.source "SourceFile"


# instance fields
.field final a:LE/e;

.field final b:Z

.field c:Lcom/bumptech/glide/load/engine/V;


# direct methods
.method constructor <init>(LE/e;Lcom/bumptech/glide/load/engine/N;Ljava/lang/ref/ReferenceQueue;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p2, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, LX/l;->b(Ljava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/d;->a:LE/e;

    .line 8
    .line 9
    invoke-virtual {p2}, Lcom/bumptech/glide/load/engine/N;->f()Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    if-eqz p4, :cond_0

    .line 16
    .line 17
    invoke-virtual {p2}, Lcom/bumptech/glide/load/engine/N;->e()Lcom/bumptech/glide/load/engine/V;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-static {p1}, LX/l;->b(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 p1, 0x0

    .line 26
    :goto_0
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/d;->c:Lcom/bumptech/glide/load/engine/V;

    .line 27
    .line 28
    invoke-virtual {p2}, Lcom/bumptech/glide/load/engine/N;->f()Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    iput-boolean p1, p0, Lcom/bumptech/glide/load/engine/d;->b:Z

    .line 33
    .line 34
    return-void
.end method
