.class public abstract LU/j;
.super LU/a;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field protected final a:Landroid/view/View;

.field private final b:LU/i;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-direct {p0}, LU/a;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, LX/l;->b(Ljava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, LU/j;->a:Landroid/view/View;

    .line 8
    .line 9
    new-instance v0, LU/i;

    .line 10
    .line 11
    invoke-direct {v0, p1}, LU/i;-><init>(Landroid/view/View;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, LU/j;->b:LU/i;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final d()Lcom/bumptech/glide/request/d;
    .locals 2

    .line 1
    iget-object v0, p0, LU/j;->a:Landroid/view/View;

    .line 2
    .line 3
    const v1, 0x7f09007f

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    instance-of v1, v0, Lcom/bumptech/glide/request/d;

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    check-cast v0, Lcom/bumptech/glide/request/d;

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 20
    .line 21
    const-string v1, "You must not call setTag() on a view Glide is targeting"

    .line 22
    .line 23
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw v0

    .line 27
    :cond_1
    const/4 v0, 0x0

    .line 28
    :goto_0
    return-object v0
.end method

.method public final e(LU/f;)V
    .locals 1

    .line 1
    iget-object v0, p0, LU/j;->b:LU/i;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, LU/i;->g(LU/f;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public f(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    iget-object p1, p0, LU/j;->b:LU/i;

    .line 2
    .line 3
    invoke-virtual {p1}, LU/i;->b()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final g(Lcom/bumptech/glide/request/d;)V
    .locals 2

    .line 1
    iget-object v0, p0, LU/j;->a:Landroid/view/View;

    .line 2
    .line 3
    const v1, 0x7f09007f

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final h(LU/f;)V
    .locals 1

    .line 1
    iget-object v0, p0, LU/j;->b:LU/i;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, LU/i;->c(LU/f;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Target for: "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, LU/j;->a:Landroid/view/View;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    return-object v0
.end method
