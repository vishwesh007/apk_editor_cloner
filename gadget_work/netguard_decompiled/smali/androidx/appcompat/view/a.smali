.class public final Landroidx/appcompat/view/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/data/g;


# instance fields
.field public final synthetic a:I

.field private b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/appcompat/view/a;->a:I

    iput-object p2, p0, Landroidx/appcompat/view/a;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;LG/b;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Landroidx/appcompat/view/a;->a:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, LM/I;

    invoke-direct {v0, p1, p2}, LM/I;-><init>(Ljava/io/InputStream;LG/b;)V

    iput-object v0, p0, Landroidx/appcompat/view/a;->b:Ljava/lang/Object;

    const/high16 p1, 0x500000

    .line 4
    invoke-virtual {v0, p1}, LM/I;->mark(I)V

    return-void
.end method

.method public static e(Landroid/content/Context;)Landroidx/appcompat/view/a;
    .locals 2

    .line 1
    new-instance v0, Landroidx/appcompat/view/a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1, p0}, Landroidx/appcompat/view/a;-><init>(ILjava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/appcompat/view/a;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :pswitch_0
    iget-object v0, p0, Landroidx/appcompat/view/a;->b:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, LM/I;

    .line 10
    .line 11
    invoke-virtual {v0}, LM/I;->d()V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final b()Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Landroidx/appcompat/view/a;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :pswitch_0
    invoke-virtual {p0}, Landroidx/appcompat/view/a;->k()LM/I;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0

    .line 12
    :goto_0
    iget-object v0, p0, Landroidx/appcompat/view/a;->b:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v0, Ljava/nio/ByteBuffer;

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Landroidx/appcompat/view/a;->b:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v0, Ljava/nio/ByteBuffer;

    .line 23
    .line 24
    return-object v0

    .line 25
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final c()Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/a;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/content/Context;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 10
    .line 11
    const/16 v1, 0xe

    .line 12
    .line 13
    if-ge v0, v1, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    return v0
.end method

.method public final d()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/a;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, LM/I;

    .line 4
    .line 5
    invoke-virtual {v0}, LM/I;->b()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final f()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/a;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/content/Context;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 14
    .line 15
    div-int/lit8 v0, v0, 0x2

    .line 16
    .line 17
    return v0
.end method

.method public final g()I
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/a;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/content/Context;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget v1, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 14
    .line 15
    iget v2, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 16
    .line 17
    iget v0, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 18
    .line 19
    const/16 v3, 0x258

    .line 20
    .line 21
    if-gt v0, v3, :cond_6

    .line 22
    .line 23
    if-gt v1, v3, :cond_6

    .line 24
    .line 25
    const/16 v0, 0x2d0

    .line 26
    .line 27
    const/16 v3, 0x3c0

    .line 28
    .line 29
    if-le v1, v3, :cond_0

    .line 30
    .line 31
    if-gt v2, v0, :cond_6

    .line 32
    .line 33
    :cond_0
    if-le v1, v0, :cond_1

    .line 34
    .line 35
    if-le v2, v3, :cond_1

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_1
    const/16 v0, 0x1f4

    .line 39
    .line 40
    if-ge v1, v0, :cond_5

    .line 41
    .line 42
    const/16 v0, 0x1e0

    .line 43
    .line 44
    const/16 v3, 0x280

    .line 45
    .line 46
    if-le v1, v3, :cond_2

    .line 47
    .line 48
    if-gt v2, v0, :cond_5

    .line 49
    .line 50
    :cond_2
    if-le v1, v0, :cond_3

    .line 51
    .line 52
    if-le v2, v3, :cond_3

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_3
    const/16 v0, 0x168

    .line 56
    .line 57
    if-lt v1, v0, :cond_4

    .line 58
    .line 59
    const/4 v0, 0x3

    .line 60
    return v0

    .line 61
    :cond_4
    const/4 v0, 0x2

    .line 62
    return v0

    .line 63
    :cond_5
    :goto_0
    const/4 v0, 0x4

    .line 64
    return v0

    .line 65
    :cond_6
    :goto_1
    const/4 v0, 0x5

    .line 66
    return v0
.end method

.method public final h()I
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/a;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/content/Context;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const v1, 0x7f07000a

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    return v0
.end method

.method public final i()I
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/a;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/content/Context;

    .line 4
    .line 5
    sget-object v1, Ld/a;->a:[I

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    const v3, 0x7f040005

    .line 9
    .line 10
    .line 11
    const/4 v4, 0x0

    .line 12
    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const/16 v1, 0xd

    .line 17
    .line 18
    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    iget-object v2, p0, Landroidx/appcompat/view/a;->b:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v2, Landroid/content/Context;

    .line 25
    .line 26
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {p0}, Landroidx/appcompat/view/a;->j()Z

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    if-nez v3, :cond_0

    .line 35
    .line 36
    const v3, 0x7f070009

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 48
    .line 49
    .line 50
    return v1
.end method

.method public final j()Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/a;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/content/Context;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/high16 v1, 0x7f050000

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    return v0
.end method

.method public final k()LM/I;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/a;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, LM/I;

    .line 4
    .line 5
    invoke-virtual {v0}, LM/I;->reset()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Landroidx/appcompat/view/a;->b:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v0, LM/I;

    .line 11
    .line 12
    return-object v0
.end method
