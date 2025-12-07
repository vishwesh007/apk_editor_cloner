.class public Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
.super Landroidx/recyclerview/widget/E;
.source "SourceFile"


# instance fields
.field A:I

.field B:Landroidx/recyclerview/widget/a0;

.field private C:I

.field private D:Z

.field private E:Z

.field private F:Landroidx/recyclerview/widget/c0;

.field private final G:Landroid/graphics/Rect;

.field private final H:Landroidx/recyclerview/widget/W;

.field private I:Z

.field private J:[I

.field private final K:Ljava/lang/Runnable;

.field private p:I

.field q:[Landroidx/recyclerview/widget/d0;

.field r:Landroidx/recyclerview/widget/x;

.field s:Landroidx/recyclerview/widget/x;

.field private t:I

.field private u:I

.field private final v:Landroidx/recyclerview/widget/p;

.field w:Z

.field x:Z

.field private y:Ljava/util/BitSet;

.field z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/E;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:I

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    iput-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->w:Z

    .line 9
    .line 10
    iput-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->x:Z

    .line 11
    .line 12
    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->z:I

    .line 13
    .line 14
    const/high16 v0, -0x80000000

    .line 15
    .line 16
    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->A:I

    .line 17
    .line 18
    new-instance v0, Landroidx/recyclerview/widget/a0;

    .line 19
    .line 20
    invoke-direct {v0}, Landroidx/recyclerview/widget/a0;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->B:Landroidx/recyclerview/widget/a0;

    .line 24
    .line 25
    const/4 v0, 0x2

    .line 26
    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->C:I

    .line 27
    .line 28
    new-instance v0, Landroid/graphics/Rect;

    .line 29
    .line 30
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 31
    .line 32
    .line 33
    iput-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->G:Landroid/graphics/Rect;

    .line 34
    .line 35
    new-instance v0, Landroidx/recyclerview/widget/W;

    .line 36
    .line 37
    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/W;-><init>(Landroidx/recyclerview/widget/StaggeredGridLayoutManager;)V

    .line 38
    .line 39
    .line 40
    iput-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->H:Landroidx/recyclerview/widget/W;

    .line 41
    .line 42
    const/4 v0, 0x1

    .line 43
    iput-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->I:Z

    .line 44
    .line 45
    new-instance v2, Landroidx/recyclerview/widget/V;

    .line 46
    .line 47
    invoke-direct {v2, p0}, Landroidx/recyclerview/widget/V;-><init>(Landroidx/recyclerview/widget/StaggeredGridLayoutManager;)V

    .line 48
    .line 49
    .line 50
    iput-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->K:Ljava/lang/Runnable;

    .line 51
    .line 52
    invoke-static {p1, p2, p3, p4}, Landroidx/recyclerview/widget/E;->J(Landroid/content/Context;Landroid/util/AttributeSet;II)Lu/q;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    iget p2, p1, Lu/q;->a:I

    .line 57
    .line 58
    if-eqz p2, :cond_1

    .line 59
    .line 60
    if-ne p2, v0, :cond_0

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 64
    .line 65
    const-string p2, "invalid orientation."

    .line 66
    .line 67
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    throw p1

    .line 71
    :cond_1
    :goto_0
    const/4 p3, 0x0

    .line 72
    invoke-virtual {p0, p3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->f(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    iget p4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:I

    .line 76
    .line 77
    if-ne p2, p4, :cond_2

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_2
    iput p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:I

    .line 81
    .line 82
    iget-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Landroidx/recyclerview/widget/x;

    .line 83
    .line 84
    iget-object p4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s:Landroidx/recyclerview/widget/x;

    .line 85
    .line 86
    iput-object p4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Landroidx/recyclerview/widget/x;

    .line 87
    .line 88
    iput-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s:Landroidx/recyclerview/widget/x;

    .line 89
    .line 90
    invoke-virtual {p0}, Landroidx/recyclerview/widget/E;->q0()V

    .line 91
    .line 92
    .line 93
    :goto_1
    iget p2, p1, Lu/q;->b:I

    .line 94
    .line 95
    invoke-virtual {p0, p3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->f(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    iget p4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:I

    .line 99
    .line 100
    if-eq p2, p4, :cond_4

    .line 101
    .line 102
    iget-object p4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->B:Landroidx/recyclerview/widget/a0;

    .line 103
    .line 104
    invoke-virtual {p4}, Landroidx/recyclerview/widget/a0;->a()V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p0}, Landroidx/recyclerview/widget/E;->q0()V

    .line 108
    .line 109
    .line 110
    iput p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:I

    .line 111
    .line 112
    new-instance p2, Ljava/util/BitSet;

    .line 113
    .line 114
    iget p4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:I

    .line 115
    .line 116
    invoke-direct {p2, p4}, Ljava/util/BitSet;-><init>(I)V

    .line 117
    .line 118
    .line 119
    iput-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->y:Ljava/util/BitSet;

    .line 120
    .line 121
    iget p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:I

    .line 122
    .line 123
    new-array p2, p2, [Landroidx/recyclerview/widget/d0;

    .line 124
    .line 125
    iput-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:[Landroidx/recyclerview/widget/d0;

    .line 126
    .line 127
    :goto_2
    iget p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:I

    .line 128
    .line 129
    if-ge v1, p2, :cond_3

    .line 130
    .line 131
    iget-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:[Landroidx/recyclerview/widget/d0;

    .line 132
    .line 133
    new-instance p4, Landroidx/recyclerview/widget/d0;

    .line 134
    .line 135
    invoke-direct {p4, p0, v1}, Landroidx/recyclerview/widget/d0;-><init>(Landroidx/recyclerview/widget/StaggeredGridLayoutManager;I)V

    .line 136
    .line 137
    .line 138
    aput-object p4, p2, v1

    .line 139
    .line 140
    add-int/lit8 v1, v1, 0x1

    .line 141
    .line 142
    goto :goto_2

    .line 143
    :cond_3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/E;->q0()V

    .line 144
    .line 145
    .line 146
    :cond_4
    iget-boolean p1, p1, Lu/q;->c:Z

    .line 147
    .line 148
    invoke-virtual {p0, p3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->f(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    iget-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->F:Landroidx/recyclerview/widget/c0;

    .line 152
    .line 153
    if-eqz p2, :cond_5

    .line 154
    .line 155
    iget-boolean p3, p2, Landroidx/recyclerview/widget/c0;->h:Z

    .line 156
    .line 157
    if-eq p3, p1, :cond_5

    .line 158
    .line 159
    iput-boolean p1, p2, Landroidx/recyclerview/widget/c0;->h:Z

    .line 160
    .line 161
    :cond_5
    iput-boolean p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->w:Z

    .line 162
    .line 163
    invoke-virtual {p0}, Landroidx/recyclerview/widget/E;->q0()V

    .line 164
    .line 165
    .line 166
    new-instance p1, Landroidx/recyclerview/widget/p;

    .line 167
    .line 168
    invoke-direct {p1}, Landroidx/recyclerview/widget/p;-><init>()V

    .line 169
    .line 170
    .line 171
    iput-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->v:Landroidx/recyclerview/widget/p;

    .line 172
    .line 173
    iget p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:I

    .line 174
    .line 175
    invoke-static {p0, p1}, Landroidx/recyclerview/widget/x;->a(Landroidx/recyclerview/widget/E;I)Landroidx/recyclerview/widget/x;

    .line 176
    .line 177
    .line 178
    move-result-object p1

    .line 179
    iput-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Landroidx/recyclerview/widget/x;

    .line 180
    .line 181
    iget p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:I

    .line 182
    .line 183
    sub-int/2addr v0, p1

    .line 184
    invoke-static {p0, v0}, Landroidx/recyclerview/widget/x;->a(Landroidx/recyclerview/widget/E;I)Landroidx/recyclerview/widget/x;

    .line 185
    .line 186
    .line 187
    move-result-object p1

    .line 188
    iput-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s:Landroidx/recyclerview/widget/x;

    .line 189
    .line 190
    return-void
.end method

.method private F0(Landroidx/recyclerview/widget/M;)I
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/E;->y()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return p1

    .line 9
    :cond_0
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Landroidx/recyclerview/widget/x;

    .line 10
    .line 11
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->I:Z

    .line 12
    .line 13
    xor-int/lit8 v0, v0, 0x1

    .line 14
    .line 15
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->K0(Z)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->I:Z

    .line 20
    .line 21
    xor-int/lit8 v0, v0, 0x1

    .line 22
    .line 23
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->J0(Z)Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    iget-boolean v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->I:Z

    .line 28
    .line 29
    move-object v0, p1

    .line 30
    move-object v4, p0

    .line 31
    invoke-static/range {v0 .. v5}, Landroidx/recyclerview/widget/T;->a(Landroidx/recyclerview/widget/M;Landroidx/recyclerview/widget/x;Landroid/view/View;Landroid/view/View;Landroidx/recyclerview/widget/E;Z)I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    return p1
.end method

.method private G0(Landroidx/recyclerview/widget/M;)I
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/E;->y()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return p1

    .line 9
    :cond_0
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Landroidx/recyclerview/widget/x;

    .line 10
    .line 11
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->I:Z

    .line 12
    .line 13
    xor-int/lit8 v0, v0, 0x1

    .line 14
    .line 15
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->K0(Z)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->I:Z

    .line 20
    .line 21
    xor-int/lit8 v0, v0, 0x1

    .line 22
    .line 23
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->J0(Z)Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    iget-boolean v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->I:Z

    .line 28
    .line 29
    iget-boolean v6, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->x:Z

    .line 30
    .line 31
    move-object v0, p1

    .line 32
    move-object v4, p0

    .line 33
    invoke-static/range {v0 .. v6}, Landroidx/recyclerview/widget/T;->b(Landroidx/recyclerview/widget/M;Landroidx/recyclerview/widget/x;Landroid/view/View;Landroid/view/View;Landroidx/recyclerview/widget/E;ZZ)I

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    return p1
.end method

.method private H0(Landroidx/recyclerview/widget/M;)I
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/E;->y()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return p1

    .line 9
    :cond_0
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Landroidx/recyclerview/widget/x;

    .line 10
    .line 11
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->I:Z

    .line 12
    .line 13
    xor-int/lit8 v0, v0, 0x1

    .line 14
    .line 15
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->K0(Z)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->I:Z

    .line 20
    .line 21
    xor-int/lit8 v0, v0, 0x1

    .line 22
    .line 23
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->J0(Z)Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    iget-boolean v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->I:Z

    .line 28
    .line 29
    move-object v0, p1

    .line 30
    move-object v4, p0

    .line 31
    invoke-static/range {v0 .. v5}, Landroidx/recyclerview/widget/T;->c(Landroidx/recyclerview/widget/M;Landroidx/recyclerview/widget/x;Landroid/view/View;Landroid/view/View;Landroidx/recyclerview/widget/E;Z)I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    return p1
.end method

.method private I0(Landroidx/recyclerview/widget/I;Landroidx/recyclerview/widget/p;Landroidx/recyclerview/widget/M;)I
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    iget-object v3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->y:Ljava/util/BitSet;

    .line 8
    .line 9
    iget v4, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:I

    .line 10
    .line 11
    const/4 v5, 0x0

    .line 12
    const/4 v6, 0x1

    .line 13
    invoke-virtual {v3, v5, v4, v6}, Ljava/util/BitSet;->set(IIZ)V

    .line 14
    .line 15
    .line 16
    iget-object v3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->v:Landroidx/recyclerview/widget/p;

    .line 17
    .line 18
    iget-boolean v4, v3, Landroidx/recyclerview/widget/p;->i:Z

    .line 19
    .line 20
    if-eqz v4, :cond_1

    .line 21
    .line 22
    iget v4, v2, Landroidx/recyclerview/widget/p;->e:I

    .line 23
    .line 24
    if-ne v4, v6, :cond_0

    .line 25
    .line 26
    const v4, 0x7fffffff

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/high16 v4, -0x80000000

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    iget v4, v2, Landroidx/recyclerview/widget/p;->e:I

    .line 34
    .line 35
    if-ne v4, v6, :cond_2

    .line 36
    .line 37
    iget v4, v2, Landroidx/recyclerview/widget/p;->g:I

    .line 38
    .line 39
    iget v9, v2, Landroidx/recyclerview/widget/p;->b:I

    .line 40
    .line 41
    add-int/2addr v4, v9

    .line 42
    goto :goto_0

    .line 43
    :cond_2
    iget v4, v2, Landroidx/recyclerview/widget/p;->f:I

    .line 44
    .line 45
    iget v9, v2, Landroidx/recyclerview/widget/p;->b:I

    .line 46
    .line 47
    sub-int/2addr v4, v9

    .line 48
    :goto_0
    iget v9, v2, Landroidx/recyclerview/widget/p;->e:I

    .line 49
    .line 50
    const/4 v10, 0x0

    .line 51
    :goto_1
    iget v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:I

    .line 52
    .line 53
    if-ge v10, v11, :cond_4

    .line 54
    .line 55
    iget-object v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:[Landroidx/recyclerview/widget/d0;

    .line 56
    .line 57
    aget-object v11, v11, v10

    .line 58
    .line 59
    iget-object v11, v11, Landroidx/recyclerview/widget/d0;->a:Ljava/util/ArrayList;

    .line 60
    .line 61
    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    .line 62
    .line 63
    .line 64
    move-result v11

    .line 65
    if-eqz v11, :cond_3

    .line 66
    .line 67
    goto :goto_2

    .line 68
    :cond_3
    iget-object v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:[Landroidx/recyclerview/widget/d0;

    .line 69
    .line 70
    aget-object v11, v11, v10

    .line 71
    .line 72
    invoke-direct {v0, v11, v9, v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->f1(Landroidx/recyclerview/widget/d0;II)V

    .line 73
    .line 74
    .line 75
    :goto_2
    add-int/lit8 v10, v10, 0x1

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_4
    iget-boolean v9, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->x:Z

    .line 79
    .line 80
    if-eqz v9, :cond_5

    .line 81
    .line 82
    iget-object v9, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Landroidx/recyclerview/widget/x;

    .line 83
    .line 84
    invoke-virtual {v9}, Landroidx/recyclerview/widget/x;->g()I

    .line 85
    .line 86
    .line 87
    move-result v9

    .line 88
    goto :goto_3

    .line 89
    :cond_5
    iget-object v9, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Landroidx/recyclerview/widget/x;

    .line 90
    .line 91
    invoke-virtual {v9}, Landroidx/recyclerview/widget/x;->k()I

    .line 92
    .line 93
    .line 94
    move-result v9

    .line 95
    :goto_3
    const/4 v10, 0x0

    .line 96
    :goto_4
    iget v11, v2, Landroidx/recyclerview/widget/p;->c:I

    .line 97
    .line 98
    if-ltz v11, :cond_6

    .line 99
    .line 100
    invoke-virtual/range {p3 .. p3}, Landroidx/recyclerview/widget/M;->b()I

    .line 101
    .line 102
    .line 103
    move-result v12

    .line 104
    if-ge v11, v12, :cond_6

    .line 105
    .line 106
    const/4 v11, 0x1

    .line 107
    goto :goto_5

    .line 108
    :cond_6
    const/4 v11, 0x0

    .line 109
    :goto_5
    const/4 v12, -0x1

    .line 110
    if-eqz v11, :cond_1e

    .line 111
    .line 112
    iget-boolean v11, v3, Landroidx/recyclerview/widget/p;->i:Z

    .line 113
    .line 114
    if-nez v11, :cond_7

    .line 115
    .line 116
    iget-object v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->y:Ljava/util/BitSet;

    .line 117
    .line 118
    invoke-virtual {v11}, Ljava/util/BitSet;->isEmpty()Z

    .line 119
    .line 120
    .line 121
    move-result v11

    .line 122
    if-nez v11, :cond_1e

    .line 123
    .line 124
    :cond_7
    iget v10, v2, Landroidx/recyclerview/widget/p;->c:I

    .line 125
    .line 126
    const-wide v13, 0x7fffffffffffffffL

    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    invoke-virtual {v1, v10, v13, v14}, Landroidx/recyclerview/widget/I;->o(IJ)Landroidx/recyclerview/widget/P;

    .line 132
    .line 133
    .line 134
    move-result-object v10

    .line 135
    iget-object v10, v10, Landroidx/recyclerview/widget/P;->itemView:Landroid/view/View;

    .line 136
    .line 137
    iget v11, v2, Landroidx/recyclerview/widget/p;->c:I

    .line 138
    .line 139
    iget v13, v2, Landroidx/recyclerview/widget/p;->d:I

    .line 140
    .line 141
    add-int/2addr v11, v13

    .line 142
    iput v11, v2, Landroidx/recyclerview/widget/p;->c:I

    .line 143
    .line 144
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 145
    .line 146
    .line 147
    move-result-object v11

    .line 148
    check-cast v11, Landroidx/recyclerview/widget/X;

    .line 149
    .line 150
    invoke-virtual {v11}, Landroidx/recyclerview/widget/F;->a()I

    .line 151
    .line 152
    .line 153
    move-result v13

    .line 154
    iget-object v14, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->B:Landroidx/recyclerview/widget/a0;

    .line 155
    .line 156
    iget-object v14, v14, Landroidx/recyclerview/widget/a0;->a:[I

    .line 157
    .line 158
    if-eqz v14, :cond_9

    .line 159
    .line 160
    array-length v15, v14

    .line 161
    if-lt v13, v15, :cond_8

    .line 162
    .line 163
    goto :goto_6

    .line 164
    :cond_8
    aget v14, v14, v13

    .line 165
    .line 166
    goto :goto_7

    .line 167
    :cond_9
    :goto_6
    const/4 v14, -0x1

    .line 168
    :goto_7
    if-ne v14, v12, :cond_a

    .line 169
    .line 170
    const/4 v15, 0x1

    .line 171
    goto :goto_8

    .line 172
    :cond_a
    const/4 v15, 0x0

    .line 173
    :goto_8
    if-eqz v15, :cond_10

    .line 174
    .line 175
    iget v14, v2, Landroidx/recyclerview/widget/p;->e:I

    .line 176
    .line 177
    invoke-direct {v0, v14}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->W0(I)Z

    .line 178
    .line 179
    .line 180
    move-result v14

    .line 181
    if-eqz v14, :cond_b

    .line 182
    .line 183
    iget v14, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:I

    .line 184
    .line 185
    sub-int/2addr v14, v6

    .line 186
    move v15, v14

    .line 187
    const/4 v14, -0x1

    .line 188
    goto :goto_9

    .line 189
    :cond_b
    iget v12, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:I

    .line 190
    .line 191
    const/4 v14, 0x1

    .line 192
    const/4 v15, 0x0

    .line 193
    :goto_9
    iget v7, v2, Landroidx/recyclerview/widget/p;->e:I

    .line 194
    .line 195
    const/16 v16, 0x0

    .line 196
    .line 197
    if-ne v7, v6, :cond_d

    .line 198
    .line 199
    iget-object v7, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Landroidx/recyclerview/widget/x;

    .line 200
    .line 201
    invoke-virtual {v7}, Landroidx/recyclerview/widget/x;->k()I

    .line 202
    .line 203
    .line 204
    move-result v7

    .line 205
    const v8, 0x7fffffff

    .line 206
    .line 207
    .line 208
    :goto_a
    if-eq v15, v12, :cond_f

    .line 209
    .line 210
    iget-object v5, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:[Landroidx/recyclerview/widget/d0;

    .line 211
    .line 212
    aget-object v5, v5, v15

    .line 213
    .line 214
    invoke-virtual {v5, v7}, Landroidx/recyclerview/widget/d0;->f(I)I

    .line 215
    .line 216
    .line 217
    move-result v6

    .line 218
    if-ge v6, v8, :cond_c

    .line 219
    .line 220
    move-object/from16 v16, v5

    .line 221
    .line 222
    move v8, v6

    .line 223
    :cond_c
    add-int/2addr v15, v14

    .line 224
    const/4 v5, 0x0

    .line 225
    const/4 v6, 0x1

    .line 226
    goto :goto_a

    .line 227
    :cond_d
    iget-object v5, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Landroidx/recyclerview/widget/x;

    .line 228
    .line 229
    invoke-virtual {v5}, Landroidx/recyclerview/widget/x;->g()I

    .line 230
    .line 231
    .line 232
    move-result v5

    .line 233
    const/high16 v6, -0x80000000

    .line 234
    .line 235
    :goto_b
    if-eq v15, v12, :cond_f

    .line 236
    .line 237
    iget-object v7, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:[Landroidx/recyclerview/widget/d0;

    .line 238
    .line 239
    aget-object v7, v7, v15

    .line 240
    .line 241
    invoke-virtual {v7, v5}, Landroidx/recyclerview/widget/d0;->i(I)I

    .line 242
    .line 243
    .line 244
    move-result v8

    .line 245
    if-le v8, v6, :cond_e

    .line 246
    .line 247
    move-object/from16 v16, v7

    .line 248
    .line 249
    move v6, v8

    .line 250
    :cond_e
    add-int/2addr v15, v14

    .line 251
    goto :goto_b

    .line 252
    :cond_f
    move-object/from16 v5, v16

    .line 253
    .line 254
    iget-object v6, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->B:Landroidx/recyclerview/widget/a0;

    .line 255
    .line 256
    invoke-virtual {v6, v13}, Landroidx/recyclerview/widget/a0;->b(I)V

    .line 257
    .line 258
    .line 259
    iget-object v6, v6, Landroidx/recyclerview/widget/a0;->a:[I

    .line 260
    .line 261
    iget v7, v5, Landroidx/recyclerview/widget/d0;->e:I

    .line 262
    .line 263
    aput v7, v6, v13

    .line 264
    .line 265
    goto :goto_c

    .line 266
    :cond_10
    iget-object v5, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:[Landroidx/recyclerview/widget/d0;

    .line 267
    .line 268
    aget-object v5, v5, v14

    .line 269
    .line 270
    :goto_c
    iput-object v5, v11, Landroidx/recyclerview/widget/X;->e:Landroidx/recyclerview/widget/d0;

    .line 271
    .line 272
    iget v6, v2, Landroidx/recyclerview/widget/p;->e:I

    .line 273
    .line 274
    const/4 v7, 0x1

    .line 275
    if-ne v6, v7, :cond_11

    .line 276
    .line 277
    invoke-virtual {v0, v10}, Landroidx/recyclerview/widget/E;->c(Landroid/view/View;)V

    .line 278
    .line 279
    .line 280
    goto :goto_d

    .line 281
    :cond_11
    invoke-virtual {v0, v10}, Landroidx/recyclerview/widget/E;->d(Landroid/view/View;)V

    .line 282
    .line 283
    .line 284
    :goto_d
    iget v6, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:I

    .line 285
    .line 286
    if-ne v6, v7, :cond_12

    .line 287
    .line 288
    iget v6, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->u:I

    .line 289
    .line 290
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/E;->N()I

    .line 291
    .line 292
    .line 293
    move-result v8

    .line 294
    iget v12, v11, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 295
    .line 296
    const/4 v13, 0x0

    .line 297
    invoke-static {v13, v6, v8, v13, v12}, Landroidx/recyclerview/widget/E;->z(ZIIII)I

    .line 298
    .line 299
    .line 300
    move-result v6

    .line 301
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/E;->C()I

    .line 302
    .line 303
    .line 304
    move-result v8

    .line 305
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/E;->D()I

    .line 306
    .line 307
    .line 308
    move-result v12

    .line 309
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/E;->H()I

    .line 310
    .line 311
    .line 312
    move-result v13

    .line 313
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/E;->E()I

    .line 314
    .line 315
    .line 316
    move-result v14

    .line 317
    add-int/2addr v14, v13

    .line 318
    iget v13, v11, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 319
    .line 320
    invoke-static {v7, v8, v12, v14, v13}, Landroidx/recyclerview/widget/E;->z(ZIIII)I

    .line 321
    .line 322
    .line 323
    move-result v8

    .line 324
    invoke-direct {v0, v10, v6, v8}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->U0(Landroid/view/View;II)V

    .line 325
    .line 326
    .line 327
    goto :goto_e

    .line 328
    :cond_12
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/E;->M()I

    .line 329
    .line 330
    .line 331
    move-result v6

    .line 332
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/E;->N()I

    .line 333
    .line 334
    .line 335
    move-result v8

    .line 336
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/E;->F()I

    .line 337
    .line 338
    .line 339
    move-result v12

    .line 340
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/E;->G()I

    .line 341
    .line 342
    .line 343
    move-result v13

    .line 344
    add-int/2addr v13, v12

    .line 345
    iget v12, v11, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 346
    .line 347
    invoke-static {v7, v6, v8, v13, v12}, Landroidx/recyclerview/widget/E;->z(ZIIII)I

    .line 348
    .line 349
    .line 350
    move-result v6

    .line 351
    iget v8, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->u:I

    .line 352
    .line 353
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/E;->D()I

    .line 354
    .line 355
    .line 356
    move-result v12

    .line 357
    iget v13, v11, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 358
    .line 359
    const/4 v14, 0x0

    .line 360
    invoke-static {v14, v8, v12, v14, v13}, Landroidx/recyclerview/widget/E;->z(ZIIII)I

    .line 361
    .line 362
    .line 363
    move-result v8

    .line 364
    invoke-direct {v0, v10, v6, v8}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->U0(Landroid/view/View;II)V

    .line 365
    .line 366
    .line 367
    :goto_e
    iget v6, v2, Landroidx/recyclerview/widget/p;->e:I

    .line 368
    .line 369
    if-ne v6, v7, :cond_13

    .line 370
    .line 371
    invoke-virtual {v5, v9}, Landroidx/recyclerview/widget/d0;->f(I)I

    .line 372
    .line 373
    .line 374
    move-result v6

    .line 375
    iget-object v7, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Landroidx/recyclerview/widget/x;

    .line 376
    .line 377
    invoke-virtual {v7, v10}, Landroidx/recyclerview/widget/x;->c(Landroid/view/View;)I

    .line 378
    .line 379
    .line 380
    move-result v7

    .line 381
    add-int/2addr v7, v6

    .line 382
    goto :goto_f

    .line 383
    :cond_13
    invoke-virtual {v5, v9}, Landroidx/recyclerview/widget/d0;->i(I)I

    .line 384
    .line 385
    .line 386
    move-result v7

    .line 387
    iget-object v6, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Landroidx/recyclerview/widget/x;

    .line 388
    .line 389
    invoke-virtual {v6, v10}, Landroidx/recyclerview/widget/x;->c(Landroid/view/View;)I

    .line 390
    .line 391
    .line 392
    move-result v6

    .line 393
    sub-int v6, v7, v6

    .line 394
    .line 395
    :goto_f
    iget v8, v2, Landroidx/recyclerview/widget/p;->e:I

    .line 396
    .line 397
    const/4 v12, 0x1

    .line 398
    if-ne v8, v12, :cond_17

    .line 399
    .line 400
    iget-object v8, v11, Landroidx/recyclerview/widget/X;->e:Landroidx/recyclerview/widget/d0;

    .line 401
    .line 402
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 403
    .line 404
    .line 405
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 406
    .line 407
    .line 408
    move-result-object v11

    .line 409
    check-cast v11, Landroidx/recyclerview/widget/X;

    .line 410
    .line 411
    iput-object v8, v11, Landroidx/recyclerview/widget/X;->e:Landroidx/recyclerview/widget/d0;

    .line 412
    .line 413
    iget-object v12, v8, Landroidx/recyclerview/widget/d0;->a:Ljava/util/ArrayList;

    .line 414
    .line 415
    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 416
    .line 417
    .line 418
    const/high16 v12, -0x80000000

    .line 419
    .line 420
    iput v12, v8, Landroidx/recyclerview/widget/d0;->c:I

    .line 421
    .line 422
    iget-object v13, v8, Landroidx/recyclerview/widget/d0;->a:Ljava/util/ArrayList;

    .line 423
    .line 424
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    .line 425
    .line 426
    .line 427
    move-result v13

    .line 428
    const/4 v14, 0x1

    .line 429
    if-ne v13, v14, :cond_14

    .line 430
    .line 431
    iput v12, v8, Landroidx/recyclerview/widget/d0;->b:I

    .line 432
    .line 433
    :cond_14
    invoke-virtual {v11}, Landroidx/recyclerview/widget/F;->c()Z

    .line 434
    .line 435
    .line 436
    move-result v12

    .line 437
    if-nez v12, :cond_15

    .line 438
    .line 439
    invoke-virtual {v11}, Landroidx/recyclerview/widget/F;->b()Z

    .line 440
    .line 441
    .line 442
    move-result v11

    .line 443
    if-eqz v11, :cond_16

    .line 444
    .line 445
    :cond_15
    iget v11, v8, Landroidx/recyclerview/widget/d0;->d:I

    .line 446
    .line 447
    iget-object v12, v8, Landroidx/recyclerview/widget/d0;->f:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 448
    .line 449
    iget-object v12, v12, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Landroidx/recyclerview/widget/x;

    .line 450
    .line 451
    invoke-virtual {v12, v10}, Landroidx/recyclerview/widget/x;->c(Landroid/view/View;)I

    .line 452
    .line 453
    .line 454
    move-result v12

    .line 455
    add-int/2addr v12, v11

    .line 456
    iput v12, v8, Landroidx/recyclerview/widget/d0;->d:I

    .line 457
    .line 458
    :cond_16
    const/high16 v13, -0x80000000

    .line 459
    .line 460
    goto :goto_10

    .line 461
    :cond_17
    iget-object v8, v11, Landroidx/recyclerview/widget/X;->e:Landroidx/recyclerview/widget/d0;

    .line 462
    .line 463
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 464
    .line 465
    .line 466
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 467
    .line 468
    .line 469
    move-result-object v11

    .line 470
    check-cast v11, Landroidx/recyclerview/widget/X;

    .line 471
    .line 472
    iput-object v8, v11, Landroidx/recyclerview/widget/X;->e:Landroidx/recyclerview/widget/d0;

    .line 473
    .line 474
    iget-object v12, v8, Landroidx/recyclerview/widget/d0;->a:Ljava/util/ArrayList;

    .line 475
    .line 476
    const/4 v13, 0x0

    .line 477
    invoke-virtual {v12, v13, v10}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 478
    .line 479
    .line 480
    const/high16 v13, -0x80000000

    .line 481
    .line 482
    iput v13, v8, Landroidx/recyclerview/widget/d0;->b:I

    .line 483
    .line 484
    iget-object v12, v8, Landroidx/recyclerview/widget/d0;->a:Ljava/util/ArrayList;

    .line 485
    .line 486
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    .line 487
    .line 488
    .line 489
    move-result v12

    .line 490
    const/4 v14, 0x1

    .line 491
    if-ne v12, v14, :cond_18

    .line 492
    .line 493
    iput v13, v8, Landroidx/recyclerview/widget/d0;->c:I

    .line 494
    .line 495
    :cond_18
    invoke-virtual {v11}, Landroidx/recyclerview/widget/F;->c()Z

    .line 496
    .line 497
    .line 498
    move-result v12

    .line 499
    if-nez v12, :cond_19

    .line 500
    .line 501
    invoke-virtual {v11}, Landroidx/recyclerview/widget/F;->b()Z

    .line 502
    .line 503
    .line 504
    move-result v11

    .line 505
    if-eqz v11, :cond_1a

    .line 506
    .line 507
    :cond_19
    iget v11, v8, Landroidx/recyclerview/widget/d0;->d:I

    .line 508
    .line 509
    iget-object v12, v8, Landroidx/recyclerview/widget/d0;->f:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 510
    .line 511
    iget-object v12, v12, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Landroidx/recyclerview/widget/x;

    .line 512
    .line 513
    invoke-virtual {v12, v10}, Landroidx/recyclerview/widget/x;->c(Landroid/view/View;)I

    .line 514
    .line 515
    .line 516
    move-result v12

    .line 517
    add-int/2addr v12, v11

    .line 518
    iput v12, v8, Landroidx/recyclerview/widget/d0;->d:I

    .line 519
    .line 520
    :cond_1a
    :goto_10
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->T0()Z

    .line 521
    .line 522
    .line 523
    move-result v8

    .line 524
    if-eqz v8, :cond_1b

    .line 525
    .line 526
    iget v8, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:I

    .line 527
    .line 528
    const/4 v11, 0x1

    .line 529
    if-ne v8, v11, :cond_1b

    .line 530
    .line 531
    iget-object v8, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s:Landroidx/recyclerview/widget/x;

    .line 532
    .line 533
    invoke-virtual {v8}, Landroidx/recyclerview/widget/x;->g()I

    .line 534
    .line 535
    .line 536
    move-result v8

    .line 537
    iget v12, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:I

    .line 538
    .line 539
    sub-int/2addr v12, v11

    .line 540
    iget v11, v5, Landroidx/recyclerview/widget/d0;->e:I

    .line 541
    .line 542
    sub-int/2addr v12, v11

    .line 543
    iget v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->u:I

    .line 544
    .line 545
    mul-int v12, v12, v11

    .line 546
    .line 547
    sub-int/2addr v8, v12

    .line 548
    iget-object v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s:Landroidx/recyclerview/widget/x;

    .line 549
    .line 550
    invoke-virtual {v11, v10}, Landroidx/recyclerview/widget/x;->c(Landroid/view/View;)I

    .line 551
    .line 552
    .line 553
    move-result v11

    .line 554
    sub-int v11, v8, v11

    .line 555
    .line 556
    goto :goto_11

    .line 557
    :cond_1b
    iget v8, v5, Landroidx/recyclerview/widget/d0;->e:I

    .line 558
    .line 559
    iget v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->u:I

    .line 560
    .line 561
    mul-int v8, v8, v11

    .line 562
    .line 563
    iget-object v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s:Landroidx/recyclerview/widget/x;

    .line 564
    .line 565
    invoke-virtual {v11}, Landroidx/recyclerview/widget/x;->k()I

    .line 566
    .line 567
    .line 568
    move-result v11

    .line 569
    add-int/2addr v11, v8

    .line 570
    iget-object v8, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s:Landroidx/recyclerview/widget/x;

    .line 571
    .line 572
    invoke-virtual {v8, v10}, Landroidx/recyclerview/widget/x;->c(Landroid/view/View;)I

    .line 573
    .line 574
    .line 575
    move-result v8

    .line 576
    add-int/2addr v8, v11

    .line 577
    :goto_11
    iget v12, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:I

    .line 578
    .line 579
    const/4 v14, 0x1

    .line 580
    if-ne v12, v14, :cond_1c

    .line 581
    .line 582
    invoke-static {v10, v11, v6, v8, v7}, Landroidx/recyclerview/widget/E;->R(Landroid/view/View;IIII)V

    .line 583
    .line 584
    .line 585
    goto :goto_12

    .line 586
    :cond_1c
    invoke-static {v10, v6, v11, v7, v8}, Landroidx/recyclerview/widget/E;->R(Landroid/view/View;IIII)V

    .line 587
    .line 588
    .line 589
    :goto_12
    iget v6, v3, Landroidx/recyclerview/widget/p;->e:I

    .line 590
    .line 591
    invoke-direct {v0, v5, v6, v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->f1(Landroidx/recyclerview/widget/d0;II)V

    .line 592
    .line 593
    .line 594
    invoke-direct {v0, v1, v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->Y0(Landroidx/recyclerview/widget/I;Landroidx/recyclerview/widget/p;)V

    .line 595
    .line 596
    .line 597
    iget-boolean v6, v3, Landroidx/recyclerview/widget/p;->h:Z

    .line 598
    .line 599
    if-eqz v6, :cond_1d

    .line 600
    .line 601
    invoke-virtual {v10}, Landroid/view/View;->hasFocusable()Z

    .line 602
    .line 603
    .line 604
    move-result v6

    .line 605
    if-eqz v6, :cond_1d

    .line 606
    .line 607
    iget-object v6, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->y:Ljava/util/BitSet;

    .line 608
    .line 609
    iget v5, v5, Landroidx/recyclerview/widget/d0;->e:I

    .line 610
    .line 611
    const/4 v7, 0x0

    .line 612
    invoke-virtual {v6, v5, v7}, Ljava/util/BitSet;->set(IZ)V

    .line 613
    .line 614
    .line 615
    goto :goto_13

    .line 616
    :cond_1d
    const/4 v7, 0x0

    .line 617
    :goto_13
    const/4 v5, 0x0

    .line 618
    const/4 v6, 0x1

    .line 619
    const/4 v10, 0x1

    .line 620
    goto/16 :goto_4

    .line 621
    .line 622
    :cond_1e
    const/4 v7, 0x0

    .line 623
    if-nez v10, :cond_1f

    .line 624
    .line 625
    invoke-direct {v0, v1, v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->Y0(Landroidx/recyclerview/widget/I;Landroidx/recyclerview/widget/p;)V

    .line 626
    .line 627
    .line 628
    :cond_1f
    iget v1, v3, Landroidx/recyclerview/widget/p;->e:I

    .line 629
    .line 630
    if-ne v1, v12, :cond_20

    .line 631
    .line 632
    iget-object v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Landroidx/recyclerview/widget/x;

    .line 633
    .line 634
    invoke-virtual {v1}, Landroidx/recyclerview/widget/x;->k()I

    .line 635
    .line 636
    .line 637
    move-result v1

    .line 638
    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->Q0(I)I

    .line 639
    .line 640
    .line 641
    move-result v1

    .line 642
    iget-object v3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Landroidx/recyclerview/widget/x;

    .line 643
    .line 644
    invoke-virtual {v3}, Landroidx/recyclerview/widget/x;->k()I

    .line 645
    .line 646
    .line 647
    move-result v3

    .line 648
    sub-int/2addr v3, v1

    .line 649
    goto :goto_14

    .line 650
    :cond_20
    iget-object v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Landroidx/recyclerview/widget/x;

    .line 651
    .line 652
    invoke-virtual {v1}, Landroidx/recyclerview/widget/x;->g()I

    .line 653
    .line 654
    .line 655
    move-result v1

    .line 656
    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->P0(I)I

    .line 657
    .line 658
    .line 659
    move-result v1

    .line 660
    iget-object v3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Landroidx/recyclerview/widget/x;

    .line 661
    .line 662
    invoke-virtual {v3}, Landroidx/recyclerview/widget/x;->g()I

    .line 663
    .line 664
    .line 665
    move-result v3

    .line 666
    sub-int v3, v1, v3

    .line 667
    .line 668
    :goto_14
    if-lez v3, :cond_21

    .line 669
    .line 670
    iget v1, v2, Landroidx/recyclerview/widget/p;->b:I

    .line 671
    .line 672
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    .line 673
    .line 674
    .line 675
    move-result v5

    .line 676
    goto :goto_15

    .line 677
    :cond_21
    const/4 v5, 0x0

    .line 678
    :goto_15
    return v5
.end method

.method private L0(Landroidx/recyclerview/widget/I;Landroidx/recyclerview/widget/M;Z)V
    .locals 2

    .line 1
    const/high16 v0, -0x80000000

    .line 2
    .line 3
    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->P0(I)I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-ne v1, v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Landroidx/recyclerview/widget/x;

    .line 11
    .line 12
    invoke-virtual {v0}, Landroidx/recyclerview/widget/x;->g()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    sub-int/2addr v0, v1

    .line 17
    if-lez v0, :cond_1

    .line 18
    .line 19
    neg-int v1, v0

    .line 20
    invoke-virtual {p0, v1, p1, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c1(ILandroidx/recyclerview/widget/I;Landroidx/recyclerview/widget/M;)I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    neg-int p1, p1

    .line 25
    sub-int/2addr v0, p1

    .line 26
    if-eqz p3, :cond_1

    .line 27
    .line 28
    if-lez v0, :cond_1

    .line 29
    .line 30
    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Landroidx/recyclerview/widget/x;

    .line 31
    .line 32
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/x;->p(I)V

    .line 33
    .line 34
    .line 35
    :cond_1
    return-void
.end method

.method private M0(Landroidx/recyclerview/widget/I;Landroidx/recyclerview/widget/M;Z)V
    .locals 2

    .line 1
    const v0, 0x7fffffff

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->Q0(I)I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-ne v1, v0, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Landroidx/recyclerview/widget/x;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroidx/recyclerview/widget/x;->k()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    sub-int/2addr v1, v0

    .line 18
    if-lez v1, :cond_1

    .line 19
    .line 20
    invoke-virtual {p0, v1, p1, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c1(ILandroidx/recyclerview/widget/I;Landroidx/recyclerview/widget/M;)I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    sub-int/2addr v1, p1

    .line 25
    if-eqz p3, :cond_1

    .line 26
    .line 27
    if-lez v1, :cond_1

    .line 28
    .line 29
    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Landroidx/recyclerview/widget/x;

    .line 30
    .line 31
    neg-int p2, v1

    .line 32
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/x;->p(I)V

    .line 33
    .line 34
    .line 35
    :cond_1
    return-void
.end method

.method private P0(I)I
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:[Landroidx/recyclerview/widget/d0;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    aget-object v0, v0, v1

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/d0;->f(I)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x1

    .line 11
    :goto_0
    iget v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:I

    .line 12
    .line 13
    if-ge v1, v2, :cond_1

    .line 14
    .line 15
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:[Landroidx/recyclerview/widget/d0;

    .line 16
    .line 17
    aget-object v2, v2, v1

    .line 18
    .line 19
    invoke-virtual {v2, p1}, Landroidx/recyclerview/widget/d0;->f(I)I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-le v2, v0, :cond_0

    .line 24
    .line 25
    move v0, v2

    .line 26
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    return v0
.end method

.method private Q0(I)I
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:[Landroidx/recyclerview/widget/d0;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    aget-object v0, v0, v1

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/d0;->i(I)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x1

    .line 11
    :goto_0
    iget v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:I

    .line 12
    .line 13
    if-ge v1, v2, :cond_1

    .line 14
    .line 15
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:[Landroidx/recyclerview/widget/d0;

    .line 16
    .line 17
    aget-object v2, v2, v1

    .line 18
    .line 19
    invoke-virtual {v2, p1}, Landroidx/recyclerview/widget/d0;->i(I)I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-ge v2, v0, :cond_0

    .line 24
    .line 25
    move v0, v2

    .line 26
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    return v0
.end method

.method private R0(III)V
    .locals 6

    .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->x:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->O0()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->N0()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    :goto_0
    const/16 v1, 0x8

    .line 15
    .line 16
    if-ne p3, v1, :cond_2

    .line 17
    .line 18
    if-ge p1, p2, :cond_1

    .line 19
    .line 20
    add-int/lit8 v2, p2, 0x1

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_1
    add-int/lit8 v2, p1, 0x1

    .line 24
    .line 25
    move v3, p2

    .line 26
    goto :goto_2

    .line 27
    :cond_2
    add-int v2, p1, p2

    .line 28
    .line 29
    :goto_1
    move v3, p1

    .line 30
    :goto_2
    iget-object v4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->B:Landroidx/recyclerview/widget/a0;

    .line 31
    .line 32
    invoke-virtual {v4, v3}, Landroidx/recyclerview/widget/a0;->c(I)I

    .line 33
    .line 34
    .line 35
    const/4 v4, 0x1

    .line 36
    if-eq p3, v4, :cond_5

    .line 37
    .line 38
    const/4 v5, 0x2

    .line 39
    if-eq p3, v5, :cond_4

    .line 40
    .line 41
    if-eq p3, v1, :cond_3

    .line 42
    .line 43
    goto :goto_3

    .line 44
    :cond_3
    iget-object p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->B:Landroidx/recyclerview/widget/a0;

    .line 45
    .line 46
    invoke-virtual {p3, p1, v4}, Landroidx/recyclerview/widget/a0;->e(II)V

    .line 47
    .line 48
    .line 49
    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->B:Landroidx/recyclerview/widget/a0;

    .line 50
    .line 51
    invoke-virtual {p1, p2, v4}, Landroidx/recyclerview/widget/a0;->d(II)V

    .line 52
    .line 53
    .line 54
    goto :goto_3

    .line 55
    :cond_4
    iget-object p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->B:Landroidx/recyclerview/widget/a0;

    .line 56
    .line 57
    invoke-virtual {p3, p1, p2}, Landroidx/recyclerview/widget/a0;->e(II)V

    .line 58
    .line 59
    .line 60
    goto :goto_3

    .line 61
    :cond_5
    iget-object p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->B:Landroidx/recyclerview/widget/a0;

    .line 62
    .line 63
    invoke-virtual {p3, p1, p2}, Landroidx/recyclerview/widget/a0;->d(II)V

    .line 64
    .line 65
    .line 66
    :goto_3
    if-gt v2, v0, :cond_6

    .line 67
    .line 68
    return-void

    .line 69
    :cond_6
    iget-boolean p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->x:Z

    .line 70
    .line 71
    if-eqz p1, :cond_7

    .line 72
    .line 73
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->N0()I

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    goto :goto_4

    .line 78
    :cond_7
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->O0()I

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    :goto_4
    if-gt v3, p1, :cond_8

    .line 83
    .line 84
    invoke-virtual {p0}, Landroidx/recyclerview/widget/E;->q0()V

    .line 85
    .line 86
    .line 87
    :cond_8
    return-void
.end method

.method private U0(Landroid/view/View;II)V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/E;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->G:Landroid/graphics/Rect;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->P(Landroid/view/View;)Landroid/graphics/Rect;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 17
    .line 18
    .line 19
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Landroidx/recyclerview/widget/X;

    .line 24
    .line 25
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 26
    .line 27
    iget v3, v1, Landroid/graphics/Rect;->left:I

    .line 28
    .line 29
    add-int/2addr v2, v3

    .line 30
    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 31
    .line 32
    iget v4, v1, Landroid/graphics/Rect;->right:I

    .line 33
    .line 34
    add-int/2addr v3, v4

    .line 35
    invoke-static {p2, v2, v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->g1(III)I

    .line 36
    .line 37
    .line 38
    move-result p2

    .line 39
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 40
    .line 41
    iget v3, v1, Landroid/graphics/Rect;->top:I

    .line 42
    .line 43
    add-int/2addr v2, v3

    .line 44
    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 45
    .line 46
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    .line 47
    .line 48
    add-int/2addr v3, v1

    .line 49
    invoke-static {p3, v2, v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->g1(III)I

    .line 50
    .line 51
    .line 52
    move-result p3

    .line 53
    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/recyclerview/widget/E;->A0(Landroid/view/View;IILandroidx/recyclerview/widget/F;)Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-eqz v0, :cond_1

    .line 58
    .line 59
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    .line 60
    .line 61
    .line 62
    :cond_1
    return-void
.end method

.method private V0(Landroidx/recyclerview/widget/I;Landroidx/recyclerview/widget/M;Z)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    iget-object v3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->F:Landroidx/recyclerview/widget/c0;

    .line 8
    .line 9
    const/4 v4, -0x1

    .line 10
    iget-object v5, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->H:Landroidx/recyclerview/widget/W;

    .line 11
    .line 12
    if-nez v3, :cond_0

    .line 13
    .line 14
    iget v3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->z:I

    .line 15
    .line 16
    if-eq v3, v4, :cond_1

    .line 17
    .line 18
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/M;->b()I

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-nez v3, :cond_1

    .line 23
    .line 24
    invoke-virtual/range {p0 .. p1}, Landroidx/recyclerview/widget/E;->n0(Landroidx/recyclerview/widget/I;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v5}, Landroidx/recyclerview/widget/W;->a()V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_1
    iget-boolean v3, v5, Landroidx/recyclerview/widget/W;->e:Z

    .line 32
    .line 33
    const/4 v6, 0x1

    .line 34
    const/4 v7, 0x0

    .line 35
    if-eqz v3, :cond_3

    .line 36
    .line 37
    iget v3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->z:I

    .line 38
    .line 39
    if-ne v3, v4, :cond_3

    .line 40
    .line 41
    iget-object v3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->F:Landroidx/recyclerview/widget/c0;

    .line 42
    .line 43
    if-eqz v3, :cond_2

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    const/4 v3, 0x0

    .line 47
    goto :goto_1

    .line 48
    :cond_3
    :goto_0
    const/4 v3, 0x1

    .line 49
    :goto_1
    iget-object v8, v5, Landroidx/recyclerview/widget/W;->g:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 50
    .line 51
    const/high16 v9, -0x80000000

    .line 52
    .line 53
    if-eqz v3, :cond_27

    .line 54
    .line 55
    invoke-virtual {v5}, Landroidx/recyclerview/widget/W;->a()V

    .line 56
    .line 57
    .line 58
    iget-object v10, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->F:Landroidx/recyclerview/widget/c0;

    .line 59
    .line 60
    if-eqz v10, :cond_a

    .line 61
    .line 62
    iget v11, v10, Landroidx/recyclerview/widget/c0;->c:I

    .line 63
    .line 64
    const/4 v12, 0x0

    .line 65
    if-lez v11, :cond_7

    .line 66
    .line 67
    iget v13, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:I

    .line 68
    .line 69
    if-ne v11, v13, :cond_6

    .line 70
    .line 71
    const/4 v10, 0x0

    .line 72
    :goto_2
    iget v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:I

    .line 73
    .line 74
    if-ge v10, v11, :cond_7

    .line 75
    .line 76
    iget-object v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:[Landroidx/recyclerview/widget/d0;

    .line 77
    .line 78
    aget-object v11, v11, v10

    .line 79
    .line 80
    invoke-virtual {v11}, Landroidx/recyclerview/widget/d0;->b()V

    .line 81
    .line 82
    .line 83
    iget-object v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->F:Landroidx/recyclerview/widget/c0;

    .line 84
    .line 85
    iget-object v13, v11, Landroidx/recyclerview/widget/c0;->d:[I

    .line 86
    .line 87
    aget v13, v13, v10

    .line 88
    .line 89
    if-eq v13, v9, :cond_5

    .line 90
    .line 91
    iget-boolean v11, v11, Landroidx/recyclerview/widget/c0;->i:Z

    .line 92
    .line 93
    if-eqz v11, :cond_4

    .line 94
    .line 95
    iget-object v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Landroidx/recyclerview/widget/x;

    .line 96
    .line 97
    invoke-virtual {v11}, Landroidx/recyclerview/widget/x;->g()I

    .line 98
    .line 99
    .line 100
    move-result v11

    .line 101
    goto :goto_3

    .line 102
    :cond_4
    iget-object v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Landroidx/recyclerview/widget/x;

    .line 103
    .line 104
    invoke-virtual {v11}, Landroidx/recyclerview/widget/x;->k()I

    .line 105
    .line 106
    .line 107
    move-result v11

    .line 108
    :goto_3
    add-int/2addr v13, v11

    .line 109
    :cond_5
    iget-object v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:[Landroidx/recyclerview/widget/d0;

    .line 110
    .line 111
    aget-object v11, v11, v10

    .line 112
    .line 113
    iput v13, v11, Landroidx/recyclerview/widget/d0;->b:I

    .line 114
    .line 115
    iput v13, v11, Landroidx/recyclerview/widget/d0;->c:I

    .line 116
    .line 117
    add-int/lit8 v10, v10, 0x1

    .line 118
    .line 119
    goto :goto_2

    .line 120
    :cond_6
    iput-object v12, v10, Landroidx/recyclerview/widget/c0;->d:[I

    .line 121
    .line 122
    iput v7, v10, Landroidx/recyclerview/widget/c0;->c:I

    .line 123
    .line 124
    iput v7, v10, Landroidx/recyclerview/widget/c0;->e:I

    .line 125
    .line 126
    iput-object v12, v10, Landroidx/recyclerview/widget/c0;->f:[I

    .line 127
    .line 128
    iput-object v12, v10, Landroidx/recyclerview/widget/c0;->g:Ljava/util/List;

    .line 129
    .line 130
    iget v11, v10, Landroidx/recyclerview/widget/c0;->b:I

    .line 131
    .line 132
    iput v11, v10, Landroidx/recyclerview/widget/c0;->a:I

    .line 133
    .line 134
    :cond_7
    iget-object v10, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->F:Landroidx/recyclerview/widget/c0;

    .line 135
    .line 136
    iget-boolean v11, v10, Landroidx/recyclerview/widget/c0;->j:Z

    .line 137
    .line 138
    iput-boolean v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->E:Z

    .line 139
    .line 140
    iget-boolean v10, v10, Landroidx/recyclerview/widget/c0;->h:Z

    .line 141
    .line 142
    invoke-virtual {v0, v12}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->f(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    iget-object v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->F:Landroidx/recyclerview/widget/c0;

    .line 146
    .line 147
    if-eqz v11, :cond_8

    .line 148
    .line 149
    iget-boolean v12, v11, Landroidx/recyclerview/widget/c0;->h:Z

    .line 150
    .line 151
    if-eq v12, v10, :cond_8

    .line 152
    .line 153
    iput-boolean v10, v11, Landroidx/recyclerview/widget/c0;->h:Z

    .line 154
    .line 155
    :cond_8
    iput-boolean v10, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->w:Z

    .line 156
    .line 157
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/E;->q0()V

    .line 158
    .line 159
    .line 160
    invoke-direct/range {p0 .. p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b1()V

    .line 161
    .line 162
    .line 163
    iget-object v10, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->F:Landroidx/recyclerview/widget/c0;

    .line 164
    .line 165
    iget v11, v10, Landroidx/recyclerview/widget/c0;->a:I

    .line 166
    .line 167
    if-eq v11, v4, :cond_9

    .line 168
    .line 169
    iput v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->z:I

    .line 170
    .line 171
    iget-boolean v11, v10, Landroidx/recyclerview/widget/c0;->i:Z

    .line 172
    .line 173
    iput-boolean v11, v5, Landroidx/recyclerview/widget/W;->c:Z

    .line 174
    .line 175
    goto :goto_4

    .line 176
    :cond_9
    iget-boolean v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->x:Z

    .line 177
    .line 178
    iput-boolean v11, v5, Landroidx/recyclerview/widget/W;->c:Z

    .line 179
    .line 180
    :goto_4
    iget v11, v10, Landroidx/recyclerview/widget/c0;->e:I

    .line 181
    .line 182
    if-le v11, v6, :cond_b

    .line 183
    .line 184
    iget-object v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->B:Landroidx/recyclerview/widget/a0;

    .line 185
    .line 186
    iget-object v12, v10, Landroidx/recyclerview/widget/c0;->f:[I

    .line 187
    .line 188
    iput-object v12, v11, Landroidx/recyclerview/widget/a0;->a:[I

    .line 189
    .line 190
    iget-object v10, v10, Landroidx/recyclerview/widget/c0;->g:Ljava/util/List;

    .line 191
    .line 192
    iput-object v10, v11, Landroidx/recyclerview/widget/a0;->b:Ljava/util/List;

    .line 193
    .line 194
    goto :goto_5

    .line 195
    :cond_a
    invoke-direct/range {p0 .. p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b1()V

    .line 196
    .line 197
    .line 198
    iget-boolean v10, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->x:Z

    .line 199
    .line 200
    iput-boolean v10, v5, Landroidx/recyclerview/widget/W;->c:Z

    .line 201
    .line 202
    :cond_b
    :goto_5
    iget-boolean v10, v2, Landroidx/recyclerview/widget/M;->f:Z

    .line 203
    .line 204
    if-nez v10, :cond_21

    .line 205
    .line 206
    iget v10, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->z:I

    .line 207
    .line 208
    if-ne v10, v4, :cond_c

    .line 209
    .line 210
    goto/16 :goto_11

    .line 211
    .line 212
    :cond_c
    if-ltz v10, :cond_20

    .line 213
    .line 214
    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/M;->b()I

    .line 215
    .line 216
    .line 217
    move-result v11

    .line 218
    if-lt v10, v11, :cond_d

    .line 219
    .line 220
    goto/16 :goto_10

    .line 221
    .line 222
    :cond_d
    iget-object v10, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->F:Landroidx/recyclerview/widget/c0;

    .line 223
    .line 224
    if-eqz v10, :cond_f

    .line 225
    .line 226
    iget v11, v10, Landroidx/recyclerview/widget/c0;->a:I

    .line 227
    .line 228
    if-eq v11, v4, :cond_f

    .line 229
    .line 230
    iget v10, v10, Landroidx/recyclerview/widget/c0;->c:I

    .line 231
    .line 232
    if-ge v10, v6, :cond_e

    .line 233
    .line 234
    goto :goto_6

    .line 235
    :cond_e
    iput v9, v5, Landroidx/recyclerview/widget/W;->b:I

    .line 236
    .line 237
    iget v10, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->z:I

    .line 238
    .line 239
    iput v10, v5, Landroidx/recyclerview/widget/W;->a:I

    .line 240
    .line 241
    goto/16 :goto_f

    .line 242
    .line 243
    :cond_f
    :goto_6
    iget v10, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->z:I

    .line 244
    .line 245
    invoke-virtual {v0, v10}, Landroidx/recyclerview/widget/E;->t(I)Landroid/view/View;

    .line 246
    .line 247
    .line 248
    move-result-object v10

    .line 249
    if-eqz v10, :cond_17

    .line 250
    .line 251
    iget-boolean v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->x:Z

    .line 252
    .line 253
    if-eqz v11, :cond_10

    .line 254
    .line 255
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->O0()I

    .line 256
    .line 257
    .line 258
    move-result v11

    .line 259
    goto :goto_7

    .line 260
    :cond_10
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->N0()I

    .line 261
    .line 262
    .line 263
    move-result v11

    .line 264
    :goto_7
    iput v11, v5, Landroidx/recyclerview/widget/W;->a:I

    .line 265
    .line 266
    iget v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->A:I

    .line 267
    .line 268
    if-eq v11, v9, :cond_12

    .line 269
    .line 270
    iget-boolean v11, v5, Landroidx/recyclerview/widget/W;->c:Z

    .line 271
    .line 272
    if-eqz v11, :cond_11

    .line 273
    .line 274
    iget-object v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Landroidx/recyclerview/widget/x;

    .line 275
    .line 276
    invoke-virtual {v11}, Landroidx/recyclerview/widget/x;->g()I

    .line 277
    .line 278
    .line 279
    move-result v11

    .line 280
    iget v12, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->A:I

    .line 281
    .line 282
    sub-int/2addr v11, v12

    .line 283
    iget-object v12, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Landroidx/recyclerview/widget/x;

    .line 284
    .line 285
    invoke-virtual {v12, v10}, Landroidx/recyclerview/widget/x;->b(Landroid/view/View;)I

    .line 286
    .line 287
    .line 288
    move-result v10

    .line 289
    sub-int/2addr v11, v10

    .line 290
    iput v11, v5, Landroidx/recyclerview/widget/W;->b:I

    .line 291
    .line 292
    goto/16 :goto_f

    .line 293
    .line 294
    :cond_11
    iget-object v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Landroidx/recyclerview/widget/x;

    .line 295
    .line 296
    invoke-virtual {v11}, Landroidx/recyclerview/widget/x;->k()I

    .line 297
    .line 298
    .line 299
    move-result v11

    .line 300
    iget v12, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->A:I

    .line 301
    .line 302
    add-int/2addr v11, v12

    .line 303
    iget-object v12, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Landroidx/recyclerview/widget/x;

    .line 304
    .line 305
    invoke-virtual {v12, v10}, Landroidx/recyclerview/widget/x;->e(Landroid/view/View;)I

    .line 306
    .line 307
    .line 308
    move-result v10

    .line 309
    sub-int/2addr v11, v10

    .line 310
    iput v11, v5, Landroidx/recyclerview/widget/W;->b:I

    .line 311
    .line 312
    goto/16 :goto_f

    .line 313
    .line 314
    :cond_12
    iget-object v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Landroidx/recyclerview/widget/x;

    .line 315
    .line 316
    invoke-virtual {v11, v10}, Landroidx/recyclerview/widget/x;->c(Landroid/view/View;)I

    .line 317
    .line 318
    .line 319
    move-result v11

    .line 320
    iget-object v12, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Landroidx/recyclerview/widget/x;

    .line 321
    .line 322
    invoke-virtual {v12}, Landroidx/recyclerview/widget/x;->l()I

    .line 323
    .line 324
    .line 325
    move-result v12

    .line 326
    if-le v11, v12, :cond_14

    .line 327
    .line 328
    iget-boolean v10, v5, Landroidx/recyclerview/widget/W;->c:Z

    .line 329
    .line 330
    if-eqz v10, :cond_13

    .line 331
    .line 332
    iget-object v10, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Landroidx/recyclerview/widget/x;

    .line 333
    .line 334
    invoke-virtual {v10}, Landroidx/recyclerview/widget/x;->g()I

    .line 335
    .line 336
    .line 337
    move-result v10

    .line 338
    goto :goto_8

    .line 339
    :cond_13
    iget-object v10, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Landroidx/recyclerview/widget/x;

    .line 340
    .line 341
    invoke-virtual {v10}, Landroidx/recyclerview/widget/x;->k()I

    .line 342
    .line 343
    .line 344
    move-result v10

    .line 345
    :goto_8
    iput v10, v5, Landroidx/recyclerview/widget/W;->b:I

    .line 346
    .line 347
    goto/16 :goto_f

    .line 348
    .line 349
    :cond_14
    iget-object v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Landroidx/recyclerview/widget/x;

    .line 350
    .line 351
    invoke-virtual {v11, v10}, Landroidx/recyclerview/widget/x;->e(Landroid/view/View;)I

    .line 352
    .line 353
    .line 354
    move-result v11

    .line 355
    iget-object v12, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Landroidx/recyclerview/widget/x;

    .line 356
    .line 357
    invoke-virtual {v12}, Landroidx/recyclerview/widget/x;->k()I

    .line 358
    .line 359
    .line 360
    move-result v12

    .line 361
    sub-int/2addr v11, v12

    .line 362
    if-gez v11, :cond_15

    .line 363
    .line 364
    neg-int v10, v11

    .line 365
    iput v10, v5, Landroidx/recyclerview/widget/W;->b:I

    .line 366
    .line 367
    goto/16 :goto_f

    .line 368
    .line 369
    :cond_15
    iget-object v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Landroidx/recyclerview/widget/x;

    .line 370
    .line 371
    invoke-virtual {v11}, Landroidx/recyclerview/widget/x;->g()I

    .line 372
    .line 373
    .line 374
    move-result v11

    .line 375
    iget-object v12, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Landroidx/recyclerview/widget/x;

    .line 376
    .line 377
    invoke-virtual {v12, v10}, Landroidx/recyclerview/widget/x;->b(Landroid/view/View;)I

    .line 378
    .line 379
    .line 380
    move-result v10

    .line 381
    sub-int/2addr v11, v10

    .line 382
    if-gez v11, :cond_16

    .line 383
    .line 384
    iput v11, v5, Landroidx/recyclerview/widget/W;->b:I

    .line 385
    .line 386
    goto :goto_f

    .line 387
    :cond_16
    iput v9, v5, Landroidx/recyclerview/widget/W;->b:I

    .line 388
    .line 389
    goto :goto_f

    .line 390
    :cond_17
    iget v10, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->z:I

    .line 391
    .line 392
    iput v10, v5, Landroidx/recyclerview/widget/W;->a:I

    .line 393
    .line 394
    iget v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->A:I

    .line 395
    .line 396
    if-ne v11, v9, :cond_1e

    .line 397
    .line 398
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/E;->y()I

    .line 399
    .line 400
    .line 401
    move-result v11

    .line 402
    if-nez v11, :cond_18

    .line 403
    .line 404
    iget-boolean v10, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->x:Z

    .line 405
    .line 406
    if-eqz v10, :cond_1a

    .line 407
    .line 408
    goto :goto_a

    .line 409
    :cond_18
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->N0()I

    .line 410
    .line 411
    .line 412
    move-result v11

    .line 413
    if-ge v10, v11, :cond_19

    .line 414
    .line 415
    const/4 v10, 0x1

    .line 416
    goto :goto_9

    .line 417
    :cond_19
    const/4 v10, 0x0

    .line 418
    :goto_9
    iget-boolean v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->x:Z

    .line 419
    .line 420
    if-eq v10, v11, :cond_1b

    .line 421
    .line 422
    :cond_1a
    const/4 v10, -0x1

    .line 423
    goto :goto_b

    .line 424
    :cond_1b
    :goto_a
    const/4 v10, 0x1

    .line 425
    :goto_b
    if-ne v10, v6, :cond_1c

    .line 426
    .line 427
    const/4 v10, 0x1

    .line 428
    goto :goto_c

    .line 429
    :cond_1c
    const/4 v10, 0x0

    .line 430
    :goto_c
    iput-boolean v10, v5, Landroidx/recyclerview/widget/W;->c:Z

    .line 431
    .line 432
    if-eqz v10, :cond_1d

    .line 433
    .line 434
    iget-object v10, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Landroidx/recyclerview/widget/x;

    .line 435
    .line 436
    invoke-virtual {v10}, Landroidx/recyclerview/widget/x;->g()I

    .line 437
    .line 438
    .line 439
    move-result v10

    .line 440
    goto :goto_d

    .line 441
    :cond_1d
    iget-object v10, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Landroidx/recyclerview/widget/x;

    .line 442
    .line 443
    invoke-virtual {v10}, Landroidx/recyclerview/widget/x;->k()I

    .line 444
    .line 445
    .line 446
    move-result v10

    .line 447
    :goto_d
    iput v10, v5, Landroidx/recyclerview/widget/W;->b:I

    .line 448
    .line 449
    goto :goto_e

    .line 450
    :cond_1e
    iget-boolean v10, v5, Landroidx/recyclerview/widget/W;->c:Z

    .line 451
    .line 452
    if-eqz v10, :cond_1f

    .line 453
    .line 454
    iget-object v10, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Landroidx/recyclerview/widget/x;

    .line 455
    .line 456
    invoke-virtual {v10}, Landroidx/recyclerview/widget/x;->g()I

    .line 457
    .line 458
    .line 459
    move-result v10

    .line 460
    sub-int/2addr v10, v11

    .line 461
    iput v10, v5, Landroidx/recyclerview/widget/W;->b:I

    .line 462
    .line 463
    goto :goto_e

    .line 464
    :cond_1f
    iget-object v10, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Landroidx/recyclerview/widget/x;

    .line 465
    .line 466
    invoke-virtual {v10}, Landroidx/recyclerview/widget/x;->k()I

    .line 467
    .line 468
    .line 469
    move-result v10

    .line 470
    add-int/2addr v10, v11

    .line 471
    iput v10, v5, Landroidx/recyclerview/widget/W;->b:I

    .line 472
    .line 473
    :goto_e
    iput-boolean v6, v5, Landroidx/recyclerview/widget/W;->d:Z

    .line 474
    .line 475
    :goto_f
    const/4 v10, 0x1

    .line 476
    goto :goto_12

    .line 477
    :cond_20
    :goto_10
    iput v4, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->z:I

    .line 478
    .line 479
    iput v9, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->A:I

    .line 480
    .line 481
    :cond_21
    :goto_11
    const/4 v10, 0x0

    .line 482
    :goto_12
    if-eqz v10, :cond_22

    .line 483
    .line 484
    goto :goto_15

    .line 485
    :cond_22
    iget-boolean v10, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->D:Z

    .line 486
    .line 487
    if-eqz v10, :cond_24

    .line 488
    .line 489
    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/M;->b()I

    .line 490
    .line 491
    .line 492
    move-result v10

    .line 493
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/E;->y()I

    .line 494
    .line 495
    .line 496
    move-result v11

    .line 497
    :cond_23
    add-int/2addr v11, v4

    .line 498
    if-ltz v11, :cond_26

    .line 499
    .line 500
    invoke-virtual {v0, v11}, Landroidx/recyclerview/widget/E;->x(I)Landroid/view/View;

    .line 501
    .line 502
    .line 503
    move-result-object v12

    .line 504
    invoke-static {v12}, Landroidx/recyclerview/widget/E;->I(Landroid/view/View;)I

    .line 505
    .line 506
    .line 507
    move-result v12

    .line 508
    if-ltz v12, :cond_23

    .line 509
    .line 510
    if-ge v12, v10, :cond_23

    .line 511
    .line 512
    goto :goto_14

    .line 513
    :cond_24
    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/M;->b()I

    .line 514
    .line 515
    .line 516
    move-result v10

    .line 517
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/E;->y()I

    .line 518
    .line 519
    .line 520
    move-result v11

    .line 521
    const/4 v12, 0x0

    .line 522
    :goto_13
    if-ge v12, v11, :cond_26

    .line 523
    .line 524
    invoke-virtual {v0, v12}, Landroidx/recyclerview/widget/E;->x(I)Landroid/view/View;

    .line 525
    .line 526
    .line 527
    move-result-object v13

    .line 528
    invoke-static {v13}, Landroidx/recyclerview/widget/E;->I(Landroid/view/View;)I

    .line 529
    .line 530
    .line 531
    move-result v13

    .line 532
    if-ltz v13, :cond_25

    .line 533
    .line 534
    if-ge v13, v10, :cond_25

    .line 535
    .line 536
    move v12, v13

    .line 537
    goto :goto_14

    .line 538
    :cond_25
    add-int/lit8 v12, v12, 0x1

    .line 539
    .line 540
    goto :goto_13

    .line 541
    :cond_26
    const/4 v12, 0x0

    .line 542
    :goto_14
    iput v12, v5, Landroidx/recyclerview/widget/W;->a:I

    .line 543
    .line 544
    iput v9, v5, Landroidx/recyclerview/widget/W;->b:I

    .line 545
    .line 546
    :goto_15
    iput-boolean v6, v5, Landroidx/recyclerview/widget/W;->e:Z

    .line 547
    .line 548
    :cond_27
    iget-object v10, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->F:Landroidx/recyclerview/widget/c0;

    .line 549
    .line 550
    if-nez v10, :cond_29

    .line 551
    .line 552
    iget v10, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->z:I

    .line 553
    .line 554
    if-ne v10, v4, :cond_29

    .line 555
    .line 556
    iget-boolean v10, v5, Landroidx/recyclerview/widget/W;->c:Z

    .line 557
    .line 558
    iget-boolean v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->D:Z

    .line 559
    .line 560
    if-ne v10, v11, :cond_28

    .line 561
    .line 562
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->T0()Z

    .line 563
    .line 564
    .line 565
    move-result v10

    .line 566
    iget-boolean v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->E:Z

    .line 567
    .line 568
    if-eq v10, v11, :cond_29

    .line 569
    .line 570
    :cond_28
    iget-object v10, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->B:Landroidx/recyclerview/widget/a0;

    .line 571
    .line 572
    invoke-virtual {v10}, Landroidx/recyclerview/widget/a0;->a()V

    .line 573
    .line 574
    .line 575
    iput-boolean v6, v5, Landroidx/recyclerview/widget/W;->d:Z

    .line 576
    .line 577
    :cond_29
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/E;->y()I

    .line 578
    .line 579
    .line 580
    move-result v10

    .line 581
    if-lez v10, :cond_38

    .line 582
    .line 583
    iget-object v10, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->F:Landroidx/recyclerview/widget/c0;

    .line 584
    .line 585
    if-eqz v10, :cond_2a

    .line 586
    .line 587
    iget v10, v10, Landroidx/recyclerview/widget/c0;->c:I

    .line 588
    .line 589
    if-ge v10, v6, :cond_38

    .line 590
    .line 591
    :cond_2a
    iget-boolean v10, v5, Landroidx/recyclerview/widget/W;->d:Z

    .line 592
    .line 593
    if-eqz v10, :cond_2c

    .line 594
    .line 595
    const/4 v3, 0x0

    .line 596
    :goto_16
    iget v8, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:I

    .line 597
    .line 598
    if-ge v3, v8, :cond_38

    .line 599
    .line 600
    iget-object v8, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:[Landroidx/recyclerview/widget/d0;

    .line 601
    .line 602
    aget-object v8, v8, v3

    .line 603
    .line 604
    invoke-virtual {v8}, Landroidx/recyclerview/widget/d0;->b()V

    .line 605
    .line 606
    .line 607
    iget v8, v5, Landroidx/recyclerview/widget/W;->b:I

    .line 608
    .line 609
    if-eq v8, v9, :cond_2b

    .line 610
    .line 611
    iget-object v10, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:[Landroidx/recyclerview/widget/d0;

    .line 612
    .line 613
    aget-object v10, v10, v3

    .line 614
    .line 615
    iput v8, v10, Landroidx/recyclerview/widget/d0;->b:I

    .line 616
    .line 617
    iput v8, v10, Landroidx/recyclerview/widget/d0;->c:I

    .line 618
    .line 619
    :cond_2b
    add-int/lit8 v3, v3, 0x1

    .line 620
    .line 621
    goto :goto_16

    .line 622
    :cond_2c
    if-nez v3, :cond_2e

    .line 623
    .line 624
    iget-object v3, v5, Landroidx/recyclerview/widget/W;->f:[I

    .line 625
    .line 626
    if-nez v3, :cond_2d

    .line 627
    .line 628
    goto :goto_18

    .line 629
    :cond_2d
    const/4 v3, 0x0

    .line 630
    :goto_17
    iget v8, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:I

    .line 631
    .line 632
    if-ge v3, v8, :cond_38

    .line 633
    .line 634
    iget-object v8, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:[Landroidx/recyclerview/widget/d0;

    .line 635
    .line 636
    aget-object v8, v8, v3

    .line 637
    .line 638
    invoke-virtual {v8}, Landroidx/recyclerview/widget/d0;->b()V

    .line 639
    .line 640
    .line 641
    iget-object v10, v5, Landroidx/recyclerview/widget/W;->f:[I

    .line 642
    .line 643
    aget v10, v10, v3

    .line 644
    .line 645
    iput v10, v8, Landroidx/recyclerview/widget/d0;->b:I

    .line 646
    .line 647
    iput v10, v8, Landroidx/recyclerview/widget/d0;->c:I

    .line 648
    .line 649
    add-int/lit8 v3, v3, 0x1

    .line 650
    .line 651
    goto :goto_17

    .line 652
    :cond_2e
    :goto_18
    const/4 v3, 0x0

    .line 653
    :goto_19
    iget v10, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:I

    .line 654
    .line 655
    if-ge v3, v10, :cond_35

    .line 656
    .line 657
    iget-object v10, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:[Landroidx/recyclerview/widget/d0;

    .line 658
    .line 659
    aget-object v10, v10, v3

    .line 660
    .line 661
    iget-boolean v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->x:Z

    .line 662
    .line 663
    iget v12, v5, Landroidx/recyclerview/widget/W;->b:I

    .line 664
    .line 665
    if-eqz v11, :cond_2f

    .line 666
    .line 667
    invoke-virtual {v10, v9}, Landroidx/recyclerview/widget/d0;->f(I)I

    .line 668
    .line 669
    .line 670
    move-result v13

    .line 671
    goto :goto_1a

    .line 672
    :cond_2f
    invoke-virtual {v10, v9}, Landroidx/recyclerview/widget/d0;->i(I)I

    .line 673
    .line 674
    .line 675
    move-result v13

    .line 676
    :goto_1a
    invoke-virtual {v10}, Landroidx/recyclerview/widget/d0;->b()V

    .line 677
    .line 678
    .line 679
    if-ne v13, v9, :cond_30

    .line 680
    .line 681
    goto :goto_1b

    .line 682
    :cond_30
    iget-object v14, v10, Landroidx/recyclerview/widget/d0;->f:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 683
    .line 684
    if-eqz v11, :cond_31

    .line 685
    .line 686
    iget-object v15, v14, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Landroidx/recyclerview/widget/x;

    .line 687
    .line 688
    invoke-virtual {v15}, Landroidx/recyclerview/widget/x;->g()I

    .line 689
    .line 690
    .line 691
    move-result v15

    .line 692
    if-lt v13, v15, :cond_34

    .line 693
    .line 694
    :cond_31
    if-nez v11, :cond_32

    .line 695
    .line 696
    iget-object v11, v14, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Landroidx/recyclerview/widget/x;

    .line 697
    .line 698
    invoke-virtual {v11}, Landroidx/recyclerview/widget/x;->k()I

    .line 699
    .line 700
    .line 701
    move-result v11

    .line 702
    if-le v13, v11, :cond_32

    .line 703
    .line 704
    goto :goto_1b

    .line 705
    :cond_32
    if-eq v12, v9, :cond_33

    .line 706
    .line 707
    add-int/2addr v13, v12

    .line 708
    :cond_33
    iput v13, v10, Landroidx/recyclerview/widget/d0;->c:I

    .line 709
    .line 710
    iput v13, v10, Landroidx/recyclerview/widget/d0;->b:I

    .line 711
    .line 712
    :cond_34
    :goto_1b
    add-int/lit8 v3, v3, 0x1

    .line 713
    .line 714
    goto :goto_19

    .line 715
    :cond_35
    iget-object v3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:[Landroidx/recyclerview/widget/d0;

    .line 716
    .line 717
    array-length v10, v3

    .line 718
    iget-object v11, v5, Landroidx/recyclerview/widget/W;->f:[I

    .line 719
    .line 720
    if-eqz v11, :cond_36

    .line 721
    .line 722
    array-length v11, v11

    .line 723
    if-ge v11, v10, :cond_37

    .line 724
    .line 725
    :cond_36
    iget-object v8, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:[Landroidx/recyclerview/widget/d0;

    .line 726
    .line 727
    array-length v8, v8

    .line 728
    new-array v8, v8, [I

    .line 729
    .line 730
    iput-object v8, v5, Landroidx/recyclerview/widget/W;->f:[I

    .line 731
    .line 732
    :cond_37
    const/4 v8, 0x0

    .line 733
    :goto_1c
    if-ge v8, v10, :cond_38

    .line 734
    .line 735
    iget-object v11, v5, Landroidx/recyclerview/widget/W;->f:[I

    .line 736
    .line 737
    aget-object v12, v3, v8

    .line 738
    .line 739
    invoke-virtual {v12, v9}, Landroidx/recyclerview/widget/d0;->i(I)I

    .line 740
    .line 741
    .line 742
    move-result v12

    .line 743
    aput v12, v11, v8

    .line 744
    .line 745
    add-int/lit8 v8, v8, 0x1

    .line 746
    .line 747
    goto :goto_1c

    .line 748
    :cond_38
    invoke-virtual/range {p0 .. p1}, Landroidx/recyclerview/widget/E;->s(Landroidx/recyclerview/widget/I;)V

    .line 749
    .line 750
    .line 751
    iget-object v3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->v:Landroidx/recyclerview/widget/p;

    .line 752
    .line 753
    iput-boolean v7, v3, Landroidx/recyclerview/widget/p;->a:Z

    .line 754
    .line 755
    iget-object v8, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s:Landroidx/recyclerview/widget/x;

    .line 756
    .line 757
    invoke-virtual {v8}, Landroidx/recyclerview/widget/x;->l()I

    .line 758
    .line 759
    .line 760
    move-result v8

    .line 761
    iget v10, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:I

    .line 762
    .line 763
    div-int v10, v8, v10

    .line 764
    .line 765
    iput v10, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->u:I

    .line 766
    .line 767
    iget-object v10, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s:Landroidx/recyclerview/widget/x;

    .line 768
    .line 769
    invoke-virtual {v10}, Landroidx/recyclerview/widget/x;->i()I

    .line 770
    .line 771
    .line 772
    move-result v10

    .line 773
    invoke-static {v8, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 774
    .line 775
    .line 776
    iget v8, v5, Landroidx/recyclerview/widget/W;->a:I

    .line 777
    .line 778
    invoke-direct {v0, v8}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e1(I)V

    .line 779
    .line 780
    .line 781
    iget-boolean v8, v5, Landroidx/recyclerview/widget/W;->c:Z

    .line 782
    .line 783
    if-eqz v8, :cond_39

    .line 784
    .line 785
    invoke-direct {v0, v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->d1(I)V

    .line 786
    .line 787
    .line 788
    invoke-direct {v0, v1, v3, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->I0(Landroidx/recyclerview/widget/I;Landroidx/recyclerview/widget/p;Landroidx/recyclerview/widget/M;)I

    .line 789
    .line 790
    .line 791
    invoke-direct {v0, v6}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->d1(I)V

    .line 792
    .line 793
    .line 794
    iget v4, v5, Landroidx/recyclerview/widget/W;->a:I

    .line 795
    .line 796
    iget v8, v3, Landroidx/recyclerview/widget/p;->d:I

    .line 797
    .line 798
    add-int/2addr v4, v8

    .line 799
    iput v4, v3, Landroidx/recyclerview/widget/p;->c:I

    .line 800
    .line 801
    invoke-direct {v0, v1, v3, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->I0(Landroidx/recyclerview/widget/I;Landroidx/recyclerview/widget/p;Landroidx/recyclerview/widget/M;)I

    .line 802
    .line 803
    .line 804
    goto :goto_1d

    .line 805
    :cond_39
    invoke-direct {v0, v6}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->d1(I)V

    .line 806
    .line 807
    .line 808
    invoke-direct {v0, v1, v3, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->I0(Landroidx/recyclerview/widget/I;Landroidx/recyclerview/widget/p;Landroidx/recyclerview/widget/M;)I

    .line 809
    .line 810
    .line 811
    invoke-direct {v0, v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->d1(I)V

    .line 812
    .line 813
    .line 814
    iget v4, v5, Landroidx/recyclerview/widget/W;->a:I

    .line 815
    .line 816
    iget v8, v3, Landroidx/recyclerview/widget/p;->d:I

    .line 817
    .line 818
    add-int/2addr v4, v8

    .line 819
    iput v4, v3, Landroidx/recyclerview/widget/p;->c:I

    .line 820
    .line 821
    invoke-direct {v0, v1, v3, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->I0(Landroidx/recyclerview/widget/I;Landroidx/recyclerview/widget/p;Landroidx/recyclerview/widget/M;)I

    .line 822
    .line 823
    .line 824
    :goto_1d
    iget-object v3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s:Landroidx/recyclerview/widget/x;

    .line 825
    .line 826
    invoke-virtual {v3}, Landroidx/recyclerview/widget/x;->i()I

    .line 827
    .line 828
    .line 829
    move-result v3

    .line 830
    const/high16 v4, 0x40000000    # 2.0f

    .line 831
    .line 832
    if-ne v3, v4, :cond_3a

    .line 833
    .line 834
    goto/16 :goto_22

    .line 835
    .line 836
    :cond_3a
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/E;->y()I

    .line 837
    .line 838
    .line 839
    move-result v3

    .line 840
    const/4 v4, 0x0

    .line 841
    const/4 v8, 0x0

    .line 842
    :goto_1e
    if-ge v8, v3, :cond_3c

    .line 843
    .line 844
    invoke-virtual {v0, v8}, Landroidx/recyclerview/widget/E;->x(I)Landroid/view/View;

    .line 845
    .line 846
    .line 847
    move-result-object v10

    .line 848
    iget-object v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s:Landroidx/recyclerview/widget/x;

    .line 849
    .line 850
    invoke-virtual {v11, v10}, Landroidx/recyclerview/widget/x;->c(Landroid/view/View;)I

    .line 851
    .line 852
    .line 853
    move-result v11

    .line 854
    int-to-float v11, v11

    .line 855
    cmpg-float v12, v11, v4

    .line 856
    .line 857
    if-gez v12, :cond_3b

    .line 858
    .line 859
    goto :goto_1f

    .line 860
    :cond_3b
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 861
    .line 862
    .line 863
    move-result-object v10

    .line 864
    check-cast v10, Landroidx/recyclerview/widget/X;

    .line 865
    .line 866
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 867
    .line 868
    .line 869
    invoke-static {v4, v11}, Ljava/lang/Math;->max(FF)F

    .line 870
    .line 871
    .line 872
    move-result v4

    .line 873
    :goto_1f
    add-int/lit8 v8, v8, 0x1

    .line 874
    .line 875
    goto :goto_1e

    .line 876
    :cond_3c
    iget v8, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->u:I

    .line 877
    .line 878
    iget v10, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:I

    .line 879
    .line 880
    int-to-float v10, v10

    .line 881
    mul-float v4, v4, v10

    .line 882
    .line 883
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    .line 884
    .line 885
    .line 886
    move-result v4

    .line 887
    iget-object v10, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s:Landroidx/recyclerview/widget/x;

    .line 888
    .line 889
    invoke-virtual {v10}, Landroidx/recyclerview/widget/x;->i()I

    .line 890
    .line 891
    .line 892
    move-result v10

    .line 893
    if-ne v10, v9, :cond_3d

    .line 894
    .line 895
    iget-object v9, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s:Landroidx/recyclerview/widget/x;

    .line 896
    .line 897
    invoke-virtual {v9}, Landroidx/recyclerview/widget/x;->l()I

    .line 898
    .line 899
    .line 900
    move-result v9

    .line 901
    invoke-static {v4, v9}, Ljava/lang/Math;->min(II)I

    .line 902
    .line 903
    .line 904
    move-result v4

    .line 905
    :cond_3d
    iget v9, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:I

    .line 906
    .line 907
    div-int v9, v4, v9

    .line 908
    .line 909
    iput v9, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->u:I

    .line 910
    .line 911
    iget-object v9, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s:Landroidx/recyclerview/widget/x;

    .line 912
    .line 913
    invoke-virtual {v9}, Landroidx/recyclerview/widget/x;->i()I

    .line 914
    .line 915
    .line 916
    move-result v9

    .line 917
    invoke-static {v4, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 918
    .line 919
    .line 920
    iget v4, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->u:I

    .line 921
    .line 922
    if-ne v4, v8, :cond_3e

    .line 923
    .line 924
    goto :goto_22

    .line 925
    :cond_3e
    const/4 v4, 0x0

    .line 926
    :goto_20
    if-ge v4, v3, :cond_41

    .line 927
    .line 928
    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/E;->x(I)Landroid/view/View;

    .line 929
    .line 930
    .line 931
    move-result-object v9

    .line 932
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 933
    .line 934
    .line 935
    move-result-object v10

    .line 936
    check-cast v10, Landroidx/recyclerview/widget/X;

    .line 937
    .line 938
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 939
    .line 940
    .line 941
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->T0()Z

    .line 942
    .line 943
    .line 944
    move-result v11

    .line 945
    if-eqz v11, :cond_3f

    .line 946
    .line 947
    iget v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:I

    .line 948
    .line 949
    if-ne v11, v6, :cond_3f

    .line 950
    .line 951
    iget v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:I

    .line 952
    .line 953
    add-int/lit8 v12, v11, -0x1

    .line 954
    .line 955
    iget-object v10, v10, Landroidx/recyclerview/widget/X;->e:Landroidx/recyclerview/widget/d0;

    .line 956
    .line 957
    iget v10, v10, Landroidx/recyclerview/widget/d0;->e:I

    .line 958
    .line 959
    sub-int/2addr v12, v10

    .line 960
    neg-int v12, v12

    .line 961
    iget v13, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->u:I

    .line 962
    .line 963
    mul-int v12, v12, v13

    .line 964
    .line 965
    sub-int/2addr v11, v6

    .line 966
    sub-int/2addr v11, v10

    .line 967
    neg-int v10, v11

    .line 968
    mul-int v10, v10, v8

    .line 969
    .line 970
    sub-int/2addr v12, v10

    .line 971
    invoke-virtual {v9, v12}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 972
    .line 973
    .line 974
    goto :goto_21

    .line 975
    :cond_3f
    iget-object v10, v10, Landroidx/recyclerview/widget/X;->e:Landroidx/recyclerview/widget/d0;

    .line 976
    .line 977
    iget v10, v10, Landroidx/recyclerview/widget/d0;->e:I

    .line 978
    .line 979
    iget v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->u:I

    .line 980
    .line 981
    mul-int v11, v11, v10

    .line 982
    .line 983
    mul-int v10, v10, v8

    .line 984
    .line 985
    iget v12, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:I

    .line 986
    .line 987
    if-ne v12, v6, :cond_40

    .line 988
    .line 989
    sub-int/2addr v11, v10

    .line 990
    invoke-virtual {v9, v11}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 991
    .line 992
    .line 993
    goto :goto_21

    .line 994
    :cond_40
    sub-int/2addr v11, v10

    .line 995
    invoke-virtual {v9, v11}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 996
    .line 997
    .line 998
    :goto_21
    add-int/lit8 v4, v4, 0x1

    .line 999
    .line 1000
    goto :goto_20

    .line 1001
    :cond_41
    :goto_22
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/E;->y()I

    .line 1002
    .line 1003
    .line 1004
    move-result v3

    .line 1005
    if-lez v3, :cond_43

    .line 1006
    .line 1007
    iget-boolean v3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->x:Z

    .line 1008
    .line 1009
    if-eqz v3, :cond_42

    .line 1010
    .line 1011
    invoke-direct {v0, v1, v2, v6}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->L0(Landroidx/recyclerview/widget/I;Landroidx/recyclerview/widget/M;Z)V

    .line 1012
    .line 1013
    .line 1014
    invoke-direct {v0, v1, v2, v7}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->M0(Landroidx/recyclerview/widget/I;Landroidx/recyclerview/widget/M;Z)V

    .line 1015
    .line 1016
    .line 1017
    goto :goto_23

    .line 1018
    :cond_42
    invoke-direct {v0, v1, v2, v6}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->M0(Landroidx/recyclerview/widget/I;Landroidx/recyclerview/widget/M;Z)V

    .line 1019
    .line 1020
    .line 1021
    invoke-direct {v0, v1, v2, v7}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->L0(Landroidx/recyclerview/widget/I;Landroidx/recyclerview/widget/M;Z)V

    .line 1022
    .line 1023
    .line 1024
    :cond_43
    :goto_23
    if-eqz p3, :cond_46

    .line 1025
    .line 1026
    iget-boolean v3, v2, Landroidx/recyclerview/widget/M;->f:Z

    .line 1027
    .line 1028
    if-nez v3, :cond_46

    .line 1029
    .line 1030
    iget v3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->C:I

    .line 1031
    .line 1032
    if-eqz v3, :cond_44

    .line 1033
    .line 1034
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/E;->y()I

    .line 1035
    .line 1036
    .line 1037
    move-result v3

    .line 1038
    if-lez v3, :cond_44

    .line 1039
    .line 1040
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->S0()Landroid/view/View;

    .line 1041
    .line 1042
    .line 1043
    move-result-object v3

    .line 1044
    if-eqz v3, :cond_44

    .line 1045
    .line 1046
    const/4 v3, 0x1

    .line 1047
    goto :goto_24

    .line 1048
    :cond_44
    const/4 v3, 0x0

    .line 1049
    :goto_24
    if-eqz v3, :cond_46

    .line 1050
    .line 1051
    iget-object v3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->K:Ljava/lang/Runnable;

    .line 1052
    .line 1053
    iget-object v4, v0, Landroidx/recyclerview/widget/E;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 1054
    .line 1055
    if-eqz v4, :cond_45

    .line 1056
    .line 1057
    invoke-virtual {v4, v3}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1058
    .line 1059
    .line 1060
    :cond_45
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->E0()Z

    .line 1061
    .line 1062
    .line 1063
    move-result v3

    .line 1064
    if-eqz v3, :cond_46

    .line 1065
    .line 1066
    goto :goto_25

    .line 1067
    :cond_46
    const/4 v6, 0x0

    .line 1068
    :goto_25
    iget-boolean v3, v2, Landroidx/recyclerview/widget/M;->f:Z

    .line 1069
    .line 1070
    if-eqz v3, :cond_47

    .line 1071
    .line 1072
    invoke-virtual {v5}, Landroidx/recyclerview/widget/W;->a()V

    .line 1073
    .line 1074
    .line 1075
    :cond_47
    iget-boolean v3, v5, Landroidx/recyclerview/widget/W;->c:Z

    .line 1076
    .line 1077
    iput-boolean v3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->D:Z

    .line 1078
    .line 1079
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->T0()Z

    .line 1080
    .line 1081
    .line 1082
    move-result v3

    .line 1083
    iput-boolean v3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->E:Z

    .line 1084
    .line 1085
    if-eqz v6, :cond_48

    .line 1086
    .line 1087
    invoke-virtual {v5}, Landroidx/recyclerview/widget/W;->a()V

    .line 1088
    .line 1089
    .line 1090
    invoke-direct {v0, v1, v2, v7}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->V0(Landroidx/recyclerview/widget/I;Landroidx/recyclerview/widget/M;Z)V

    .line 1091
    .line 1092
    .line 1093
    :cond_48
    return-void
.end method

.method private W0(I)Z
    .locals 4

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    const/4 v2, 0x1

    .line 5
    const/4 v3, 0x0

    .line 6
    if-nez v0, :cond_2

    .line 7
    .line 8
    if-ne p1, v1, :cond_0

    .line 9
    .line 10
    const/4 p1, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    :goto_0
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->x:Z

    .line 14
    .line 15
    if-eq p1, v0, :cond_1

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_1
    const/4 v2, 0x0

    .line 19
    :goto_1
    return v2

    .line 20
    :cond_2
    if-ne p1, v1, :cond_3

    .line 21
    .line 22
    const/4 p1, 0x1

    .line 23
    goto :goto_2

    .line 24
    :cond_3
    const/4 p1, 0x0

    .line 25
    :goto_2
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->x:Z

    .line 26
    .line 27
    if-ne p1, v0, :cond_4

    .line 28
    .line 29
    const/4 p1, 0x1

    .line 30
    goto :goto_3

    .line 31
    :cond_4
    const/4 p1, 0x0

    .line 32
    :goto_3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->T0()Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-ne p1, v0, :cond_5

    .line 37
    .line 38
    goto :goto_4

    .line 39
    :cond_5
    const/4 v2, 0x0

    .line 40
    :goto_4
    return v2
.end method

.method private Y0(Landroidx/recyclerview/widget/I;Landroidx/recyclerview/widget/p;)V
    .locals 4

    .line 1
    iget-boolean v0, p2, Landroidx/recyclerview/widget/p;->a:Z

    .line 2
    .line 3
    if-eqz v0, :cond_a

    .line 4
    .line 5
    iget-boolean v0, p2, Landroidx/recyclerview/widget/p;->i:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto/16 :goto_4

    .line 10
    .line 11
    :cond_0
    iget v0, p2, Landroidx/recyclerview/widget/p;->b:I

    .line 12
    .line 13
    const/4 v1, -0x1

    .line 14
    if-nez v0, :cond_2

    .line 15
    .line 16
    iget v0, p2, Landroidx/recyclerview/widget/p;->e:I

    .line 17
    .line 18
    if-ne v0, v1, :cond_1

    .line 19
    .line 20
    iget p2, p2, Landroidx/recyclerview/widget/p;->g:I

    .line 21
    .line 22
    invoke-direct {p0, p2, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->Z0(ILandroidx/recyclerview/widget/I;)V

    .line 23
    .line 24
    .line 25
    goto/16 :goto_4

    .line 26
    .line 27
    :cond_1
    iget p2, p2, Landroidx/recyclerview/widget/p;->f:I

    .line 28
    .line 29
    invoke-direct {p0, p2, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a1(ILandroidx/recyclerview/widget/I;)V

    .line 30
    .line 31
    .line 32
    goto :goto_4

    .line 33
    :cond_2
    iget v0, p2, Landroidx/recyclerview/widget/p;->e:I

    .line 34
    .line 35
    const/4 v2, 0x0

    .line 36
    const/4 v3, 0x1

    .line 37
    if-ne v0, v1, :cond_6

    .line 38
    .line 39
    iget v0, p2, Landroidx/recyclerview/widget/p;->f:I

    .line 40
    .line 41
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:[Landroidx/recyclerview/widget/d0;

    .line 42
    .line 43
    aget-object v1, v1, v2

    .line 44
    .line 45
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/d0;->i(I)I

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    :goto_0
    iget v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:I

    .line 50
    .line 51
    if-ge v3, v2, :cond_4

    .line 52
    .line 53
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:[Landroidx/recyclerview/widget/d0;

    .line 54
    .line 55
    aget-object v2, v2, v3

    .line 56
    .line 57
    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/d0;->i(I)I

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    if-le v2, v1, :cond_3

    .line 62
    .line 63
    move v1, v2

    .line 64
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_4
    sub-int/2addr v0, v1

    .line 68
    if-gez v0, :cond_5

    .line 69
    .line 70
    iget p2, p2, Landroidx/recyclerview/widget/p;->g:I

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_5
    iget v1, p2, Landroidx/recyclerview/widget/p;->g:I

    .line 74
    .line 75
    iget p2, p2, Landroidx/recyclerview/widget/p;->b:I

    .line 76
    .line 77
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    .line 78
    .line 79
    .line 80
    move-result p2

    .line 81
    sub-int p2, v1, p2

    .line 82
    .line 83
    :goto_1
    invoke-direct {p0, p2, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->Z0(ILandroidx/recyclerview/widget/I;)V

    .line 84
    .line 85
    .line 86
    goto :goto_4

    .line 87
    :cond_6
    iget v0, p2, Landroidx/recyclerview/widget/p;->g:I

    .line 88
    .line 89
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:[Landroidx/recyclerview/widget/d0;

    .line 90
    .line 91
    aget-object v1, v1, v2

    .line 92
    .line 93
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/d0;->f(I)I

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    :goto_2
    iget v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:I

    .line 98
    .line 99
    if-ge v3, v2, :cond_8

    .line 100
    .line 101
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:[Landroidx/recyclerview/widget/d0;

    .line 102
    .line 103
    aget-object v2, v2, v3

    .line 104
    .line 105
    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/d0;->f(I)I

    .line 106
    .line 107
    .line 108
    move-result v2

    .line 109
    if-ge v2, v1, :cond_7

    .line 110
    .line 111
    move v1, v2

    .line 112
    :cond_7
    add-int/lit8 v3, v3, 0x1

    .line 113
    .line 114
    goto :goto_2

    .line 115
    :cond_8
    iget v0, p2, Landroidx/recyclerview/widget/p;->g:I

    .line 116
    .line 117
    sub-int/2addr v1, v0

    .line 118
    if-gez v1, :cond_9

    .line 119
    .line 120
    iget p2, p2, Landroidx/recyclerview/widget/p;->f:I

    .line 121
    .line 122
    goto :goto_3

    .line 123
    :cond_9
    iget v0, p2, Landroidx/recyclerview/widget/p;->f:I

    .line 124
    .line 125
    iget p2, p2, Landroidx/recyclerview/widget/p;->b:I

    .line 126
    .line 127
    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    .line 128
    .line 129
    .line 130
    move-result p2

    .line 131
    add-int/2addr p2, v0

    .line 132
    :goto_3
    invoke-direct {p0, p2, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a1(ILandroidx/recyclerview/widget/I;)V

    .line 133
    .line 134
    .line 135
    :cond_a
    :goto_4
    return-void
.end method

.method private Z0(ILandroidx/recyclerview/widget/I;)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/E;->y()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    sub-int/2addr v0, v1

    .line 7
    :goto_0
    if-ltz v0, :cond_4

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/E;->x(I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Landroidx/recyclerview/widget/x;

    .line 14
    .line 15
    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/x;->e(Landroid/view/View;)I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    if-lt v3, p1, :cond_4

    .line 20
    .line 21
    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Landroidx/recyclerview/widget/x;

    .line 22
    .line 23
    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/x;->o(Landroid/view/View;)I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    if-lt v3, p1, :cond_4

    .line 28
    .line 29
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    check-cast v3, Landroidx/recyclerview/widget/X;

    .line 34
    .line 35
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    iget-object v4, v3, Landroidx/recyclerview/widget/X;->e:Landroidx/recyclerview/widget/d0;

    .line 39
    .line 40
    iget-object v4, v4, Landroidx/recyclerview/widget/d0;->a:Ljava/util/ArrayList;

    .line 41
    .line 42
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    if-ne v4, v1, :cond_0

    .line 47
    .line 48
    return-void

    .line 49
    :cond_0
    iget-object v3, v3, Landroidx/recyclerview/widget/X;->e:Landroidx/recyclerview/widget/d0;

    .line 50
    .line 51
    iget-object v4, v3, Landroidx/recyclerview/widget/d0;->a:Ljava/util/ArrayList;

    .line 52
    .line 53
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    iget-object v5, v3, Landroidx/recyclerview/widget/d0;->a:Ljava/util/ArrayList;

    .line 58
    .line 59
    add-int/lit8 v6, v4, -0x1

    .line 60
    .line 61
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v5

    .line 65
    check-cast v5, Landroid/view/View;

    .line 66
    .line 67
    invoke-static {v5}, Landroidx/recyclerview/widget/d0;->h(Landroid/view/View;)Landroidx/recyclerview/widget/X;

    .line 68
    .line 69
    .line 70
    move-result-object v6

    .line 71
    const/4 v7, 0x0

    .line 72
    iput-object v7, v6, Landroidx/recyclerview/widget/X;->e:Landroidx/recyclerview/widget/d0;

    .line 73
    .line 74
    invoke-virtual {v6}, Landroidx/recyclerview/widget/F;->c()Z

    .line 75
    .line 76
    .line 77
    move-result v7

    .line 78
    if-nez v7, :cond_1

    .line 79
    .line 80
    invoke-virtual {v6}, Landroidx/recyclerview/widget/F;->b()Z

    .line 81
    .line 82
    .line 83
    move-result v6

    .line 84
    if-eqz v6, :cond_2

    .line 85
    .line 86
    :cond_1
    iget v6, v3, Landroidx/recyclerview/widget/d0;->d:I

    .line 87
    .line 88
    iget-object v7, v3, Landroidx/recyclerview/widget/d0;->f:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 89
    .line 90
    iget-object v7, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Landroidx/recyclerview/widget/x;

    .line 91
    .line 92
    invoke-virtual {v7, v5}, Landroidx/recyclerview/widget/x;->c(Landroid/view/View;)I

    .line 93
    .line 94
    .line 95
    move-result v5

    .line 96
    sub-int/2addr v6, v5

    .line 97
    iput v6, v3, Landroidx/recyclerview/widget/d0;->d:I

    .line 98
    .line 99
    :cond_2
    const/high16 v5, -0x80000000

    .line 100
    .line 101
    if-ne v4, v1, :cond_3

    .line 102
    .line 103
    iput v5, v3, Landroidx/recyclerview/widget/d0;->b:I

    .line 104
    .line 105
    :cond_3
    iput v5, v3, Landroidx/recyclerview/widget/d0;->c:I

    .line 106
    .line 107
    iget-object v3, p0, Landroidx/recyclerview/widget/E;->a:Landroidx/recyclerview/widget/d;

    .line 108
    .line 109
    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/d;->l(Landroid/view/View;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p2, v2}, Landroidx/recyclerview/widget/I;->l(Landroid/view/View;)V

    .line 113
    .line 114
    .line 115
    add-int/lit8 v0, v0, -0x1

    .line 116
    .line 117
    goto :goto_0

    .line 118
    :cond_4
    return-void
.end method

.method private a1(ILandroidx/recyclerview/widget/I;)V
    .locals 6

    .line 1
    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/E;->y()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-lez v0, :cond_4

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/E;->x(I)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Landroidx/recyclerview/widget/x;

    .line 13
    .line 14
    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/x;->b(Landroid/view/View;)I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-gt v2, p1, :cond_4

    .line 19
    .line 20
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Landroidx/recyclerview/widget/x;

    .line 21
    .line 22
    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/x;->n(Landroid/view/View;)I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-gt v2, p1, :cond_4

    .line 27
    .line 28
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    check-cast v2, Landroidx/recyclerview/widget/X;

    .line 33
    .line 34
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    iget-object v3, v2, Landroidx/recyclerview/widget/X;->e:Landroidx/recyclerview/widget/d0;

    .line 38
    .line 39
    iget-object v3, v3, Landroidx/recyclerview/widget/d0;->a:Ljava/util/ArrayList;

    .line 40
    .line 41
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    const/4 v4, 0x1

    .line 46
    if-ne v3, v4, :cond_0

    .line 47
    .line 48
    return-void

    .line 49
    :cond_0
    iget-object v2, v2, Landroidx/recyclerview/widget/X;->e:Landroidx/recyclerview/widget/d0;

    .line 50
    .line 51
    iget-object v3, v2, Landroidx/recyclerview/widget/d0;->a:Ljava/util/ArrayList;

    .line 52
    .line 53
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    check-cast v0, Landroid/view/View;

    .line 58
    .line 59
    invoke-static {v0}, Landroidx/recyclerview/widget/d0;->h(Landroid/view/View;)Landroidx/recyclerview/widget/X;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    const/4 v4, 0x0

    .line 64
    iput-object v4, v3, Landroidx/recyclerview/widget/X;->e:Landroidx/recyclerview/widget/d0;

    .line 65
    .line 66
    iget-object v4, v2, Landroidx/recyclerview/widget/d0;->a:Ljava/util/ArrayList;

    .line 67
    .line 68
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 69
    .line 70
    .line 71
    move-result v4

    .line 72
    const/high16 v5, -0x80000000

    .line 73
    .line 74
    if-nez v4, :cond_1

    .line 75
    .line 76
    iput v5, v2, Landroidx/recyclerview/widget/d0;->c:I

    .line 77
    .line 78
    :cond_1
    invoke-virtual {v3}, Landroidx/recyclerview/widget/F;->c()Z

    .line 79
    .line 80
    .line 81
    move-result v4

    .line 82
    if-nez v4, :cond_2

    .line 83
    .line 84
    invoke-virtual {v3}, Landroidx/recyclerview/widget/F;->b()Z

    .line 85
    .line 86
    .line 87
    move-result v3

    .line 88
    if-eqz v3, :cond_3

    .line 89
    .line 90
    :cond_2
    iget v3, v2, Landroidx/recyclerview/widget/d0;->d:I

    .line 91
    .line 92
    iget-object v4, v2, Landroidx/recyclerview/widget/d0;->f:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 93
    .line 94
    iget-object v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Landroidx/recyclerview/widget/x;

    .line 95
    .line 96
    invoke-virtual {v4, v0}, Landroidx/recyclerview/widget/x;->c(Landroid/view/View;)I

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    sub-int/2addr v3, v0

    .line 101
    iput v3, v2, Landroidx/recyclerview/widget/d0;->d:I

    .line 102
    .line 103
    :cond_3
    iput v5, v2, Landroidx/recyclerview/widget/d0;->b:I

    .line 104
    .line 105
    iget-object v0, p0, Landroidx/recyclerview/widget/E;->a:Landroidx/recyclerview/widget/d;

    .line 106
    .line 107
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/d;->l(Landroid/view/View;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/I;->l(Landroid/view/View;)V

    .line 111
    .line 112
    .line 113
    goto :goto_0

    .line 114
    :cond_4
    return-void
.end method

.method private b1()V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_1

    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->T0()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->w:Z

    .line 14
    .line 15
    xor-int/2addr v0, v1

    .line 16
    iput-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->x:Z

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_1
    :goto_0
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->w:Z

    .line 20
    .line 21
    iput-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->x:Z

    .line 22
    .line 23
    :goto_1
    return-void
.end method

.method private d1(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->v:Landroidx/recyclerview/widget/p;

    .line 2
    .line 3
    iput p1, v0, Landroidx/recyclerview/widget/p;->e:I

    .line 4
    .line 5
    iget-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->x:Z

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    const/4 v3, -0x1

    .line 9
    if-ne p1, v3, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p1, 0x0

    .line 14
    :goto_0
    if-ne v1, p1, :cond_1

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_1
    const/4 v2, -0x1

    .line 18
    :goto_1
    iput v2, v0, Landroidx/recyclerview/widget/p;->d:I

    .line 19
    .line 20
    return-void
.end method

.method private e1(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->v:Landroidx/recyclerview/widget/p;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iput v1, v0, Landroidx/recyclerview/widget/p;->b:I

    .line 5
    .line 6
    iput p1, v0, Landroidx/recyclerview/widget/p;->c:I

    .line 7
    .line 8
    iget-object p1, p0, Landroidx/recyclerview/widget/E;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    iget-boolean p1, p1, Landroidx/recyclerview/widget/RecyclerView;->h:Z

    .line 14
    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    const/4 p1, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p1, 0x0

    .line 20
    :goto_0
    if-eqz p1, :cond_1

    .line 21
    .line 22
    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Landroidx/recyclerview/widget/x;

    .line 23
    .line 24
    invoke-virtual {p1}, Landroidx/recyclerview/widget/x;->k()I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    sub-int/2addr p1, v1

    .line 29
    iput p1, v0, Landroidx/recyclerview/widget/p;->f:I

    .line 30
    .line 31
    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Landroidx/recyclerview/widget/x;

    .line 32
    .line 33
    invoke-virtual {p1}, Landroidx/recyclerview/widget/x;->g()I

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    add-int/2addr p1, v1

    .line 38
    iput p1, v0, Landroidx/recyclerview/widget/p;->g:I

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_1
    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Landroidx/recyclerview/widget/x;

    .line 42
    .line 43
    invoke-virtual {p1}, Landroidx/recyclerview/widget/x;->f()I

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    add-int/2addr p1, v1

    .line 48
    iput p1, v0, Landroidx/recyclerview/widget/p;->g:I

    .line 49
    .line 50
    iput v1, v0, Landroidx/recyclerview/widget/p;->f:I

    .line 51
    .line 52
    :goto_1
    iput-boolean v1, v0, Landroidx/recyclerview/widget/p;->h:Z

    .line 53
    .line 54
    iput-boolean v2, v0, Landroidx/recyclerview/widget/p;->a:Z

    .line 55
    .line 56
    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Landroidx/recyclerview/widget/x;

    .line 57
    .line 58
    invoke-virtual {p1}, Landroidx/recyclerview/widget/x;->i()I

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    if-nez p1, :cond_2

    .line 63
    .line 64
    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Landroidx/recyclerview/widget/x;

    .line 65
    .line 66
    invoke-virtual {p1}, Landroidx/recyclerview/widget/x;->f()I

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    if-nez p1, :cond_2

    .line 71
    .line 72
    const/4 v1, 0x1

    .line 73
    :cond_2
    iput-boolean v1, v0, Landroidx/recyclerview/widget/p;->i:Z

    .line 74
    .line 75
    return-void
.end method

.method private f1(Landroidx/recyclerview/widget/d0;II)V
    .locals 5

    .line 1
    iget v0, p1, Landroidx/recyclerview/widget/d0;->d:I

    .line 2
    .line 3
    const/high16 v1, -0x80000000

    .line 4
    .line 5
    const/4 v2, -0x1

    .line 6
    const/4 v3, 0x0

    .line 7
    iget v4, p1, Landroidx/recyclerview/widget/d0;->e:I

    .line 8
    .line 9
    if-ne p2, v2, :cond_1

    .line 10
    .line 11
    iget p2, p1, Landroidx/recyclerview/widget/d0;->b:I

    .line 12
    .line 13
    if-eq p2, v1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object p2, p1, Landroidx/recyclerview/widget/d0;->a:Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    check-cast p2, Landroid/view/View;

    .line 23
    .line 24
    invoke-static {p2}, Landroidx/recyclerview/widget/d0;->h(Landroid/view/View;)Landroidx/recyclerview/widget/X;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    iget-object v2, p1, Landroidx/recyclerview/widget/d0;->f:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 29
    .line 30
    iget-object v2, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Landroidx/recyclerview/widget/x;

    .line 31
    .line 32
    invoke-virtual {v2, p2}, Landroidx/recyclerview/widget/x;->e(Landroid/view/View;)I

    .line 33
    .line 34
    .line 35
    move-result p2

    .line 36
    iput p2, p1, Landroidx/recyclerview/widget/d0;->b:I

    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    iget p2, p1, Landroidx/recyclerview/widget/d0;->b:I

    .line 42
    .line 43
    :goto_0
    add-int/2addr p2, v0

    .line 44
    if-gt p2, p3, :cond_3

    .line 45
    .line 46
    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->y:Ljava/util/BitSet;

    .line 47
    .line 48
    invoke-virtual {p1, v4, v3}, Ljava/util/BitSet;->set(IZ)V

    .line 49
    .line 50
    .line 51
    goto :goto_2

    .line 52
    :cond_1
    iget p2, p1, Landroidx/recyclerview/widget/d0;->c:I

    .line 53
    .line 54
    if-eq p2, v1, :cond_2

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_2
    invoke-virtual {p1}, Landroidx/recyclerview/widget/d0;->a()V

    .line 58
    .line 59
    .line 60
    iget p2, p1, Landroidx/recyclerview/widget/d0;->c:I

    .line 61
    .line 62
    :goto_1
    sub-int/2addr p2, v0

    .line 63
    if-lt p2, p3, :cond_3

    .line 64
    .line 65
    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->y:Ljava/util/BitSet;

    .line 66
    .line 67
    invoke-virtual {p1, v4, v3}, Ljava/util/BitSet;->set(IZ)V

    .line 68
    .line 69
    .line 70
    :cond_3
    :goto_2
    return-void
.end method

.method private static g1(III)I
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    if-nez p2, :cond_0

    .line 4
    .line 5
    return p0

    .line 6
    :cond_0
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/high16 v1, -0x80000000

    .line 11
    .line 12
    if-eq v0, v1, :cond_2

    .line 13
    .line 14
    const/high16 v1, 0x40000000    # 2.0f

    .line 15
    .line 16
    if-ne v0, v1, :cond_1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    return p0

    .line 20
    :cond_2
    :goto_0
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    sub-int/2addr p0, p1

    .line 25
    sub-int/2addr p0, p2

    .line 26
    const/4 p1, 0x0

    .line 27
    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    invoke-static {p0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    return p0
.end method


# virtual methods
.method public final D0()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->F:Landroidx/recyclerview/widget/c0;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
.end method

.method final E0()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/E;->y()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_2

    .line 7
    .line 8
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->C:I

    .line 9
    .line 10
    if-eqz v0, :cond_2

    .line 11
    .line 12
    iget-boolean v0, p0, Landroidx/recyclerview/widget/E;->f:Z

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_0
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->x:Z

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->O0()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->N0()I

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->N0()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->O0()I

    .line 34
    .line 35
    .line 36
    :goto_0
    if-nez v0, :cond_2

    .line 37
    .line 38
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->S0()Landroid/view/View;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    if-eqz v0, :cond_2

    .line 43
    .line 44
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->B:Landroidx/recyclerview/widget/a0;

    .line 45
    .line 46
    invoke-virtual {v0}, Landroidx/recyclerview/widget/a0;->a()V

    .line 47
    .line 48
    .line 49
    const/4 v0, 0x1

    .line 50
    iput-boolean v0, p0, Landroidx/recyclerview/widget/E;->e:Z

    .line 51
    .line 52
    invoke-virtual {p0}, Landroidx/recyclerview/widget/E;->q0()V

    .line 53
    .line 54
    .line 55
    return v0

    .line 56
    :cond_2
    :goto_1
    return v1
.end method

.method final J0(Z)Landroid/view/View;
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Landroidx/recyclerview/widget/x;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/recyclerview/widget/x;->k()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Landroidx/recyclerview/widget/x;

    .line 8
    .line 9
    invoke-virtual {v1}, Landroidx/recyclerview/widget/x;->g()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-virtual {p0}, Landroidx/recyclerview/widget/E;->y()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    add-int/lit8 v2, v2, -0x1

    .line 18
    .line 19
    const/4 v3, 0x0

    .line 20
    :goto_0
    if-ltz v2, :cond_4

    .line 21
    .line 22
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/E;->x(I)Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    iget-object v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Landroidx/recyclerview/widget/x;

    .line 27
    .line 28
    invoke-virtual {v5, v4}, Landroidx/recyclerview/widget/x;->e(Landroid/view/View;)I

    .line 29
    .line 30
    .line 31
    move-result v5

    .line 32
    iget-object v6, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Landroidx/recyclerview/widget/x;

    .line 33
    .line 34
    invoke-virtual {v6, v4}, Landroidx/recyclerview/widget/x;->b(Landroid/view/View;)I

    .line 35
    .line 36
    .line 37
    move-result v6

    .line 38
    if-le v6, v0, :cond_3

    .line 39
    .line 40
    if-lt v5, v1, :cond_0

    .line 41
    .line 42
    goto :goto_2

    .line 43
    :cond_0
    if-le v6, v1, :cond_2

    .line 44
    .line 45
    if-nez p1, :cond_1

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_1
    if-nez v3, :cond_3

    .line 49
    .line 50
    move-object v3, v4

    .line 51
    goto :goto_2

    .line 52
    :cond_2
    :goto_1
    return-object v4

    .line 53
    :cond_3
    :goto_2
    add-int/lit8 v2, v2, -0x1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_4
    return-object v3
.end method

.method final K0(Z)Landroid/view/View;
    .locals 8

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Landroidx/recyclerview/widget/x;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/recyclerview/widget/x;->k()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Landroidx/recyclerview/widget/x;

    .line 8
    .line 9
    invoke-virtual {v1}, Landroidx/recyclerview/widget/x;->g()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-virtual {p0}, Landroidx/recyclerview/widget/E;->y()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    const/4 v3, 0x0

    .line 18
    const/4 v4, 0x0

    .line 19
    :goto_0
    if-ge v4, v2, :cond_4

    .line 20
    .line 21
    invoke-virtual {p0, v4}, Landroidx/recyclerview/widget/E;->x(I)Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object v5

    .line 25
    iget-object v6, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Landroidx/recyclerview/widget/x;

    .line 26
    .line 27
    invoke-virtual {v6, v5}, Landroidx/recyclerview/widget/x;->e(Landroid/view/View;)I

    .line 28
    .line 29
    .line 30
    move-result v6

    .line 31
    iget-object v7, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Landroidx/recyclerview/widget/x;

    .line 32
    .line 33
    invoke-virtual {v7, v5}, Landroidx/recyclerview/widget/x;->b(Landroid/view/View;)I

    .line 34
    .line 35
    .line 36
    move-result v7

    .line 37
    if-le v7, v0, :cond_3

    .line 38
    .line 39
    if-lt v6, v1, :cond_0

    .line 40
    .line 41
    goto :goto_2

    .line 42
    :cond_0
    if-ge v6, v0, :cond_2

    .line 43
    .line 44
    if-nez p1, :cond_1

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_1
    if-nez v3, :cond_3

    .line 48
    .line 49
    move-object v3, v5

    .line 50
    goto :goto_2

    .line 51
    :cond_2
    :goto_1
    return-object v5

    .line 52
    :cond_3
    :goto_2
    add-int/lit8 v4, v4, 0x1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_4
    return-object v3
.end method

.method final N0()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/E;->y()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/E;->x(I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {v0}, Landroidx/recyclerview/widget/E;->I(Landroid/view/View;)I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    :goto_0
    return v1
.end method

.method public final O()Z
    .locals 1

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->C:I

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
.end method

.method final O0()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/E;->y()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/E;->x(I)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Landroidx/recyclerview/widget/E;->I(Landroid/view/View;)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    :goto_0
    return v0
.end method

.method final S0()Landroid/view/View;
    .locals 13

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/E;->y()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    sub-int/2addr v0, v1

    .line 7
    new-instance v2, Ljava/util/BitSet;

    .line 8
    .line 9
    iget v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:I

    .line 10
    .line 11
    invoke-direct {v2, v3}, Ljava/util/BitSet;-><init>(I)V

    .line 12
    .line 13
    .line 14
    iget v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:I

    .line 15
    .line 16
    const/4 v4, 0x0

    .line 17
    invoke-virtual {v2, v4, v3, v1}, Ljava/util/BitSet;->set(IIZ)V

    .line 18
    .line 19
    .line 20
    iget v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:I

    .line 21
    .line 22
    const/4 v5, -0x1

    .line 23
    if-ne v3, v1, :cond_0

    .line 24
    .line 25
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->T0()Z

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    if-eqz v3, :cond_0

    .line 30
    .line 31
    const/4 v3, 0x1

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 v3, -0x1

    .line 34
    :goto_0
    iget-boolean v6, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->x:Z

    .line 35
    .line 36
    if-eqz v6, :cond_1

    .line 37
    .line 38
    const/4 v6, -0x1

    .line 39
    goto :goto_1

    .line 40
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 41
    .line 42
    move v6, v0

    .line 43
    const/4 v0, 0x0

    .line 44
    :goto_1
    if-ge v0, v6, :cond_2

    .line 45
    .line 46
    const/4 v5, 0x1

    .line 47
    :cond_2
    if-eq v0, v6, :cond_f

    .line 48
    .line 49
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/E;->x(I)Landroid/view/View;

    .line 50
    .line 51
    .line 52
    move-result-object v7

    .line 53
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 54
    .line 55
    .line 56
    move-result-object v8

    .line 57
    check-cast v8, Landroidx/recyclerview/widget/X;

    .line 58
    .line 59
    iget-object v9, v8, Landroidx/recyclerview/widget/X;->e:Landroidx/recyclerview/widget/d0;

    .line 60
    .line 61
    iget v9, v9, Landroidx/recyclerview/widget/d0;->e:I

    .line 62
    .line 63
    invoke-virtual {v2, v9}, Ljava/util/BitSet;->get(I)Z

    .line 64
    .line 65
    .line 66
    move-result v9

    .line 67
    if-eqz v9, :cond_8

    .line 68
    .line 69
    iget-object v9, v8, Landroidx/recyclerview/widget/X;->e:Landroidx/recyclerview/widget/d0;

    .line 70
    .line 71
    iget-boolean v10, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->x:Z

    .line 72
    .line 73
    const/high16 v11, -0x80000000

    .line 74
    .line 75
    if-eqz v10, :cond_4

    .line 76
    .line 77
    iget v10, v9, Landroidx/recyclerview/widget/d0;->c:I

    .line 78
    .line 79
    if-eq v10, v11, :cond_3

    .line 80
    .line 81
    goto :goto_2

    .line 82
    :cond_3
    invoke-virtual {v9}, Landroidx/recyclerview/widget/d0;->a()V

    .line 83
    .line 84
    .line 85
    iget v10, v9, Landroidx/recyclerview/widget/d0;->c:I

    .line 86
    .line 87
    :goto_2
    iget-object v11, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Landroidx/recyclerview/widget/x;

    .line 88
    .line 89
    invoke-virtual {v11}, Landroidx/recyclerview/widget/x;->g()I

    .line 90
    .line 91
    .line 92
    move-result v11

    .line 93
    if-ge v10, v11, :cond_6

    .line 94
    .line 95
    iget-object v9, v9, Landroidx/recyclerview/widget/d0;->a:Ljava/util/ArrayList;

    .line 96
    .line 97
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 98
    .line 99
    .line 100
    move-result v10

    .line 101
    sub-int/2addr v10, v1

    .line 102
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v9

    .line 106
    check-cast v9, Landroid/view/View;

    .line 107
    .line 108
    invoke-static {v9}, Landroidx/recyclerview/widget/d0;->h(Landroid/view/View;)Landroidx/recyclerview/widget/X;

    .line 109
    .line 110
    .line 111
    move-result-object v9

    .line 112
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 113
    .line 114
    .line 115
    goto :goto_4

    .line 116
    :cond_4
    iget v10, v9, Landroidx/recyclerview/widget/d0;->b:I

    .line 117
    .line 118
    if-eq v10, v11, :cond_5

    .line 119
    .line 120
    goto :goto_3

    .line 121
    :cond_5
    iget-object v10, v9, Landroidx/recyclerview/widget/d0;->a:Ljava/util/ArrayList;

    .line 122
    .line 123
    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v10

    .line 127
    check-cast v10, Landroid/view/View;

    .line 128
    .line 129
    invoke-static {v10}, Landroidx/recyclerview/widget/d0;->h(Landroid/view/View;)Landroidx/recyclerview/widget/X;

    .line 130
    .line 131
    .line 132
    move-result-object v11

    .line 133
    iget-object v12, v9, Landroidx/recyclerview/widget/d0;->f:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 134
    .line 135
    iget-object v12, v12, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Landroidx/recyclerview/widget/x;

    .line 136
    .line 137
    invoke-virtual {v12, v10}, Landroidx/recyclerview/widget/x;->e(Landroid/view/View;)I

    .line 138
    .line 139
    .line 140
    move-result v10

    .line 141
    iput v10, v9, Landroidx/recyclerview/widget/d0;->b:I

    .line 142
    .line 143
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 144
    .line 145
    .line 146
    iget v10, v9, Landroidx/recyclerview/widget/d0;->b:I

    .line 147
    .line 148
    :goto_3
    iget-object v11, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Landroidx/recyclerview/widget/x;

    .line 149
    .line 150
    invoke-virtual {v11}, Landroidx/recyclerview/widget/x;->k()I

    .line 151
    .line 152
    .line 153
    move-result v11

    .line 154
    if-le v10, v11, :cond_6

    .line 155
    .line 156
    iget-object v9, v9, Landroidx/recyclerview/widget/d0;->a:Ljava/util/ArrayList;

    .line 157
    .line 158
    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object v9

    .line 162
    check-cast v9, Landroid/view/View;

    .line 163
    .line 164
    invoke-static {v9}, Landroidx/recyclerview/widget/d0;->h(Landroid/view/View;)Landroidx/recyclerview/widget/X;

    .line 165
    .line 166
    .line 167
    move-result-object v9

    .line 168
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 169
    .line 170
    .line 171
    :goto_4
    const/4 v9, 0x1

    .line 172
    goto :goto_5

    .line 173
    :cond_6
    const/4 v9, 0x0

    .line 174
    :goto_5
    if-eqz v9, :cond_7

    .line 175
    .line 176
    return-object v7

    .line 177
    :cond_7
    iget-object v9, v8, Landroidx/recyclerview/widget/X;->e:Landroidx/recyclerview/widget/d0;

    .line 178
    .line 179
    iget v9, v9, Landroidx/recyclerview/widget/d0;->e:I

    .line 180
    .line 181
    invoke-virtual {v2, v9}, Ljava/util/BitSet;->clear(I)V

    .line 182
    .line 183
    .line 184
    :cond_8
    add-int/2addr v0, v5

    .line 185
    if-eq v0, v6, :cond_2

    .line 186
    .line 187
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/E;->x(I)Landroid/view/View;

    .line 188
    .line 189
    .line 190
    move-result-object v9

    .line 191
    iget-boolean v10, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->x:Z

    .line 192
    .line 193
    if-eqz v10, :cond_a

    .line 194
    .line 195
    iget-object v10, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Landroidx/recyclerview/widget/x;

    .line 196
    .line 197
    invoke-virtual {v10, v7}, Landroidx/recyclerview/widget/x;->b(Landroid/view/View;)I

    .line 198
    .line 199
    .line 200
    move-result v10

    .line 201
    iget-object v11, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Landroidx/recyclerview/widget/x;

    .line 202
    .line 203
    invoke-virtual {v11, v9}, Landroidx/recyclerview/widget/x;->b(Landroid/view/View;)I

    .line 204
    .line 205
    .line 206
    move-result v11

    .line 207
    if-ge v10, v11, :cond_9

    .line 208
    .line 209
    return-object v7

    .line 210
    :cond_9
    if-ne v10, v11, :cond_c

    .line 211
    .line 212
    goto :goto_6

    .line 213
    :cond_a
    iget-object v10, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Landroidx/recyclerview/widget/x;

    .line 214
    .line 215
    invoke-virtual {v10, v7}, Landroidx/recyclerview/widget/x;->e(Landroid/view/View;)I

    .line 216
    .line 217
    .line 218
    move-result v10

    .line 219
    iget-object v11, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Landroidx/recyclerview/widget/x;

    .line 220
    .line 221
    invoke-virtual {v11, v9}, Landroidx/recyclerview/widget/x;->e(Landroid/view/View;)I

    .line 222
    .line 223
    .line 224
    move-result v11

    .line 225
    if-le v10, v11, :cond_b

    .line 226
    .line 227
    return-object v7

    .line 228
    :cond_b
    if-ne v10, v11, :cond_c

    .line 229
    .line 230
    :goto_6
    const/4 v10, 0x1

    .line 231
    goto :goto_7

    .line 232
    :cond_c
    const/4 v10, 0x0

    .line 233
    :goto_7
    if-eqz v10, :cond_2

    .line 234
    .line 235
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 236
    .line 237
    .line 238
    move-result-object v9

    .line 239
    check-cast v9, Landroidx/recyclerview/widget/X;

    .line 240
    .line 241
    iget-object v8, v8, Landroidx/recyclerview/widget/X;->e:Landroidx/recyclerview/widget/d0;

    .line 242
    .line 243
    iget v8, v8, Landroidx/recyclerview/widget/d0;->e:I

    .line 244
    .line 245
    iget-object v9, v9, Landroidx/recyclerview/widget/X;->e:Landroidx/recyclerview/widget/d0;

    .line 246
    .line 247
    iget v9, v9, Landroidx/recyclerview/widget/d0;->e:I

    .line 248
    .line 249
    sub-int/2addr v8, v9

    .line 250
    if-gez v8, :cond_d

    .line 251
    .line 252
    const/4 v8, 0x1

    .line 253
    goto :goto_8

    .line 254
    :cond_d
    const/4 v8, 0x0

    .line 255
    :goto_8
    if-gez v3, :cond_e

    .line 256
    .line 257
    const/4 v9, 0x1

    .line 258
    goto :goto_9

    .line 259
    :cond_e
    const/4 v9, 0x0

    .line 260
    :goto_9
    if-eq v8, v9, :cond_2

    .line 261
    .line 262
    return-object v7

    .line 263
    :cond_f
    const/4 v0, 0x0

    .line 264
    return-object v0
.end method

.method public final T(I)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/E;->T(I)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    :goto_0
    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:I

    .line 6
    .line 7
    if-ge v0, v1, :cond_2

    .line 8
    .line 9
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:[Landroidx/recyclerview/widget/d0;

    .line 10
    .line 11
    aget-object v1, v1, v0

    .line 12
    .line 13
    iget v2, v1, Landroidx/recyclerview/widget/d0;->b:I

    .line 14
    .line 15
    const/high16 v3, -0x80000000

    .line 16
    .line 17
    if-eq v2, v3, :cond_0

    .line 18
    .line 19
    add-int/2addr v2, p1

    .line 20
    iput v2, v1, Landroidx/recyclerview/widget/d0;->b:I

    .line 21
    .line 22
    :cond_0
    iget v2, v1, Landroidx/recyclerview/widget/d0;->c:I

    .line 23
    .line 24
    if-eq v2, v3, :cond_1

    .line 25
    .line 26
    add-int/2addr v2, p1

    .line 27
    iput v2, v1, Landroidx/recyclerview/widget/d0;->c:I

    .line 28
    .line 29
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_2
    return-void
.end method

.method final T0()Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/E;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/core/view/f0;->n(Landroid/view/View;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v1, 0x0

    .line 12
    :goto_0
    return v1
.end method

.method public final U(I)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/E;->U(I)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    :goto_0
    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:I

    .line 6
    .line 7
    if-ge v0, v1, :cond_2

    .line 8
    .line 9
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:[Landroidx/recyclerview/widget/d0;

    .line 10
    .line 11
    aget-object v1, v1, v0

    .line 12
    .line 13
    iget v2, v1, Landroidx/recyclerview/widget/d0;->b:I

    .line 14
    .line 15
    const/high16 v3, -0x80000000

    .line 16
    .line 17
    if-eq v2, v3, :cond_0

    .line 18
    .line 19
    add-int/2addr v2, p1

    .line 20
    iput v2, v1, Landroidx/recyclerview/widget/d0;->b:I

    .line 21
    .line 22
    :cond_0
    iget v2, v1, Landroidx/recyclerview/widget/d0;->c:I

    .line 23
    .line 24
    if-eq v2, v3, :cond_1

    .line 25
    .line 26
    add-int/2addr v2, p1

    .line 27
    iput v2, v1, Landroidx/recyclerview/widget/d0;->c:I

    .line 28
    .line 29
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_2
    return-void
.end method

.method public final V()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->B:Landroidx/recyclerview/widget/a0;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/recyclerview/widget/a0;->a()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    :goto_0
    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:I

    .line 8
    .line 9
    if-ge v0, v1, :cond_0

    .line 10
    .line 11
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:[Landroidx/recyclerview/widget/d0;

    .line 12
    .line 13
    aget-object v1, v1, v0

    .line 14
    .line 15
    invoke-virtual {v1}, Landroidx/recyclerview/widget/d0;->b()V

    .line 16
    .line 17
    .line 18
    add-int/lit8 v0, v0, 0x1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    return-void
.end method

.method public final W(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->K:Ljava/lang/Runnable;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/recyclerview/widget/E;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 8
    .line 9
    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:I

    .line 12
    .line 13
    if-ge v0, v1, :cond_1

    .line 14
    .line 15
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:[Landroidx/recyclerview/widget/d0;

    .line 16
    .line 17
    aget-object v1, v1, v0

    .line 18
    .line 19
    invoke-virtual {v1}, Landroidx/recyclerview/widget/d0;->b()V

    .line 20
    .line 21
    .line 22
    add-int/lit8 v0, v0, 0x1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public final X(Landroid/view/View;ILandroidx/recyclerview/widget/I;Landroidx/recyclerview/widget/M;)Landroid/view/View;
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/E;->y()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-object v1

    .line 9
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/E;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    :goto_0
    move-object p1, v1

    .line 14
    goto :goto_1

    .line 15
    :cond_1
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->G(Landroid/view/View;)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    if-nez p1, :cond_2

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_2
    iget-object v0, p0, Landroidx/recyclerview/widget/E;->a:Landroidx/recyclerview/widget/d;

    .line 23
    .line 24
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/d;->k(Landroid/view/View;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_3

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_3
    :goto_1
    if-nez p1, :cond_4

    .line 32
    .line 33
    return-object v1

    .line 34
    :cond_4
    invoke-direct {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b1()V

    .line 35
    .line 36
    .line 37
    const/high16 v0, -0x80000000

    .line 38
    .line 39
    const/4 v2, -0x1

    .line 40
    const/4 v3, 0x1

    .line 41
    if-eq p2, v3, :cond_c

    .line 42
    .line 43
    const/4 v4, 0x2

    .line 44
    if-eq p2, v4, :cond_a

    .line 45
    .line 46
    const/16 v4, 0x11

    .line 47
    .line 48
    if-eq p2, v4, :cond_8

    .line 49
    .line 50
    const/16 v4, 0x21

    .line 51
    .line 52
    if-eq p2, v4, :cond_7

    .line 53
    .line 54
    const/16 v4, 0x42

    .line 55
    .line 56
    if-eq p2, v4, :cond_6

    .line 57
    .line 58
    const/16 v4, 0x82

    .line 59
    .line 60
    if-eq p2, v4, :cond_5

    .line 61
    .line 62
    goto :goto_2

    .line 63
    :cond_5
    iget p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:I

    .line 64
    .line 65
    if-ne p2, v3, :cond_9

    .line 66
    .line 67
    goto :goto_3

    .line 68
    :cond_6
    iget p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:I

    .line 69
    .line 70
    if-nez p2, :cond_9

    .line 71
    .line 72
    goto :goto_3

    .line 73
    :cond_7
    iget p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:I

    .line 74
    .line 75
    if-ne p2, v3, :cond_9

    .line 76
    .line 77
    goto :goto_4

    .line 78
    :cond_8
    iget p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:I

    .line 79
    .line 80
    if-nez p2, :cond_9

    .line 81
    .line 82
    goto :goto_4

    .line 83
    :cond_9
    :goto_2
    const/high16 p2, -0x80000000

    .line 84
    .line 85
    goto :goto_5

    .line 86
    :cond_a
    iget p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:I

    .line 87
    .line 88
    if-ne p2, v3, :cond_b

    .line 89
    .line 90
    goto :goto_3

    .line 91
    :cond_b
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->T0()Z

    .line 92
    .line 93
    .line 94
    move-result p2

    .line 95
    if-eqz p2, :cond_e

    .line 96
    .line 97
    goto :goto_4

    .line 98
    :cond_c
    iget p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:I

    .line 99
    .line 100
    if-ne p2, v3, :cond_d

    .line 101
    .line 102
    goto :goto_4

    .line 103
    :cond_d
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->T0()Z

    .line 104
    .line 105
    .line 106
    move-result p2

    .line 107
    if-eqz p2, :cond_f

    .line 108
    .line 109
    :cond_e
    :goto_3
    const/4 p2, 0x1

    .line 110
    goto :goto_5

    .line 111
    :cond_f
    :goto_4
    const/4 p2, -0x1

    .line 112
    :goto_5
    if-ne p2, v0, :cond_10

    .line 113
    .line 114
    return-object v1

    .line 115
    :cond_10
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    check-cast v0, Landroidx/recyclerview/widget/X;

    .line 120
    .line 121
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 122
    .line 123
    .line 124
    iget-object v0, v0, Landroidx/recyclerview/widget/X;->e:Landroidx/recyclerview/widget/d0;

    .line 125
    .line 126
    if-ne p2, v3, :cond_11

    .line 127
    .line 128
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->O0()I

    .line 129
    .line 130
    .line 131
    move-result v4

    .line 132
    goto :goto_6

    .line 133
    :cond_11
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->N0()I

    .line 134
    .line 135
    .line 136
    move-result v4

    .line 137
    :goto_6
    invoke-direct {p0, v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e1(I)V

    .line 138
    .line 139
    .line 140
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->d1(I)V

    .line 141
    .line 142
    .line 143
    iget-object v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->v:Landroidx/recyclerview/widget/p;

    .line 144
    .line 145
    iget v6, v5, Landroidx/recyclerview/widget/p;->d:I

    .line 146
    .line 147
    add-int/2addr v6, v4

    .line 148
    iput v6, v5, Landroidx/recyclerview/widget/p;->c:I

    .line 149
    .line 150
    iget-object v6, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Landroidx/recyclerview/widget/x;

    .line 151
    .line 152
    invoke-virtual {v6}, Landroidx/recyclerview/widget/x;->l()I

    .line 153
    .line 154
    .line 155
    move-result v6

    .line 156
    int-to-float v6, v6

    .line 157
    const v7, 0x3eaaaaab

    .line 158
    .line 159
    .line 160
    mul-float v6, v6, v7

    .line 161
    .line 162
    float-to-int v6, v6

    .line 163
    iput v6, v5, Landroidx/recyclerview/widget/p;->b:I

    .line 164
    .line 165
    iput-boolean v3, v5, Landroidx/recyclerview/widget/p;->h:Z

    .line 166
    .line 167
    const/4 v6, 0x0

    .line 168
    iput-boolean v6, v5, Landroidx/recyclerview/widget/p;->a:Z

    .line 169
    .line 170
    invoke-direct {p0, p3, v5, p4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->I0(Landroidx/recyclerview/widget/I;Landroidx/recyclerview/widget/p;Landroidx/recyclerview/widget/M;)I

    .line 171
    .line 172
    .line 173
    iget-boolean p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->x:Z

    .line 174
    .line 175
    iput-boolean p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->D:Z

    .line 176
    .line 177
    invoke-virtual {v0, v4, p2}, Landroidx/recyclerview/widget/d0;->g(II)Landroid/view/View;

    .line 178
    .line 179
    .line 180
    move-result-object p3

    .line 181
    if-eqz p3, :cond_12

    .line 182
    .line 183
    if-eq p3, p1, :cond_12

    .line 184
    .line 185
    return-object p3

    .line 186
    :cond_12
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->W0(I)Z

    .line 187
    .line 188
    .line 189
    move-result p3

    .line 190
    if-eqz p3, :cond_14

    .line 191
    .line 192
    iget p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:I

    .line 193
    .line 194
    sub-int/2addr p3, v3

    .line 195
    :goto_7
    if-ltz p3, :cond_16

    .line 196
    .line 197
    iget-object p4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:[Landroidx/recyclerview/widget/d0;

    .line 198
    .line 199
    aget-object p4, p4, p3

    .line 200
    .line 201
    invoke-virtual {p4, v4, p2}, Landroidx/recyclerview/widget/d0;->g(II)Landroid/view/View;

    .line 202
    .line 203
    .line 204
    move-result-object p4

    .line 205
    if-eqz p4, :cond_13

    .line 206
    .line 207
    if-eq p4, p1, :cond_13

    .line 208
    .line 209
    return-object p4

    .line 210
    :cond_13
    add-int/lit8 p3, p3, -0x1

    .line 211
    .line 212
    goto :goto_7

    .line 213
    :cond_14
    const/4 p3, 0x0

    .line 214
    :goto_8
    iget p4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:I

    .line 215
    .line 216
    if-ge p3, p4, :cond_16

    .line 217
    .line 218
    iget-object p4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:[Landroidx/recyclerview/widget/d0;

    .line 219
    .line 220
    aget-object p4, p4, p3

    .line 221
    .line 222
    invoke-virtual {p4, v4, p2}, Landroidx/recyclerview/widget/d0;->g(II)Landroid/view/View;

    .line 223
    .line 224
    .line 225
    move-result-object p4

    .line 226
    if-eqz p4, :cond_15

    .line 227
    .line 228
    if-eq p4, p1, :cond_15

    .line 229
    .line 230
    return-object p4

    .line 231
    :cond_15
    add-int/lit8 p3, p3, 0x1

    .line 232
    .line 233
    goto :goto_8

    .line 234
    :cond_16
    iget-boolean p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->w:Z

    .line 235
    .line 236
    xor-int/2addr p3, v3

    .line 237
    if-ne p2, v2, :cond_17

    .line 238
    .line 239
    const/4 p4, 0x1

    .line 240
    goto :goto_9

    .line 241
    :cond_17
    const/4 p4, 0x0

    .line 242
    :goto_9
    if-ne p3, p4, :cond_18

    .line 243
    .line 244
    const/4 p3, 0x1

    .line 245
    goto :goto_a

    .line 246
    :cond_18
    const/4 p3, 0x0

    .line 247
    :goto_a
    if-eqz p3, :cond_19

    .line 248
    .line 249
    invoke-virtual {v0}, Landroidx/recyclerview/widget/d0;->c()I

    .line 250
    .line 251
    .line 252
    move-result p4

    .line 253
    goto :goto_b

    .line 254
    :cond_19
    invoke-virtual {v0}, Landroidx/recyclerview/widget/d0;->d()I

    .line 255
    .line 256
    .line 257
    move-result p4

    .line 258
    :goto_b
    invoke-virtual {p0, p4}, Landroidx/recyclerview/widget/E;->t(I)Landroid/view/View;

    .line 259
    .line 260
    .line 261
    move-result-object p4

    .line 262
    if-eqz p4, :cond_1a

    .line 263
    .line 264
    if-eq p4, p1, :cond_1a

    .line 265
    .line 266
    return-object p4

    .line 267
    :cond_1a
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->W0(I)Z

    .line 268
    .line 269
    .line 270
    move-result p2

    .line 271
    if-eqz p2, :cond_1e

    .line 272
    .line 273
    iget p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:I

    .line 274
    .line 275
    sub-int/2addr p2, v3

    .line 276
    :goto_c
    if-ltz p2, :cond_21

    .line 277
    .line 278
    iget p4, v0, Landroidx/recyclerview/widget/d0;->e:I

    .line 279
    .line 280
    if-ne p2, p4, :cond_1b

    .line 281
    .line 282
    goto :goto_e

    .line 283
    :cond_1b
    if-eqz p3, :cond_1c

    .line 284
    .line 285
    iget-object p4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:[Landroidx/recyclerview/widget/d0;

    .line 286
    .line 287
    aget-object p4, p4, p2

    .line 288
    .line 289
    invoke-virtual {p4}, Landroidx/recyclerview/widget/d0;->c()I

    .line 290
    .line 291
    .line 292
    move-result p4

    .line 293
    goto :goto_d

    .line 294
    :cond_1c
    iget-object p4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:[Landroidx/recyclerview/widget/d0;

    .line 295
    .line 296
    aget-object p4, p4, p2

    .line 297
    .line 298
    invoke-virtual {p4}, Landroidx/recyclerview/widget/d0;->d()I

    .line 299
    .line 300
    .line 301
    move-result p4

    .line 302
    :goto_d
    invoke-virtual {p0, p4}, Landroidx/recyclerview/widget/E;->t(I)Landroid/view/View;

    .line 303
    .line 304
    .line 305
    move-result-object p4

    .line 306
    if-eqz p4, :cond_1d

    .line 307
    .line 308
    if-eq p4, p1, :cond_1d

    .line 309
    .line 310
    return-object p4

    .line 311
    :cond_1d
    :goto_e
    add-int/lit8 p2, p2, -0x1

    .line 312
    .line 313
    goto :goto_c

    .line 314
    :cond_1e
    :goto_f
    iget p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:I

    .line 315
    .line 316
    if-ge v6, p2, :cond_21

    .line 317
    .line 318
    if-eqz p3, :cond_1f

    .line 319
    .line 320
    iget-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:[Landroidx/recyclerview/widget/d0;

    .line 321
    .line 322
    aget-object p2, p2, v6

    .line 323
    .line 324
    invoke-virtual {p2}, Landroidx/recyclerview/widget/d0;->c()I

    .line 325
    .line 326
    .line 327
    move-result p2

    .line 328
    goto :goto_10

    .line 329
    :cond_1f
    iget-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:[Landroidx/recyclerview/widget/d0;

    .line 330
    .line 331
    aget-object p2, p2, v6

    .line 332
    .line 333
    invoke-virtual {p2}, Landroidx/recyclerview/widget/d0;->d()I

    .line 334
    .line 335
    .line 336
    move-result p2

    .line 337
    :goto_10
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/E;->t(I)Landroid/view/View;

    .line 338
    .line 339
    .line 340
    move-result-object p2

    .line 341
    if-eqz p2, :cond_20

    .line 342
    .line 343
    if-eq p2, p1, :cond_20

    .line 344
    .line 345
    return-object p2

    .line 346
    :cond_20
    add-int/lit8 v6, v6, 0x1

    .line 347
    .line 348
    goto :goto_f

    .line 349
    :cond_21
    return-object v1
.end method

.method final X0(I)V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-lez p1, :cond_0

    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->O0()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    const/4 v2, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->N0()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    const/4 v2, -0x1

    .line 15
    :goto_0
    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->v:Landroidx/recyclerview/widget/p;

    .line 16
    .line 17
    iput-boolean v0, v3, Landroidx/recyclerview/widget/p;->a:Z

    .line 18
    .line 19
    invoke-direct {p0, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e1(I)V

    .line 20
    .line 21
    .line 22
    invoke-direct {p0, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->d1(I)V

    .line 23
    .line 24
    .line 25
    iget v0, v3, Landroidx/recyclerview/widget/p;->d:I

    .line 26
    .line 27
    add-int/2addr v1, v0

    .line 28
    iput v1, v3, Landroidx/recyclerview/widget/p;->c:I

    .line 29
    .line 30
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    iput p1, v3, Landroidx/recyclerview/widget/p;->b:I

    .line 35
    .line 36
    return-void
.end method

.method public final Y(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/E;->Y(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/recyclerview/widget/E;->y()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-lez v0, :cond_2

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->K0(Z)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->J0(Z)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-eqz v1, :cond_2

    .line 20
    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-static {v1}, Landroidx/recyclerview/widget/E;->I(Landroid/view/View;)I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    invoke-static {v0}, Landroidx/recyclerview/widget/E;->I(Landroid/view/View;)I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-ge v1, v0, :cond_1

    .line 33
    .line 34
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityRecord;->setFromIndex(I)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setToIndex(I)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setFromIndex(I)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityRecord;->setToIndex(I)V

    .line 45
    .line 46
    .line 47
    :cond_2
    :goto_0
    return-void
.end method

.method public final c0(II)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, p1, p2, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->R0(III)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method final c1(ILandroidx/recyclerview/widget/I;Landroidx/recyclerview/widget/M;)I
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/E;->y()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_3

    .line 7
    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    goto :goto_1

    .line 11
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->X0(I)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->v:Landroidx/recyclerview/widget/p;

    .line 15
    .line 16
    invoke-direct {p0, p2, v0, p3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->I0(Landroidx/recyclerview/widget/I;Landroidx/recyclerview/widget/p;Landroidx/recyclerview/widget/M;)I

    .line 17
    .line 18
    .line 19
    move-result p3

    .line 20
    iget v2, v0, Landroidx/recyclerview/widget/p;->b:I

    .line 21
    .line 22
    if-ge v2, p3, :cond_1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    if-gez p1, :cond_2

    .line 26
    .line 27
    neg-int p1, p3

    .line 28
    goto :goto_0

    .line 29
    :cond_2
    move p1, p3

    .line 30
    :goto_0
    iget-object p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Landroidx/recyclerview/widget/x;

    .line 31
    .line 32
    neg-int v2, p1

    .line 33
    invoke-virtual {p3, v2}, Landroidx/recyclerview/widget/x;->p(I)V

    .line 34
    .line 35
    .line 36
    iget-boolean p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->x:Z

    .line 37
    .line 38
    iput-boolean p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->D:Z

    .line 39
    .line 40
    iput v1, v0, Landroidx/recyclerview/widget/p;->b:I

    .line 41
    .line 42
    invoke-direct {p0, p2, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->Y0(Landroidx/recyclerview/widget/I;Landroidx/recyclerview/widget/p;)V

    .line 43
    .line 44
    .line 45
    return p1

    .line 46
    :cond_3
    :goto_1
    return v1
.end method

.method public final d0()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->B:Landroidx/recyclerview/widget/a0;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/recyclerview/widget/a0;->a()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/recyclerview/widget/E;->q0()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final e0(II)V
    .locals 1

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    invoke-direct {p0, p1, p2, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->R0(III)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final f(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->F:Landroidx/recyclerview/widget/c0;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/E;->f(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final f0(II)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-direct {p0, p1, p2, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->R0(III)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public final g()Z
    .locals 1

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
.end method

.method public final g0(II)V
    .locals 1

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-direct {p0, p1, p2, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->R0(III)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public final h()Z
    .locals 2

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v1, 0x0

    .line 8
    :goto_0
    return v1
.end method

.method public final h0(Landroidx/recyclerview/widget/I;Landroidx/recyclerview/widget/M;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, p1, p2, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->V0(Landroidx/recyclerview/widget/I;Landroidx/recyclerview/widget/M;Z)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public final i(Landroidx/recyclerview/widget/F;)Z
    .locals 0

    .line 1
    instance-of p1, p1, Landroidx/recyclerview/widget/X;

    .line 2
    .line 3
    return p1
.end method

.method public final i0(Landroidx/recyclerview/widget/M;)V
    .locals 0

    .line 1
    const/4 p1, -0x1

    .line 2
    iput p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->z:I

    .line 3
    .line 4
    const/high16 p1, -0x80000000

    .line 5
    .line 6
    iput p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->A:I

    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->F:Landroidx/recyclerview/widget/c0;

    .line 10
    .line 11
    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->H:Landroidx/recyclerview/widget/W;

    .line 12
    .line 13
    invoke-virtual {p1}, Landroidx/recyclerview/widget/W;->a()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final j0(Landroid/os/Parcelable;)V
    .locals 3

    .line 1
    instance-of v0, p1, Landroidx/recyclerview/widget/c0;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    check-cast p1, Landroidx/recyclerview/widget/c0;

    .line 6
    .line 7
    iput-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->F:Landroidx/recyclerview/widget/c0;

    .line 8
    .line 9
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->z:I

    .line 10
    .line 11
    const/4 v1, -0x1

    .line 12
    if-eq v0, v1, :cond_0

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    iput-object v0, p1, Landroidx/recyclerview/widget/c0;->d:[I

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    iput v2, p1, Landroidx/recyclerview/widget/c0;->c:I

    .line 19
    .line 20
    iput v1, p1, Landroidx/recyclerview/widget/c0;->a:I

    .line 21
    .line 22
    iput v1, p1, Landroidx/recyclerview/widget/c0;->b:I

    .line 23
    .line 24
    iput-object v0, p1, Landroidx/recyclerview/widget/c0;->d:[I

    .line 25
    .line 26
    iput v2, p1, Landroidx/recyclerview/widget/c0;->c:I

    .line 27
    .line 28
    iput v2, p1, Landroidx/recyclerview/widget/c0;->e:I

    .line 29
    .line 30
    iput-object v0, p1, Landroidx/recyclerview/widget/c0;->f:[I

    .line 31
    .line 32
    iput-object v0, p1, Landroidx/recyclerview/widget/c0;->g:Ljava/util/List;

    .line 33
    .line 34
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/E;->q0()V

    .line 35
    .line 36
    .line 37
    :cond_1
    return-void
.end method

.method public final k(IILandroidx/recyclerview/widget/M;Lu/p;)V
    .locals 5

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    move p1, p2

    .line 7
    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/E;->y()I

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    if-eqz p2, :cond_8

    .line 12
    .line 13
    if-nez p1, :cond_1

    .line 14
    .line 15
    goto/16 :goto_5

    .line 16
    .line 17
    :cond_1
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->X0(I)V

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->J:[I

    .line 21
    .line 22
    if-eqz p1, :cond_2

    .line 23
    .line 24
    array-length p1, p1

    .line 25
    iget p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:I

    .line 26
    .line 27
    if-ge p1, p2, :cond_3

    .line 28
    .line 29
    :cond_2
    iget p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:I

    .line 30
    .line 31
    new-array p1, p1, [I

    .line 32
    .line 33
    iput-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->J:[I

    .line 34
    .line 35
    :cond_3
    const/4 p1, 0x0

    .line 36
    const/4 p2, 0x0

    .line 37
    const/4 v0, 0x0

    .line 38
    :goto_1
    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:I

    .line 39
    .line 40
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->v:Landroidx/recyclerview/widget/p;

    .line 41
    .line 42
    if-ge p2, v1, :cond_6

    .line 43
    .line 44
    iget v1, v2, Landroidx/recyclerview/widget/p;->d:I

    .line 45
    .line 46
    const/4 v3, -0x1

    .line 47
    if-ne v1, v3, :cond_4

    .line 48
    .line 49
    iget v1, v2, Landroidx/recyclerview/widget/p;->f:I

    .line 50
    .line 51
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:[Landroidx/recyclerview/widget/d0;

    .line 52
    .line 53
    aget-object v2, v2, p2

    .line 54
    .line 55
    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/d0;->i(I)I

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    goto :goto_2

    .line 60
    :cond_4
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:[Landroidx/recyclerview/widget/d0;

    .line 61
    .line 62
    aget-object v1, v1, p2

    .line 63
    .line 64
    iget v3, v2, Landroidx/recyclerview/widget/p;->g:I

    .line 65
    .line 66
    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/d0;->f(I)I

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    iget v2, v2, Landroidx/recyclerview/widget/p;->g:I

    .line 71
    .line 72
    :goto_2
    sub-int/2addr v1, v2

    .line 73
    if-ltz v1, :cond_5

    .line 74
    .line 75
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->J:[I

    .line 76
    .line 77
    aput v1, v2, v0

    .line 78
    .line 79
    add-int/lit8 v0, v0, 0x1

    .line 80
    .line 81
    :cond_5
    add-int/lit8 p2, p2, 0x1

    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_6
    iget-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->J:[I

    .line 85
    .line 86
    invoke-static {p2, p1, v0}, Ljava/util/Arrays;->sort([III)V

    .line 87
    .line 88
    .line 89
    const/4 p2, 0x0

    .line 90
    :goto_3
    if-ge p2, v0, :cond_8

    .line 91
    .line 92
    iget v1, v2, Landroidx/recyclerview/widget/p;->c:I

    .line 93
    .line 94
    if-ltz v1, :cond_7

    .line 95
    .line 96
    invoke-virtual {p3}, Landroidx/recyclerview/widget/M;->b()I

    .line 97
    .line 98
    .line 99
    move-result v3

    .line 100
    if-ge v1, v3, :cond_7

    .line 101
    .line 102
    const/4 v1, 0x1

    .line 103
    goto :goto_4

    .line 104
    :cond_7
    const/4 v1, 0x0

    .line 105
    :goto_4
    if-eqz v1, :cond_8

    .line 106
    .line 107
    iget v1, v2, Landroidx/recyclerview/widget/p;->c:I

    .line 108
    .line 109
    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->J:[I

    .line 110
    .line 111
    aget v3, v3, p2

    .line 112
    .line 113
    move-object v4, p4

    .line 114
    check-cast v4, Landroidx/recyclerview/widget/k;

    .line 115
    .line 116
    invoke-virtual {v4, v1, v3}, Landroidx/recyclerview/widget/k;->a(II)V

    .line 117
    .line 118
    .line 119
    iget v1, v2, Landroidx/recyclerview/widget/p;->c:I

    .line 120
    .line 121
    iget v3, v2, Landroidx/recyclerview/widget/p;->d:I

    .line 122
    .line 123
    add-int/2addr v1, v3

    .line 124
    iput v1, v2, Landroidx/recyclerview/widget/p;->c:I

    .line 125
    .line 126
    add-int/lit8 p2, p2, 0x1

    .line 127
    .line 128
    goto :goto_3

    .line 129
    :cond_8
    :goto_5
    return-void
.end method

.method public final k0()Landroid/os/Parcelable;
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->F:Landroidx/recyclerview/widget/c0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Landroidx/recyclerview/widget/c0;

    .line 6
    .line 7
    invoke-direct {v1, v0}, Landroidx/recyclerview/widget/c0;-><init>(Landroidx/recyclerview/widget/c0;)V

    .line 8
    .line 9
    .line 10
    return-object v1

    .line 11
    :cond_0
    new-instance v0, Landroidx/recyclerview/widget/c0;

    .line 12
    .line 13
    invoke-direct {v0}, Landroidx/recyclerview/widget/c0;-><init>()V

    .line 14
    .line 15
    .line 16
    iget-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->w:Z

    .line 17
    .line 18
    iput-boolean v1, v0, Landroidx/recyclerview/widget/c0;->h:Z

    .line 19
    .line 20
    iget-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->D:Z

    .line 21
    .line 22
    iput-boolean v1, v0, Landroidx/recyclerview/widget/c0;->i:Z

    .line 23
    .line 24
    iget-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->E:Z

    .line 25
    .line 26
    iput-boolean v1, v0, Landroidx/recyclerview/widget/c0;->j:Z

    .line 27
    .line 28
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->B:Landroidx/recyclerview/widget/a0;

    .line 29
    .line 30
    const/4 v2, 0x0

    .line 31
    if-eqz v1, :cond_1

    .line 32
    .line 33
    iget-object v3, v1, Landroidx/recyclerview/widget/a0;->a:[I

    .line 34
    .line 35
    if-eqz v3, :cond_1

    .line 36
    .line 37
    iput-object v3, v0, Landroidx/recyclerview/widget/c0;->f:[I

    .line 38
    .line 39
    array-length v3, v3

    .line 40
    iput v3, v0, Landroidx/recyclerview/widget/c0;->e:I

    .line 41
    .line 42
    iget-object v1, v1, Landroidx/recyclerview/widget/a0;->b:Ljava/util/List;

    .line 43
    .line 44
    iput-object v1, v0, Landroidx/recyclerview/widget/c0;->g:Ljava/util/List;

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    iput v2, v0, Landroidx/recyclerview/widget/c0;->e:I

    .line 48
    .line 49
    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/E;->y()I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    const/4 v3, -0x1

    .line 54
    if-lez v1, :cond_7

    .line 55
    .line 56
    iget-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->D:Z

    .line 57
    .line 58
    if-eqz v1, :cond_2

    .line 59
    .line 60
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->O0()I

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    goto :goto_1

    .line 65
    :cond_2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->N0()I

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    :goto_1
    iput v1, v0, Landroidx/recyclerview/widget/c0;->a:I

    .line 70
    .line 71
    iget-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->x:Z

    .line 72
    .line 73
    const/4 v4, 0x1

    .line 74
    if-eqz v1, :cond_3

    .line 75
    .line 76
    invoke-virtual {p0, v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->J0(Z)Landroid/view/View;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    goto :goto_2

    .line 81
    :cond_3
    invoke-virtual {p0, v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->K0(Z)Landroid/view/View;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    :goto_2
    if-nez v1, :cond_4

    .line 86
    .line 87
    goto :goto_3

    .line 88
    :cond_4
    invoke-static {v1}, Landroidx/recyclerview/widget/E;->I(Landroid/view/View;)I

    .line 89
    .line 90
    .line 91
    move-result v3

    .line 92
    :goto_3
    iput v3, v0, Landroidx/recyclerview/widget/c0;->b:I

    .line 93
    .line 94
    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:I

    .line 95
    .line 96
    iput v1, v0, Landroidx/recyclerview/widget/c0;->c:I

    .line 97
    .line 98
    new-array v1, v1, [I

    .line 99
    .line 100
    iput-object v1, v0, Landroidx/recyclerview/widget/c0;->d:[I

    .line 101
    .line 102
    :goto_4
    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:I

    .line 103
    .line 104
    if-ge v2, v1, :cond_8

    .line 105
    .line 106
    iget-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->D:Z

    .line 107
    .line 108
    const/high16 v3, -0x80000000

    .line 109
    .line 110
    if-eqz v1, :cond_5

    .line 111
    .line 112
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:[Landroidx/recyclerview/widget/d0;

    .line 113
    .line 114
    aget-object v1, v1, v2

    .line 115
    .line 116
    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/d0;->f(I)I

    .line 117
    .line 118
    .line 119
    move-result v1

    .line 120
    if-eq v1, v3, :cond_6

    .line 121
    .line 122
    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Landroidx/recyclerview/widget/x;

    .line 123
    .line 124
    invoke-virtual {v3}, Landroidx/recyclerview/widget/x;->g()I

    .line 125
    .line 126
    .line 127
    move-result v3

    .line 128
    goto :goto_5

    .line 129
    :cond_5
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:[Landroidx/recyclerview/widget/d0;

    .line 130
    .line 131
    aget-object v1, v1, v2

    .line 132
    .line 133
    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/d0;->i(I)I

    .line 134
    .line 135
    .line 136
    move-result v1

    .line 137
    if-eq v1, v3, :cond_6

    .line 138
    .line 139
    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Landroidx/recyclerview/widget/x;

    .line 140
    .line 141
    invoke-virtual {v3}, Landroidx/recyclerview/widget/x;->k()I

    .line 142
    .line 143
    .line 144
    move-result v3

    .line 145
    :goto_5
    sub-int/2addr v1, v3

    .line 146
    :cond_6
    iget-object v3, v0, Landroidx/recyclerview/widget/c0;->d:[I

    .line 147
    .line 148
    aput v1, v3, v2

    .line 149
    .line 150
    add-int/lit8 v2, v2, 0x1

    .line 151
    .line 152
    goto :goto_4

    .line 153
    :cond_7
    iput v3, v0, Landroidx/recyclerview/widget/c0;->a:I

    .line 154
    .line 155
    iput v3, v0, Landroidx/recyclerview/widget/c0;->b:I

    .line 156
    .line 157
    iput v2, v0, Landroidx/recyclerview/widget/c0;->c:I

    .line 158
    .line 159
    :cond_8
    return-object v0
.end method

.method public final l0(I)V
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->E0()Z

    .line 4
    .line 5
    .line 6
    :cond_0
    return-void
.end method

.method public final m(Landroidx/recyclerview/widget/M;)I
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->F0(Landroidx/recyclerview/widget/M;)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public final n(Landroidx/recyclerview/widget/M;)I
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->G0(Landroidx/recyclerview/widget/M;)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public final o(Landroidx/recyclerview/widget/M;)I
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->H0(Landroidx/recyclerview/widget/M;)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public final p(Landroidx/recyclerview/widget/M;)I
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->F0(Landroidx/recyclerview/widget/M;)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public final q(Landroidx/recyclerview/widget/M;)I
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->G0(Landroidx/recyclerview/widget/M;)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public final r(Landroidx/recyclerview/widget/M;)I
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->H0(Landroidx/recyclerview/widget/M;)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public final r0(ILandroidx/recyclerview/widget/I;Landroidx/recyclerview/widget/M;)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c1(ILandroidx/recyclerview/widget/I;Landroidx/recyclerview/widget/M;)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public final s0(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->F:Landroidx/recyclerview/widget/c0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v1, v0, Landroidx/recyclerview/widget/c0;->a:I

    .line 6
    .line 7
    if-eq v1, p1, :cond_0

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    iput-object v1, v0, Landroidx/recyclerview/widget/c0;->d:[I

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    iput v1, v0, Landroidx/recyclerview/widget/c0;->c:I

    .line 14
    .line 15
    const/4 v1, -0x1

    .line 16
    iput v1, v0, Landroidx/recyclerview/widget/c0;->a:I

    .line 17
    .line 18
    iput v1, v0, Landroidx/recyclerview/widget/c0;->b:I

    .line 19
    .line 20
    :cond_0
    iput p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->z:I

    .line 21
    .line 22
    const/high16 p1, -0x80000000

    .line 23
    .line 24
    iput p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->A:I

    .line 25
    .line 26
    invoke-virtual {p0}, Landroidx/recyclerview/widget/E;->q0()V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public final t0(ILandroidx/recyclerview/widget/I;Landroidx/recyclerview/widget/M;)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c1(ILandroidx/recyclerview/widget/I;Landroidx/recyclerview/widget/M;)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public final u()Landroidx/recyclerview/widget/F;
    .locals 3

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:I

    .line 2
    .line 3
    const/4 v1, -0x2

    .line 4
    const/4 v2, -0x1

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Landroidx/recyclerview/widget/X;

    .line 8
    .line 9
    invoke-direct {v0, v1, v2}, Landroidx/recyclerview/widget/X;-><init>(II)V

    .line 10
    .line 11
    .line 12
    return-object v0

    .line 13
    :cond_0
    new-instance v0, Landroidx/recyclerview/widget/X;

    .line 14
    .line 15
    invoke-direct {v0, v2, v1}, Landroidx/recyclerview/widget/X;-><init>(II)V

    .line 16
    .line 17
    .line 18
    return-object v0
.end method

.method public final v(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/recyclerview/widget/F;
    .locals 1

    .line 1
    new-instance v0, Landroidx/recyclerview/widget/X;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2}, Landroidx/recyclerview/widget/X;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public final w(Landroid/view/ViewGroup$LayoutParams;)Landroidx/recyclerview/widget/F;
    .locals 1

    .line 1
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroidx/recyclerview/widget/X;

    .line 6
    .line 7
    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 8
    .line 9
    invoke-direct {v0, p1}, Landroidx/recyclerview/widget/X;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 10
    .line 11
    .line 12
    return-object v0

    .line 13
    :cond_0
    new-instance v0, Landroidx/recyclerview/widget/X;

    .line 14
    .line 15
    invoke-direct {v0, p1}, Landroidx/recyclerview/widget/X;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 16
    .line 17
    .line 18
    return-object v0
.end method

.method public final x0(Landroid/graphics/Rect;II)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/E;->F()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroidx/recyclerview/widget/E;->G()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    add-int/2addr v1, v0

    .line 10
    invoke-virtual {p0}, Landroidx/recyclerview/widget/E;->H()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    invoke-virtual {p0}, Landroidx/recyclerview/widget/E;->E()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    add-int/2addr v2, v0

    .line 19
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:I

    .line 20
    .line 21
    const/4 v3, 0x1

    .line 22
    if-ne v0, v3, :cond_0

    .line 23
    .line 24
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    add-int/2addr p1, v2

    .line 29
    iget-object v0, p0, Landroidx/recyclerview/widget/E;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 30
    .line 31
    invoke-static {v0}, Landroidx/core/view/f0;->o(Landroid/view/View;)I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    invoke-static {p3, p1, v0}, Landroidx/recyclerview/widget/E;->j(III)I

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    iget p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->u:I

    .line 40
    .line 41
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:I

    .line 42
    .line 43
    mul-int p3, p3, v0

    .line 44
    .line 45
    add-int/2addr p3, v1

    .line 46
    iget-object v0, p0, Landroidx/recyclerview/widget/E;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 47
    .line 48
    invoke-static {v0}, Landroidx/core/view/f0;->p(Landroid/view/View;)I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    invoke-static {p2, p3, v0}, Landroidx/recyclerview/widget/E;->j(III)I

    .line 53
    .line 54
    .line 55
    move-result p2

    .line 56
    goto :goto_0

    .line 57
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    add-int/2addr p1, v1

    .line 62
    iget-object v0, p0, Landroidx/recyclerview/widget/E;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 63
    .line 64
    invoke-static {v0}, Landroidx/core/view/f0;->p(Landroid/view/View;)I

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    invoke-static {p2, p1, v0}, Landroidx/recyclerview/widget/E;->j(III)I

    .line 69
    .line 70
    .line 71
    move-result p2

    .line 72
    iget p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->u:I

    .line 73
    .line 74
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:I

    .line 75
    .line 76
    mul-int p1, p1, v0

    .line 77
    .line 78
    add-int/2addr p1, v2

    .line 79
    iget-object v0, p0, Landroidx/recyclerview/widget/E;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 80
    .line 81
    invoke-static {v0}, Landroidx/core/view/f0;->o(Landroid/view/View;)I

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    invoke-static {p3, p1, v0}, Landroidx/recyclerview/widget/E;->j(III)I

    .line 86
    .line 87
    .line 88
    move-result p1

    .line 89
    :goto_0
    iget-object p3, p0, Landroidx/recyclerview/widget/E;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 90
    .line 91
    invoke-static {p3, p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->g(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 92
    .line 93
    .line 94
    return-void
.end method
