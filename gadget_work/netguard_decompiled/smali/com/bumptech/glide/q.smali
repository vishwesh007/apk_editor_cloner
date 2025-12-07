.class public final Lcom/bumptech/glide/q;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:LJ/J;

.field private final b:LT/b;

.field private final c:LT/e;

.field private final d:LT/g;

.field private final e:Lcom/bumptech/glide/load/data/j;

.field private final f:LR/e;

.field private final g:LT/g;

.field private final h:LQ/d;

.field private final i:LT/c;

.field private final j:Landroidx/core/util/f;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, LQ/d;

    .line 5
    .line 6
    invoke-direct {v0}, LQ/d;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/bumptech/glide/q;->h:LQ/d;

    .line 10
    .line 11
    new-instance v0, LT/c;

    .line 12
    .line 13
    invoke-direct {v0}, LT/c;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/bumptech/glide/q;->i:LT/c;

    .line 17
    .line 18
    invoke-static {}, LY/g;->c()Landroidx/core/util/f;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iput-object v0, p0, Lcom/bumptech/glide/q;->j:Landroidx/core/util/f;

    .line 23
    .line 24
    new-instance v1, LJ/J;

    .line 25
    .line 26
    invoke-direct {v1, v0}, LJ/J;-><init>(Landroidx/core/util/f;)V

    .line 27
    .line 28
    .line 29
    iput-object v1, p0, Lcom/bumptech/glide/q;->a:LJ/J;

    .line 30
    .line 31
    new-instance v0, LT/b;

    .line 32
    .line 33
    invoke-direct {v0}, LT/b;-><init>()V

    .line 34
    .line 35
    .line 36
    iput-object v0, p0, Lcom/bumptech/glide/q;->b:LT/b;

    .line 37
    .line 38
    new-instance v0, LT/e;

    .line 39
    .line 40
    invoke-direct {v0}, LT/e;-><init>()V

    .line 41
    .line 42
    .line 43
    iput-object v0, p0, Lcom/bumptech/glide/q;->c:LT/e;

    .line 44
    .line 45
    new-instance v0, LT/g;

    .line 46
    .line 47
    const/4 v1, 0x0

    .line 48
    invoke-direct {v0, v1}, LT/g;-><init>(I)V

    .line 49
    .line 50
    .line 51
    iput-object v0, p0, Lcom/bumptech/glide/q;->d:LT/g;

    .line 52
    .line 53
    new-instance v0, Lcom/bumptech/glide/load/data/j;

    .line 54
    .line 55
    invoke-direct {v0}, Lcom/bumptech/glide/load/data/j;-><init>()V

    .line 56
    .line 57
    .line 58
    iput-object v0, p0, Lcom/bumptech/glide/q;->e:Lcom/bumptech/glide/load/data/j;

    .line 59
    .line 60
    new-instance v0, LR/e;

    .line 61
    .line 62
    invoke-direct {v0}, LR/e;-><init>()V

    .line 63
    .line 64
    .line 65
    iput-object v0, p0, Lcom/bumptech/glide/q;->f:LR/e;

    .line 66
    .line 67
    new-instance v0, LT/g;

    .line 68
    .line 69
    const/4 v1, 0x1

    .line 70
    invoke-direct {v0, v1}, LT/g;-><init>(I)V

    .line 71
    .line 72
    .line 73
    iput-object v0, p0, Lcom/bumptech/glide/q;->g:LT/g;

    .line 74
    .line 75
    const-string v0, "BitmapDrawable"

    .line 76
    .line 77
    const-string v1, "Animation"

    .line 78
    .line 79
    const-string v2, "Bitmap"

    .line 80
    .line 81
    filled-new-array {v1, v2, v0}, [Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    new-instance v1, Ljava/util/ArrayList;

    .line 90
    .line 91
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 92
    .line 93
    .line 94
    move-result v2

    .line 95
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 96
    .line 97
    .line 98
    const-string v2, "legacy_prepend_all"

    .line 99
    .line 100
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 108
    .line 109
    .line 110
    move-result v2

    .line 111
    if-eqz v2, :cond_0

    .line 112
    .line 113
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    check-cast v2, Ljava/lang/String;

    .line 118
    .line 119
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    goto :goto_0

    .line 123
    :cond_0
    const-string v0, "legacy_append"

    .line 124
    .line 125
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    iget-object v0, p0, Lcom/bumptech/glide/q;->c:LT/e;

    .line 129
    .line 130
    invoke-virtual {v0, v1}, LT/e;->e(Ljava/util/ArrayList;)V

    .line 131
    .line 132
    .line 133
    return-void
.end method


# virtual methods
.method public final a(LE/j;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/q;->c:LT/e;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3, p4}, LT/e;->a(LE/j;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final b(Ljava/lang/Class;LE/a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/q;->b:LT/b;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, LT/b;->a(Ljava/lang/Class;LE/a;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final c(Ljava/lang/Class;LE/k;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/q;->d:LT/g;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, LT/g;->b(Ljava/lang/Class;LE/k;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final d(Ljava/lang/Class;Ljava/lang/Class;LJ/H;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/q;->a:LJ/J;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3}, LJ/J;->a(Ljava/lang/Class;Ljava/lang/Class;LJ/H;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final e()Ljava/util/List;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/q;->g:LT/g;

    .line 2
    .line 3
    invoke-virtual {v0}, LT/g;->d()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    return-object v0

    .line 14
    :cond_0
    new-instance v0, Lcom/bumptech/glide/n;

    .line 15
    .line 16
    invoke-direct {v0}, Lcom/bumptech/glide/n;-><init>()V

    .line 17
    .line 18
    .line 19
    throw v0
.end method

.method public final f(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/load/engine/T;
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v8, p1

    .line 4
    .line 5
    move-object/from16 v9, p2

    .line 6
    .line 7
    move-object/from16 v10, p3

    .line 8
    .line 9
    iget-object v11, v0, Lcom/bumptech/glide/q;->i:LT/c;

    .line 10
    .line 11
    invoke-virtual {v11, v8, v9, v10}, LT/c;->a(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/load/engine/T;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-static {v1}, LT/c;->b(Lcom/bumptech/glide/load/engine/T;)Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    const/4 v12, 0x0

    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    return-object v12

    .line 23
    :cond_0
    if-nez v1, :cond_4

    .line 24
    .line 25
    new-instance v13, Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 28
    .line 29
    .line 30
    iget-object v14, v0, Lcom/bumptech/glide/q;->c:LT/e;

    .line 31
    .line 32
    invoke-virtual {v14, v8, v9}, LT/e;->d(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/ArrayList;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 37
    .line 38
    .line 39
    move-result-object v15

    .line 40
    :cond_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    iget-object v7, v0, Lcom/bumptech/glide/q;->j:Landroidx/core/util/f;

    .line 45
    .line 46
    if-eqz v1, :cond_2

    .line 47
    .line 48
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    move-object v6, v1

    .line 53
    check-cast v6, Ljava/lang/Class;

    .line 54
    .line 55
    iget-object v5, v0, Lcom/bumptech/glide/q;->f:LR/e;

    .line 56
    .line 57
    invoke-virtual {v5, v6, v10}, LR/e;->b(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/ArrayList;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 62
    .line 63
    .line 64
    move-result-object v16

    .line 65
    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    if-eqz v1, :cond_1

    .line 70
    .line 71
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    move-object v4, v1

    .line 76
    check-cast v4, Ljava/lang/Class;

    .line 77
    .line 78
    invoke-virtual {v14, v8, v6}, LT/e;->b(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/ArrayList;

    .line 79
    .line 80
    .line 81
    move-result-object v17

    .line 82
    invoke-virtual {v5, v6, v4}, LR/e;->a(Ljava/lang/Class;Ljava/lang/Class;)LR/c;

    .line 83
    .line 84
    .line 85
    move-result-object v18

    .line 86
    new-instance v3, Lcom/bumptech/glide/load/engine/r;

    .line 87
    .line 88
    move-object v1, v3

    .line 89
    move-object/from16 v2, p1

    .line 90
    .line 91
    move-object v12, v3

    .line 92
    move-object v3, v6

    .line 93
    move-object/from16 v19, v5

    .line 94
    .line 95
    move-object/from16 v5, v17

    .line 96
    .line 97
    move-object/from16 v17, v6

    .line 98
    .line 99
    move-object/from16 v6, v18

    .line 100
    .line 101
    move-object/from16 v18, v7

    .line 102
    .line 103
    invoke-direct/range {v1 .. v7}, Lcom/bumptech/glide/load/engine/r;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/util/List;LR/c;Landroidx/core/util/f;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    move-object/from16 v6, v17

    .line 110
    .line 111
    move-object/from16 v5, v19

    .line 112
    .line 113
    const/4 v12, 0x0

    .line 114
    goto :goto_0

    .line 115
    :cond_2
    move-object/from16 v18, v7

    .line 116
    .line 117
    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    .line 118
    .line 119
    .line 120
    move-result v1

    .line 121
    if-eqz v1, :cond_3

    .line 122
    .line 123
    const/4 v1, 0x0

    .line 124
    goto :goto_1

    .line 125
    :cond_3
    new-instance v7, Lcom/bumptech/glide/load/engine/T;

    .line 126
    .line 127
    move-object v1, v7

    .line 128
    move-object/from16 v2, p1

    .line 129
    .line 130
    move-object/from16 v3, p2

    .line 131
    .line 132
    move-object/from16 v4, p3

    .line 133
    .line 134
    move-object v5, v13

    .line 135
    move-object/from16 v6, v18

    .line 136
    .line 137
    invoke-direct/range {v1 .. v6}, Lcom/bumptech/glide/load/engine/T;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/util/List;Landroidx/core/util/f;)V

    .line 138
    .line 139
    .line 140
    :goto_1
    invoke-virtual {v11, v8, v9, v10, v1}, LT/c;->c(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/engine/T;)V

    .line 141
    .line 142
    .line 143
    :cond_4
    return-object v1
.end method

.method public final g(Ljava/lang/Object;)Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/q;->a:LJ/J;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, LJ/J;->c(Ljava/lang/Object;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public final h(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/q;->h:LQ/d;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3}, LQ/d;->a(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-nez v1, :cond_3

    .line 8
    .line 9
    new-instance v1, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 12
    .line 13
    .line 14
    iget-object v2, p0, Lcom/bumptech/glide/q;->a:LJ/J;

    .line 15
    .line 16
    invoke-virtual {v2, p1}, LJ/J;->b(Ljava/lang/Class;)Ljava/util/ArrayList;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-eqz v3, :cond_2

    .line 29
    .line 30
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    check-cast v3, Ljava/lang/Class;

    .line 35
    .line 36
    iget-object v4, p0, Lcom/bumptech/glide/q;->c:LT/e;

    .line 37
    .line 38
    invoke-virtual {v4, v3, p2}, LT/e;->d(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/ArrayList;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    if-eqz v4, :cond_0

    .line 51
    .line 52
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    check-cast v4, Ljava/lang/Class;

    .line 57
    .line 58
    iget-object v5, p0, Lcom/bumptech/glide/q;->f:LR/e;

    .line 59
    .line 60
    invoke-virtual {v5, v4, p3}, LR/e;->b(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/ArrayList;

    .line 61
    .line 62
    .line 63
    move-result-object v5

    .line 64
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    .line 65
    .line 66
    .line 67
    move-result v5

    .line 68
    if-nez v5, :cond_1

    .line 69
    .line 70
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v5

    .line 74
    if-nez v5, :cond_1

    .line 75
    .line 76
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_2
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    invoke-virtual {v0, p1, p2, p3, v2}, LQ/d;->e(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/util/List;)V

    .line 85
    .line 86
    .line 87
    :cond_3
    return-object v1
.end method

.method public final i(Lcom/bumptech/glide/load/engine/V;)LE/k;
    .locals 2

    .line 1
    invoke-interface {p1}, Lcom/bumptech/glide/load/engine/V;->c()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/bumptech/glide/q;->d:LT/g;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, LT/g;->c(Ljava/lang/Class;)LE/k;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    return-object v0

    .line 14
    :cond_0
    new-instance v0, Lcom/bumptech/glide/p;

    .line 15
    .line 16
    invoke-interface {p1}, Lcom/bumptech/glide/load/engine/V;->c()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-direct {v0, p1}, Lcom/bumptech/glide/p;-><init>(Ljava/lang/Class;)V

    .line 21
    .line 22
    .line 23
    throw v0
.end method

.method public final j(Ljava/lang/Object;)Lcom/bumptech/glide/load/data/g;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/q;->e:Lcom/bumptech/glide/load/data/j;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/data/j;->a(Ljava/lang/Object;)Lcom/bumptech/glide/load/data/g;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public final k(Ljava/lang/Object;)LE/a;
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/bumptech/glide/q;->b:LT/b;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, LT/b;->b(Ljava/lang/Class;)LE/a;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    return-object v0

    .line 14
    :cond_0
    new-instance v0, Lcom/bumptech/glide/n;

    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-direct {v0, p1}, Lcom/bumptech/glide/n;-><init>(Ljava/lang/Class;)V

    .line 21
    .line 22
    .line 23
    throw v0
.end method

.method public final l(Lcom/bumptech/glide/load/engine/V;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/q;->d:LT/g;

    .line 2
    .line 3
    invoke-interface {p1}, Lcom/bumptech/glide/load/engine/V;->c()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {v0, p1}, LT/g;->c(Ljava/lang/Class;)LE/k;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p1, 0x0

    .line 16
    :goto_0
    return p1
.end method

.method public final m(LE/c;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/q;->g:LT/g;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, LT/g;->a(LE/c;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final n(Lcom/bumptech/glide/load/data/f;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/q;->e:Lcom/bumptech/glide/load/data/j;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/data/j;->b(Lcom/bumptech/glide/load/data/f;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final o(Ljava/lang/Class;Ljava/lang/Class;LR/c;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/q;->f:LR/e;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3}, LR/e;->c(Ljava/lang/Class;Ljava/lang/Class;LR/c;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
