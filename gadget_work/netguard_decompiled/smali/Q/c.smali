.class public final LQ/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LE/j;


# static fields
.field private static final f:LQ/a;

.field private static final g:LQ/b;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/util/List;

.field private final c:LQ/b;

.field private final d:LQ/a;

.field private final e:LQ/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, LQ/a;

    .line 2
    .line 3
    invoke-direct {v0}, LQ/a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, LQ/c;->f:LQ/a;

    .line 7
    .line 8
    new-instance v0, LQ/b;

    .line 9
    .line 10
    invoke-direct {v0}, LQ/b;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, LQ/c;->g:LQ/b;

    .line 14
    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;LG/g;LG/b;)V
    .locals 1

    .line 1
    sget-object v0, LQ/c;->f:LQ/a;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, LQ/c;->a:Landroid/content/Context;

    .line 11
    .line 12
    iput-object p2, p0, LQ/c;->b:Ljava/util/List;

    .line 13
    .line 14
    iput-object v0, p0, LQ/c;->d:LQ/a;

    .line 15
    .line 16
    new-instance p1, LQ/d;

    .line 17
    .line 18
    invoke-direct {p1, p3, p4}, LQ/d;-><init>(LG/g;LG/b;)V

    .line 19
    .line 20
    .line 21
    iput-object p1, p0, LQ/c;->e:LQ/d;

    .line 22
    .line 23
    sget-object p1, LQ/c;->g:LQ/b;

    .line 24
    .line 25
    iput-object p1, p0, LQ/c;->c:LQ/b;

    .line 26
    .line 27
    return-void
.end method

.method private c(Ljava/nio/ByteBuffer;IILD/d;LE/i;)LQ/g;
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string v2, "Decoded GIF from stream in "

    .line 4
    .line 5
    const-string v3, "BufferGifDecoder"

    .line 6
    .line 7
    sget v0, LX/m;->b:I

    .line 8
    .line 9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    .line 10
    .line 11
    .line 12
    move-result-wide v4

    .line 13
    const/4 v6, 0x2

    .line 14
    :try_start_0
    invoke-virtual/range {p4 .. p4}, LD/d;->c()LD/c;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, LD/c;->b()I

    .line 19
    .line 20
    .line 21
    move-result v7

    .line 22
    const/4 v8, 0x0

    .line 23
    if-lez v7, :cond_5

    .line 24
    .line 25
    invoke-virtual {v0}, LD/c;->c()I

    .line 26
    .line 27
    .line 28
    move-result v7

    .line 29
    if-eqz v7, :cond_0

    .line 30
    .line 31
    goto/16 :goto_1

    .line 32
    .line 33
    :cond_0
    sget-object v7, LQ/n;->a:LE/h;

    .line 34
    .line 35
    move-object/from16 v9, p5

    .line 36
    .line 37
    invoke-virtual {v9, v7}, LE/i;->c(LE/h;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v7

    .line 41
    sget-object v9, Lcom/bumptech/glide/load/DecodeFormat;->PREFER_RGB_565:Lcom/bumptech/glide/load/DecodeFormat;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 42
    .line 43
    if-ne v7, v9, :cond_1

    .line 44
    .line 45
    :try_start_1
    sget-object v7, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :catchall_0
    move-exception v0

    .line 49
    goto/16 :goto_2

    .line 50
    .line 51
    :cond_1
    :try_start_2
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 52
    .line 53
    :goto_0
    move/from16 v12, p2

    .line 54
    .line 55
    move/from16 v13, p3

    .line 56
    .line 57
    invoke-static {v0, v12, v13}, LQ/c;->d(LD/c;II)I

    .line 58
    .line 59
    .line 60
    move-result v9

    .line 61
    iget-object v10, v1, LQ/c;->d:LQ/a;

    .line 62
    .line 63
    iget-object v11, v1, LQ/c;->e:LQ/d;

    .line 64
    .line 65
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 66
    .line 67
    .line 68
    new-instance v14, LD/e;

    .line 69
    .line 70
    move-object/from16 v10, p1

    .line 71
    .line 72
    invoke-direct {v14, v11, v0, v10, v9}, LD/e;-><init>(LQ/d;LD/c;Ljava/nio/ByteBuffer;I)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v14, v7}, LD/e;->i(Landroid/graphics/Bitmap$Config;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v14}, LD/e;->d()V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v14}, LD/e;->c()Landroid/graphics/Bitmap;

    .line 82
    .line 83
    .line 84
    move-result-object v15
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 85
    if-nez v15, :cond_3

    .line 86
    .line 87
    invoke-static {v3, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    if-eqz v0, :cond_2

    .line 92
    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    invoke-static {v4, v5}, LX/m;->a(J)D

    .line 99
    .line 100
    .line 101
    move-result-wide v4

    .line 102
    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    .line 111
    .line 112
    :cond_2
    return-object v8

    .line 113
    :cond_3
    :try_start_3
    invoke-static {}, LL/g;->c()LL/g;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    new-instance v7, LQ/f;

    .line 118
    .line 119
    iget-object v8, v1, LQ/c;->a:Landroid/content/Context;

    .line 120
    .line 121
    new-instance v11, LQ/e;

    .line 122
    .line 123
    new-instance v10, LQ/l;

    .line 124
    .line 125
    invoke-static {v8}, Lcom/bumptech/glide/d;->b(Landroid/content/Context;)Lcom/bumptech/glide/d;

    .line 126
    .line 127
    .line 128
    move-result-object v8

    .line 129
    move-object v9, v10

    .line 130
    move-object v6, v10

    .line 131
    move-object v10, v8

    .line 132
    move-object v8, v11

    .line 133
    move-object v11, v14

    .line 134
    move/from16 v12, p2

    .line 135
    .line 136
    move/from16 v13, p3

    .line 137
    .line 138
    move-object v14, v0

    .line 139
    invoke-direct/range {v9 .. v15}, LQ/l;-><init>(Lcom/bumptech/glide/d;LD/e;IILL/g;Landroid/graphics/Bitmap;)V

    .line 140
    .line 141
    .line 142
    invoke-direct {v8, v6}, LQ/e;-><init>(LQ/l;)V

    .line 143
    .line 144
    .line 145
    invoke-direct {v7, v8}, LQ/f;-><init>(LQ/e;)V

    .line 146
    .line 147
    .line 148
    new-instance v0, LQ/g;

    .line 149
    .line 150
    invoke-direct {v0, v7}, LQ/g;-><init>(LQ/f;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 151
    .line 152
    .line 153
    const/4 v6, 0x2

    .line 154
    invoke-static {v3, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 155
    .line 156
    .line 157
    move-result v6

    .line 158
    if-eqz v6, :cond_4

    .line 159
    .line 160
    new-instance v6, Ljava/lang/StringBuilder;

    .line 161
    .line 162
    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    invoke-static {v4, v5}, LX/m;->a(J)D

    .line 166
    .line 167
    .line 168
    move-result-wide v4

    .line 169
    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v2

    .line 176
    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    .line 178
    .line 179
    :cond_4
    return-object v0

    .line 180
    :cond_5
    :goto_1
    invoke-static {v3, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 181
    .line 182
    .line 183
    move-result v0

    .line 184
    if-eqz v0, :cond_6

    .line 185
    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    .line 187
    .line 188
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    invoke-static {v4, v5}, LX/m;->a(J)D

    .line 192
    .line 193
    .line 194
    move-result-wide v4

    .line 195
    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v0

    .line 202
    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    .line 204
    .line 205
    :cond_6
    return-object v8

    .line 206
    :catchall_1
    move-exception v0

    .line 207
    const/4 v6, 0x2

    .line 208
    :goto_2
    invoke-static {v3, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 209
    .line 210
    .line 211
    move-result v6

    .line 212
    if-eqz v6, :cond_7

    .line 213
    .line 214
    new-instance v6, Ljava/lang/StringBuilder;

    .line 215
    .line 216
    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    invoke-static {v4, v5}, LX/m;->a(J)D

    .line 220
    .line 221
    .line 222
    move-result-wide v4

    .line 223
    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v2

    .line 230
    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    .line 232
    .line 233
    :cond_7
    throw v0
.end method

.method private static d(LD/c;II)I
    .locals 4

    .line 1
    invoke-virtual {p0}, LD/c;->a()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    div-int/2addr v0, p2

    .line 6
    invoke-virtual {p0}, LD/c;->d()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    div-int/2addr v1, p1

    .line 11
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->highestOneBit(I)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    :goto_0
    const/4 v1, 0x1

    .line 24
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    const-string v2, "BufferGifDecoder"

    .line 29
    .line 30
    const/4 v3, 0x2

    .line 31
    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    if-eqz v3, :cond_1

    .line 36
    .line 37
    if-le v0, v1, :cond_1

    .line 38
    .line 39
    new-instance v1, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    const-string v3, "Downsampling GIF, sampleSize: "

    .line 42
    .line 43
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const-string v3, ", target dimens: ["

    .line 50
    .line 51
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string p1, "x"

    .line 58
    .line 59
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    const-string p2, "], actual dimens: ["

    .line 66
    .line 67
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0}, LD/c;->d()I

    .line 71
    .line 72
    .line 73
    move-result p2

    .line 74
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0}, LD/c;->a()I

    .line 81
    .line 82
    .line 83
    move-result p0

    .line 84
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    const-string p0, "]"

    .line 88
    .line 89
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    invoke-static {v2, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    .line 98
    .line 99
    :cond_1
    return v0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;IILE/i;)Lcom/bumptech/glide/load/engine/V;
    .locals 7

    .line 1
    move-object v1, p1

    .line 2
    check-cast v1, Ljava/nio/ByteBuffer;

    .line 3
    .line 4
    iget-object p1, p0, LQ/c;->c:LQ/b;

    .line 5
    .line 6
    invoke-virtual {p1, v1}, LQ/b;->a(Ljava/nio/ByteBuffer;)LD/d;

    .line 7
    .line 8
    .line 9
    move-result-object v6

    .line 10
    move-object v0, p0

    .line 11
    move v2, p2

    .line 12
    move v3, p3

    .line 13
    move-object v4, v6

    .line 14
    move-object v5, p4

    .line 15
    :try_start_0
    invoke-direct/range {v0 .. v5}, LQ/c;->c(Ljava/nio/ByteBuffer;IILD/d;LE/i;)LQ/g;

    .line 16
    .line 17
    .line 18
    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    invoke-virtual {p1, v6}, LQ/b;->b(LD/d;)V

    .line 20
    .line 21
    .line 22
    return-object p2

    .line 23
    :catchall_0
    move-exception p2

    .line 24
    invoke-virtual {p1, v6}, LQ/b;->b(LD/d;)V

    .line 25
    .line 26
    .line 27
    throw p2
.end method

.method public final b(Ljava/lang/Object;LE/i;)Z
    .locals 1

    .line 1
    check-cast p1, Ljava/nio/ByteBuffer;

    .line 2
    .line 3
    sget-object v0, LQ/n;->b:LE/h;

    .line 4
    .line 5
    invoke-virtual {p2, v0}, LE/i;->c(LE/h;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    check-cast p2, Ljava/lang/Boolean;

    .line 10
    .line 11
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 12
    .line 13
    .line 14
    move-result p2

    .line 15
    if-nez p2, :cond_0

    .line 16
    .line 17
    iget-object p2, p0, LQ/c;->b:Ljava/util/List;

    .line 18
    .line 19
    invoke-static {p2, p1}, LE/d;->l(Ljava/util/List;Ljava/nio/ByteBuffer;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    sget-object p2, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->GIF:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    .line 24
    .line 25
    if-ne p1, p2, :cond_0

    .line 26
    .line 27
    const/4 p1, 0x1

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 p1, 0x0

    .line 30
    :goto_0
    return p1
.end method
