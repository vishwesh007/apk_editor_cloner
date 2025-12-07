.class public final Landroidx/core/content/res/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/content/res/f;


# instance fields
.field private final a:Landroidx/core/provider/g;

.field private final b:I

.field private final c:I

.field private final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroidx/core/provider/g;IILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/core/content/res/i;->a:Landroidx/core/provider/g;

    .line 5
    .line 6
    iput p2, p0, Landroidx/core/content/res/i;->c:I

    .line 7
    .line 8
    iput p3, p0, Landroidx/core/content/res/i;->b:I

    .line 9
    .line 10
    iput-object p4, p0, Landroidx/core/content/res/i;->d:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/core/content/res/i;->c:I

    .line 2
    .line 3
    return v0
.end method

.method public final b()Landroidx/core/provider/g;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/content/res/i;->a:Landroidx/core/provider/g;

    .line 2
    .line 3
    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/content/res/i;->d:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final d()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/core/content/res/i;->b:I

    .line 2
    .line 3
    return v0
.end method
