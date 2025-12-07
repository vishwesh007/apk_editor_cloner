.class public final LQ/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LE/l;


# instance fields
.field private final b:LE/l;


# direct methods
.method public constructor <init>(LE/l;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, LX/l;->b(Ljava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, LQ/h;->b:LE/l;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final a(Ljava/security/MessageDigest;)V
    .locals 1

    .line 1
    iget-object v0, p0, LQ/h;->b:LE/l;

    .line 2
    .line 3
    invoke-interface {v0, p1}, LE/e;->a(Ljava/security/MessageDigest;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final b(Lcom/bumptech/glide/k;Lcom/bumptech/glide/load/engine/V;II)Lcom/bumptech/glide/load/engine/V;
    .locals 4

    .line 1
    invoke-interface {p2}, Lcom/bumptech/glide/load/engine/V;->get()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, LQ/f;

    .line 6
    .line 7
    invoke-static {p1}, Lcom/bumptech/glide/d;->b(Landroid/content/Context;)Lcom/bumptech/glide/d;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1}, Lcom/bumptech/glide/d;->d()LG/g;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0}, LQ/f;->c()Landroid/graphics/Bitmap;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    new-instance v3, LM/d;

    .line 20
    .line 21
    invoke-direct {v3, v2, v1}, LM/d;-><init>(Landroid/graphics/Bitmap;LG/g;)V

    .line 22
    .line 23
    .line 24
    iget-object v1, p0, LQ/h;->b:LE/l;

    .line 25
    .line 26
    invoke-interface {v1, p1, v3, p3, p4}, LE/l;->b(Lcom/bumptech/glide/k;Lcom/bumptech/glide/load/engine/V;II)Lcom/bumptech/glide/load/engine/V;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result p3

    .line 34
    if-nez p3, :cond_0

    .line 35
    .line 36
    invoke-virtual {v3}, LM/d;->d()V

    .line 37
    .line 38
    .line 39
    :cond_0
    invoke-interface {p1}, Lcom/bumptech/glide/load/engine/V;->get()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    check-cast p1, Landroid/graphics/Bitmap;

    .line 44
    .line 45
    invoke-virtual {v0, v1, p1}, LQ/f;->f(LE/l;Landroid/graphics/Bitmap;)V

    .line 46
    .line 47
    .line 48
    return-object p2
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, LQ/h;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, LQ/h;

    .line 6
    .line 7
    iget-object v0, p0, LQ/h;->b:LE/l;

    .line 8
    .line 9
    iget-object p1, p1, LQ/h;->b:LE/l;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    return p1

    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
    return p1
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, LQ/h;->b:LE/l;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method
