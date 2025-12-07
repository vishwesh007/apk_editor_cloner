.class public abstract Landroidx/fragment/app/e0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Ljava/util/ArrayList;

.field b:I

.field c:I

.field d:I

.field e:I

.field f:I

.field g:Z

.field h:Ljava/lang/String;

.field i:I

.field j:Ljava/lang/CharSequence;

.field k:I

.field l:Ljava/lang/CharSequence;

.field m:Ljava/util/ArrayList;

.field n:Ljava/util/ArrayList;

.field o:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroidx/fragment/app/e0;->a:Ljava/util/ArrayList;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Landroidx/fragment/app/e0;->o:Z

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final b(Landroidx/fragment/app/u;Ljava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0, p1, p2}, Landroidx/fragment/app/e0;->f(ILandroidx/fragment/app/u;Ljava/lang/String;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method final c(Landroidx/fragment/app/d0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/e0;->a:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    iget v0, p0, Landroidx/fragment/app/e0;->b:I

    .line 7
    .line 8
    iput v0, p1, Landroidx/fragment/app/d0;->c:I

    .line 9
    .line 10
    iget v0, p0, Landroidx/fragment/app/e0;->c:I

    .line 11
    .line 12
    iput v0, p1, Landroidx/fragment/app/d0;->d:I

    .line 13
    .line 14
    iget v0, p0, Landroidx/fragment/app/e0;->d:I

    .line 15
    .line 16
    iput v0, p1, Landroidx/fragment/app/d0;->e:I

    .line 17
    .line 18
    iget v0, p0, Landroidx/fragment/app/e0;->e:I

    .line 19
    .line 20
    iput v0, p1, Landroidx/fragment/app/d0;->f:I

    .line 21
    .line 22
    return-void
.end method

.method public abstract d()I
.end method

.method public abstract e()V
.end method

.method abstract f(ILandroidx/fragment/app/u;Ljava/lang/String;)V
.end method

.method public abstract g(Landroidx/fragment/app/u;)Landroidx/fragment/app/e0;
.end method
