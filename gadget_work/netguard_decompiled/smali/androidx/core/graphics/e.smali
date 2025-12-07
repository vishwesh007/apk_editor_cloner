.class public final Landroidx/core/graphics/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/ThreadLocal;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/ThreadLocal;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/core/graphics/e;->a:Ljava/lang/ThreadLocal;

    .line 7
    .line 8
    return-void
.end method

.method public static a(Landroid/text/TextPaint;Ljava/lang/String;)Z
    .locals 9

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x17

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    invoke-static {p0, p1}, Landroidx/core/graphics/d;->a(Landroid/graphics/Paint;Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0

    .line 12
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/4 v1, 0x0

    .line 17
    const/4 v2, 0x1

    .line 18
    if-ne v0, v2, :cond_1

    .line 19
    .line 20
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-eqz v3, :cond_1

    .line 29
    .line 30
    return v2

    .line 31
    :cond_1
    const-string v3, "\udb3f\udffd"

    .line 32
    .line 33
    invoke-virtual {p0, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    const-string v5, "m"

    .line 38
    .line 39
    invoke-virtual {p0, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 40
    .line 41
    .line 42
    move-result v5

    .line 43
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 44
    .line 45
    .line 46
    move-result v6

    .line 47
    const/4 v7, 0x0

    .line 48
    cmpl-float v8, v6, v7

    .line 49
    .line 50
    if-nez v8, :cond_2

    .line 51
    .line 52
    return v1

    .line 53
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 54
    .line 55
    .line 56
    move-result v8

    .line 57
    invoke-virtual {p1, v1, v8}, Ljava/lang/String;->codePointCount(II)I

    .line 58
    .line 59
    .line 60
    move-result v8

    .line 61
    if-le v8, v2, :cond_5

    .line 62
    .line 63
    const/high16 v8, 0x40000000    # 2.0f

    .line 64
    .line 65
    mul-float v5, v5, v8

    .line 66
    .line 67
    cmpl-float v5, v6, v5

    .line 68
    .line 69
    if-lez v5, :cond_3

    .line 70
    .line 71
    return v1

    .line 72
    :cond_3
    const/4 v5, 0x0

    .line 73
    :goto_0
    if-ge v5, v0, :cond_4

    .line 74
    .line 75
    invoke-virtual {p1, v5}, Ljava/lang/String;->codePointAt(I)I

    .line 76
    .line 77
    .line 78
    move-result v8

    .line 79
    invoke-static {v8}, Ljava/lang/Character;->charCount(I)I

    .line 80
    .line 81
    .line 82
    move-result v8

    .line 83
    add-int/2addr v8, v5

    .line 84
    invoke-virtual {p0, p1, v5, v8}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    .line 85
    .line 86
    .line 87
    move-result v5

    .line 88
    add-float/2addr v7, v5

    .line 89
    move v5, v8

    .line 90
    goto :goto_0

    .line 91
    :cond_4
    cmpl-float v5, v6, v7

    .line 92
    .line 93
    if-ltz v5, :cond_5

    .line 94
    .line 95
    return v1

    .line 96
    :cond_5
    cmpl-float v4, v6, v4

    .line 97
    .line 98
    if-eqz v4, :cond_6

    .line 99
    .line 100
    return v2

    .line 101
    :cond_6
    sget-object v4, Landroidx/core/graphics/e;->a:Ljava/lang/ThreadLocal;

    .line 102
    .line 103
    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v5

    .line 107
    check-cast v5, Landroidx/core/util/d;

    .line 108
    .line 109
    if-nez v5, :cond_7

    .line 110
    .line 111
    new-instance v5, Landroidx/core/util/d;

    .line 112
    .line 113
    new-instance v6, Landroid/graphics/Rect;

    .line 114
    .line 115
    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 116
    .line 117
    .line 118
    new-instance v7, Landroid/graphics/Rect;

    .line 119
    .line 120
    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 121
    .line 122
    .line 123
    invoke-direct {v5, v6, v7}, Landroidx/core/util/d;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v4, v5}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 127
    .line 128
    .line 129
    goto :goto_1

    .line 130
    :cond_7
    iget-object v4, v5, Landroidx/core/util/d;->a:Ljava/lang/Object;

    .line 131
    .line 132
    check-cast v4, Landroid/graphics/Rect;

    .line 133
    .line 134
    invoke-virtual {v4}, Landroid/graphics/Rect;->setEmpty()V

    .line 135
    .line 136
    .line 137
    iget-object v4, v5, Landroidx/core/util/d;->b:Ljava/lang/Object;

    .line 138
    .line 139
    check-cast v4, Landroid/graphics/Rect;

    .line 140
    .line 141
    invoke-virtual {v4}, Landroid/graphics/Rect;->setEmpty()V

    .line 142
    .line 143
    .line 144
    :goto_1
    iget-object v4, v5, Landroidx/core/util/d;->a:Ljava/lang/Object;

    .line 145
    .line 146
    check-cast v4, Landroid/graphics/Rect;

    .line 147
    .line 148
    const/4 v6, 0x2

    .line 149
    invoke-virtual {p0, v3, v1, v6, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 150
    .line 151
    .line 152
    iget-object v3, v5, Landroidx/core/util/d;->b:Ljava/lang/Object;

    .line 153
    .line 154
    move-object v5, v3

    .line 155
    check-cast v5, Landroid/graphics/Rect;

    .line 156
    .line 157
    invoke-virtual {p0, p1, v1, v0, v5}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v4, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    move-result p0

    .line 164
    xor-int/2addr p0, v2

    .line 165
    return p0
.end method
