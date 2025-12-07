.class public final LM/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LE/k;


# instance fields
.field private final a:LG/g;

.field private final b:LE/k;


# direct methods
.method public constructor <init>(LG/g;LM/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LM/a;->a:LG/g;

    .line 5
    .line 6
    iput-object p2, p0, LM/a;->b:LE/k;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/io/File;LE/i;)Z
    .locals 2

    .line 1
    check-cast p1, Lcom/bumptech/glide/load/engine/V;

    .line 2
    .line 3
    new-instance v0, LM/d;

    .line 4
    .line 5
    invoke-interface {p1}, Lcom/bumptech/glide/load/engine/V;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iget-object v1, p0, LM/a;->a:LG/g;

    .line 16
    .line 17
    invoke-direct {v0, p1, v1}, LM/d;-><init>(Landroid/graphics/Bitmap;LG/g;)V

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, LM/a;->b:LE/k;

    .line 21
    .line 22
    invoke-interface {p1, v0, p2, p3}, LE/a;->a(Ljava/lang/Object;Ljava/io/File;LE/i;)Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    return p1
.end method

.method public final d(LE/i;)Lcom/bumptech/glide/load/EncodeStrategy;
    .locals 1

    .line 1
    iget-object v0, p0, LM/a;->b:LE/k;

    .line 2
    .line 3
    invoke-interface {v0, p1}, LE/k;->d(LE/i;)Lcom/bumptech/glide/load/EncodeStrategy;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
