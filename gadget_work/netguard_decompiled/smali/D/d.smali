.class public final LD/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:[B

.field private b:Ljava/nio/ByteBuffer;

.field private c:LD/c;

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x100

    .line 5
    .line 6
    new-array v0, v0, [B

    .line 7
    .line 8
    iput-object v0, p0, LD/d;->a:[B

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    iput v0, p0, LD/d;->d:I

    .line 12
    .line 13
    return-void
.end method

.method private b()Z
    .locals 1

    .line 1
    iget-object v0, p0, LD/d;->c:LD/c;

    .line 2
    .line 3
    iget v0, v0, LD/c;->b:I

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method

.method private d()I
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, LD/d;->b:Ljava/nio/ByteBuffer;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    .line 4
    .line 5
    .line 6
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    and-int/lit16 v0, v0, 0xff

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :catch_0
    iget-object v0, p0, LD/d;->c:LD/c;

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    iput v1, v0, LD/c;->b:I

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    :goto_0
    return v0
.end method

.method private e()V
    .locals 6

    .line 1
    invoke-direct {p0}, LD/d;->d()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iput v0, p0, LD/d;->d:I

    .line 6
    .line 7
    if-lez v0, :cond_1

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    const/4 v1, 0x0

    .line 11
    :goto_0
    :try_start_0
    iget v1, p0, LD/d;->d:I

    .line 12
    .line 13
    if-ge v0, v1, :cond_1

    .line 14
    .line 15
    sub-int/2addr v1, v0

    .line 16
    iget-object v2, p0, LD/d;->b:Ljava/nio/ByteBuffer;

    .line 17
    .line 18
    iget-object v3, p0, LD/d;->a:[B

    .line 19
    .line 20
    invoke-virtual {v2, v3, v0, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    .line 22
    .line 23
    add-int/2addr v0, v1

    .line 24
    goto :goto_0

    .line 25
    :catch_0
    move-exception v2

    .line 26
    const/4 v3, 0x3

    .line 27
    const-string v4, "GifHeaderParser"

    .line 28
    .line 29
    invoke-static {v4, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-eqz v3, :cond_0

    .line 34
    .line 35
    new-instance v3, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    const-string v5, "Error Reading Block n: "

    .line 38
    .line 39
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string v0, " count: "

    .line 46
    .line 47
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v0, " blockSize: "

    .line 54
    .line 55
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget v0, p0, LD/d;->d:I

    .line 59
    .line 60
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-static {v4, v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 68
    .line 69
    .line 70
    :cond_0
    iget-object v0, p0, LD/d;->c:LD/c;

    .line 71
    .line 72
    const/4 v1, 0x1

    .line 73
    iput v1, v0, LD/c;->b:I

    .line 74
    .line 75
    :cond_1
    return-void
.end method

.method private f(I)[I
    .locals 9

    .line 1
    mul-int/lit8 v0, p1, 0x3

    .line 2
    .line 3
    new-array v0, v0, [B

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    :try_start_0
    iget-object v2, p0, LD/d;->b:Ljava/nio/ByteBuffer;

    .line 7
    .line 8
    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 9
    .line 10
    .line 11
    const/16 v2, 0x100

    .line 12
    .line 13
    new-array v1, v2, [I

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    const/4 v3, 0x0

    .line 17
    :goto_0
    if-ge v2, p1, :cond_1

    .line 18
    .line 19
    add-int/lit8 v4, v3, 0x1

    .line 20
    .line 21
    aget-byte v3, v0, v3

    .line 22
    .line 23
    and-int/lit16 v3, v3, 0xff

    .line 24
    .line 25
    add-int/lit8 v5, v4, 0x1

    .line 26
    .line 27
    aget-byte v4, v0, v4

    .line 28
    .line 29
    and-int/lit16 v4, v4, 0xff

    .line 30
    .line 31
    add-int/lit8 v6, v5, 0x1

    .line 32
    .line 33
    aget-byte v5, v0, v5

    .line 34
    .line 35
    and-int/lit16 v5, v5, 0xff

    .line 36
    .line 37
    add-int/lit8 v7, v2, 0x1

    .line 38
    .line 39
    shl-int/lit8 v3, v3, 0x10

    .line 40
    .line 41
    const/high16 v8, -0x1000000

    .line 42
    .line 43
    or-int/2addr v3, v8

    .line 44
    shl-int/lit8 v4, v4, 0x8

    .line 45
    .line 46
    or-int/2addr v3, v4

    .line 47
    or-int/2addr v3, v5

    .line 48
    aput v3, v1, v2
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .line 50
    move v3, v6

    .line 51
    move v2, v7

    .line 52
    goto :goto_0

    .line 53
    :catch_0
    move-exception p1

    .line 54
    const-string v0, "GifHeaderParser"

    .line 55
    .line 56
    const/4 v2, 0x3

    .line 57
    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    if-eqz v2, :cond_0

    .line 62
    .line 63
    const-string v2, "Format Error Reading Color Table"

    .line 64
    .line 65
    invoke-static {v0, v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 66
    .line 67
    .line 68
    :cond_0
    iget-object p1, p0, LD/d;->c:LD/c;

    .line 69
    .line 70
    const/4 v0, 0x1

    .line 71
    iput v0, p1, LD/c;->b:I

    .line 72
    .line 73
    :cond_1
    return-object v1
.end method

.method private g()I
    .locals 1

    .line 1
    iget-object v0, p0, LD/d;->b:Ljava/nio/ByteBuffer;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method private i()V
    .locals 3

    .line 1
    :cond_0
    invoke-direct {p0}, LD/d;->d()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, LD/d;->b:Ljava/nio/ByteBuffer;

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/nio/Buffer;->position()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    add-int/2addr v1, v0

    .line 12
    iget-object v2, p0, LD/d;->b:Ljava/nio/ByteBuffer;

    .line 13
    .line 14
    invoke-virtual {v2}, Ljava/nio/Buffer;->limit()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    iget-object v2, p0, LD/d;->b:Ljava/nio/ByteBuffer;

    .line 23
    .line 24
    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 25
    .line 26
    .line 27
    if-gtz v0, :cond_0

    .line 28
    .line 29
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, LD/d;->b:Ljava/nio/ByteBuffer;

    .line 3
    .line 4
    iput-object v0, p0, LD/d;->c:LD/c;

    .line 5
    .line 6
    return-void
.end method

.method public final c()LD/c;
    .locals 10

    .line 1
    iget-object v0, p0, LD/d;->b:Ljava/nio/ByteBuffer;

    .line 2
    .line 3
    if-eqz v0, :cond_1b

    .line 4
    .line 5
    invoke-direct {p0}, LD/d;->b()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, LD/d;->c:LD/c;

    .line 12
    .line 13
    return-object v0

    .line 14
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    const/4 v2, 0x0

    .line 21
    :goto_0
    const/4 v3, 0x6

    .line 22
    if-ge v2, v3, :cond_1

    .line 23
    .line 24
    invoke-direct {p0}, LD/d;->d()I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    int-to-char v3, v3

    .line 29
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    add-int/lit8 v2, v2, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    const-string v2, "GIF"

    .line 40
    .line 41
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    const/4 v2, 0x1

    .line 46
    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    .line 47
    .line 48
    if-nez v0, :cond_2

    .line 49
    .line 50
    iget-object v0, p0, LD/d;->c:LD/c;

    .line 51
    .line 52
    iput v2, v0, LD/c;->b:I

    .line 53
    .line 54
    goto :goto_2

    .line 55
    :cond_2
    iget-object v0, p0, LD/d;->c:LD/c;

    .line 56
    .line 57
    invoke-direct {p0}, LD/d;->g()I

    .line 58
    .line 59
    .line 60
    move-result v5

    .line 61
    iput v5, v0, LD/c;->f:I

    .line 62
    .line 63
    iget-object v0, p0, LD/d;->c:LD/c;

    .line 64
    .line 65
    invoke-direct {p0}, LD/d;->g()I

    .line 66
    .line 67
    .line 68
    move-result v5

    .line 69
    iput v5, v0, LD/c;->g:I

    .line 70
    .line 71
    invoke-direct {p0}, LD/d;->d()I

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    iget-object v5, p0, LD/d;->c:LD/c;

    .line 76
    .line 77
    and-int/lit16 v6, v0, 0x80

    .line 78
    .line 79
    if-eqz v6, :cond_3

    .line 80
    .line 81
    const/4 v6, 0x1

    .line 82
    goto :goto_1

    .line 83
    :cond_3
    const/4 v6, 0x0

    .line 84
    :goto_1
    iput-boolean v6, v5, LD/c;->h:Z

    .line 85
    .line 86
    and-int/lit8 v0, v0, 0x7

    .line 87
    .line 88
    add-int/2addr v0, v2

    .line 89
    int-to-double v6, v0

    .line 90
    invoke-static {v3, v4, v6, v7}, Ljava/lang/Math;->pow(DD)D

    .line 91
    .line 92
    .line 93
    move-result-wide v6

    .line 94
    double-to-int v0, v6

    .line 95
    iput v0, v5, LD/c;->i:I

    .line 96
    .line 97
    iget-object v0, p0, LD/d;->c:LD/c;

    .line 98
    .line 99
    invoke-direct {p0}, LD/d;->d()I

    .line 100
    .line 101
    .line 102
    move-result v5

    .line 103
    iput v5, v0, LD/c;->j:I

    .line 104
    .line 105
    iget-object v0, p0, LD/d;->c:LD/c;

    .line 106
    .line 107
    invoke-direct {p0}, LD/d;->d()I

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 111
    .line 112
    .line 113
    iget-object v0, p0, LD/d;->c:LD/c;

    .line 114
    .line 115
    iget-boolean v0, v0, LD/c;->h:Z

    .line 116
    .line 117
    if-eqz v0, :cond_4

    .line 118
    .line 119
    invoke-direct {p0}, LD/d;->b()Z

    .line 120
    .line 121
    .line 122
    move-result v0

    .line 123
    if-nez v0, :cond_4

    .line 124
    .line 125
    iget-object v0, p0, LD/d;->c:LD/c;

    .line 126
    .line 127
    iget v5, v0, LD/c;->i:I

    .line 128
    .line 129
    invoke-direct {p0, v5}, LD/d;->f(I)[I

    .line 130
    .line 131
    .line 132
    move-result-object v5

    .line 133
    iput-object v5, v0, LD/c;->a:[I

    .line 134
    .line 135
    iget-object v0, p0, LD/d;->c:LD/c;

    .line 136
    .line 137
    iget-object v5, v0, LD/c;->a:[I

    .line 138
    .line 139
    iget v6, v0, LD/c;->j:I

    .line 140
    .line 141
    aget v5, v5, v6

    .line 142
    .line 143
    iput v5, v0, LD/c;->k:I

    .line 144
    .line 145
    :cond_4
    :goto_2
    invoke-direct {p0}, LD/d;->b()Z

    .line 146
    .line 147
    .line 148
    move-result v0

    .line 149
    if-nez v0, :cond_1a

    .line 150
    .line 151
    const/4 v0, 0x0

    .line 152
    :cond_5
    :goto_3
    if-nez v0, :cond_19

    .line 153
    .line 154
    invoke-direct {p0}, LD/d;->b()Z

    .line 155
    .line 156
    .line 157
    move-result v5

    .line 158
    if-nez v5, :cond_19

    .line 159
    .line 160
    iget-object v5, p0, LD/d;->c:LD/c;

    .line 161
    .line 162
    iget v5, v5, LD/c;->c:I

    .line 163
    .line 164
    const v6, 0x7fffffff

    .line 165
    .line 166
    .line 167
    if-gt v5, v6, :cond_19

    .line 168
    .line 169
    invoke-direct {p0}, LD/d;->d()I

    .line 170
    .line 171
    .line 172
    move-result v5

    .line 173
    const/16 v6, 0x21

    .line 174
    .line 175
    if-eq v5, v6, :cond_d

    .line 176
    .line 177
    const/16 v6, 0x2c

    .line 178
    .line 179
    if-eq v5, v6, :cond_7

    .line 180
    .line 181
    const/16 v6, 0x3b

    .line 182
    .line 183
    if-eq v5, v6, :cond_6

    .line 184
    .line 185
    iget-object v5, p0, LD/d;->c:LD/c;

    .line 186
    .line 187
    iput v2, v5, LD/c;->b:I

    .line 188
    .line 189
    goto :goto_3

    .line 190
    :cond_6
    const/4 v0, 0x1

    .line 191
    goto :goto_3

    .line 192
    :cond_7
    iget-object v5, p0, LD/d;->c:LD/c;

    .line 193
    .line 194
    iget-object v6, v5, LD/c;->d:LD/b;

    .line 195
    .line 196
    if-nez v6, :cond_8

    .line 197
    .line 198
    new-instance v6, LD/b;

    .line 199
    .line 200
    invoke-direct {v6}, LD/b;-><init>()V

    .line 201
    .line 202
    .line 203
    iput-object v6, v5, LD/c;->d:LD/b;

    .line 204
    .line 205
    :cond_8
    iget-object v5, p0, LD/d;->c:LD/c;

    .line 206
    .line 207
    iget-object v5, v5, LD/c;->d:LD/b;

    .line 208
    .line 209
    invoke-direct {p0}, LD/d;->g()I

    .line 210
    .line 211
    .line 212
    move-result v6

    .line 213
    iput v6, v5, LD/b;->a:I

    .line 214
    .line 215
    iget-object v5, p0, LD/d;->c:LD/c;

    .line 216
    .line 217
    iget-object v5, v5, LD/c;->d:LD/b;

    .line 218
    .line 219
    invoke-direct {p0}, LD/d;->g()I

    .line 220
    .line 221
    .line 222
    move-result v6

    .line 223
    iput v6, v5, LD/b;->b:I

    .line 224
    .line 225
    iget-object v5, p0, LD/d;->c:LD/c;

    .line 226
    .line 227
    iget-object v5, v5, LD/c;->d:LD/b;

    .line 228
    .line 229
    invoke-direct {p0}, LD/d;->g()I

    .line 230
    .line 231
    .line 232
    move-result v6

    .line 233
    iput v6, v5, LD/b;->c:I

    .line 234
    .line 235
    iget-object v5, p0, LD/d;->c:LD/c;

    .line 236
    .line 237
    iget-object v5, v5, LD/c;->d:LD/b;

    .line 238
    .line 239
    invoke-direct {p0}, LD/d;->g()I

    .line 240
    .line 241
    .line 242
    move-result v6

    .line 243
    iput v6, v5, LD/b;->d:I

    .line 244
    .line 245
    invoke-direct {p0}, LD/d;->d()I

    .line 246
    .line 247
    .line 248
    move-result v5

    .line 249
    and-int/lit16 v6, v5, 0x80

    .line 250
    .line 251
    if-eqz v6, :cond_9

    .line 252
    .line 253
    const/4 v6, 0x1

    .line 254
    goto :goto_4

    .line 255
    :cond_9
    const/4 v6, 0x0

    .line 256
    :goto_4
    and-int/lit8 v7, v5, 0x7

    .line 257
    .line 258
    add-int/2addr v7, v2

    .line 259
    int-to-double v7, v7

    .line 260
    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->pow(DD)D

    .line 261
    .line 262
    .line 263
    move-result-wide v7

    .line 264
    double-to-int v7, v7

    .line 265
    iget-object v8, p0, LD/d;->c:LD/c;

    .line 266
    .line 267
    iget-object v8, v8, LD/c;->d:LD/b;

    .line 268
    .line 269
    and-int/lit8 v5, v5, 0x40

    .line 270
    .line 271
    if-eqz v5, :cond_a

    .line 272
    .line 273
    const/4 v5, 0x1

    .line 274
    goto :goto_5

    .line 275
    :cond_a
    const/4 v5, 0x0

    .line 276
    :goto_5
    iput-boolean v5, v8, LD/b;->e:Z

    .line 277
    .line 278
    if-eqz v6, :cond_b

    .line 279
    .line 280
    invoke-direct {p0, v7}, LD/d;->f(I)[I

    .line 281
    .line 282
    .line 283
    move-result-object v5

    .line 284
    iput-object v5, v8, LD/b;->k:[I

    .line 285
    .line 286
    goto :goto_6

    .line 287
    :cond_b
    const/4 v5, 0x0

    .line 288
    iput-object v5, v8, LD/b;->k:[I

    .line 289
    .line 290
    :goto_6
    iget-object v5, p0, LD/d;->c:LD/c;

    .line 291
    .line 292
    iget-object v5, v5, LD/c;->d:LD/b;

    .line 293
    .line 294
    iget-object v6, p0, LD/d;->b:Ljava/nio/ByteBuffer;

    .line 295
    .line 296
    invoke-virtual {v6}, Ljava/nio/Buffer;->position()I

    .line 297
    .line 298
    .line 299
    move-result v6

    .line 300
    iput v6, v5, LD/b;->j:I

    .line 301
    .line 302
    invoke-direct {p0}, LD/d;->d()I

    .line 303
    .line 304
    .line 305
    invoke-direct {p0}, LD/d;->i()V

    .line 306
    .line 307
    .line 308
    invoke-direct {p0}, LD/d;->b()Z

    .line 309
    .line 310
    .line 311
    move-result v5

    .line 312
    if-eqz v5, :cond_c

    .line 313
    .line 314
    goto/16 :goto_3

    .line 315
    .line 316
    :cond_c
    iget-object v5, p0, LD/d;->c:LD/c;

    .line 317
    .line 318
    iget v6, v5, LD/c;->c:I

    .line 319
    .line 320
    add-int/2addr v6, v2

    .line 321
    iput v6, v5, LD/c;->c:I

    .line 322
    .line 323
    iget-object v6, v5, LD/c;->e:Ljava/util/ArrayList;

    .line 324
    .line 325
    iget-object v5, v5, LD/c;->d:LD/b;

    .line 326
    .line 327
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 328
    .line 329
    .line 330
    goto/16 :goto_3

    .line 331
    .line 332
    :cond_d
    invoke-direct {p0}, LD/d;->d()I

    .line 333
    .line 334
    .line 335
    move-result v5

    .line 336
    if-eq v5, v2, :cond_18

    .line 337
    .line 338
    const/16 v6, 0xf9

    .line 339
    .line 340
    const/4 v7, 0x2

    .line 341
    if-eq v5, v6, :cond_14

    .line 342
    .line 343
    const/16 v6, 0xfe

    .line 344
    .line 345
    if-eq v5, v6, :cond_13

    .line 346
    .line 347
    const/16 v6, 0xff

    .line 348
    .line 349
    if-eq v5, v6, :cond_e

    .line 350
    .line 351
    invoke-direct {p0}, LD/d;->i()V

    .line 352
    .line 353
    .line 354
    goto/16 :goto_3

    .line 355
    .line 356
    :cond_e
    invoke-direct {p0}, LD/d;->e()V

    .line 357
    .line 358
    .line 359
    new-instance v5, Ljava/lang/StringBuilder;

    .line 360
    .line 361
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 362
    .line 363
    .line 364
    const/4 v6, 0x0

    .line 365
    :goto_7
    const/16 v8, 0xb

    .line 366
    .line 367
    iget-object v9, p0, LD/d;->a:[B

    .line 368
    .line 369
    if-ge v6, v8, :cond_f

    .line 370
    .line 371
    aget-byte v8, v9, v6

    .line 372
    .line 373
    int-to-char v8, v8

    .line 374
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 375
    .line 376
    .line 377
    add-int/lit8 v6, v6, 0x1

    .line 378
    .line 379
    goto :goto_7

    .line 380
    :cond_f
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 381
    .line 382
    .line 383
    move-result-object v5

    .line 384
    const-string v6, "NETSCAPE2.0"

    .line 385
    .line 386
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 387
    .line 388
    .line 389
    move-result v5

    .line 390
    if-eqz v5, :cond_12

    .line 391
    .line 392
    :cond_10
    invoke-direct {p0}, LD/d;->e()V

    .line 393
    .line 394
    .line 395
    aget-byte v5, v9, v1

    .line 396
    .line 397
    if-ne v5, v2, :cond_11

    .line 398
    .line 399
    aget-byte v5, v9, v2

    .line 400
    .line 401
    aget-byte v5, v9, v7

    .line 402
    .line 403
    iget-object v5, p0, LD/d;->c:LD/c;

    .line 404
    .line 405
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 406
    .line 407
    .line 408
    :cond_11
    iget v5, p0, LD/d;->d:I

    .line 409
    .line 410
    if-lez v5, :cond_5

    .line 411
    .line 412
    invoke-direct {p0}, LD/d;->b()Z

    .line 413
    .line 414
    .line 415
    move-result v5

    .line 416
    if-eqz v5, :cond_10

    .line 417
    .line 418
    goto/16 :goto_3

    .line 419
    .line 420
    :cond_12
    invoke-direct {p0}, LD/d;->i()V

    .line 421
    .line 422
    .line 423
    goto/16 :goto_3

    .line 424
    .line 425
    :cond_13
    invoke-direct {p0}, LD/d;->i()V

    .line 426
    .line 427
    .line 428
    goto/16 :goto_3

    .line 429
    .line 430
    :cond_14
    iget-object v5, p0, LD/d;->c:LD/c;

    .line 431
    .line 432
    new-instance v6, LD/b;

    .line 433
    .line 434
    invoke-direct {v6}, LD/b;-><init>()V

    .line 435
    .line 436
    .line 437
    iput-object v6, v5, LD/c;->d:LD/b;

    .line 438
    .line 439
    invoke-direct {p0}, LD/d;->d()I

    .line 440
    .line 441
    .line 442
    invoke-direct {p0}, LD/d;->d()I

    .line 443
    .line 444
    .line 445
    move-result v5

    .line 446
    iget-object v6, p0, LD/d;->c:LD/c;

    .line 447
    .line 448
    iget-object v6, v6, LD/c;->d:LD/b;

    .line 449
    .line 450
    and-int/lit8 v8, v5, 0x1c

    .line 451
    .line 452
    shr-int/2addr v8, v7

    .line 453
    iput v8, v6, LD/b;->g:I

    .line 454
    .line 455
    if-nez v8, :cond_15

    .line 456
    .line 457
    iput v2, v6, LD/b;->g:I

    .line 458
    .line 459
    :cond_15
    and-int/lit8 v5, v5, 0x1

    .line 460
    .line 461
    if-eqz v5, :cond_16

    .line 462
    .line 463
    const/4 v5, 0x1

    .line 464
    goto :goto_8

    .line 465
    :cond_16
    const/4 v5, 0x0

    .line 466
    :goto_8
    iput-boolean v5, v6, LD/b;->f:Z

    .line 467
    .line 468
    invoke-direct {p0}, LD/d;->g()I

    .line 469
    .line 470
    .line 471
    move-result v5

    .line 472
    const/16 v6, 0xa

    .line 473
    .line 474
    if-ge v5, v7, :cond_17

    .line 475
    .line 476
    const/16 v5, 0xa

    .line 477
    .line 478
    :cond_17
    iget-object v7, p0, LD/d;->c:LD/c;

    .line 479
    .line 480
    iget-object v7, v7, LD/c;->d:LD/b;

    .line 481
    .line 482
    mul-int/lit8 v5, v5, 0xa

    .line 483
    .line 484
    iput v5, v7, LD/b;->i:I

    .line 485
    .line 486
    invoke-direct {p0}, LD/d;->d()I

    .line 487
    .line 488
    .line 489
    move-result v5

    .line 490
    iput v5, v7, LD/b;->h:I

    .line 491
    .line 492
    invoke-direct {p0}, LD/d;->d()I

    .line 493
    .line 494
    .line 495
    goto/16 :goto_3

    .line 496
    .line 497
    :cond_18
    invoke-direct {p0}, LD/d;->i()V

    .line 498
    .line 499
    .line 500
    goto/16 :goto_3

    .line 501
    .line 502
    :cond_19
    iget-object v0, p0, LD/d;->c:LD/c;

    .line 503
    .line 504
    iget v1, v0, LD/c;->c:I

    .line 505
    .line 506
    if-gez v1, :cond_1a

    .line 507
    .line 508
    iput v2, v0, LD/c;->b:I

    .line 509
    .line 510
    :cond_1a
    iget-object v0, p0, LD/d;->c:LD/c;

    .line 511
    .line 512
    return-object v0

    .line 513
    :cond_1b
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 514
    .line 515
    const-string v1, "You must call setData() before parseHeader()"

    .line 516
    .line 517
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 518
    .line 519
    .line 520
    throw v0
.end method

.method public final h(Ljava/nio/ByteBuffer;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, LD/d;->b:Ljava/nio/ByteBuffer;

    .line 3
    .line 4
    iget-object v0, p0, LD/d;->a:[B

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 8
    .line 9
    .line 10
    new-instance v0, LD/c;

    .line 11
    .line 12
    invoke-direct {v0}, LD/c;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, LD/d;->c:LD/c;

    .line 16
    .line 17
    iput v1, p0, LD/d;->d:I

    .line 18
    .line 19
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    iput-object p1, p0, LD/d;->b:Ljava/nio/ByteBuffer;

    .line 24
    .line 25
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 26
    .line 27
    .line 28
    iget-object p1, p0, LD/d;->b:Ljava/nio/ByteBuffer;

    .line 29
    .line 30
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 31
    .line 32
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 33
    .line 34
    .line 35
    return-void
.end method
