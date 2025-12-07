.class final Lr/a;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lr/d;


# direct methods
.method constructor <init>(Lr/d;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lr/a;->a:Lr/d;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object p1, p0, Lr/a;->a:Lr/d;

    .line 11
    .line 12
    invoke-virtual {p1}, Lr/d;->a()V

    .line 13
    .line 14
    .line 15
    :goto_0
    return-void
.end method
