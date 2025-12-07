.class public final Landroidx/core/graphics/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Landroidx/core/graphics/h;

.field private static final b:Landroidx/collection/g;

.field public static final synthetic c:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1d

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    new-instance v0, Landroidx/core/graphics/n;

    .line 8
    .line 9
    invoke-direct {v0}, Landroidx/core/graphics/n;-><init>()V

    .line 10
    .line 11
    .line 12
    sput-object v0, Landroidx/core/graphics/i;->a:Landroidx/core/graphics/h;

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/16 v1, 0x1c

    .line 16
    .line 17
    if-lt v0, v1, :cond_1

    .line 18
    .line 19
    new-instance v0, Landroidx/core/graphics/m;

    .line 20
    .line 21
    invoke-direct {v0}, Landroidx/core/graphics/m;-><init>()V

    .line 22
    .line 23
    .line 24
    sput-object v0, Landroidx/core/graphics/i;->a:Landroidx/core/graphics/h;

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const/16 v1, 0x1a

    .line 28
    .line 29
    if-lt v0, v1, :cond_2

    .line 30
    .line 31
    new-instance v0, Landroidx/core/graphics/l;

    .line 32
    .line 33
    invoke-direct {v0}, Landroidx/core/graphics/l;-><init>()V

    .line 34
    .line 35
    .line 36
    sput-object v0, Landroidx/core/graphics/i;->a:Landroidx/core/graphics/h;

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_2
    const/16 v1, 0x18

    .line 40
    .line 41
    if-lt v0, v1, :cond_3

    .line 42
    .line 43
    invoke-static {}, Landroidx/core/graphics/k;->k()Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_3

    .line 48
    .line 49
    new-instance v0, Landroidx/core/graphics/k;

    .line 50
    .line 51
    invoke-direct {v0}, Landroidx/core/graphics/k;-><init>()V

    .line 52
    .line 53
    .line 54
    sput-object v0, Landroidx/core/graphics/i;->a:Landroidx/core/graphics/h;

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_3
    new-instance v0, Landroidx/core/graphics/j;

    .line 58
    .line 59
    invoke-direct {v0}, Landroidx/core/graphics/j;-><init>()V

    .line 60
    .line 61
    .line 62
    sput-object v0, Landroidx/core/graphics/i;->a:Landroidx/core/graphics/h;

    .line 63
    .line 64
    :goto_0
    new-instance v0, Landroidx/collection/g;

    .line 65
    .line 66
    const/16 v1, 0x10

    .line 67
    .line 68
    invoke-direct {v0, v1}, Landroidx/collection/g;-><init>(I)V

    .line 69
    .line 70
    .line 71
    sput-object v0, Landroidx/core/graphics/i;->b:Landroidx/collection/g;

    .line 72
    .line 73
    return-void
.end method

.method public static a(Landroid/content/Context;[Landroidx/core/provider/o;I)Landroid/graphics/Typeface;
    .locals 1

    .line 1
    sget-object v0, Landroidx/core/graphics/i;->a:Landroidx/core/graphics/h;

    .line 2
    .line 3
    invoke-virtual {v0, p0, p1, p2}, Landroidx/core/graphics/h;->b(Landroid/content/Context;[Landroidx/core/provider/o;I)Landroid/graphics/Typeface;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static b(Landroid/content/Context;Landroidx/core/content/res/f;Landroid/content/res/Resources;ILjava/lang/String;IILandroidx/core/content/res/r;)Landroid/graphics/Typeface;
    .locals 12

    .line 1
    move-object v0, p1

    .line 2
    move-object/from16 v1, p7

    .line 3
    .line 4
    instance-of v2, v0, Landroidx/core/content/res/i;

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    if-eqz v2, :cond_5

    .line 8
    .line 9
    check-cast v0, Landroidx/core/content/res/i;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroidx/core/content/res/i;->c()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    const/4 v4, 0x0

    .line 16
    if-eqz v2, :cond_1

    .line 17
    .line 18
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 19
    .line 20
    .line 21
    move-result v5

    .line 22
    if-eqz v5, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-static {v2, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    sget-object v5, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 30
    .line 31
    invoke-static {v5, v4}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    .line 32
    .line 33
    .line 34
    move-result-object v5

    .line 35
    if-eqz v2, :cond_1

    .line 36
    .line 37
    invoke-virtual {v2, v5}, Landroid/graphics/Typeface;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v5

    .line 41
    if-nez v5, :cond_1

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_1
    :goto_0
    move-object v2, v3

    .line 45
    :goto_1
    if-eqz v2, :cond_3

    .line 46
    .line 47
    if-eqz v1, :cond_2

    .line 48
    .line 49
    invoke-virtual {v1, v2, v3}, Landroidx/core/content/res/r;->callbackSuccessAsync(Landroid/graphics/Typeface;Landroid/os/Handler;)V

    .line 50
    .line 51
    .line 52
    :cond_2
    return-object v2

    .line 53
    :cond_3
    invoke-virtual {v0}, Landroidx/core/content/res/i;->a()I

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    if-nez v2, :cond_4

    .line 58
    .line 59
    const/4 v4, 0x1

    .line 60
    const/4 v8, 0x1

    .line 61
    goto :goto_2

    .line 62
    :cond_4
    const/4 v8, 0x0

    .line 63
    :goto_2
    invoke-virtual {v0}, Landroidx/core/content/res/i;->d()I

    .line 64
    .line 65
    .line 66
    move-result v9

    .line 67
    invoke-static {v3}, Landroidx/core/content/res/r;->getHandler(Landroid/os/Handler;)Landroid/os/Handler;

    .line 68
    .line 69
    .line 70
    move-result-object v10

    .line 71
    new-instance v11, Landroidx/core/graphics/h;

    .line 72
    .line 73
    invoke-direct {v11, v1}, Landroidx/core/graphics/h;-><init>(Landroidx/core/content/res/r;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0}, Landroidx/core/content/res/i;->b()Landroidx/core/provider/g;

    .line 77
    .line 78
    .line 79
    move-result-object v6

    .line 80
    move-object v5, p0

    .line 81
    move/from16 v7, p6

    .line 82
    .line 83
    invoke-static/range {v5 .. v11}, Landroidx/core/provider/p;->b(Landroid/content/Context;Landroidx/core/provider/g;IZILandroid/os/Handler;Landroidx/core/graphics/h;)Landroid/graphics/Typeface;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    move-object v5, p2

    .line 88
    move/from16 v6, p6

    .line 89
    .line 90
    goto :goto_3

    .line 91
    :cond_5
    sget-object v2, Landroidx/core/graphics/i;->a:Landroidx/core/graphics/h;

    .line 92
    .line 93
    check-cast v0, Landroidx/core/content/res/g;

    .line 94
    .line 95
    move-object v4, p0

    .line 96
    move-object v5, p2

    .line 97
    move/from16 v6, p6

    .line 98
    .line 99
    invoke-virtual {v2, p0, v0, p2, v6}, Landroidx/core/graphics/h;->a(Landroid/content/Context;Landroidx/core/content/res/g;Landroid/content/res/Resources;I)Landroid/graphics/Typeface;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    if-eqz v1, :cond_7

    .line 104
    .line 105
    if-eqz v0, :cond_6

    .line 106
    .line 107
    invoke-virtual {v1, v0, v3}, Landroidx/core/content/res/r;->callbackSuccessAsync(Landroid/graphics/Typeface;Landroid/os/Handler;)V

    .line 108
    .line 109
    .line 110
    goto :goto_3

    .line 111
    :cond_6
    const/4 v2, -0x3

    .line 112
    invoke-virtual {v1, v2, v3}, Landroidx/core/content/res/r;->callbackFailAsync(ILandroid/os/Handler;)V

    .line 113
    .line 114
    .line 115
    :cond_7
    :goto_3
    if-eqz v0, :cond_8

    .line 116
    .line 117
    sget-object v1, Landroidx/core/graphics/i;->b:Landroidx/collection/g;

    .line 118
    .line 119
    invoke-static/range {p2 .. p6}, Landroidx/core/graphics/i;->d(Landroid/content/res/Resources;ILjava/lang/String;II)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    invoke-virtual {v1, v2, v0}, Landroidx/collection/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    :cond_8
    return-object v0
.end method

.method public static c(Landroid/content/Context;Landroid/content/res/Resources;ILjava/lang/String;II)Landroid/graphics/Typeface;
    .locals 6

    .line 1
    sget-object v0, Landroidx/core/graphics/i;->a:Landroidx/core/graphics/h;

    .line 2
    .line 3
    move-object v1, p0

    .line 4
    move-object v2, p1

    .line 5
    move v3, p2

    .line 6
    move-object v4, p3

    .line 7
    move v5, p5

    .line 8
    invoke-virtual/range {v0 .. v5}, Landroidx/core/graphics/h;->d(Landroid/content/Context;Landroid/content/res/Resources;ILjava/lang/String;I)Landroid/graphics/Typeface;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    if-eqz p0, :cond_0

    .line 13
    .line 14
    invoke-static {p1, p2, p3, p4, p5}, Landroidx/core/graphics/i;->d(Landroid/content/res/Resources;ILjava/lang/String;II)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    sget-object p2, Landroidx/core/graphics/i;->b:Landroidx/collection/g;

    .line 19
    .line 20
    invoke-virtual {p2, p1, p0}, Landroidx/collection/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    :cond_0
    return-object p0
.end method

.method private static d(Landroid/content/res/Resources;ILjava/lang/String;II)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/16 p0, 0x2d

    .line 11
    .line 12
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    return-object p0
.end method

.method public static e(Landroid/content/res/Resources;ILjava/lang/String;II)Landroid/graphics/Typeface;
    .locals 1

    .line 1
    sget-object v0, Landroidx/core/graphics/i;->b:Landroidx/collection/g;

    .line 2
    .line 3
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/core/graphics/i;->d(Landroid/content/res/Resources;ILjava/lang/String;II)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {v0, p0}, Landroidx/collection/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Landroid/graphics/Typeface;

    .line 12
    .line 13
    return-object p0
.end method
