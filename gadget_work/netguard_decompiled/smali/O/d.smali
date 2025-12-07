.class public final LO/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/List;

.field private final b:LG/b;


# direct methods
.method private constructor <init>(Ljava/util/List;LG/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LO/d;->a:Ljava/util/List;

    .line 5
    .line 6
    iput-object p2, p0, LO/d;->b:LG/b;

    .line 7
    .line 8
    return-void
.end method

.method public static a(Ljava/util/List;LG/b;)LE/j;
    .locals 2

    .line 1
    new-instance v0, LO/b;

    .line 2
    .line 3
    new-instance v1, LO/d;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1}, LO/d;-><init>(Ljava/util/List;LG/b;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1}, LO/b;-><init>(LO/d;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method static b(Landroid/graphics/ImageDecoder$Source;IILE/i;)Lcom/bumptech/glide/load/engine/V;
    .locals 1

    .line 1
    new-instance v0, LL/e;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2, p3}, LL/e;-><init>(IILE/i;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0, v0}, LL/b;->d(Landroid/graphics/ImageDecoder$Source;LL/e;)Landroid/graphics/drawable/Drawable;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-static {p0}, LL/a;->k(Landroid/graphics/drawable/Drawable;)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    new-instance p1, LO/a;

    .line 17
    .line 18
    invoke-static {p0}, LL/c;->d(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/AnimatedImageDrawable;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-direct {p1, p0}, LO/a;-><init>(Landroid/graphics/drawable/AnimatedImageDrawable;)V

    .line 23
    .line 24
    .line 25
    return-object p1

    .line 26
    :cond_0
    new-instance p1, Ljava/io/IOException;

    .line 27
    .line 28
    new-instance p2, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    const-string p3, "Received unexpected drawable type for animated webp, failing: "

    .line 31
    .line 32
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw p1
.end method

.method public static e(Ljava/util/List;LG/b;)LE/j;
    .locals 2

    .line 1
    new-instance v0, LO/c;

    .line 2
    .line 3
    new-instance v1, LO/d;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1}, LO/d;-><init>(Ljava/util/List;LG/b;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1}, LO/c;-><init>(LO/d;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method


# virtual methods
.method final c(Ljava/io/InputStream;)Z
    .locals 2

    .line 1
    iget-object v0, p0, LO/d;->a:Ljava/util/List;

    .line 2
    .line 3
    iget-object v1, p0, LO/d;->b:LG/b;

    .line 4
    .line 5
    invoke-static {v1, p1, v0}, LE/d;->j(LG/b;Ljava/io/InputStream;Ljava/util/List;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    sget-object v0, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->ANIMATED_WEBP:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    .line 10
    .line 11
    if-ne p1, v0, :cond_0

    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p1, 0x0

    .line 16
    :goto_0
    return p1
.end method

.method final d(Ljava/nio/ByteBuffer;)Z
    .locals 1

    .line 1
    iget-object v0, p0, LO/d;->a:Ljava/util/List;

    .line 2
    .line 3
    invoke-static {v0, p1}, LE/d;->l(Ljava/util/List;Ljava/nio/ByteBuffer;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    sget-object v0, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->ANIMATED_WEBP:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    .line 8
    .line 9
    if-ne p1, v0, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p1, 0x0

    .line 14
    :goto_0
    return p1
.end method
