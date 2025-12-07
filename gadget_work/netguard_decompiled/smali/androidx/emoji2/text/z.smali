.class public Landroidx/emoji2/text/z;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static b(Ljava/nio/MappedByteBuffer;)Lm/b;
    .locals 12

    .line 1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    new-instance v0, Landroidx/emoji2/text/t;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Landroidx/emoji2/text/t;-><init>(Ljava/nio/ByteBuffer;)V

    .line 8
    .line 9
    .line 10
    const/4 v1, 0x4

    .line 11
    invoke-virtual {v0, v1}, Landroidx/emoji2/text/t;->g(I)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Landroidx/emoji2/text/t;->f()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    const/16 v3, 0x64

    .line 19
    .line 20
    const-string v4, "Cannot read metadata."

    .line 21
    .line 22
    if-gt v2, v3, :cond_5

    .line 23
    .line 24
    const/4 v3, 0x6

    .line 25
    invoke-virtual {v0, v3}, Landroidx/emoji2/text/t;->g(I)V

    .line 26
    .line 27
    .line 28
    const/4 v3, 0x0

    .line 29
    const/4 v5, 0x0

    .line 30
    :goto_0
    const-wide/16 v6, -0x1

    .line 31
    .line 32
    if-ge v5, v2, :cond_1

    .line 33
    .line 34
    invoke-virtual {v0}, Landroidx/emoji2/text/t;->d()I

    .line 35
    .line 36
    .line 37
    move-result v8

    .line 38
    invoke-virtual {v0, v1}, Landroidx/emoji2/text/t;->g(I)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Landroidx/emoji2/text/t;->e()J

    .line 42
    .line 43
    .line 44
    move-result-wide v9

    .line 45
    invoke-virtual {v0, v1}, Landroidx/emoji2/text/t;->g(I)V

    .line 46
    .line 47
    .line 48
    const v11, 0x6d657461

    .line 49
    .line 50
    .line 51
    if-ne v11, v8, :cond_0

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_0
    add-int/lit8 v5, v5, 0x1

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    move-wide v9, v6

    .line 58
    :goto_1
    cmp-long v1, v9, v6

    .line 59
    .line 60
    if-eqz v1, :cond_4

    .line 61
    .line 62
    invoke-virtual {v0}, Landroidx/emoji2/text/t;->c()J

    .line 63
    .line 64
    .line 65
    move-result-wide v1

    .line 66
    sub-long v1, v9, v1

    .line 67
    .line 68
    long-to-int v2, v1

    .line 69
    invoke-virtual {v0, v2}, Landroidx/emoji2/text/t;->g(I)V

    .line 70
    .line 71
    .line 72
    const/16 v1, 0xc

    .line 73
    .line 74
    invoke-virtual {v0, v1}, Landroidx/emoji2/text/t;->g(I)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0}, Landroidx/emoji2/text/t;->e()J

    .line 78
    .line 79
    .line 80
    move-result-wide v1

    .line 81
    :goto_2
    int-to-long v5, v3

    .line 82
    cmp-long v7, v5, v1

    .line 83
    .line 84
    if-gez v7, :cond_4

    .line 85
    .line 86
    invoke-virtual {v0}, Landroidx/emoji2/text/t;->d()I

    .line 87
    .line 88
    .line 89
    move-result v5

    .line 90
    invoke-virtual {v0}, Landroidx/emoji2/text/t;->e()J

    .line 91
    .line 92
    .line 93
    move-result-wide v6

    .line 94
    invoke-virtual {v0}, Landroidx/emoji2/text/t;->e()J

    .line 95
    .line 96
    .line 97
    const v8, 0x456d6a69

    .line 98
    .line 99
    .line 100
    if-eq v8, v5, :cond_3

    .line 101
    .line 102
    const v8, 0x656d6a69

    .line 103
    .line 104
    .line 105
    if-ne v8, v5, :cond_2

    .line 106
    .line 107
    goto :goto_3

    .line 108
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 109
    .line 110
    goto :goto_2

    .line 111
    :cond_3
    :goto_3
    new-instance v0, Landroidx/emoji2/text/D;

    .line 112
    .line 113
    add-long/2addr v6, v9

    .line 114
    invoke-direct {v0, v6, v7}, Landroidx/emoji2/text/D;-><init>(J)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0}, Landroidx/emoji2/text/D;->a()J

    .line 118
    .line 119
    .line 120
    move-result-wide v0

    .line 121
    long-to-int v1, v0

    .line 122
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 123
    .line 124
    .line 125
    invoke-static {p0}, Lm/b;->c(Ljava/nio/ByteBuffer;)Lm/b;

    .line 126
    .line 127
    .line 128
    move-result-object p0

    .line 129
    return-object p0

    .line 130
    :cond_4
    new-instance p0, Ljava/io/IOException;

    .line 131
    .line 132
    invoke-direct {p0, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    throw p0

    .line 136
    :cond_5
    new-instance p0, Ljava/io/IOException;

    .line 137
    .line 138
    invoke-direct {p0, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    throw p0
.end method


# virtual methods
.method a(Landroid/text/Spannable;)Z
    .locals 0

    .line 1
    instance-of p1, p1, Landroidx/core/text/f;

    .line 2
    .line 3
    return p1
.end method
