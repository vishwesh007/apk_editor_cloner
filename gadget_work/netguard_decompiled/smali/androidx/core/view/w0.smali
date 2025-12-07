.class public final Landroidx/core/view/w0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/view/l;


# instance fields
.field public final synthetic a:I

.field private final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Landroidx/core/view/w0;->a:I

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    .line 6
    new-instance v0, Landroidx/core/view/z0;

    invoke-direct {v0}, Landroidx/core/view/z0;-><init>()V

    iput-object v0, p0, Landroidx/core/view/w0;->b:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/16 v1, 0x1d

    if-lt v0, v1, :cond_1

    .line 7
    new-instance v0, Landroidx/core/view/y0;

    invoke-direct {v0}, Landroidx/core/view/y0;-><init>()V

    iput-object v0, p0, Landroidx/core/view/w0;->b:Ljava/lang/Object;

    goto :goto_0

    .line 8
    :cond_1
    new-instance v0, Landroidx/core/view/x0;

    invoke-direct {v0}, Landroidx/core/view/x0;-><init>()V

    iput-object v0, p0, Landroidx/core/view/w0;->b:Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public constructor <init>(Landroid/view/ContentInfo;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Landroidx/core/view/w0;->a:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    invoke-static {p1}, Landroidx/core/app/z;->d(Ljava/lang/Object;)Landroid/view/ContentInfo;

    move-result-object p1

    iput-object p1, p0, Landroidx/core/view/w0;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroidx/core/view/I0;)V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Landroidx/core/view/w0;->a:I

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    .line 11
    new-instance v0, Landroidx/core/view/z0;

    invoke-direct {v0, p1}, Landroidx/core/view/z0;-><init>(Landroidx/core/view/I0;)V

    iput-object v0, p0, Landroidx/core/view/w0;->b:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/16 v1, 0x1d

    if-lt v0, v1, :cond_1

    .line 12
    new-instance v0, Landroidx/core/view/y0;

    invoke-direct {v0, p1}, Landroidx/core/view/y0;-><init>(Landroidx/core/view/I0;)V

    iput-object v0, p0, Landroidx/core/view/w0;->b:Ljava/lang/Object;

    goto :goto_0

    .line 13
    :cond_1
    new-instance v0, Landroidx/core/view/x0;

    invoke-direct {v0, p1}, Landroidx/core/view/x0;-><init>(Landroidx/core/view/I0;)V

    iput-object v0, p0, Landroidx/core/view/w0;->b:Ljava/lang/Object;

    :goto_0
    return-void
.end method


# virtual methods
.method public final a()Landroid/content/ClipData;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/view/w0;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/view/ContentInfo;

    .line 4
    .line 5
    invoke-static {v0}, Landroidx/core/app/z;->a(Landroid/view/ContentInfo;)Landroid/content/ClipData;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public final b()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/view/w0;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/view/ContentInfo;

    .line 4
    .line 5
    invoke-static {v0}, Landroidx/core/view/h;->a(Landroid/view/ContentInfo;)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public final c()Landroid/view/ContentInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/view/w0;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/view/ContentInfo;

    .line 4
    .line 5
    return-object v0
.end method

.method public final d()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/view/w0;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/view/ContentInfo;

    .line 4
    .line 5
    invoke-static {v0}, LE0/d;->a(Landroid/view/ContentInfo;)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public final e()Landroidx/core/view/I0;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/view/w0;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroidx/core/view/A0;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/core/view/A0;->b()Landroidx/core/view/I0;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public final f(Landroidx/core/graphics/c;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/core/view/w0;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroidx/core/view/A0;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroidx/core/view/A0;->c(Landroidx/core/graphics/c;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final g(Landroidx/core/graphics/c;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/core/view/w0;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroidx/core/view/A0;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroidx/core/view/A0;->d(Landroidx/core/graphics/c;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    iget v0, p0, Landroidx/core/view/w0;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    return-object v0

    .line 11
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v1, "ContentInfoCompat{"

    .line 14
    .line 15
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Landroidx/core/view/w0;->b:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v1, Landroid/view/ContentInfo;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v1, "}"

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    return-object v0

    .line 35
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
