.class public final Landroidx/core/provider/o;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/net/Uri;

.field private final b:I

.field private final c:I

.field private final d:Z

.field private final e:I


# direct methods
.method public constructor <init>(Landroid/net/Uri;IIZI)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Landroidx/core/provider/o;->a:Landroid/net/Uri;

    .line 8
    .line 9
    iput p2, p0, Landroidx/core/provider/o;->b:I

    .line 10
    .line 11
    iput p3, p0, Landroidx/core/provider/o;->c:I

    .line 12
    .line 13
    iput-boolean p4, p0, Landroidx/core/provider/o;->d:Z

    .line 14
    .line 15
    iput p5, p0, Landroidx/core/provider/o;->e:I

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/core/provider/o;->e:I

    .line 2
    .line 3
    return v0
.end method

.method public final b()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/core/provider/o;->b:I

    .line 2
    .line 3
    return v0
.end method

.method public final c()Landroid/net/Uri;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/provider/o;->a:Landroid/net/Uri;

    .line 2
    .line 3
    return-object v0
.end method

.method public final d()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/core/provider/o;->c:I

    .line 2
    .line 3
    return v0
.end method

.method public final e()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/core/provider/o;->d:Z

    .line 2
    .line 3
    return v0
.end method
