.class public final LM/E;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LM/F;


# instance fields
.field private final a:LG/b;

.field private final b:Ljava/util/List;

.field private final c:Lcom/bumptech/glide/load/data/s;


# direct methods
.method constructor <init>(Landroid/os/ParcelFileDescriptor;Ljava/util/List;LG/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p3}, LX/l;->b(Ljava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    iput-object p3, p0, LM/E;->a:LG/b;

    .line 8
    .line 9
    invoke-static {p2}, LX/l;->b(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    iput-object p2, p0, LM/E;->b:Ljava/util/List;

    .line 13
    .line 14
    new-instance p2, Lcom/bumptech/glide/load/data/s;

    .line 15
    .line 16
    invoke-direct {p2, p1}, Lcom/bumptech/glide/load/data/s;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 17
    .line 18
    .line 19
    iput-object p2, p0, LM/E;->c:Lcom/bumptech/glide/load/data/s;

    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 2

    .line 1
    iget-object v0, p0, LM/E;->c:Lcom/bumptech/glide/load/data/s;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/bumptech/glide/load/data/s;->c()Landroid/os/ParcelFileDescriptor;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-static {v0, v1, p1}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    return-object p1
.end method

.method public final b()Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;
    .locals 3

    .line 1
    iget-object v0, p0, LM/E;->c:Lcom/bumptech/glide/load/data/s;

    .line 2
    .line 3
    iget-object v1, p0, LM/E;->a:LG/b;

    .line 4
    .line 5
    iget-object v2, p0, LM/E;->b:Ljava/util/List;

    .line 6
    .line 7
    invoke-static {v2, v0, v1}, LE/d;->k(Ljava/util/List;Lcom/bumptech/glide/load/data/s;LG/b;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public final c()V
    .locals 0

    .line 1
    return-void
.end method

.method public final d()I
    .locals 3

    .line 1
    iget-object v0, p0, LM/E;->c:Lcom/bumptech/glide/load/data/s;

    .line 2
    .line 3
    iget-object v1, p0, LM/E;->a:LG/b;

    .line 4
    .line 5
    iget-object v2, p0, LM/E;->b:Ljava/util/List;

    .line 6
    .line 7
    invoke-static {v2, v0, v1}, LE/d;->i(Ljava/util/List;Lcom/bumptech/glide/load/data/s;LG/b;)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method
