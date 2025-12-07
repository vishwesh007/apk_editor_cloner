.class final Lcom/bumptech/glide/manager/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/manager/d;


# instance fields
.field private final a:Landroid/content/Context;

.field final b:Lcom/bumptech/glide/manager/c;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/bumptech/glide/manager/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lcom/bumptech/glide/manager/f;->a:Landroid/content/Context;

    .line 9
    .line 10
    iput-object p2, p0, Lcom/bumptech/glide/manager/f;->b:Lcom/bumptech/glide/manager/c;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final onDestroy()V
    .locals 0

    return-void
.end method

.method public final onStart()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/manager/f;->a:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/bumptech/glide/manager/H;->a(Landroid/content/Context;)Lcom/bumptech/glide/manager/H;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/bumptech/glide/manager/f;->b:Lcom/bumptech/glide/manager/c;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/manager/H;->b(Lcom/bumptech/glide/manager/c;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final onStop()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/manager/f;->a:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/bumptech/glide/manager/H;->a(Landroid/content/Context;)Lcom/bumptech/glide/manager/H;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/bumptech/glide/manager/f;->b:Lcom/bumptech/glide/manager/c;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/manager/H;->c(Lcom/bumptech/glide/manager/c;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
