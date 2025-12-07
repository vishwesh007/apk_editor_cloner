.class public final Landroidx/core/provider/n;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:I

.field private final b:[Landroidx/core/provider/o;


# direct methods
.method public constructor <init>(I[Landroidx/core/provider/o;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Landroidx/core/provider/n;->a:I

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/core/provider/n;->b:[Landroidx/core/provider/o;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a()[Landroidx/core/provider/o;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/provider/n;->b:[Landroidx/core/provider/o;

    .line 2
    .line 3
    return-object v0
.end method

.method public final b()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/core/provider/n;->a:I

    .line 2
    .line 3
    return v0
.end method
