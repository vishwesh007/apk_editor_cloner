.class public final Lcom/bumptech/glide/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroidx/collection/b;

.field private final b:Lcom/bumptech/glide/l;

.field private c:Lcom/bumptech/glide/load/engine/C;

.field private d:LG/g;

.field private e:LG/l;

.field private f:LH/k;

.field private g:LI/h;

.field private h:LI/h;

.field private i:LH/j;

.field private j:LH/o;

.field private k:Lcom/bumptech/glide/manager/g;

.field private l:I

.field private m:Lcom/bumptech/glide/c;

.field private n:Lcom/bumptech/glide/manager/r;

.field private o:LI/h;

.field private p:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/collection/b;

    .line 5
    .line 6
    invoke-direct {v0}, Landroidx/collection/b;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/bumptech/glide/j;->a:Landroidx/collection/b;

    .line 10
    .line 11
    new-instance v0, Lcom/bumptech/glide/l;

    .line 12
    .line 13
    invoke-direct {v0}, Lcom/bumptech/glide/l;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/bumptech/glide/j;->b:Lcom/bumptech/glide/l;

    .line 17
    .line 18
    const/4 v0, 0x4

    .line 19
    iput v0, p0, Lcom/bumptech/glide/j;->l:I

    .line 20
    .line 21
    new-instance v0, Lcom/bumptech/glide/e;

    .line 22
    .line 23
    invoke-direct {v0}, Lcom/bumptech/glide/e;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lcom/bumptech/glide/j;->m:Lcom/bumptech/glide/c;

    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method final a(Landroid/content/Context;Ljava/util/List;LS/a;)Lcom/bumptech/glide/d;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    iget-object v1, v0, Lcom/bumptech/glide/j;->g:LI/h;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    invoke-static {}, LI/h;->c()LI/h;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iput-object v1, v0, Lcom/bumptech/glide/j;->g:LI/h;

    .line 14
    .line 15
    :cond_0
    iget-object v1, v0, Lcom/bumptech/glide/j;->h:LI/h;

    .line 16
    .line 17
    if-nez v1, :cond_1

    .line 18
    .line 19
    invoke-static {}, LI/h;->b()LI/h;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    iput-object v1, v0, Lcom/bumptech/glide/j;->h:LI/h;

    .line 24
    .line 25
    :cond_1
    iget-object v1, v0, Lcom/bumptech/glide/j;->o:LI/h;

    .line 26
    .line 27
    if-nez v1, :cond_2

    .line 28
    .line 29
    invoke-static {}, LI/h;->a()LI/h;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    iput-object v1, v0, Lcom/bumptech/glide/j;->o:LI/h;

    .line 34
    .line 35
    :cond_2
    iget-object v1, v0, Lcom/bumptech/glide/j;->j:LH/o;

    .line 36
    .line 37
    if-nez v1, :cond_3

    .line 38
    .line 39
    new-instance v1, LH/m;

    .line 40
    .line 41
    invoke-direct {v1, v2}, LH/m;-><init>(Landroid/content/Context;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1}, LH/m;->a()LH/o;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    iput-object v1, v0, Lcom/bumptech/glide/j;->j:LH/o;

    .line 49
    .line 50
    :cond_3
    iget-object v1, v0, Lcom/bumptech/glide/j;->k:Lcom/bumptech/glide/manager/g;

    .line 51
    .line 52
    if-nez v1, :cond_4

    .line 53
    .line 54
    new-instance v1, Lcom/bumptech/glide/manager/g;

    .line 55
    .line 56
    invoke-direct {v1}, Lcom/bumptech/glide/manager/g;-><init>()V

    .line 57
    .line 58
    .line 59
    iput-object v1, v0, Lcom/bumptech/glide/j;->k:Lcom/bumptech/glide/manager/g;

    .line 60
    .line 61
    :cond_4
    iget-object v1, v0, Lcom/bumptech/glide/j;->d:LG/g;

    .line 62
    .line 63
    if-nez v1, :cond_6

    .line 64
    .line 65
    iget-object v1, v0, Lcom/bumptech/glide/j;->j:LH/o;

    .line 66
    .line 67
    invoke-virtual {v1}, LH/o;->b()I

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    if-lez v1, :cond_5

    .line 72
    .line 73
    new-instance v3, LG/n;

    .line 74
    .line 75
    int-to-long v4, v1

    .line 76
    invoke-direct {v3, v4, v5}, LG/n;-><init>(J)V

    .line 77
    .line 78
    .line 79
    iput-object v3, v0, Lcom/bumptech/glide/j;->d:LG/g;

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_5
    new-instance v1, Lt0/a;

    .line 83
    .line 84
    invoke-direct {v1}, Lt0/a;-><init>()V

    .line 85
    .line 86
    .line 87
    iput-object v1, v0, Lcom/bumptech/glide/j;->d:LG/g;

    .line 88
    .line 89
    :cond_6
    :goto_0
    iget-object v1, v0, Lcom/bumptech/glide/j;->e:LG/l;

    .line 90
    .line 91
    if-nez v1, :cond_7

    .line 92
    .line 93
    new-instance v1, LG/l;

    .line 94
    .line 95
    iget-object v3, v0, Lcom/bumptech/glide/j;->j:LH/o;

    .line 96
    .line 97
    invoke-virtual {v3}, LH/o;->a()I

    .line 98
    .line 99
    .line 100
    move-result v3

    .line 101
    invoke-direct {v1, v3}, LG/l;-><init>(I)V

    .line 102
    .line 103
    .line 104
    iput-object v1, v0, Lcom/bumptech/glide/j;->e:LG/l;

    .line 105
    .line 106
    :cond_7
    iget-object v1, v0, Lcom/bumptech/glide/j;->f:LH/k;

    .line 107
    .line 108
    if-nez v1, :cond_8

    .line 109
    .line 110
    new-instance v1, LH/k;

    .line 111
    .line 112
    iget-object v3, v0, Lcom/bumptech/glide/j;->j:LH/o;

    .line 113
    .line 114
    invoke-virtual {v3}, LH/o;->c()I

    .line 115
    .line 116
    .line 117
    move-result v3

    .line 118
    int-to-long v3, v3

    .line 119
    invoke-direct {v1, v3, v4}, LH/k;-><init>(J)V

    .line 120
    .line 121
    .line 122
    iput-object v1, v0, Lcom/bumptech/glide/j;->f:LH/k;

    .line 123
    .line 124
    :cond_8
    iget-object v1, v0, Lcom/bumptech/glide/j;->i:LH/j;

    .line 125
    .line 126
    if-nez v1, :cond_9

    .line 127
    .line 128
    new-instance v1, LH/j;

    .line 129
    .line 130
    invoke-direct {v1, v2}, LH/j;-><init>(Landroid/content/Context;)V

    .line 131
    .line 132
    .line 133
    iput-object v1, v0, Lcom/bumptech/glide/j;->i:LH/j;

    .line 134
    .line 135
    :cond_9
    iget-object v1, v0, Lcom/bumptech/glide/j;->c:Lcom/bumptech/glide/load/engine/C;

    .line 136
    .line 137
    if-nez v1, :cond_a

    .line 138
    .line 139
    new-instance v1, Lcom/bumptech/glide/load/engine/C;

    .line 140
    .line 141
    iget-object v4, v0, Lcom/bumptech/glide/j;->f:LH/k;

    .line 142
    .line 143
    iget-object v5, v0, Lcom/bumptech/glide/j;->i:LH/j;

    .line 144
    .line 145
    iget-object v6, v0, Lcom/bumptech/glide/j;->h:LI/h;

    .line 146
    .line 147
    iget-object v7, v0, Lcom/bumptech/glide/j;->g:LI/h;

    .line 148
    .line 149
    invoke-static {}, LI/h;->d()LI/h;

    .line 150
    .line 151
    .line 152
    move-result-object v8

    .line 153
    iget-object v9, v0, Lcom/bumptech/glide/j;->o:LI/h;

    .line 154
    .line 155
    move-object v3, v1

    .line 156
    invoke-direct/range {v3 .. v9}, Lcom/bumptech/glide/load/engine/C;-><init>(LH/k;LH/g;LI/h;LI/h;LI/h;LI/h;)V

    .line 157
    .line 158
    .line 159
    iput-object v1, v0, Lcom/bumptech/glide/j;->c:Lcom/bumptech/glide/load/engine/C;

    .line 160
    .line 161
    :cond_a
    iget-object v1, v0, Lcom/bumptech/glide/j;->p:Ljava/util/List;

    .line 162
    .line 163
    if-nez v1, :cond_b

    .line 164
    .line 165
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 166
    .line 167
    .line 168
    move-result-object v1

    .line 169
    iput-object v1, v0, Lcom/bumptech/glide/j;->p:Ljava/util/List;

    .line 170
    .line 171
    goto :goto_1

    .line 172
    :cond_b
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 173
    .line 174
    .line 175
    move-result-object v1

    .line 176
    iput-object v1, v0, Lcom/bumptech/glide/j;->p:Ljava/util/List;

    .line 177
    .line 178
    :goto_1
    iget-object v1, v0, Lcom/bumptech/glide/j;->b:Lcom/bumptech/glide/l;

    .line 179
    .line 180
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 181
    .line 182
    .line 183
    new-instance v15, Lcom/bumptech/glide/m;

    .line 184
    .line 185
    invoke-direct {v15, v1}, Lcom/bumptech/glide/m;-><init>(Lcom/bumptech/glide/l;)V

    .line 186
    .line 187
    .line 188
    new-instance v7, Lcom/bumptech/glide/manager/s;

    .line 189
    .line 190
    iget-object v1, v0, Lcom/bumptech/glide/j;->n:Lcom/bumptech/glide/manager/r;

    .line 191
    .line 192
    invoke-direct {v7, v1, v15}, Lcom/bumptech/glide/manager/s;-><init>(Lcom/bumptech/glide/manager/r;Lcom/bumptech/glide/m;)V

    .line 193
    .line 194
    .line 195
    new-instance v16, Lcom/bumptech/glide/d;

    .line 196
    .line 197
    iget-object v3, v0, Lcom/bumptech/glide/j;->c:Lcom/bumptech/glide/load/engine/C;

    .line 198
    .line 199
    iget-object v4, v0, Lcom/bumptech/glide/j;->f:LH/k;

    .line 200
    .line 201
    iget-object v5, v0, Lcom/bumptech/glide/j;->d:LG/g;

    .line 202
    .line 203
    iget-object v6, v0, Lcom/bumptech/glide/j;->e:LG/l;

    .line 204
    .line 205
    iget-object v8, v0, Lcom/bumptech/glide/j;->k:Lcom/bumptech/glide/manager/g;

    .line 206
    .line 207
    iget v9, v0, Lcom/bumptech/glide/j;->l:I

    .line 208
    .line 209
    iget-object v10, v0, Lcom/bumptech/glide/j;->m:Lcom/bumptech/glide/c;

    .line 210
    .line 211
    iget-object v11, v0, Lcom/bumptech/glide/j;->a:Landroidx/collection/b;

    .line 212
    .line 213
    iget-object v12, v0, Lcom/bumptech/glide/j;->p:Ljava/util/List;

    .line 214
    .line 215
    move-object/from16 v1, v16

    .line 216
    .line 217
    move-object/from16 v2, p1

    .line 218
    .line 219
    move-object/from16 v13, p2

    .line 220
    .line 221
    move-object/from16 v14, p3

    .line 222
    .line 223
    invoke-direct/range {v1 .. v15}, Lcom/bumptech/glide/d;-><init>(Landroid/content/Context;Lcom/bumptech/glide/load/engine/C;LH/k;LG/g;LG/b;Lcom/bumptech/glide/manager/s;Lcom/bumptech/glide/manager/e;ILcom/bumptech/glide/c;Landroidx/collection/b;Ljava/util/List;Ljava/util/List;LS/a;Lcom/bumptech/glide/m;)V

    .line 224
    .line 225
    .line 226
    return-object v16
.end method

.method final b(Lcom/bumptech/glide/manager/r;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bumptech/glide/j;->n:Lcom/bumptech/glide/manager/r;

    .line 2
    .line 3
    return-void
.end method
