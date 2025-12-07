.class final Landroidx/emoji2/text/w;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private final b:Landroidx/emoji2/text/E;

.field private c:Landroidx/emoji2/text/E;

.field private d:Landroidx/emoji2/text/E;

.field private e:I

.field private f:I


# direct methods
.method constructor <init>(Landroidx/emoji2/text/E;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput v0, p0, Landroidx/emoji2/text/w;->a:I

    .line 6
    .line 7
    iput-object p1, p0, Landroidx/emoji2/text/w;->b:Landroidx/emoji2/text/E;

    .line 8
    .line 9
    iput-object p1, p0, Landroidx/emoji2/text/w;->c:Landroidx/emoji2/text/E;

    .line 10
    .line 11
    return-void
.end method

.method private e()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Landroidx/emoji2/text/w;->a:I

    .line 3
    .line 4
    iget-object v0, p0, Landroidx/emoji2/text/w;->b:Landroidx/emoji2/text/E;

    .line 5
    .line 6
    iput-object v0, p0, Landroidx/emoji2/text/w;->c:Landroidx/emoji2/text/E;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput v0, p0, Landroidx/emoji2/text/w;->f:I

    .line 10
    .line 11
    return-void
.end method

.method private f()Z
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/emoji2/text/w;->c:Landroidx/emoji2/text/E;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/emoji2/text/E;->b()Landroidx/emoji2/text/v;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroidx/emoji2/text/v;->j()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x1

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    return v1

    .line 15
    :cond_0
    iget v0, p0, Landroidx/emoji2/text/w;->e:I

    .line 16
    .line 17
    const v2, 0xfe0f

    .line 18
    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    if-ne v0, v2, :cond_1

    .line 22
    .line 23
    const/4 v0, 0x1

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    const/4 v0, 0x0

    .line 26
    :goto_0
    if-eqz v0, :cond_2

    .line 27
    .line 28
    return v1

    .line 29
    :cond_2
    return v3
.end method


# virtual methods
.method final a(I)I
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/emoji2/text/w;->c:Landroidx/emoji2/text/E;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/emoji2/text/E;->a(I)Landroidx/emoji2/text/E;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget v1, p0, Landroidx/emoji2/text/w;->a:I

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    const/4 v3, 0x2

    .line 11
    if-eq v1, v3, :cond_1

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    invoke-direct {p0}, Landroidx/emoji2/text/w;->e()V

    .line 16
    .line 17
    .line 18
    goto :goto_3

    .line 19
    :cond_0
    iput v3, p0, Landroidx/emoji2/text/w;->a:I

    .line 20
    .line 21
    iput-object v0, p0, Landroidx/emoji2/text/w;->c:Landroidx/emoji2/text/E;

    .line 22
    .line 23
    iput v2, p0, Landroidx/emoji2/text/w;->f:I

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_1
    if-eqz v0, :cond_2

    .line 27
    .line 28
    iput-object v0, p0, Landroidx/emoji2/text/w;->c:Landroidx/emoji2/text/E;

    .line 29
    .line 30
    iget v0, p0, Landroidx/emoji2/text/w;->f:I

    .line 31
    .line 32
    add-int/2addr v0, v2

    .line 33
    iput v0, p0, Landroidx/emoji2/text/w;->f:I

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_2
    const v0, 0xfe0e

    .line 37
    .line 38
    .line 39
    const/4 v1, 0x0

    .line 40
    if-ne p1, v0, :cond_3

    .line 41
    .line 42
    const/4 v0, 0x1

    .line 43
    goto :goto_0

    .line 44
    :cond_3
    const/4 v0, 0x0

    .line 45
    :goto_0
    if-eqz v0, :cond_4

    .line 46
    .line 47
    invoke-direct {p0}, Landroidx/emoji2/text/w;->e()V

    .line 48
    .line 49
    .line 50
    goto :goto_3

    .line 51
    :cond_4
    const v0, 0xfe0f

    .line 52
    .line 53
    .line 54
    if-ne p1, v0, :cond_5

    .line 55
    .line 56
    const/4 v1, 0x1

    .line 57
    :cond_5
    if-eqz v1, :cond_6

    .line 58
    .line 59
    :goto_1
    const/4 v2, 0x2

    .line 60
    goto :goto_3

    .line 61
    :cond_6
    iget-object v0, p0, Landroidx/emoji2/text/w;->c:Landroidx/emoji2/text/E;

    .line 62
    .line 63
    invoke-virtual {v0}, Landroidx/emoji2/text/E;->b()Landroidx/emoji2/text/v;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    if-eqz v0, :cond_9

    .line 68
    .line 69
    iget v0, p0, Landroidx/emoji2/text/w;->f:I

    .line 70
    .line 71
    if-ne v0, v2, :cond_8

    .line 72
    .line 73
    invoke-direct {p0}, Landroidx/emoji2/text/w;->f()Z

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    if-eqz v0, :cond_7

    .line 78
    .line 79
    iget-object v0, p0, Landroidx/emoji2/text/w;->c:Landroidx/emoji2/text/E;

    .line 80
    .line 81
    iput-object v0, p0, Landroidx/emoji2/text/w;->d:Landroidx/emoji2/text/E;

    .line 82
    .line 83
    invoke-direct {p0}, Landroidx/emoji2/text/w;->e()V

    .line 84
    .line 85
    .line 86
    goto :goto_2

    .line 87
    :cond_7
    invoke-direct {p0}, Landroidx/emoji2/text/w;->e()V

    .line 88
    .line 89
    .line 90
    goto :goto_3

    .line 91
    :cond_8
    iget-object v0, p0, Landroidx/emoji2/text/w;->c:Landroidx/emoji2/text/E;

    .line 92
    .line 93
    iput-object v0, p0, Landroidx/emoji2/text/w;->d:Landroidx/emoji2/text/E;

    .line 94
    .line 95
    invoke-direct {p0}, Landroidx/emoji2/text/w;->e()V

    .line 96
    .line 97
    .line 98
    :goto_2
    const/4 v2, 0x3

    .line 99
    goto :goto_3

    .line 100
    :cond_9
    invoke-direct {p0}, Landroidx/emoji2/text/w;->e()V

    .line 101
    .line 102
    .line 103
    :goto_3
    iput p1, p0, Landroidx/emoji2/text/w;->e:I

    .line 104
    .line 105
    return v2
.end method

.method final b()Landroidx/emoji2/text/v;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/emoji2/text/w;->c:Landroidx/emoji2/text/E;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/emoji2/text/E;->b()Landroidx/emoji2/text/v;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method final c()Landroidx/emoji2/text/v;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/emoji2/text/w;->d:Landroidx/emoji2/text/E;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/emoji2/text/E;->b()Landroidx/emoji2/text/v;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method final d()Z
    .locals 2

    .line 1
    iget v0, p0, Landroidx/emoji2/text/w;->a:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Landroidx/emoji2/text/w;->c:Landroidx/emoji2/text/E;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/emoji2/text/E;->b()Landroidx/emoji2/text/v;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget v0, p0, Landroidx/emoji2/text/w;->f:I

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    if-gt v0, v1, :cond_1

    .line 18
    .line 19
    invoke-direct {p0}, Landroidx/emoji2/text/w;->f()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 v1, 0x0

    .line 27
    :cond_1
    :goto_0
    return v1
.end method
