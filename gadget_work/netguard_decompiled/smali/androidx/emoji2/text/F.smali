.class public final Landroidx/emoji2/text/F;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lm/b;

.field private final b:[C

.field private final c:Landroidx/emoji2/text/E;

.field private final d:Landroid/graphics/Typeface;


# direct methods
.method private constructor <init>(Landroid/graphics/Typeface;Lm/b;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/emoji2/text/F;->d:Landroid/graphics/Typeface;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/emoji2/text/F;->a:Lm/b;

    .line 7
    .line 8
    new-instance p1, Landroidx/emoji2/text/E;

    .line 9
    .line 10
    const/16 v0, 0x400

    .line 11
    .line 12
    invoke-direct {p1, v0}, Landroidx/emoji2/text/E;-><init>(I)V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Landroidx/emoji2/text/F;->c:Landroidx/emoji2/text/E;

    .line 16
    .line 17
    invoke-virtual {p2}, Lm/b;->e()I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    mul-int/lit8 p1, p1, 0x2

    .line 22
    .line 23
    new-array p1, p1, [C

    .line 24
    .line 25
    iput-object p1, p0, Landroidx/emoji2/text/F;->b:[C

    .line 26
    .line 27
    invoke-virtual {p2}, Lm/b;->e()I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    const/4 p2, 0x0

    .line 32
    const/4 v0, 0x0

    .line 33
    :goto_0
    if-ge v0, p1, :cond_1

    .line 34
    .line 35
    new-instance v1, Landroidx/emoji2/text/v;

    .line 36
    .line 37
    invoke-direct {v1, p0, v0}, Landroidx/emoji2/text/v;-><init>(Landroidx/emoji2/text/F;I)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Landroidx/emoji2/text/v;->f()I

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    mul-int/lit8 v3, v0, 0x2

    .line 45
    .line 46
    iget-object v4, p0, Landroidx/emoji2/text/F;->b:[C

    .line 47
    .line 48
    invoke-static {v2, v4, v3}, Ljava/lang/Character;->toChars(I[CI)I

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1}, Landroidx/emoji2/text/v;->c()I

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    const/4 v3, 0x1

    .line 56
    if-lez v2, :cond_0

    .line 57
    .line 58
    const/4 v2, 0x1

    .line 59
    goto :goto_1

    .line 60
    :cond_0
    const/4 v2, 0x0

    .line 61
    :goto_1
    const-string v4, "invalid metadata codepoint length"

    .line 62
    .line 63
    invoke-static {v4, v2}, Landroidx/core/util/c;->a(Ljava/lang/String;Z)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1}, Landroidx/emoji2/text/v;->c()I

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    sub-int/2addr v2, v3

    .line 71
    iget-object v3, p0, Landroidx/emoji2/text/F;->c:Landroidx/emoji2/text/E;

    .line 72
    .line 73
    invoke-virtual {v3, v1, p2, v2}, Landroidx/emoji2/text/E;->c(Landroidx/emoji2/text/v;II)V

    .line 74
    .line 75
    .line 76
    add-int/lit8 v0, v0, 0x1

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_1
    return-void
.end method

.method public static a(Landroid/graphics/Typeface;Ljava/nio/MappedByteBuffer;)Landroidx/emoji2/text/F;
    .locals 1

    .line 1
    :try_start_0
    const-string v0, "EmojiCompat.MetadataRepo.create"

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/core/os/o;->a(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Landroidx/emoji2/text/F;

    .line 7
    .line 8
    invoke-static {p1}, Landroidx/emoji2/text/z;->b(Ljava/nio/MappedByteBuffer;)Lm/b;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-direct {v0, p0, p1}, Landroidx/emoji2/text/F;-><init>(Landroid/graphics/Typeface;Lm/b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    .line 15
    invoke-static {}, Landroidx/core/os/o;->b()V

    .line 16
    .line 17
    .line 18
    return-object v0

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    invoke-static {}, Landroidx/core/os/o;->b()V

    .line 21
    .line 22
    .line 23
    throw p0
.end method


# virtual methods
.method public final b()[C
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/emoji2/text/F;->b:[C

    .line 2
    .line 3
    return-object v0
.end method

.method public final c()Lm/b;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/emoji2/text/F;->a:Lm/b;

    .line 2
    .line 3
    return-object v0
.end method

.method final d()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/emoji2/text/F;->a:Lm/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Lm/b;->f()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method final e()Landroidx/emoji2/text/E;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/emoji2/text/F;->c:Landroidx/emoji2/text/E;

    .line 2
    .line 3
    return-object v0
.end method

.method final f()Landroid/graphics/Typeface;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/emoji2/text/F;->d:Landroid/graphics/Typeface;

    .line 2
    .line 3
    return-object v0
.end method
