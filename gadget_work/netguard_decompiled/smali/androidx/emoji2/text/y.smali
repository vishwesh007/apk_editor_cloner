.class public abstract Landroidx/emoji2/text/y;
.super Landroid/text/style/ReplacementSpan;
.source "SourceFile"


# instance fields
.field private final a:Landroid/graphics/Paint$FontMetricsInt;

.field private final b:Landroidx/emoji2/text/v;

.field private c:F


# direct methods
.method constructor <init>(Landroidx/emoji2/text/v;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/text/style/ReplacementSpan;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/graphics/Paint$FontMetricsInt;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroidx/emoji2/text/y;->a:Landroid/graphics/Paint$FontMetricsInt;

    .line 10
    .line 11
    const/high16 v0, 0x3f800000    # 1.0f

    .line 12
    .line 13
    iput v0, p0, Landroidx/emoji2/text/y;->c:F

    .line 14
    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    iput-object p1, p0, Landroidx/emoji2/text/y;->b:Landroidx/emoji2/text/v;

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    .line 21
    .line 22
    const-string v0, "metadata cannot be null"

    .line 23
    .line 24
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw p1
.end method


# virtual methods
.method public final a()Landroidx/emoji2/text/v;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/emoji2/text/y;->b:Landroidx/emoji2/text/v;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .locals 0

    .line 1
    iget-object p2, p0, Landroidx/emoji2/text/y;->a:Landroid/graphics/Paint$FontMetricsInt;

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 4
    .line 5
    .line 6
    iget p1, p2, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 7
    .line 8
    iget p3, p2, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 9
    .line 10
    sub-int/2addr p1, p3

    .line 11
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    int-to-float p1, p1

    .line 16
    const/high16 p3, 0x3f800000    # 1.0f

    .line 17
    .line 18
    mul-float p1, p1, p3

    .line 19
    .line 20
    iget-object p3, p0, Landroidx/emoji2/text/y;->b:Landroidx/emoji2/text/v;

    .line 21
    .line 22
    invoke-virtual {p3}, Landroidx/emoji2/text/v;->e()S

    .line 23
    .line 24
    .line 25
    move-result p4

    .line 26
    int-to-float p4, p4

    .line 27
    div-float/2addr p1, p4

    .line 28
    iput p1, p0, Landroidx/emoji2/text/y;->c:F

    .line 29
    .line 30
    invoke-virtual {p3}, Landroidx/emoji2/text/v;->e()S

    .line 31
    .line 32
    .line 33
    invoke-virtual {p3}, Landroidx/emoji2/text/v;->i()S

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    int-to-float p1, p1

    .line 38
    iget p3, p0, Landroidx/emoji2/text/y;->c:F

    .line 39
    .line 40
    mul-float p1, p1, p3

    .line 41
    .line 42
    float-to-int p1, p1

    .line 43
    int-to-short p1, p1

    .line 44
    if-eqz p5, :cond_0

    .line 45
    .line 46
    iget p3, p2, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 47
    .line 48
    iput p3, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 49
    .line 50
    iget p3, p2, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 51
    .line 52
    iput p3, p5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 53
    .line 54
    iget p3, p2, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 55
    .line 56
    iput p3, p5, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 57
    .line 58
    iget p2, p2, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 59
    .line 60
    iput p2, p5, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 61
    .line 62
    :cond_0
    return p1
.end method
