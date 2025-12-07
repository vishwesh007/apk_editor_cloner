.class final LM/q;
.super LM/s;
.source "SourceFile"


# instance fields
.field public final synthetic h:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, LM/q;->h:I

    .line 2
    .line 3
    invoke-direct {p0}, LM/s;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(IIII)Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy$SampleSizeRounding;
    .locals 0

    .line 1
    iget p1, p0, LM/q;->h:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :pswitch_0
    sget-object p1, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy$SampleSizeRounding;->MEMORY:Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy$SampleSizeRounding;

    .line 8
    .line 9
    return-object p1

    .line 10
    :goto_0
    sget-boolean p1, LM/s;->g:Z

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    sget-object p1, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy$SampleSizeRounding;->QUALITY:Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy$SampleSizeRounding;

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_0
    sget-object p1, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy$SampleSizeRounding;->MEMORY:Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy$SampleSizeRounding;

    .line 18
    .line 19
    :goto_1
    return-object p1

    .line 20
    nop

    .line 21
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final b(IIII)F
    .locals 2

    .line 1
    iget v0, p0, LM/q;->h:I

    .line 2
    .line 3
    const/high16 v1, 0x3f800000    # 1.0f

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    goto :goto_1

    .line 9
    :pswitch_0
    int-to-float p2, p2

    .line 10
    int-to-float p4, p4

    .line 11
    div-float/2addr p2, p4

    .line 12
    int-to-float p1, p1

    .line 13
    int-to-float p3, p3

    .line 14
    div-float/2addr p1, p3

    .line 15
    invoke-static {p2, p1}, Ljava/lang/Math;->max(FF)F

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    float-to-double p1, p1

    .line 20
    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    .line 21
    .line 22
    .line 23
    move-result-wide p1

    .line 24
    double-to-int p1, p1

    .line 25
    invoke-static {p1}, Ljava/lang/Integer;->highestOneBit(I)I

    .line 26
    .line 27
    .line 28
    move-result p2

    .line 29
    const/4 p3, 0x1

    .line 30
    invoke-static {p3, p2}, Ljava/lang/Math;->max(II)I

    .line 31
    .line 32
    .line 33
    move-result p2

    .line 34
    if-ge p2, p1, :cond_0

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    const/4 p3, 0x0

    .line 38
    :goto_0
    shl-int p1, p2, p3

    .line 39
    .line 40
    int-to-float p1, p1

    .line 41
    div-float/2addr v1, p1

    .line 42
    return v1

    .line 43
    :goto_1
    sget-boolean v0, LM/s;->g:Z

    .line 44
    .line 45
    if-eqz v0, :cond_1

    .line 46
    .line 47
    int-to-float p3, p3

    .line 48
    int-to-float p1, p1

    .line 49
    div-float/2addr p3, p1

    .line 50
    int-to-float p1, p4

    .line 51
    int-to-float p2, p2

    .line 52
    div-float/2addr p1, p2

    .line 53
    invoke-static {p3, p1}, Ljava/lang/Math;->min(FF)F

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    goto :goto_3

    .line 58
    :cond_1
    div-int/2addr p2, p4

    .line 59
    div-int/2addr p1, p3

    .line 60
    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    if-nez p1, :cond_2

    .line 65
    .line 66
    goto :goto_2

    .line 67
    :cond_2
    invoke-static {p1}, Ljava/lang/Integer;->highestOneBit(I)I

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    int-to-float p1, p1

    .line 72
    div-float/2addr v1, p1

    .line 73
    :goto_2
    move p1, v1

    .line 74
    :goto_3
    return p1

    .line 75
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
