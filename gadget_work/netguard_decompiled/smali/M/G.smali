.class public final LM/G;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/engine/V;
.implements Lcom/bumptech/glide/load/engine/Q;


# instance fields
.field private final d:Landroid/content/res/Resources;

.field private final e:Lcom/bumptech/glide/load/engine/V;


# direct methods
.method private constructor <init>(Landroid/content/res/Resources;Lcom/bumptech/glide/load/engine/V;)V
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
    iput-object p1, p0, LM/G;->d:Landroid/content/res/Resources;

    .line 8
    .line 9
    invoke-static {p2}, LX/l;->b(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    iput-object p2, p0, LM/G;->e:Lcom/bumptech/glide/load/engine/V;

    .line 13
    .line 14
    return-void
.end method

.method public static e(Landroid/content/res/Resources;Lcom/bumptech/glide/load/engine/V;)LM/G;
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    new-instance v0, LM/G;

    .line 6
    .line 7
    invoke-direct {v0, p0, p1}, LM/G;-><init>(Landroid/content/res/Resources;Lcom/bumptech/glide/load/engine/V;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget-object v0, p0, LM/G;->e:Lcom/bumptech/glide/load/engine/V;

    .line 2
    .line 3
    instance-of v1, v0, Lcom/bumptech/glide/load/engine/Q;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Lcom/bumptech/glide/load/engine/Q;

    .line 8
    .line 9
    invoke-interface {v0}, Lcom/bumptech/glide/load/engine/Q;->a()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public final b()I
    .locals 1

    .line 1
    iget-object v0, p0, LM/G;->e:Lcom/bumptech/glide/load/engine/V;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/bumptech/glide/load/engine/V;->b()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final c()Ljava/lang/Class;
    .locals 1

    .line 1
    const-class v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 2
    .line 3
    return-object v0
.end method

.method public final d()V
    .locals 1

    .line 1
    iget-object v0, p0, LM/G;->e:Lcom/bumptech/glide/load/engine/V;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/bumptech/glide/load/engine/V;->d()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final get()Ljava/lang/Object;
    .locals 3

    .line 1
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 2
    .line 3
    iget-object v1, p0, LM/G;->e:Lcom/bumptech/glide/load/engine/V;

    .line 4
    .line 5
    invoke-interface {v1}, Lcom/bumptech/glide/load/engine/V;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    check-cast v1, Landroid/graphics/Bitmap;

    .line 10
    .line 11
    iget-object v2, p0, LM/G;->d:Landroid/content/res/Resources;

    .line 12
    .line 13
    invoke-direct {v0, v2, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method
