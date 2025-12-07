.class public final LM/v;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final f:LE/h;

.field public static final g:LE/h;

.field public static final h:LE/h;

.field public static final i:LE/h;

.field private static final j:Ljava/util/Set;

.field private static final k:LM/u;

.field private static final l:Ljava/util/ArrayDeque;


# instance fields
.field private final a:LG/g;

.field private final b:Landroid/util/DisplayMetrics;

.field private final c:LG/b;

.field private final d:Ljava/util/List;

.field private final e:LM/B;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-string v0, "com.bumptech.glide.load.resource.bitmap.Downsampler.DecodeFormat"

    .line 2
    .line 3
    sget-object v1, Lcom/bumptech/glide/load/DecodeFormat;->DEFAULT:Lcom/bumptech/glide/load/DecodeFormat;

    .line 4
    .line 5
    invoke-static {v1, v0}, LE/h;->c(Ljava/lang/Object;Ljava/lang/String;)LE/h;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sput-object v0, LM/v;->f:LE/h;

    .line 10
    .line 11
    const-string v0, "com.bumptech.glide.load.resource.bitmap.Downsampler.PreferredColorSpace"

    .line 12
    .line 13
    invoke-static {v0}, LE/h;->d(Ljava/lang/String;)LE/h;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, LM/v;->g:LE/h;

    .line 18
    .line 19
    sget-object v0, LM/s;->a:LM/s;

    .line 20
    .line 21
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 22
    .line 23
    const-string v1, "com.bumptech.glide.load.resource.bitmap.Downsampler.FixBitmapSize"

    .line 24
    .line 25
    invoke-static {v0, v1}, LE/h;->c(Ljava/lang/Object;Ljava/lang/String;)LE/h;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    sput-object v1, LM/v;->h:LE/h;

    .line 30
    .line 31
    const-string v1, "com.bumptech.glide.load.resource.bitmap.Downsampler.AllowHardwareDecode"

    .line 32
    .line 33
    invoke-static {v0, v1}, LE/h;->c(Ljava/lang/Object;Ljava/lang/String;)LE/h;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    sput-object v0, LM/v;->i:LE/h;

    .line 38
    .line 39
    new-instance v0, Ljava/util/HashSet;

    .line 40
    .line 41
    const-string v1, "image/vnd.wap.wbmp"

    .line 42
    .line 43
    const-string v2, "image/x-ico"

    .line 44
    .line 45
    filled-new-array {v1, v2}, [Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 54
    .line 55
    .line 56
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    sput-object v0, LM/v;->j:Ljava/util/Set;

    .line 61
    .line 62
    new-instance v0, LM/t;

    .line 63
    .line 64
    invoke-direct {v0}, LM/t;-><init>()V

    .line 65
    .line 66
    .line 67
    sput-object v0, LM/v;->k:LM/u;

    .line 68
    .line 69
    sget-object v0, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->JPEG:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    .line 70
    .line 71
    sget-object v1, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->PNG_A:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    .line 72
    .line 73
    sget-object v2, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->PNG:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    .line 74
    .line 75
    invoke-static {v0, v1, v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 80
    .line 81
    .line 82
    sget v0, LX/s;->d:I

    .line 83
    .line 84
    new-instance v0, Ljava/util/ArrayDeque;

    .line 85
    .line 86
    const/4 v1, 0x0

    .line 87
    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    .line 88
    .line 89
    .line 90
    sput-object v0, LM/v;->l:Ljava/util/ArrayDeque;

    .line 91
    .line 92
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Landroid/util/DisplayMetrics;LG/g;LG/b;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, LM/B;->a()LM/B;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, LM/v;->e:LM/B;

    .line 9
    .line 10
    iput-object p1, p0, LM/v;->d:Ljava/util/List;

    .line 11
    .line 12
    invoke-static {p2}, LX/l;->b(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    iput-object p2, p0, LM/v;->b:Landroid/util/DisplayMetrics;

    .line 16
    .line 17
    invoke-static {p3}, LX/l;->b(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    iput-object p3, p0, LM/v;->a:LG/g;

    .line 21
    .line 22
    invoke-static {p4}, LX/l;->b(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    iput-object p4, p0, LM/v;->c:LG/b;

    .line 26
    .line 27
    return-void
.end method

.method private a(LM/F;IILE/i;LM/u;)LM/d;
    .locals 15

    .line 1
    move-object v12, p0

    .line 2
    move-object/from16 v0, p4

    .line 3
    .line 4
    iget-object v1, v12, LM/v;->c:LG/b;

    .line 5
    .line 6
    const/high16 v2, 0x10000

    .line 7
    .line 8
    const-class v3, [B

    .line 9
    .line 10
    invoke-interface {v1, v2, v3}, LG/b;->f(ILjava/lang/Class;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    move-object v13, v1

    .line 15
    check-cast v13, [B

    .line 16
    .line 17
    const-class v1, LM/v;

    .line 18
    .line 19
    monitor-enter v1

    .line 20
    :try_start_0
    sget-object v2, LM/v;->l:Ljava/util/ArrayDeque;

    .line 21
    .line 22
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 23
    :try_start_1
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    check-cast v3, Landroid/graphics/BitmapFactory$Options;

    .line 28
    .line 29
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 30
    if-nez v3, :cond_0

    .line 31
    .line 32
    :try_start_2
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    .line 33
    .line 34
    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 35
    .line 36
    .line 37
    invoke-static {v3}, LM/v;->j(Landroid/graphics/BitmapFactory$Options;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 38
    .line 39
    .line 40
    :cond_0
    move-object v14, v3

    .line 41
    monitor-exit v1

    .line 42
    iput-object v13, v14, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    .line 43
    .line 44
    sget-object v1, LM/v;->f:LE/h;

    .line 45
    .line 46
    invoke-virtual {v0, v1}, LE/i;->c(LE/h;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    move-object v5, v1

    .line 51
    check-cast v5, Lcom/bumptech/glide/load/DecodeFormat;

    .line 52
    .line 53
    sget-object v1, LM/v;->g:LE/h;

    .line 54
    .line 55
    invoke-virtual {v0, v1}, LE/i;->c(LE/h;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    move-object v6, v1

    .line 60
    check-cast v6, Lcom/bumptech/glide/load/PreferredColorSpace;

    .line 61
    .line 62
    sget-object v1, LM/s;->f:LE/h;

    .line 63
    .line 64
    invoke-virtual {v0, v1}, LE/i;->c(LE/h;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    move-object v4, v1

    .line 69
    check-cast v4, LM/s;

    .line 70
    .line 71
    sget-object v1, LM/v;->h:LE/h;

    .line 72
    .line 73
    invoke-virtual {v0, v1}, LE/i;->c(LE/h;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    check-cast v1, Ljava/lang/Boolean;

    .line 78
    .line 79
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 80
    .line 81
    .line 82
    move-result v10

    .line 83
    sget-object v1, LM/v;->i:LE/h;

    .line 84
    .line 85
    invoke-virtual {v0, v1}, LE/i;->c(LE/h;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    if-eqz v2, :cond_1

    .line 90
    .line 91
    invoke-virtual {v0, v1}, LE/i;->c(LE/h;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    check-cast v0, Ljava/lang/Boolean;

    .line 96
    .line 97
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    if-eqz v0, :cond_1

    .line 102
    .line 103
    const/4 v0, 0x1

    .line 104
    const/4 v7, 0x1

    .line 105
    goto :goto_0

    .line 106
    :cond_1
    const/4 v0, 0x0

    .line 107
    const/4 v7, 0x0

    .line 108
    :goto_0
    move-object v1, p0

    .line 109
    move-object/from16 v2, p1

    .line 110
    .line 111
    move-object v3, v14

    .line 112
    move/from16 v8, p2

    .line 113
    .line 114
    move/from16 v9, p3

    .line 115
    .line 116
    move-object/from16 v11, p5

    .line 117
    .line 118
    :try_start_3
    invoke-direct/range {v1 .. v11}, LM/v;->e(LM/F;Landroid/graphics/BitmapFactory$Options;LM/s;Lcom/bumptech/glide/load/DecodeFormat;Lcom/bumptech/glide/load/PreferredColorSpace;ZIIZLM/u;)Landroid/graphics/Bitmap;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    iget-object v1, v12, LM/v;->a:LG/g;

    .line 123
    .line 124
    invoke-static {v0, v1}, LM/d;->e(Landroid/graphics/Bitmap;LG/g;)LM/d;

    .line 125
    .line 126
    .line 127
    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 128
    invoke-static {v14}, LM/v;->i(Landroid/graphics/BitmapFactory$Options;)V

    .line 129
    .line 130
    .line 131
    iget-object v1, v12, LM/v;->c:LG/b;

    .line 132
    .line 133
    invoke-interface {v1, v13}, LG/b;->e(Ljava/lang/Object;)V

    .line 134
    .line 135
    .line 136
    return-object v0

    .line 137
    :catchall_0
    move-exception v0

    .line 138
    invoke-static {v14}, LM/v;->i(Landroid/graphics/BitmapFactory$Options;)V

    .line 139
    .line 140
    .line 141
    iget-object v1, v12, LM/v;->c:LG/b;

    .line 142
    .line 143
    invoke-interface {v1, v13}, LG/b;->e(Ljava/lang/Object;)V

    .line 144
    .line 145
    .line 146
    throw v0

    .line 147
    :catchall_1
    move-exception v0

    .line 148
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 149
    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 150
    :catchall_2
    move-exception v0

    .line 151
    monitor-exit v1

    .line 152
    throw v0
.end method

.method private e(LM/F;Landroid/graphics/BitmapFactory$Options;LM/s;Lcom/bumptech/glide/load/DecodeFormat;Lcom/bumptech/glide/load/PreferredColorSpace;ZIIZLM/u;)Landroid/graphics/Bitmap;
    .locals 40

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v0, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p7

    move/from16 v7, p8

    move-object/from16 v8, p10

    .line 1
    sget v9, LX/m;->b:I

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v9

    const/4 v11, 0x1

    .line 3
    iput-boolean v11, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 4
    iget-object v12, v1, LM/v;->a:LG/g;

    invoke-static {v2, v3, v8, v12}, LM/v;->f(LM/F;Landroid/graphics/BitmapFactory$Options;LM/u;LG/g;)Landroid/graphics/Bitmap;

    const/4 v13, 0x0

    .line 5
    iput-boolean v13, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 6
    iget v14, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v15, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    filled-new-array {v14, v15}, [I

    move-result-object v14

    .line 7
    aget v15, v14, v13

    .line 8
    aget v14, v14, v11

    .line 9
    iget-object v13, v3, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    const/4 v11, -0x1

    if-eq v15, v11, :cond_1

    if-ne v14, v11, :cond_0

    goto :goto_0

    :cond_0
    move/from16 v11, p6

    move-wide/from16 v17, v9

    goto :goto_1

    :cond_1
    :goto_0
    move-wide/from16 v17, v9

    const/4 v11, 0x0

    .line 10
    :goto_1
    invoke-interface/range {p1 .. p1}, LM/F;->d()I

    move-result v9

    packed-switch v9, :pswitch_data_0

    move-object/from16 v19, v13

    const/4 v13, 0x0

    goto :goto_2

    :pswitch_0
    move-object/from16 v19, v13

    const/16 v13, 0x10e

    goto :goto_2

    :pswitch_1
    move-object/from16 v19, v13

    const/16 v13, 0x5a

    goto :goto_2

    :pswitch_2
    const/16 v19, 0xb4

    move-object/from16 v19, v13

    const/16 v13, 0xb4

    :goto_2
    packed-switch v9, :pswitch_data_1

    const/16 v20, 0x0

    goto :goto_3

    :pswitch_3
    const/16 v20, 0x1

    :goto_3
    const/high16 v10, -0x80000000

    if-ne v6, v10, :cond_5

    const/16 v10, 0x5a

    if-eq v13, v10, :cond_3

    const/16 v10, 0x10e

    if-ne v13, v10, :cond_2

    goto :goto_4

    :cond_2
    const/4 v10, 0x0

    goto :goto_5

    :cond_3
    :goto_4
    const/4 v10, 0x1

    :goto_5
    move/from16 v22, v9

    if-eqz v10, :cond_4

    move v10, v14

    goto :goto_6

    :cond_4
    move v10, v15

    goto :goto_6

    :cond_5
    move v10, v6

    move/from16 v22, v9

    :goto_6
    const/high16 v9, -0x80000000

    if-ne v7, v9, :cond_9

    const/16 v9, 0x5a

    if-eq v13, v9, :cond_7

    const/16 v9, 0x10e

    if-ne v13, v9, :cond_6

    goto :goto_7

    :cond_6
    const/4 v9, 0x0

    goto :goto_8

    :cond_7
    :goto_7
    const/4 v9, 0x1

    :goto_8
    if-eqz v9, :cond_8

    move v9, v15

    goto :goto_9

    :cond_8
    move v9, v14

    goto :goto_9

    :cond_9
    move v9, v7

    .line 11
    :goto_9
    invoke-interface/range {p1 .. p1}, LM/F;->b()Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    move-result-object v7

    const/high16 v23, 0x3f800000    # 1.0f

    const-string v6, ", target density: "

    const-string v5, ", density: "

    const-string v4, "x"

    move/from16 v24, v11

    const-string v11, "Downsampler"

    const-string v1, "]"

    if-lez v15, :cond_20

    if-gtz v14, :cond_a

    goto/16 :goto_19

    :cond_a
    move-object/from16 v25, v1

    const/16 v1, 0x5a

    if-eq v13, v1, :cond_c

    const/16 v1, 0x10e

    if-ne v13, v1, :cond_b

    goto :goto_a

    :cond_b
    const/4 v1, 0x0

    goto :goto_b

    :cond_c
    :goto_a
    const/4 v1, 0x1

    :goto_b
    move-object/from16 p6, v5

    move-object/from16 v21, v6

    if-eqz v1, :cond_d

    move v1, v14

    move v5, v15

    goto :goto_c

    :cond_d
    move v5, v14

    move v1, v15

    .line 12
    :goto_c
    invoke-virtual {v0, v1, v5, v10, v9}, LM/s;->b(IIII)F

    move-result v6

    const/16 v26, 0x0

    cmpg-float v26, v6, v26

    if-lez v26, :cond_1f

    move/from16 v26, v13

    .line 13
    invoke-virtual {v0, v1, v5, v10, v9}, LM/s;->a(IIII)Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy$SampleSizeRounding;

    move-result-object v13

    if-eqz v13, :cond_1e

    move/from16 v27, v14

    int-to-float v14, v1

    move-object/from16 v28, v4

    mul-float v4, v6, v14

    move/from16 v30, v9

    move/from16 v29, v10

    float-to-double v9, v4

    const-wide/high16 v31, 0x3fe0000000000000L    # 0.5

    add-double v9, v9, v31

    double-to-int v4, v9

    int-to-float v9, v5

    mul-float v10, v6, v9

    move-object/from16 v33, v11

    float-to-double v10, v10

    add-double v10, v10, v31

    double-to-int v10, v10

    .line 14
    div-int v4, v1, v4

    .line 15
    div-int v10, v5, v10

    .line 16
    sget-object v11, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy$SampleSizeRounding;->MEMORY:Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy$SampleSizeRounding;

    if-ne v13, v11, :cond_e

    .line 17
    invoke-static {v4, v10}, Ljava/lang/Math;->max(II)I

    move-result v4

    goto :goto_d

    .line 18
    :cond_e
    invoke-static {v4, v10}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 19
    :goto_d
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    move/from16 v34, v15

    const/16 v15, 0x17

    if-gt v10, v15, :cond_f

    sget-object v15, LM/v;->j:Ljava/util/Set;

    iget-object v0, v3, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    .line 20
    invoke-interface {v15, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v4, 0x1

    goto :goto_e

    .line 21
    :cond_f
    invoke-static {v4}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    const/4 v4, 0x1

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-ne v13, v11, :cond_10

    int-to-float v4, v0

    div-float v11, v23, v6

    cmpg-float v4, v4, v11

    if-gez v4, :cond_10

    shl-int/lit8 v0, v0, 0x1

    :cond_10
    move v4, v0

    .line 22
    :goto_e
    iput v4, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 23
    sget-object v0, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->JPEG:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    if-ne v7, v0, :cond_11

    const/16 v0, 0x8

    .line 24
    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v14, v0

    float-to-double v10, v14

    .line 25
    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v1, v10

    div-float/2addr v9, v0

    float-to-double v9, v9

    .line 26
    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    double-to-int v0, v9

    .line 27
    div-int/lit8 v5, v4, 0x8

    if-lez v5, :cond_18

    .line 28
    div-int/2addr v1, v5

    .line 29
    div-int/2addr v0, v5

    goto :goto_12

    .line 30
    :cond_11
    sget-object v0, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->PNG:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    if-eq v7, v0, :cond_17

    sget-object v0, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->PNG_A:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    if-ne v7, v0, :cond_12

    goto :goto_10

    .line 31
    :cond_12
    invoke-virtual {v7}, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->isWebp()Z

    move-result v0

    if-eqz v0, :cond_14

    const/16 v0, 0x18

    if-lt v10, v0, :cond_13

    int-to-float v0, v4

    div-float/2addr v14, v0

    .line 32
    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v1

    div-float/2addr v9, v0

    .line 33
    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_12

    :cond_13
    int-to-float v0, v4

    div-float/2addr v14, v0

    float-to-double v10, v14

    .line 34
    invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D

    move-result-wide v10

    double-to-int v1, v10

    div-float/2addr v9, v0

    float-to-double v9, v9

    .line 35
    invoke-static {v9, v10}, Ljava/lang/Math;->floor(D)D

    move-result-wide v9

    goto :goto_11

    .line 36
    :cond_14
    rem-int v0, v1, v4

    if-nez v0, :cond_16

    rem-int v0, v5, v4

    if-eqz v0, :cond_15

    goto :goto_f

    .line 37
    :cond_15
    div-int/2addr v1, v4

    .line 38
    div-int v0, v5, v4

    goto :goto_12

    :cond_16
    :goto_f
    const/4 v1, 0x1

    .line 39
    iput-boolean v1, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 40
    invoke-static {v2, v3, v8, v12}, LM/v;->f(LM/F;Landroid/graphics/BitmapFactory$Options;LM/u;LG/g;)Landroid/graphics/Bitmap;

    const/4 v5, 0x0

    .line 41
    iput-boolean v5, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 42
    iget v0, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v7, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    filled-new-array {v0, v7}, [I

    move-result-object v0

    .line 43
    aget v7, v0, v5

    .line 44
    aget v0, v0, v1

    move-object/from16 v5, p3

    move v1, v7

    goto :goto_13

    :cond_17
    :goto_10
    int-to-float v0, v4

    div-float/2addr v14, v0

    float-to-double v10, v14

    .line 45
    invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D

    move-result-wide v10

    double-to-int v1, v10

    div-float/2addr v9, v0

    float-to-double v9, v9

    .line 46
    invoke-static {v9, v10}, Ljava/lang/Math;->floor(D)D

    move-result-wide v9

    :goto_11
    double-to-int v0, v9

    :cond_18
    :goto_12
    move-object/from16 v5, p3

    :goto_13
    move/from16 v15, v29

    move/from16 v14, v30

    .line 47
    invoke-virtual {v5, v1, v0, v15, v14}, LM/s;->b(IIII)F

    move-result v5

    float-to-double v9, v5

    const-wide/high16 v29, 0x3ff0000000000000L    # 1.0

    cmpg-double v5, v9, v29

    if-gtz v5, :cond_19

    move-wide/from16 v35, v9

    goto :goto_14

    :cond_19
    div-double v35, v29, v9

    :goto_14
    const-wide v37, 0x41dfffffffc00000L    # 2.147483647E9

    mul-double v35, v35, v37

    .line 48
    invoke-static/range {v35 .. v36}, Ljava/lang/Math;->round(D)J

    move-result-wide v7

    long-to-int v8, v7

    move-object v13, v12

    int-to-double v11, v8

    mul-double v11, v11, v9

    add-double v11, v11, v31

    double-to-int v7, v11

    int-to-float v11, v7

    int-to-float v8, v8

    div-float/2addr v11, v8

    float-to-double v11, v11

    div-double v11, v9, v11

    int-to-double v7, v7

    mul-double v11, v11, v7

    add-double v11, v11, v31

    double-to-int v7, v11

    .line 49
    iput v7, v3, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    if-gtz v5, :cond_1a

    move-wide/from16 v29, v9

    goto :goto_15

    :cond_1a
    div-double v29, v29, v9

    :goto_15
    mul-double v29, v29, v37

    .line 50
    invoke-static/range {v29 .. v30}, Ljava/lang/Math;->round(D)J

    move-result-wide v7

    long-to-int v5, v7

    .line 51
    iput v5, v3, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 52
    iget v7, v3, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    if-lez v7, :cond_1b

    if-lez v5, :cond_1b

    if-eq v7, v5, :cond_1b

    const/4 v5, 0x1

    goto :goto_16

    :cond_1b
    const/4 v5, 0x0

    :goto_16
    if-eqz v5, :cond_1c

    const/4 v5, 0x1

    .line 53
    iput-boolean v5, v3, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    goto :goto_17

    :cond_1c
    const/4 v5, 0x0

    .line 54
    iput v5, v3, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    iput v5, v3, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    :goto_17
    move-object/from16 v8, v33

    const/4 v5, 0x2

    .line 55
    invoke-static {v8, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_1d

    .line 56
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "Calculate scaling, source: ["

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v11, v34

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v12, v28

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v7, v27

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 p3, v13

    const-string v13, "], degreesToRotate: "

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v13, v26

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ", target: ["

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, "], power of two scaled: ["

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "], exact scale factor: "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", power of 2 sample size: "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", adjusted scale factor: "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-object/from16 v1, v21

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v3, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v4, p6

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v3, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18

    :cond_1d
    move-object/from16 v4, p6

    move-object/from16 p3, v13

    move-object/from16 v1, v21

    move/from16 v7, v27

    move-object/from16 v12, v28

    move/from16 v11, v34

    :goto_18
    move-object/from16 v5, p0

    move v6, v7

    goto/16 :goto_1a

    .line 57
    :cond_1e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot round with null rounding"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1f
    move-object v5, v0

    move-object v12, v4

    move v7, v14

    move v11, v15

    move v14, v9

    move v15, v10

    .line 58
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot scale with factor: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " from: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", source: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "], target: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v5, v25

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_20
    :goto_19
    move-object v8, v11

    move-object/from16 p3, v12

    move v11, v15

    move-object v12, v4

    move-object v4, v5

    move v15, v10

    move-object v5, v1

    move-object v1, v6

    move v6, v14

    move v14, v9

    const/4 v9, 0x3

    .line 59
    invoke-static {v8, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v9, "Unable to determine dimensions for: "

    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " with target ["

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_21
    move-object/from16 v5, p0

    .line 61
    :goto_1a
    iget-object v0, v5, LM/v;->e:LM/B;

    move/from16 v9, v20

    move/from16 v7, v24

    invoke-virtual {v0, v15, v14, v7, v9}, LM/B;->b(IIZZ)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 62
    invoke-static {}, LB/x;->g()Landroid/graphics/Bitmap$Config;

    move-result-object v7

    iput-object v7, v3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    const/4 v7, 0x0

    .line 63
    iput-boolean v7, v3, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    goto :goto_1b

    :cond_22
    const/4 v7, 0x0

    :goto_1b
    if-eqz v0, :cond_24

    move-object v10, v12

    :cond_23
    const/4 v9, 0x1

    goto :goto_1e

    .line 64
    :cond_24
    sget-object v0, Lcom/bumptech/glide/load/DecodeFormat;->PREFER_ARGB_8888:Lcom/bumptech/glide/load/DecodeFormat;

    move-object/from16 v9, p4

    move-object v10, v12

    if-eq v9, v0, :cond_27

    .line 65
    :try_start_0
    invoke-interface/range {p1 .. p1}, LM/F;->b()Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->hasAlpha()Z

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1c

    :catch_0
    move-exception v0

    const/4 v12, 0x3

    .line 66
    invoke-static {v8, v12}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v12

    if-eqz v12, :cond_25

    .line 67
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Cannot determine whether the image has alpha or not from header, format "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_25
    const/4 v0, 0x0

    :goto_1c
    if-eqz v0, :cond_26

    .line 68
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_1d

    :cond_26
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    :goto_1d
    iput-object v0, v3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 69
    sget-object v9, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    if-ne v0, v9, :cond_23

    const/4 v9, 0x1

    .line 70
    iput-boolean v9, v3, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    goto :goto_1e

    :cond_27
    const/4 v9, 0x1

    .line 71
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v0, v3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 72
    :goto_1e
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 73
    iget v12, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    if-ltz v11, :cond_28

    if-ltz v6, :cond_28

    if-eqz p9, :cond_28

    move v9, v14

    move/from16 v39, v15

    move-object v15, v10

    move/from16 v10, v39

    goto/16 :goto_22

    .line 74
    :cond_28
    iget v13, v3, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    if-lez v13, :cond_29

    iget v14, v3, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    if-lez v14, :cond_29

    if-eq v13, v14, :cond_29

    const/4 v14, 0x1

    goto :goto_1f

    :cond_29
    const/4 v14, 0x0

    :goto_1f
    if-eqz v14, :cond_2a

    int-to-float v13, v13

    .line 75
    iget v14, v3, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    int-to-float v14, v14

    div-float v23, v13, v14

    move/from16 v13, v23

    goto :goto_20

    :cond_2a
    const/high16 v13, 0x3f800000    # 1.0f

    :goto_20
    int-to-float v14, v11

    int-to-float v15, v12

    div-float/2addr v14, v15

    move-object/from16 v28, v10

    float-to-double v9, v14

    .line 76
    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    double-to-int v9, v9

    int-to-float v10, v6

    div-float/2addr v10, v15

    float-to-double v14, v10

    .line 77
    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v14

    double-to-int v10, v14

    int-to-float v9, v9

    mul-float v9, v9, v13

    .line 78
    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    int-to-float v10, v10

    mul-float v10, v10, v13

    .line 79
    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    const/4 v14, 0x2

    .line 80
    invoke-static {v8, v14}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v15

    if-eqz v15, :cond_2b

    .line 81
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "Calculated target ["

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v15, v28

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "] for source ["

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "], sampleSize: "

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", targetDensity: "

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v3, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v3, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", density multiplier: "

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21

    :cond_2b
    move-object/from16 v15, v28

    :goto_21
    move/from16 v39, v10

    move v10, v9

    move/from16 v9, v39

    :goto_22
    const/16 v7, 0x1a

    const/4 v12, 0x0

    if-lez v10, :cond_2f

    if-lez v9, :cond_2f

    if-lt v0, v7, :cond_2d

    .line 82
    iget-object v13, v3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    invoke-static {}, LB/x;->g()Landroid/graphics/Bitmap$Config;

    move-result-object v14

    if-ne v13, v14, :cond_2c

    goto :goto_24

    .line 83
    :cond_2c
    invoke-static/range {p2 .. p2}, LC/a;->c(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap$Config;

    move-result-object v13

    goto :goto_23

    :cond_2d
    move-object v13, v12

    :goto_23
    if-nez v13, :cond_2e

    .line 84
    iget-object v13, v3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    :cond_2e
    move-object/from16 v14, p3

    .line 85
    invoke-interface {v14, v10, v9, v13}, LG/g;->e(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    iput-object v9, v3, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    goto :goto_25

    :cond_2f
    :goto_24
    move-object/from16 v14, p3

    :goto_25
    move-object v9, v4

    move-object/from16 v4, p5

    if-eqz v4, :cond_33

    const/16 v10, 0x1c

    if-lt v0, v10, :cond_32

    .line 86
    sget-object v0, Lcom/bumptech/glide/load/PreferredColorSpace;->DISPLAY_P3:Lcom/bumptech/glide/load/PreferredColorSpace;

    if-ne v4, v0, :cond_30

    invoke-static/range {p2 .. p2}, LB/w;->e(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/ColorSpace;

    move-result-object v0

    if-eqz v0, :cond_30

    invoke-static/range {p2 .. p2}, LB/w;->e(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/ColorSpace;

    move-result-object v0

    .line 87
    invoke-static {v0}, LB/x;->p(Landroid/graphics/ColorSpace;)Z

    move-result v0

    if-eqz v0, :cond_30

    const/16 v16, 0x1

    goto :goto_26

    :cond_30
    const/16 v16, 0x0

    :goto_26
    if-eqz v16, :cond_31

    .line 88
    invoke-static {}, LC/a;->d()Landroid/graphics/ColorSpace$Named;

    move-result-object v0

    goto :goto_27

    :cond_31
    invoke-static {}, LB/w;->d()Landroid/graphics/ColorSpace$Named;

    move-result-object v0

    :goto_27
    invoke-static {v0}, LB/x;->h(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v0

    invoke-static {v3, v0}, LB/x;->n(Landroid/graphics/BitmapFactory$Options;Landroid/graphics/ColorSpace;)V

    goto :goto_28

    :cond_32
    if-lt v0, v7, :cond_33

    .line 89
    invoke-static {}, LB/w;->d()Landroid/graphics/ColorSpace$Named;

    move-result-object v0

    invoke-static {v0}, LB/x;->h(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v0

    invoke-static {v3, v0}, LB/x;->n(Landroid/graphics/BitmapFactory$Options;Landroid/graphics/ColorSpace;)V

    :cond_33
    :goto_28
    move-object/from16 v4, p10

    .line 90
    invoke-static {v2, v3, v4, v14}, LM/v;->f(LM/F;Landroid/graphics/BitmapFactory$Options;LM/u;LG/g;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 91
    invoke-interface {v4, v0, v14}, LM/u;->b(Landroid/graphics/Bitmap;LG/g;)V

    const/4 v2, 0x2

    .line 92
    invoke-static {v8, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_34

    .line 93
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Decoded "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 94
    invoke-static {v0}, LM/v;->g(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " from ["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "] "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, v19

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " with inBitmap "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    iget-object v4, v3, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    invoke-static {v4}, LM/v;->g(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v4

    .line 96
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " for ["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v4, p7

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v4, p8

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "], sample size: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v3, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v3, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", thread: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", duration: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    invoke-static/range {v17 .. v18}, LX/m;->a(J)D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 99
    invoke-static {v8, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_34
    if-eqz v0, :cond_35

    .line 100
    iget-object v1, v5, LM/v;->b:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->setDensity(I)V

    move/from16 v1, v22

    .line 101
    invoke-static {v14, v0, v1}, LM/N;->e(LG/g;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 102
    invoke-virtual {v0, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_35

    .line 103
    invoke-interface {v14, v0}, LG/g;->c(Landroid/graphics/Bitmap;)V

    :cond_35
    return-object v12

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private static f(LM/F;Landroid/graphics/BitmapFactory$Options;LM/u;LG/g;)Landroid/graphics/Bitmap;
    .locals 5

    .line 1
    const-string v0, "Downsampler"

    .line 2
    .line 3
    iget-boolean v1, p1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    invoke-interface {p2}, LM/u;->c()V

    .line 8
    .line 9
    .line 10
    invoke-interface {p0}, LM/F;->c()V

    .line 11
    .line 12
    .line 13
    :cond_0
    iget v1, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 14
    .line 15
    iget v2, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 16
    .line 17
    iget-object v3, p1, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    .line 18
    .line 19
    invoke-static {}, LM/N;->d()Ljava/util/concurrent/locks/Lock;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 24
    .line 25
    .line 26
    :try_start_0
    invoke-interface {p0, p1}, LM/F;->a(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 27
    .line 28
    .line 29
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    :goto_0
    invoke-static {}, LM/N;->d()Ljava/util/concurrent/locks/Lock;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 35
    .line 36
    .line 37
    return-object p0

    .line 38
    :catchall_0
    move-exception p0

    .line 39
    goto :goto_1

    .line 40
    :catch_0
    move-exception v4

    .line 41
    :try_start_1
    invoke-static {v4, v1, v2, v3, p1}, LM/v;->h(Ljava/lang/IllegalArgumentException;IILjava/lang/String;Landroid/graphics/BitmapFactory$Options;)Ljava/io/IOException;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    const/4 v2, 0x3

    .line 46
    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    if-eqz v2, :cond_1

    .line 51
    .line 52
    const-string v2, "Failed to decode with inBitmap, trying again without Bitmap re-use"

    .line 53
    .line 54
    invoke-static {v0, v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 55
    .line 56
    .line 57
    :cond_1
    iget-object v0, p1, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 58
    .line 59
    if-eqz v0, :cond_2

    .line 60
    .line 61
    :try_start_2
    invoke-interface {p3, v0}, LG/g;->c(Landroid/graphics/Bitmap;)V

    .line 62
    .line 63
    .line 64
    const/4 v0, 0x0

    .line 65
    iput-object v0, p1, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 66
    .line 67
    invoke-static {p0, p1, p2, p3}, LM/v;->f(LM/F;Landroid/graphics/BitmapFactory$Options;LM/u;LG/g;)Landroid/graphics/Bitmap;

    .line 68
    .line 69
    .line 70
    move-result-object p0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 71
    goto :goto_0

    .line 72
    :catch_1
    :try_start_3
    throw v1

    .line 73
    :cond_2
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 74
    :goto_1
    invoke-static {}, LM/N;->d()Ljava/util/concurrent/locks/Lock;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 79
    .line 80
    .line 81
    throw p0
.end method

.method private static g(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 3

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v1, " ("

    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v1, ")"

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    new-instance v1, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    const-string v2, "["

    .line 31
    .line 32
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string v2, "x"

    .line 43
    .line 44
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string v2, "] "

    .line 55
    .line 56
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    return-object p0
.end method

.method private static h(Ljava/lang/IllegalArgumentException;IILjava/lang/String;Landroid/graphics/BitmapFactory$Options;)Ljava/io/IOException;
    .locals 3

    .line 1
    new-instance v0, Ljava/io/IOException;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "Exception decoding bitmap, outWidth: "

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string p1, ", outHeight: "

    .line 14
    .line 15
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string p1, ", outMimeType: "

    .line 22
    .line 23
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string p1, ", inBitmap: "

    .line 30
    .line 31
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    iget-object p1, p4, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 35
    .line 36
    invoke-static {p1}, LM/v;->g(Landroid/graphics/Bitmap;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-direct {v0, p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 48
    .line 49
    .line 50
    return-object v0
.end method

.method private static i(Landroid/graphics/BitmapFactory$Options;)V
    .locals 1

    .line 1
    invoke-static {p0}, LM/v;->j(Landroid/graphics/BitmapFactory$Options;)V

    .line 2
    .line 3
    .line 4
    sget-object v0, LM/v;->l:Ljava/util/ArrayDeque;

    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    invoke-virtual {v0, p0}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    monitor-exit v0

    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception p0

    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    throw p0
.end method

.method private static j(Landroid/graphics/BitmapFactory$Options;)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    iput-boolean v1, p0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 6
    .line 7
    iput-boolean v1, p0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    iput v2, p0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 11
    .line 12
    iput-object v0, p0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 13
    .line 14
    iput-boolean v1, p0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 15
    .line 16
    iput v1, p0, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 17
    .line 18
    iput v1, p0, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    .line 19
    .line 20
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 21
    .line 22
    const/16 v4, 0x1a

    .line 23
    .line 24
    if-lt v3, v4, :cond_0

    .line 25
    .line 26
    invoke-static {p0}, LC/a;->j(Landroid/graphics/BitmapFactory$Options;)V

    .line 27
    .line 28
    .line 29
    invoke-static {p0}, LB/w;->k(Landroid/graphics/BitmapFactory$Options;)V

    .line 30
    .line 31
    .line 32
    invoke-static {p0}, LB/x;->m(Landroid/graphics/BitmapFactory$Options;)V

    .line 33
    .line 34
    .line 35
    :cond_0
    iput v1, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 36
    .line 37
    iput v1, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 38
    .line 39
    iput-object v0, p0, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    .line 40
    .line 41
    iput-object v0, p0, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 42
    .line 43
    iput-boolean v2, p0, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 44
    .line 45
    return-void
.end method


# virtual methods
.method public final b(LX/p;IILE/i;LM/u;)LM/d;
    .locals 6

    .line 1
    new-instance v1, LM/D;

    .line 2
    .line 3
    iget-object v0, p0, LM/v;->d:Ljava/util/List;

    .line 4
    .line 5
    iget-object v2, p0, LM/v;->c:LG/b;

    .line 6
    .line 7
    invoke-direct {v1, v2, p1, v0}, LM/D;-><init>(LG/b;LX/p;Ljava/util/List;)V

    .line 8
    .line 9
    .line 10
    move-object v0, p0

    .line 11
    move v2, p2

    .line 12
    move v3, p3

    .line 13
    move-object v4, p4

    .line 14
    move-object v5, p5

    .line 15
    invoke-direct/range {v0 .. v5}, LM/v;->a(LM/F;IILE/i;LM/u;)LM/d;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    return-object p1
.end method

.method public final c(Landroid/os/ParcelFileDescriptor;IILE/i;)LM/d;
    .locals 6

    .line 1
    new-instance v1, LM/E;

    .line 2
    .line 3
    iget-object v0, p0, LM/v;->d:Ljava/util/List;

    .line 4
    .line 5
    iget-object v2, p0, LM/v;->c:LG/b;

    .line 6
    .line 7
    invoke-direct {v1, p1, v0, v2}, LM/E;-><init>(Landroid/os/ParcelFileDescriptor;Ljava/util/List;LG/b;)V

    .line 8
    .line 9
    .line 10
    sget-object v5, LM/v;->k:LM/u;

    .line 11
    .line 12
    move-object v0, p0

    .line 13
    move v2, p2

    .line 14
    move v3, p3

    .line 15
    move-object v4, p4

    .line 16
    invoke-direct/range {v0 .. v5}, LM/v;->a(LM/F;IILE/i;LM/u;)LM/d;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    return-object p1
.end method

.method public final d(Ljava/nio/ByteBuffer;IILE/i;)LM/d;
    .locals 6

    .line 1
    new-instance v1, LM/C;

    .line 2
    .line 3
    iget-object v0, p0, LM/v;->d:Ljava/util/List;

    .line 4
    .line 5
    iget-object v2, p0, LM/v;->c:LG/b;

    .line 6
    .line 7
    invoke-direct {v1, v2, p1, v0}, LM/C;-><init>(LG/b;Ljava/nio/ByteBuffer;Ljava/util/List;)V

    .line 8
    .line 9
    .line 10
    sget-object v5, LM/v;->k:LM/u;

    .line 11
    .line 12
    move-object v0, p0

    .line 13
    move v2, p2

    .line 14
    move v3, p3

    .line 15
    move-object v4, p4

    .line 16
    invoke-direct/range {v0 .. v5}, LM/v;->a(LM/F;IILE/i;LM/u;)LM/d;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    return-object p1
.end method
