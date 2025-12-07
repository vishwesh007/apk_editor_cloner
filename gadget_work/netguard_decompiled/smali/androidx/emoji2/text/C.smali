.class public final Landroidx/emoji2/text/C;
.super Landroidx/emoji2/text/k;
.source "SourceFile"


# static fields
.field private static final d:Landroidx/emoji2/text/z;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/emoji2/text/z;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/emoji2/text/z;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/emoji2/text/C;->d:Landroidx/emoji2/text/z;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/core/provider/g;)V
    .locals 2

    .line 1
    new-instance v0, Landroidx/emoji2/text/B;

    .line 2
    .line 3
    sget-object v1, Landroidx/emoji2/text/C;->d:Landroidx/emoji2/text/z;

    .line 4
    .line 5
    invoke-direct {v0, p1, p2, v1}, Landroidx/emoji2/text/B;-><init>(Landroid/content/Context;Landroidx/core/provider/g;Landroidx/emoji2/text/z;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, v0}, Landroidx/emoji2/text/k;-><init>(Landroidx/emoji2/text/o;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
