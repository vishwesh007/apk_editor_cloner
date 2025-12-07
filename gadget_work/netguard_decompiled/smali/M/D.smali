.class public final LM/D;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LM/F;


# instance fields
.field private final a:Landroidx/appcompat/view/a;

.field private final b:LG/b;

.field private final c:Ljava/util/List;


# direct methods
.method constructor <init>(LG/b;LX/p;Ljava/util/List;)V
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
    iput-object p1, p0, LM/D;->b:LG/b;

    .line 8
    .line 9
    invoke-static {p3}, LX/l;->b(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    iput-object p3, p0, LM/D;->c:Ljava/util/List;

    .line 13
    .line 14
    new-instance p3, Landroidx/appcompat/view/a;

    .line 15
    .line 16
    invoke-direct {p3, p2, p1}, Landroidx/appcompat/view/a;-><init>(Ljava/io/InputStream;LG/b;)V

    .line 17
    .line 18
    .line 19
    iput-object p3, p0, LM/D;->a:Landroidx/appcompat/view/a;

    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 2

    .line 1
    iget-object v0, p0, LM/D;->a:Landroidx/appcompat/view/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/appcompat/view/a;->k()LM/I;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-static {v0, v1, p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method

.method public final b()Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;
    .locals 3

    .line 1
    iget-object v0, p0, LM/D;->a:Landroidx/appcompat/view/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/appcompat/view/a;->k()LM/I;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, LM/D;->b:LG/b;

    .line 8
    .line 9
    iget-object v2, p0, LM/D;->c:Ljava/util/List;

    .line 10
    .line 11
    invoke-static {v1, v0, v2}, LE/d;->j(LG/b;Ljava/io/InputStream;Ljava/util/List;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0
.end method

.method public final c()V
    .locals 1

    .line 1
    iget-object v0, p0, LM/D;->a:Landroidx/appcompat/view/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/appcompat/view/a;->d()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final d()I
    .locals 3

    .line 1
    iget-object v0, p0, LM/D;->a:Landroidx/appcompat/view/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/appcompat/view/a;->k()LM/I;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, LM/D;->b:LG/b;

    .line 8
    .line 9
    iget-object v2, p0, LM/D;->c:Ljava/util/List;

    .line 10
    .line 11
    invoke-static {v1, v0, v2}, LE/d;->h(LG/b;Ljava/io/InputStream;Ljava/util/List;)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    return v0
.end method
