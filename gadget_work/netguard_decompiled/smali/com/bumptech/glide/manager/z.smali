.class final Lcom/bumptech/glide/manager/z;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/bumptech/glide/manager/A;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/manager/A;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bumptech/glide/manager/z;->a:Lcom/bumptech/glide/manager/A;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onAvailable(Landroid/net/Network;)V
    .locals 1

    .line 1
    new-instance p1, Lcom/bumptech/glide/manager/y;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    invoke-direct {p1, p0, v0}, Lcom/bumptech/glide/manager/y;-><init>(Lcom/bumptech/glide/manager/z;Z)V

    .line 5
    .line 6
    .line 7
    invoke-static {p1}, LX/s;->j(Ljava/lang/Runnable;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final onLost(Landroid/net/Network;)V
    .locals 1

    .line 1
    new-instance p1, Lcom/bumptech/glide/manager/y;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-direct {p1, p0, v0}, Lcom/bumptech/glide/manager/y;-><init>(Lcom/bumptech/glide/manager/z;Z)V

    .line 5
    .line 6
    .line 7
    invoke-static {p1}, LX/s;->j(Ljava/lang/Runnable;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
