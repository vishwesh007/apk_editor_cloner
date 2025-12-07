.class final Lcom/bumptech/glide/load/engine/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/engine/k;
.implements Lcom/bumptech/glide/load/data/d;


# instance fields
.field private final d:Ljava/util/List;

.field private final e:Lcom/bumptech/glide/load/engine/l;

.field private final f:Lcom/bumptech/glide/load/engine/j;

.field private g:I

.field private h:LE/e;

.field private i:Ljava/util/List;

.field private j:I

.field private volatile k:LJ/F;

.field private l:Ljava/io/File;


# direct methods
.method constructor <init>(Ljava/util/List;Lcom/bumptech/glide/load/engine/l;Lcom/bumptech/glide/load/engine/j;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/bumptech/glide/load/engine/g;->g:I

    .line 6
    .line 7
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/g;->d:Ljava/util/List;

    .line 8
    .line 9
    iput-object p2, p0, Lcom/bumptech/glide/load/engine/g;->e:Lcom/bumptech/glide/load/engine/l;

    .line 10
    .line 11
    iput-object p3, p0, Lcom/bumptech/glide/load/engine/g;->f:Lcom/bumptech/glide/load/engine/j;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 8

    .line 1
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/g;->i:Ljava/util/List;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eqz v0, :cond_7

    .line 6
    .line 7
    iget v3, p0, Lcom/bumptech/glide/load/engine/g;->j:I

    .line 8
    .line 9
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-ge v3, v0, :cond_1

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    goto :goto_1

    .line 17
    :cond_1
    const/4 v0, 0x0

    .line 18
    :goto_1
    if-nez v0, :cond_2

    .line 19
    .line 20
    goto :goto_5

    .line 21
    :cond_2
    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/g;->k:LJ/F;

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    :cond_3
    :goto_2
    if-nez v0, :cond_6

    .line 26
    .line 27
    iget v3, p0, Lcom/bumptech/glide/load/engine/g;->j:I

    .line 28
    .line 29
    iget-object v4, p0, Lcom/bumptech/glide/load/engine/g;->i:Ljava/util/List;

    .line 30
    .line 31
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    if-ge v3, v4, :cond_4

    .line 36
    .line 37
    const/4 v3, 0x1

    .line 38
    goto :goto_3

    .line 39
    :cond_4
    const/4 v3, 0x0

    .line 40
    :goto_3
    if-eqz v3, :cond_6

    .line 41
    .line 42
    iget-object v3, p0, Lcom/bumptech/glide/load/engine/g;->i:Ljava/util/List;

    .line 43
    .line 44
    iget v4, p0, Lcom/bumptech/glide/load/engine/g;->j:I

    .line 45
    .line 46
    add-int/lit8 v5, v4, 0x1

    .line 47
    .line 48
    iput v5, p0, Lcom/bumptech/glide/load/engine/g;->j:I

    .line 49
    .line 50
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    check-cast v3, LJ/G;

    .line 55
    .line 56
    iget-object v4, p0, Lcom/bumptech/glide/load/engine/g;->l:Ljava/io/File;

    .line 57
    .line 58
    iget-object v5, p0, Lcom/bumptech/glide/load/engine/g;->e:Lcom/bumptech/glide/load/engine/l;

    .line 59
    .line 60
    invoke-virtual {v5}, Lcom/bumptech/glide/load/engine/l;->t()I

    .line 61
    .line 62
    .line 63
    move-result v5

    .line 64
    iget-object v6, p0, Lcom/bumptech/glide/load/engine/g;->e:Lcom/bumptech/glide/load/engine/l;

    .line 65
    .line 66
    invoke-virtual {v6}, Lcom/bumptech/glide/load/engine/l;->f()I

    .line 67
    .line 68
    .line 69
    move-result v6

    .line 70
    iget-object v7, p0, Lcom/bumptech/glide/load/engine/g;->e:Lcom/bumptech/glide/load/engine/l;

    .line 71
    .line 72
    invoke-virtual {v7}, Lcom/bumptech/glide/load/engine/l;->k()LE/i;

    .line 73
    .line 74
    .line 75
    move-result-object v7

    .line 76
    invoke-interface {v3, v4, v5, v6, v7}, LJ/G;->a(Ljava/lang/Object;IILE/i;)LJ/F;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    iput-object v3, p0, Lcom/bumptech/glide/load/engine/g;->k:LJ/F;

    .line 81
    .line 82
    iget-object v3, p0, Lcom/bumptech/glide/load/engine/g;->k:LJ/F;

    .line 83
    .line 84
    if-eqz v3, :cond_3

    .line 85
    .line 86
    iget-object v3, p0, Lcom/bumptech/glide/load/engine/g;->e:Lcom/bumptech/glide/load/engine/l;

    .line 87
    .line 88
    iget-object v4, p0, Lcom/bumptech/glide/load/engine/g;->k:LJ/F;

    .line 89
    .line 90
    iget-object v4, v4, LJ/F;->c:Lcom/bumptech/glide/load/data/e;

    .line 91
    .line 92
    invoke-interface {v4}, Lcom/bumptech/glide/load/data/e;->b()Ljava/lang/Class;

    .line 93
    .line 94
    .line 95
    move-result-object v4

    .line 96
    invoke-virtual {v3, v4}, Lcom/bumptech/glide/load/engine/l;->h(Ljava/lang/Class;)Lcom/bumptech/glide/load/engine/T;

    .line 97
    .line 98
    .line 99
    move-result-object v3

    .line 100
    if-eqz v3, :cond_5

    .line 101
    .line 102
    const/4 v3, 0x1

    .line 103
    goto :goto_4

    .line 104
    :cond_5
    const/4 v3, 0x0

    .line 105
    :goto_4
    if-eqz v3, :cond_3

    .line 106
    .line 107
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/g;->k:LJ/F;

    .line 108
    .line 109
    iget-object v0, v0, LJ/F;->c:Lcom/bumptech/glide/load/data/e;

    .line 110
    .line 111
    iget-object v3, p0, Lcom/bumptech/glide/load/engine/g;->e:Lcom/bumptech/glide/load/engine/l;

    .line 112
    .line 113
    invoke-virtual {v3}, Lcom/bumptech/glide/load/engine/l;->l()Lcom/bumptech/glide/Priority;

    .line 114
    .line 115
    .line 116
    move-result-object v3

    .line 117
    invoke-interface {v0, v3, p0}, Lcom/bumptech/glide/load/data/e;->e(Lcom/bumptech/glide/Priority;Lcom/bumptech/glide/load/data/d;)V

    .line 118
    .line 119
    .line 120
    const/4 v0, 0x1

    .line 121
    goto :goto_2

    .line 122
    :cond_6
    return v0

    .line 123
    :cond_7
    :goto_5
    iget v0, p0, Lcom/bumptech/glide/load/engine/g;->g:I

    .line 124
    .line 125
    add-int/2addr v0, v2

    .line 126
    iput v0, p0, Lcom/bumptech/glide/load/engine/g;->g:I

    .line 127
    .line 128
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/g;->d:Ljava/util/List;

    .line 129
    .line 130
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 131
    .line 132
    .line 133
    move-result v2

    .line 134
    if-lt v0, v2, :cond_8

    .line 135
    .line 136
    return v1

    .line 137
    :cond_8
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/g;->d:Ljava/util/List;

    .line 138
    .line 139
    iget v2, p0, Lcom/bumptech/glide/load/engine/g;->g:I

    .line 140
    .line 141
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    check-cast v0, LE/e;

    .line 146
    .line 147
    new-instance v2, Lcom/bumptech/glide/load/engine/h;

    .line 148
    .line 149
    iget-object v3, p0, Lcom/bumptech/glide/load/engine/g;->e:Lcom/bumptech/glide/load/engine/l;

    .line 150
    .line 151
    invoke-virtual {v3}, Lcom/bumptech/glide/load/engine/l;->p()LE/e;

    .line 152
    .line 153
    .line 154
    move-result-object v3

    .line 155
    invoke-direct {v2, v0, v3}, Lcom/bumptech/glide/load/engine/h;-><init>(LE/e;LE/e;)V

    .line 156
    .line 157
    .line 158
    iget-object v3, p0, Lcom/bumptech/glide/load/engine/g;->e:Lcom/bumptech/glide/load/engine/l;

    .line 159
    .line 160
    invoke-virtual {v3}, Lcom/bumptech/glide/load/engine/l;->d()LH/b;

    .line 161
    .line 162
    .line 163
    move-result-object v3

    .line 164
    invoke-interface {v3, v2}, LH/b;->b(LE/e;)Ljava/io/File;

    .line 165
    .line 166
    .line 167
    move-result-object v2

    .line 168
    iput-object v2, p0, Lcom/bumptech/glide/load/engine/g;->l:Ljava/io/File;

    .line 169
    .line 170
    if-eqz v2, :cond_0

    .line 171
    .line 172
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/g;->h:LE/e;

    .line 173
    .line 174
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/g;->e:Lcom/bumptech/glide/load/engine/l;

    .line 175
    .line 176
    invoke-virtual {v0, v2}, Lcom/bumptech/glide/load/engine/l;->j(Ljava/io/File;)Ljava/util/List;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/g;->i:Ljava/util/List;

    .line 181
    .line 182
    iput v1, p0, Lcom/bumptech/glide/load/engine/g;->j:I

    .line 183
    .line 184
    goto/16 :goto_0
.end method

.method public final cancel()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/g;->k:LJ/F;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, LJ/F;->c:Lcom/bumptech/glide/load/data/e;

    .line 6
    .line 7
    invoke-interface {v0}, Lcom/bumptech/glide/load/data/e;->cancel()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public final d(Ljava/lang/Exception;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/g;->f:Lcom/bumptech/glide/load/engine/j;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/g;->h:LE/e;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/g;->k:LJ/F;

    .line 6
    .line 7
    iget-object v2, v2, LJ/F;->c:Lcom/bumptech/glide/load/data/e;

    .line 8
    .line 9
    sget-object v3, Lcom/bumptech/glide/load/DataSource;->DATA_DISK_CACHE:Lcom/bumptech/glide/load/DataSource;

    .line 10
    .line 11
    invoke-interface {v0, v1, p1, v2, v3}, Lcom/bumptech/glide/load/engine/j;->g(LE/e;Ljava/lang/Exception;Lcom/bumptech/glide/load/data/e;Lcom/bumptech/glide/load/DataSource;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final f(Ljava/lang/Object;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/g;->f:Lcom/bumptech/glide/load/engine/j;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/g;->h:LE/e;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/g;->k:LJ/F;

    .line 6
    .line 7
    iget-object v3, v2, LJ/F;->c:Lcom/bumptech/glide/load/data/e;

    .line 8
    .line 9
    sget-object v4, Lcom/bumptech/glide/load/DataSource;->DATA_DISK_CACHE:Lcom/bumptech/glide/load/DataSource;

    .line 10
    .line 11
    iget-object v5, p0, Lcom/bumptech/glide/load/engine/g;->h:LE/e;

    .line 12
    .line 13
    move-object v2, p1

    .line 14
    invoke-interface/range {v0 .. v5}, Lcom/bumptech/glide/load/engine/j;->h(LE/e;Ljava/lang/Object;Lcom/bumptech/glide/load/data/e;Lcom/bumptech/glide/load/DataSource;LE/e;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method
