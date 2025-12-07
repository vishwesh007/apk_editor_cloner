.class final Landroidx/recyclerview/widget/h0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static d:Landroidx/core/util/g;


# instance fields
.field a:I

.field b:Lu/n;

.field c:Lu/n;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/core/util/g;

    .line 2
    .line 3
    const/16 v1, 0x14

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroidx/core/util/g;-><init>(I)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Landroidx/recyclerview/widget/h0;->d:Landroidx/core/util/g;

    .line 9
    .line 10
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static a()Landroidx/recyclerview/widget/h0;
    .locals 1

    .line 1
    sget-object v0, Landroidx/recyclerview/widget/h0;->d:Landroidx/core/util/g;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/core/util/g;->b()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/recyclerview/widget/h0;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    new-instance v0, Landroidx/recyclerview/widget/h0;

    .line 12
    .line 13
    invoke-direct {v0}, Landroidx/recyclerview/widget/h0;-><init>()V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-object v0
.end method
