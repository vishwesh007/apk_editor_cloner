.class final Landroidx/vectordrawable/graphics/drawable/p;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "SourceFile"


# instance fields
.field a:I

.field b:Landroidx/vectordrawable/graphics/drawable/o;

.field c:Landroid/content/res/ColorStateList;

.field d:Landroid/graphics/PorterDuff$Mode;

.field e:Z

.field f:Landroid/graphics/Bitmap;

.field g:Landroid/content/res/ColorStateList;

.field h:Landroid/graphics/PorterDuff$Mode;

.field i:I

.field j:Z

.field k:Z

.field l:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/p;->c:Landroid/content/res/ColorStateList;

    .line 15
    sget-object v0, Landroidx/vectordrawable/graphics/drawable/r;->j:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/p;->d:Landroid/graphics/PorterDuff$Mode;

    .line 16
    new-instance v0, Landroidx/vectordrawable/graphics/drawable/o;

    invoke-direct {v0}, Landroidx/vectordrawable/graphics/drawable/o;-><init>()V

    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/p;->b:Landroidx/vectordrawable/graphics/drawable/o;

    return-void
.end method

.method public constructor <init>(Landroidx/vectordrawable/graphics/drawable/p;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/p;->c:Landroid/content/res/ColorStateList;

    .line 3
    sget-object v0, Landroidx/vectordrawable/graphics/drawable/r;->j:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/p;->d:Landroid/graphics/PorterDuff$Mode;

    if-eqz p1, :cond_2

    .line 4
    iget v0, p1, Landroidx/vectordrawable/graphics/drawable/p;->a:I

    iput v0, p0, Landroidx/vectordrawable/graphics/drawable/p;->a:I

    .line 5
    new-instance v0, Landroidx/vectordrawable/graphics/drawable/o;

    iget-object v1, p1, Landroidx/vectordrawable/graphics/drawable/p;->b:Landroidx/vectordrawable/graphics/drawable/o;

    invoke-direct {v0, v1}, Landroidx/vectordrawable/graphics/drawable/o;-><init>(Landroidx/vectordrawable/graphics/drawable/o;)V

    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/p;->b:Landroidx/vectordrawable/graphics/drawable/o;

    .line 6
    iget-object v1, p1, Landroidx/vectordrawable/graphics/drawable/p;->b:Landroidx/vectordrawable/graphics/drawable/o;

    iget-object v1, v1, Landroidx/vectordrawable/graphics/drawable/o;->e:Landroid/graphics/Paint;

    if-eqz v1, :cond_0

    .line 7
    new-instance v1, Landroid/graphics/Paint;

    iget-object v2, p1, Landroidx/vectordrawable/graphics/drawable/p;->b:Landroidx/vectordrawable/graphics/drawable/o;

    iget-object v2, v2, Landroidx/vectordrawable/graphics/drawable/o;->e:Landroid/graphics/Paint;

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v1, v0, Landroidx/vectordrawable/graphics/drawable/o;->e:Landroid/graphics/Paint;

    .line 8
    :cond_0
    iget-object v0, p1, Landroidx/vectordrawable/graphics/drawable/p;->b:Landroidx/vectordrawable/graphics/drawable/o;

    iget-object v0, v0, Landroidx/vectordrawable/graphics/drawable/o;->d:Landroid/graphics/Paint;

    if-eqz v0, :cond_1

    .line 9
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/p;->b:Landroidx/vectordrawable/graphics/drawable/o;

    new-instance v1, Landroid/graphics/Paint;

    iget-object v2, p1, Landroidx/vectordrawable/graphics/drawable/p;->b:Landroidx/vectordrawable/graphics/drawable/o;

    iget-object v2, v2, Landroidx/vectordrawable/graphics/drawable/o;->d:Landroid/graphics/Paint;

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v1, v0, Landroidx/vectordrawable/graphics/drawable/o;->d:Landroid/graphics/Paint;

    .line 10
    :cond_1
    iget-object v0, p1, Landroidx/vectordrawable/graphics/drawable/p;->c:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/p;->c:Landroid/content/res/ColorStateList;

    .line 11
    iget-object v0, p1, Landroidx/vectordrawable/graphics/drawable/p;->d:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/p;->d:Landroid/graphics/PorterDuff$Mode;

    .line 12
    iget-boolean p1, p1, Landroidx/vectordrawable/graphics/drawable/p;->e:Z

    iput-boolean p1, p0, Landroidx/vectordrawable/graphics/drawable/p;->e:Z

    :cond_2
    return-void
.end method


# virtual methods
.method public getChangingConfigurations()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/vectordrawable/graphics/drawable/p;->a:I

    .line 2
    .line 3
    return v0
.end method

.method public final newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    new-instance v0, Landroidx/vectordrawable/graphics/drawable/r;

    invoke-direct {v0, p0}, Landroidx/vectordrawable/graphics/drawable/r;-><init>(Landroidx/vectordrawable/graphics/drawable/p;)V

    return-object v0
.end method

.method public final newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 2
    new-instance p1, Landroidx/vectordrawable/graphics/drawable/r;

    invoke-direct {p1, p0}, Landroidx/vectordrawable/graphics/drawable/r;-><init>(Landroidx/vectordrawable/graphics/drawable/p;)V

    return-object p1
.end method
