.class public final Landroidx/core/provider/p;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;Landroidx/core/provider/g;)Landroidx/core/provider/n;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/core/provider/f;->a(Landroid/content/Context;Landroidx/core/provider/g;)Landroidx/core/provider/n;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static b(Landroid/content/Context;Landroidx/core/provider/g;IZILandroid/os/Handler;Landroidx/core/graphics/h;)Landroid/graphics/Typeface;
    .locals 1

    .line 1
    new-instance v0, Landroidx/core/provider/c;

    .line 2
    .line 3
    invoke-direct {v0, p6, p5}, Landroidx/core/provider/c;-><init>(Landroidx/core/graphics/h;Landroid/os/Handler;)V

    .line 4
    .line 5
    .line 6
    if-eqz p3, :cond_0

    .line 7
    .line 8
    invoke-static {p0, p1, v0, p2, p4}, Landroidx/core/provider/m;->c(Landroid/content/Context;Landroidx/core/provider/g;Landroidx/core/provider/c;II)Landroid/graphics/Typeface;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0

    .line 13
    :cond_0
    invoke-static {p0, p1, p2, v0}, Landroidx/core/provider/m;->b(Landroid/content/Context;Landroidx/core/provider/g;ILandroidx/core/provider/c;)Landroid/graphics/Typeface;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method
