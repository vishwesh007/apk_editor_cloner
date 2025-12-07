.class public final LR/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LR/c;


# instance fields
.field private final a:LG/g;

.field private final b:LR/c;

.field private final c:LR/c;


# direct methods
.method public constructor <init>(LG/g;LR/a;Landroidx/emoji2/text/d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LR/b;->a:LG/g;

    .line 5
    .line 6
    iput-object p2, p0, LR/b;->b:LR/c;

    .line 7
    .line 8
    iput-object p3, p0, LR/b;->c:LR/c;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final d(Lcom/bumptech/glide/load/engine/V;LE/i;)Lcom/bumptech/glide/load/engine/V;
    .locals 2

    .line 1
    invoke-interface {p1}, Lcom/bumptech/glide/load/engine/V;->get()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 6
    .line 7
    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iget-object v0, p0, LR/b;->a:LG/g;

    .line 18
    .line 19
    invoke-static {p1, v0}, LM/d;->e(Landroid/graphics/Bitmap;LG/g;)LM/d;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    iget-object v0, p0, LR/b;->b:LR/c;

    .line 24
    .line 25
    invoke-interface {v0, p1, p2}, LR/c;->d(Lcom/bumptech/glide/load/engine/V;LE/i;)Lcom/bumptech/glide/load/engine/V;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    return-object p1

    .line 30
    :cond_0
    instance-of v0, v0, LQ/f;

    .line 31
    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    iget-object v0, p0, LR/b;->c:LR/c;

    .line 35
    .line 36
    invoke-interface {v0, p1, p2}, LR/c;->d(Lcom/bumptech/glide/load/engine/V;LE/i;)Lcom/bumptech/glide/load/engine/V;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    return-object p1

    .line 41
    :cond_1
    const/4 p1, 0x0

    .line 42
    return-object p1
.end method
