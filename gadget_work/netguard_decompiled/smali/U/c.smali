.class public abstract LU/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LU/g;


# instance fields
.field private final a:I

.field private final b:I

.field private c:Lcom/bumptech/glide/request/d;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/high16 v0, -0x80000000

    .line 5
    .line 6
    invoke-static {v0, v0}, LX/s;->i(II)Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    iput v0, p0, LU/c;->a:I

    .line 13
    .line 14
    iput v0, p0, LU/c;->b:I

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 18
    .line 19
    const-string v1, "Width and height must both be > 0 or Target#SIZE_ORIGINAL, but given width: -2147483648 and height: -2147483648"

    .line 20
    .line 21
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    throw v0
.end method


# virtual methods
.method public final a(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final c(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final d()Lcom/bumptech/glide/request/d;
    .locals 1

    .line 1
    iget-object v0, p0, LU/c;->c:Lcom/bumptech/glide/request/d;

    .line 2
    .line 3
    return-object v0
.end method

.method public final e(LU/f;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final g(Lcom/bumptech/glide/request/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, LU/c;->c:Lcom/bumptech/glide/request/d;

    .line 2
    .line 3
    return-void
.end method

.method public final h(LU/f;)V
    .locals 2

    .line 1
    iget v0, p0, LU/c;->a:I

    .line 2
    .line 3
    iget v1, p0, LU/c;->b:I

    .line 4
    .line 5
    invoke-interface {p1, v0, v1}, LU/f;->b(II)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final onDestroy()V
    .locals 0

    .line 1
    return-void
.end method

.method public final onStart()V
    .locals 0

    .line 1
    return-void
.end method

.method public final onStop()V
    .locals 0

    .line 1
    return-void
.end method
