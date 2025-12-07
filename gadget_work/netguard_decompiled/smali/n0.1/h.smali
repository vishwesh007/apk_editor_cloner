.class public final Ln0/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:LE/d;

.field private b:Landroid/os/Looper;


# virtual methods
.method public final a()Ln0/i;
    .locals 3

    .line 1
    iget-object v0, p0, Ln0/h;->a:LE/d;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, LE/d;

    .line 6
    .line 7
    invoke-direct {v0}, LE/d;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Ln0/h;->a:LE/d;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Ln0/h;->b:Landroid/os/Looper;

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Ln0/h;->b:Landroid/os/Looper;

    .line 21
    .line 22
    :cond_1
    new-instance v0, Ln0/i;

    .line 23
    .line 24
    iget-object v1, p0, Ln0/h;->a:LE/d;

    .line 25
    .line 26
    iget-object v2, p0, Ln0/h;->b:Landroid/os/Looper;

    .line 27
    .line 28
    invoke-direct {v0, v1, v2}, Ln0/i;-><init>(LE/d;Landroid/os/Looper;)V

    .line 29
    .line 30
    .line 31
    return-object v0
.end method
