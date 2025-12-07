.class final Landroidx/fragment/app/b0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroidx/fragment/app/h;

.field private final b:Landroidx/fragment/app/c0;

.field private final c:Landroidx/fragment/app/u;

.field private d:Z

.field private e:I


# direct methods
.method constructor <init>(Landroidx/fragment/app/h;Landroidx/fragment/app/c0;Landroidx/fragment/app/u;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroidx/fragment/app/b0;->d:Z

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Landroidx/fragment/app/b0;->e:I

    .line 4
    iput-object p1, p0, Landroidx/fragment/app/b0;->a:Landroidx/fragment/app/h;

    .line 5
    iput-object p2, p0, Landroidx/fragment/app/b0;->b:Landroidx/fragment/app/c0;

    .line 6
    iput-object p3, p0, Landroidx/fragment/app/b0;->c:Landroidx/fragment/app/u;

    return-void
.end method

.method constructor <init>(Landroidx/fragment/app/h;Landroidx/fragment/app/c0;Landroidx/fragment/app/u;Landroidx/fragment/app/a0;)V
    .locals 2

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 36
    iput-boolean v0, p0, Landroidx/fragment/app/b0;->d:Z

    const/4 v1, -0x1

    .line 37
    iput v1, p0, Landroidx/fragment/app/b0;->e:I

    .line 38
    iput-object p1, p0, Landroidx/fragment/app/b0;->a:Landroidx/fragment/app/h;

    .line 39
    iput-object p2, p0, Landroidx/fragment/app/b0;->b:Landroidx/fragment/app/c0;

    .line 40
    iput-object p3, p0, Landroidx/fragment/app/b0;->c:Landroidx/fragment/app/u;

    const/4 p1, 0x0

    .line 41
    iput-object p1, p3, Landroidx/fragment/app/u;->c:Landroid/util/SparseArray;

    .line 42
    iput-object p1, p3, Landroidx/fragment/app/u;->d:Landroid/os/Bundle;

    .line 43
    iput v0, p3, Landroidx/fragment/app/u;->q:I

    .line 44
    iput-boolean v0, p3, Landroidx/fragment/app/u;->n:Z

    .line 45
    iput-boolean v0, p3, Landroidx/fragment/app/u;->k:Z

    .line 46
    iget-object p2, p3, Landroidx/fragment/app/u;->g:Landroidx/fragment/app/u;

    if-eqz p2, :cond_0

    iget-object p2, p2, Landroidx/fragment/app/u;->e:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object p2, p1

    :goto_0
    iput-object p2, p3, Landroidx/fragment/app/u;->h:Ljava/lang/String;

    .line 47
    iput-object p1, p3, Landroidx/fragment/app/u;->g:Landroidx/fragment/app/u;

    .line 48
    iget-object p1, p4, Landroidx/fragment/app/a0;->m:Landroid/os/Bundle;

    if-eqz p1, :cond_1

    .line 49
    iput-object p1, p3, Landroidx/fragment/app/u;->b:Landroid/os/Bundle;

    goto :goto_1

    .line 50
    :cond_1
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iput-object p1, p3, Landroidx/fragment/app/u;->b:Landroid/os/Bundle;

    :goto_1
    return-void
.end method

.method constructor <init>(Landroidx/fragment/app/h;Landroidx/fragment/app/c0;Ljava/lang/ClassLoader;Landroidx/fragment/app/D;Landroidx/fragment/app/a0;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Landroidx/fragment/app/b0;->d:Z

    const/4 v0, -0x1

    .line 9
    iput v0, p0, Landroidx/fragment/app/b0;->e:I

    .line 10
    iput-object p1, p0, Landroidx/fragment/app/b0;->a:Landroidx/fragment/app/h;

    .line 11
    iput-object p2, p0, Landroidx/fragment/app/b0;->b:Landroidx/fragment/app/c0;

    .line 12
    iget-object p1, p5, Landroidx/fragment/app/a0;->a:Ljava/lang/String;

    invoke-virtual {p4, p1}, Landroidx/fragment/app/D;->a(Ljava/lang/String;)Landroidx/fragment/app/u;

    move-result-object p1

    iput-object p1, p0, Landroidx/fragment/app/b0;->c:Landroidx/fragment/app/u;

    .line 13
    iget-object p2, p5, Landroidx/fragment/app/a0;->j:Landroid/os/Bundle;

    if-eqz p2, :cond_0

    .line 14
    invoke-virtual {p2, p3}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 15
    :cond_0
    iget-object p3, p1, Landroidx/fragment/app/u;->r:Landroidx/fragment/app/T;

    if-eqz p3, :cond_2

    .line 16
    invoke-virtual {p3}, Landroidx/fragment/app/T;->j0()Z

    move-result p3

    if-nez p3, :cond_1

    goto :goto_0

    .line 17
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Fragment already added and state has been saved"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 18
    :cond_2
    :goto_0
    iput-object p2, p1, Landroidx/fragment/app/u;->f:Landroid/os/Bundle;

    .line 19
    iget-object p2, p5, Landroidx/fragment/app/a0;->b:Ljava/lang/String;

    iput-object p2, p1, Landroidx/fragment/app/u;->e:Ljava/lang/String;

    .line 20
    iget-boolean p2, p5, Landroidx/fragment/app/a0;->c:Z

    iput-boolean p2, p1, Landroidx/fragment/app/u;->m:Z

    const/4 p2, 0x1

    .line 21
    iput-boolean p2, p1, Landroidx/fragment/app/u;->o:Z

    .line 22
    iget p2, p5, Landroidx/fragment/app/a0;->d:I

    iput p2, p1, Landroidx/fragment/app/u;->v:I

    .line 23
    iget p2, p5, Landroidx/fragment/app/a0;->e:I

    iput p2, p1, Landroidx/fragment/app/u;->w:I

    .line 24
    iget-object p2, p5, Landroidx/fragment/app/a0;->f:Ljava/lang/String;

    iput-object p2, p1, Landroidx/fragment/app/u;->x:Ljava/lang/String;

    .line 25
    iget-boolean p2, p5, Landroidx/fragment/app/a0;->g:Z

    iput-boolean p2, p1, Landroidx/fragment/app/u;->A:Z

    .line 26
    iget-boolean p2, p5, Landroidx/fragment/app/a0;->h:Z

    iput-boolean p2, p1, Landroidx/fragment/app/u;->l:Z

    .line 27
    iget-boolean p2, p5, Landroidx/fragment/app/a0;->i:Z

    iput-boolean p2, p1, Landroidx/fragment/app/u;->z:Z

    .line 28
    iget-boolean p2, p5, Landroidx/fragment/app/a0;->k:Z

    iput-boolean p2, p1, Landroidx/fragment/app/u;->y:Z

    .line 29
    invoke-static {}, Landroidx/lifecycle/l;->g()[Landroidx/lifecycle/l;

    move-result-object p2

    iget p3, p5, Landroidx/fragment/app/a0;->l:I

    aget-object p2, p2, p3

    iput-object p2, p1, Landroidx/fragment/app/u;->J:Landroidx/lifecycle/l;

    .line 30
    iget-object p2, p5, Landroidx/fragment/app/a0;->m:Landroid/os/Bundle;

    if-eqz p2, :cond_3

    .line 31
    iput-object p2, p1, Landroidx/fragment/app/u;->b:Landroid/os/Bundle;

    goto :goto_1

    .line 32
    :cond_3
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    iput-object p2, p1, Landroidx/fragment/app/u;->b:Landroid/os/Bundle;

    :goto_1
    const/4 p2, 0x2

    .line 33
    invoke-static {p2}, Landroidx/fragment/app/T;->f0(I)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 34
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Instantiated fragment "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "FragmentManager"

    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void
.end method


# virtual methods
.method final a()V
    .locals 3

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-static {v0}, Landroidx/fragment/app/T;->f0(I)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    iget-object v1, p0, Landroidx/fragment/app/b0;->c:Landroidx/fragment/app/u;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v2, "moveto ACTIVITY_CREATED: "

    .line 13
    .line 14
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v2, "FragmentManager"

    .line 25
    .line 26
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    :cond_0
    iget-object v0, v1, Landroidx/fragment/app/u;->b:Landroid/os/Bundle;

    .line 30
    .line 31
    invoke-virtual {v1}, Landroidx/fragment/app/u;->B()V

    .line 32
    .line 33
    .line 34
    const/4 v0, 0x0

    .line 35
    iget-object v1, p0, Landroidx/fragment/app/b0;->a:Landroidx/fragment/app/h;

    .line 36
    .line 37
    invoke-virtual {v1, v0}, Landroidx/fragment/app/h;->b(Z)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method final b()V
    .locals 7

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-static {v0}, Landroidx/fragment/app/T;->f0(I)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    iget-object v1, p0, Landroidx/fragment/app/b0;->c:Landroidx/fragment/app/u;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v2, "moveto ATTACHED: "

    .line 13
    .line 14
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v2, "FragmentManager"

    .line 25
    .line 26
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    :cond_0
    iget-object v0, v1, Landroidx/fragment/app/u;->g:Landroidx/fragment/app/u;

    .line 30
    .line 31
    const-string v2, " that does not belong to this FragmentManager!"

    .line 32
    .line 33
    const-string v3, " declared target fragment "

    .line 34
    .line 35
    const-string v4, "Fragment "

    .line 36
    .line 37
    const/4 v5, 0x0

    .line 38
    iget-object v6, p0, Landroidx/fragment/app/b0;->b:Landroidx/fragment/app/c0;

    .line 39
    .line 40
    if-eqz v0, :cond_2

    .line 41
    .line 42
    iget-object v0, v0, Landroidx/fragment/app/u;->e:Ljava/lang/String;

    .line 43
    .line 44
    invoke-virtual {v6, v0}, Landroidx/fragment/app/c0;->l(Ljava/lang/String;)Landroidx/fragment/app/b0;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    if-eqz v0, :cond_1

    .line 49
    .line 50
    iget-object v2, v1, Landroidx/fragment/app/u;->g:Landroidx/fragment/app/u;

    .line 51
    .line 52
    iget-object v2, v2, Landroidx/fragment/app/u;->e:Ljava/lang/String;

    .line 53
    .line 54
    iput-object v2, v1, Landroidx/fragment/app/u;->h:Ljava/lang/String;

    .line 55
    .line 56
    iput-object v5, v1, Landroidx/fragment/app/u;->g:Landroidx/fragment/app/u;

    .line 57
    .line 58
    move-object v5, v0

    .line 59
    goto :goto_0

    .line 60
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 61
    .line 62
    new-instance v5, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    iget-object v1, v1, Landroidx/fragment/app/u;->g:Landroidx/fragment/app/u;

    .line 74
    .line 75
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    throw v0

    .line 89
    :cond_2
    iget-object v0, v1, Landroidx/fragment/app/u;->h:Ljava/lang/String;

    .line 90
    .line 91
    if-eqz v0, :cond_4

    .line 92
    .line 93
    invoke-virtual {v6, v0}, Landroidx/fragment/app/c0;->l(Ljava/lang/String;)Landroidx/fragment/app/b0;

    .line 94
    .line 95
    .line 96
    move-result-object v5

    .line 97
    if-eqz v5, :cond_3

    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 101
    .line 102
    new-instance v5, Ljava/lang/StringBuilder;

    .line 103
    .line 104
    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    iget-object v1, v1, Landroidx/fragment/app/u;->h:Ljava/lang/String;

    .line 114
    .line 115
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    throw v0

    .line 129
    :cond_4
    :goto_0
    if-eqz v5, :cond_5

    .line 130
    .line 131
    invoke-virtual {v5}, Landroidx/fragment/app/b0;->k()V

    .line 132
    .line 133
    .line 134
    :cond_5
    iget-object v0, v1, Landroidx/fragment/app/u;->r:Landroidx/fragment/app/T;

    .line 135
    .line 136
    invoke-virtual {v0}, Landroidx/fragment/app/T;->V()Landroidx/fragment/app/E;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    iput-object v0, v1, Landroidx/fragment/app/u;->s:Landroidx/fragment/app/E;

    .line 141
    .line 142
    iget-object v0, v1, Landroidx/fragment/app/u;->r:Landroidx/fragment/app/T;

    .line 143
    .line 144
    invoke-virtual {v0}, Landroidx/fragment/app/T;->Y()Landroidx/fragment/app/u;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    iput-object v0, v1, Landroidx/fragment/app/u;->u:Landroidx/fragment/app/u;

    .line 149
    .line 150
    iget-object v0, p0, Landroidx/fragment/app/b0;->a:Landroidx/fragment/app/h;

    .line 151
    .line 152
    const/4 v2, 0x0

    .line 153
    invoke-virtual {v0, v2}, Landroidx/fragment/app/h;->h(Z)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v1}, Landroidx/fragment/app/u;->C()V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v0, v2}, Landroidx/fragment/app/h;->c(Z)V

    .line 160
    .line 161
    .line 162
    return-void
.end method

.method final c()I
    .locals 11

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/b0;->c:Landroidx/fragment/app/u;

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/fragment/app/u;->r:Landroidx/fragment/app/T;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    iget v0, v0, Landroidx/fragment/app/u;->a:I

    .line 8
    .line 9
    return v0

    .line 10
    :cond_0
    iget v1, p0, Landroidx/fragment/app/b0;->e:I

    .line 11
    .line 12
    iget-object v2, v0, Landroidx/fragment/app/u;->J:Landroidx/lifecycle/l;

    .line 13
    .line 14
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    const/4 v3, 0x1

    .line 19
    const/4 v4, 0x2

    .line 20
    const/4 v5, 0x3

    .line 21
    const/4 v6, 0x0

    .line 22
    const/4 v7, -0x1

    .line 23
    const/4 v8, 0x5

    .line 24
    const/4 v9, 0x4

    .line 25
    if-eq v2, v3, :cond_3

    .line 26
    .line 27
    if-eq v2, v4, :cond_2

    .line 28
    .line 29
    if-eq v2, v5, :cond_1

    .line 30
    .line 31
    if-eq v2, v9, :cond_4

    .line 32
    .line 33
    invoke-static {v1, v7}, Ljava/lang/Math;->min(II)I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    invoke-static {v1, v8}, Ljava/lang/Math;->min(II)I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    goto :goto_0

    .line 43
    :cond_2
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    goto :goto_0

    .line 48
    :cond_3
    invoke-static {v1, v6}, Ljava/lang/Math;->min(II)I

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    :cond_4
    :goto_0
    iget-boolean v2, v0, Landroidx/fragment/app/u;->m:Z

    .line 53
    .line 54
    if-eqz v2, :cond_7

    .line 55
    .line 56
    iget-boolean v2, v0, Landroidx/fragment/app/u;->n:Z

    .line 57
    .line 58
    if-eqz v2, :cond_5

    .line 59
    .line 60
    iget v1, p0, Landroidx/fragment/app/b0;->e:I

    .line 61
    .line 62
    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    goto :goto_1

    .line 67
    :cond_5
    iget v2, p0, Landroidx/fragment/app/b0;->e:I

    .line 68
    .line 69
    if-ge v2, v9, :cond_6

    .line 70
    .line 71
    iget v2, v0, Landroidx/fragment/app/u;->a:I

    .line 72
    .line 73
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    goto :goto_1

    .line 78
    :cond_6
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    :cond_7
    :goto_1
    iget-boolean v2, v0, Landroidx/fragment/app/u;->k:Z

    .line 83
    .line 84
    if-nez v2, :cond_8

    .line 85
    .line 86
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    :cond_8
    iget-object v2, v0, Landroidx/fragment/app/u;->D:Landroid/view/ViewGroup;

    .line 91
    .line 92
    if-eqz v2, :cond_9

    .line 93
    .line 94
    invoke-virtual {v0}, Landroidx/fragment/app/u;->k()Landroidx/fragment/app/T;

    .line 95
    .line 96
    .line 97
    move-result-object v10

    .line 98
    invoke-virtual {v10}, Landroidx/fragment/app/T;->Z()Landroidx/fragment/app/K;

    .line 99
    .line 100
    .line 101
    move-result-object v10

    .line 102
    invoke-static {v2, v10}, Landroidx/fragment/app/k0;->g(Landroid/view/ViewGroup;Landroidx/fragment/app/K;)Landroidx/fragment/app/k0;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    invoke-virtual {v2, p0}, Landroidx/fragment/app/k0;->e(Landroidx/fragment/app/b0;)I

    .line 107
    .line 108
    .line 109
    move-result v2

    .line 110
    goto :goto_2

    .line 111
    :cond_9
    const/4 v2, 0x0

    .line 112
    :goto_2
    if-ne v2, v4, :cond_a

    .line 113
    .line 114
    const/4 v2, 0x6

    .line 115
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    .line 116
    .line 117
    .line 118
    move-result v1

    .line 119
    goto :goto_3

    .line 120
    :cond_a
    if-ne v2, v5, :cond_b

    .line 121
    .line 122
    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    .line 123
    .line 124
    .line 125
    move-result v1

    .line 126
    goto :goto_3

    .line 127
    :cond_b
    iget-boolean v2, v0, Landroidx/fragment/app/u;->l:Z

    .line 128
    .line 129
    if-eqz v2, :cond_e

    .line 130
    .line 131
    iget v2, v0, Landroidx/fragment/app/u;->q:I

    .line 132
    .line 133
    if-lez v2, :cond_c

    .line 134
    .line 135
    const/4 v6, 0x1

    .line 136
    :cond_c
    if-eqz v6, :cond_d

    .line 137
    .line 138
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    .line 139
    .line 140
    .line 141
    move-result v1

    .line 142
    goto :goto_3

    .line 143
    :cond_d
    invoke-static {v1, v7}, Ljava/lang/Math;->min(II)I

    .line 144
    .line 145
    .line 146
    move-result v1

    .line 147
    :cond_e
    :goto_3
    iget-boolean v2, v0, Landroidx/fragment/app/u;->E:Z

    .line 148
    .line 149
    if-eqz v2, :cond_f

    .line 150
    .line 151
    iget v2, v0, Landroidx/fragment/app/u;->a:I

    .line 152
    .line 153
    if-ge v2, v8, :cond_f

    .line 154
    .line 155
    invoke-static {v1, v9}, Ljava/lang/Math;->min(II)I

    .line 156
    .line 157
    .line 158
    move-result v1

    .line 159
    :cond_f
    invoke-static {v4}, Landroidx/fragment/app/T;->f0(I)Z

    .line 160
    .line 161
    .line 162
    move-result v2

    .line 163
    if-eqz v2, :cond_10

    .line 164
    .line 165
    new-instance v2, Ljava/lang/StringBuilder;

    .line 166
    .line 167
    const-string v3, "computeExpectedState() of "

    .line 168
    .line 169
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    const-string v3, " for "

    .line 176
    .line 177
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    const-string v2, "FragmentManager"

    .line 188
    .line 189
    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    .line 191
    .line 192
    :cond_10
    return v1
.end method

.method final d()V
    .locals 4

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-static {v0}, Landroidx/fragment/app/T;->f0(I)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    iget-object v1, p0, Landroidx/fragment/app/b0;->c:Landroidx/fragment/app/u;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v2, "moveto CREATED: "

    .line 13
    .line 14
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v2, "FragmentManager"

    .line 25
    .line 26
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    :cond_0
    iget-boolean v0, v1, Landroidx/fragment/app/u;->I:Z

    .line 30
    .line 31
    if-nez v0, :cond_1

    .line 32
    .line 33
    iget-object v0, p0, Landroidx/fragment/app/b0;->a:Landroidx/fragment/app/h;

    .line 34
    .line 35
    const/4 v2, 0x0

    .line 36
    invoke-virtual {v0, v2}, Landroidx/fragment/app/h;->i(Z)V

    .line 37
    .line 38
    .line 39
    iget-object v3, v1, Landroidx/fragment/app/u;->b:Landroid/os/Bundle;

    .line 40
    .line 41
    invoke-virtual {v1, v3}, Landroidx/fragment/app/u;->F(Landroid/os/Bundle;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v2}, Landroidx/fragment/app/h;->d(Z)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    iget-object v0, v1, Landroidx/fragment/app/u;->b:Landroid/os/Bundle;

    .line 49
    .line 50
    if-eqz v0, :cond_2

    .line 51
    .line 52
    const-string v2, "android:support:fragments"

    .line 53
    .line 54
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    if-eqz v0, :cond_2

    .line 59
    .line 60
    iget-object v2, v1, Landroidx/fragment/app/u;->t:Landroidx/fragment/app/T;

    .line 61
    .line 62
    invoke-virtual {v2, v0}, Landroidx/fragment/app/T;->t0(Landroid/os/Parcelable;)V

    .line 63
    .line 64
    .line 65
    iget-object v0, v1, Landroidx/fragment/app/u;->t:Landroidx/fragment/app/T;

    .line 66
    .line 67
    invoke-virtual {v0}, Landroidx/fragment/app/T;->o()V

    .line 68
    .line 69
    .line 70
    :cond_2
    const/4 v0, 0x1

    .line 71
    iput v0, v1, Landroidx/fragment/app/u;->a:I

    .line 72
    .line 73
    :goto_0
    return-void
.end method

.method final e()V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/b0;->c:Landroidx/fragment/app/u;

    .line 2
    .line 3
    iget-boolean v1, v0, Landroidx/fragment/app/u;->m:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v1, 0x3

    .line 9
    invoke-static {v1}, Landroidx/fragment/app/T;->f0(I)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v2, "moveto CREATE_VIEW: "

    .line 18
    .line 19
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    const-string v2, "FragmentManager"

    .line 30
    .line 31
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    :cond_1
    iget-object v1, v0, Landroidx/fragment/app/u;->b:Landroid/os/Bundle;

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Landroidx/fragment/app/u;->v(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    iget-object v2, v0, Landroidx/fragment/app/u;->D:Landroid/view/ViewGroup;

    .line 41
    .line 42
    if-eqz v2, :cond_2

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_2
    iget v2, v0, Landroidx/fragment/app/u;->w:I

    .line 46
    .line 47
    if-eqz v2, :cond_5

    .line 48
    .line 49
    const/4 v3, -0x1

    .line 50
    if-eq v2, v3, :cond_4

    .line 51
    .line 52
    iget-object v2, v0, Landroidx/fragment/app/u;->r:Landroidx/fragment/app/T;

    .line 53
    .line 54
    invoke-virtual {v2}, Landroidx/fragment/app/T;->R()Landroidx/core/view/accessibility/n;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    iget v3, v0, Landroidx/fragment/app/u;->w:I

    .line 59
    .line 60
    invoke-virtual {v2, v3}, Landroidx/core/view/accessibility/n;->l(I)Landroid/view/View;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    check-cast v2, Landroid/view/ViewGroup;

    .line 65
    .line 66
    if-nez v2, :cond_6

    .line 67
    .line 68
    iget-boolean v3, v0, Landroidx/fragment/app/u;->o:Z

    .line 69
    .line 70
    if-eqz v3, :cond_3

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_3
    :try_start_0
    invoke-virtual {v0}, Landroidx/fragment/app/u;->V()Landroid/content/Context;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    iget v2, v0, Landroidx/fragment/app/u;->w:I

    .line 82
    .line 83
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v1
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    goto :goto_0

    .line 88
    :catch_0
    const-string v1, "unknown"

    .line 89
    .line 90
    :goto_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 91
    .line 92
    new-instance v3, Ljava/lang/StringBuilder;

    .line 93
    .line 94
    const-string v4, "No view found for id 0x"

    .line 95
    .line 96
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    iget v4, v0, Landroidx/fragment/app/u;->w:I

    .line 100
    .line 101
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v4

    .line 105
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    const-string v4, " ("

    .line 109
    .line 110
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    const-string v1, ") for fragment "

    .line 117
    .line 118
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    throw v2

    .line 132
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 133
    .line 134
    new-instance v2, Ljava/lang/StringBuilder;

    .line 135
    .line 136
    const-string v3, "Cannot create fragment "

    .line 137
    .line 138
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    const-string v0, " for a container view with no id"

    .line 145
    .line 146
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    throw v1

    .line 157
    :cond_5
    const/4 v2, 0x0

    .line 158
    :cond_6
    :goto_1
    iput-object v2, v0, Landroidx/fragment/app/u;->D:Landroid/view/ViewGroup;

    .line 159
    .line 160
    iget-object v3, v0, Landroidx/fragment/app/u;->b:Landroid/os/Bundle;

    .line 161
    .line 162
    invoke-virtual {v0, v1, v2, v3}, Landroidx/fragment/app/u;->G(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V

    .line 163
    .line 164
    .line 165
    const/4 v1, 0x2

    .line 166
    iput v1, v0, Landroidx/fragment/app/u;->a:I

    .line 167
    .line 168
    return-void
.end method

.method final f()V
    .locals 7

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-static {v0}, Landroidx/fragment/app/T;->f0(I)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    iget-object v1, p0, Landroidx/fragment/app/b0;->c:Landroidx/fragment/app/u;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v2, "movefrom CREATED: "

    .line 13
    .line 14
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v2, "FragmentManager"

    .line 25
    .line 26
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    :cond_0
    iget-boolean v0, v1, Landroidx/fragment/app/u;->l:Z

    .line 30
    .line 31
    const/4 v2, 0x0

    .line 32
    const/4 v3, 0x1

    .line 33
    if-eqz v0, :cond_2

    .line 34
    .line 35
    iget v0, v1, Landroidx/fragment/app/u;->q:I

    .line 36
    .line 37
    if-lez v0, :cond_1

    .line 38
    .line 39
    const/4 v0, 0x1

    .line 40
    goto :goto_0

    .line 41
    :cond_1
    const/4 v0, 0x0

    .line 42
    :goto_0
    if-nez v0, :cond_2

    .line 43
    .line 44
    const/4 v0, 0x1

    .line 45
    goto :goto_1

    .line 46
    :cond_2
    const/4 v0, 0x0

    .line 47
    :goto_1
    iget-object v4, p0, Landroidx/fragment/app/b0;->b:Landroidx/fragment/app/c0;

    .line 48
    .line 49
    if-nez v0, :cond_4

    .line 50
    .line 51
    invoke-virtual {v4}, Landroidx/fragment/app/c0;->n()Landroidx/fragment/app/X;

    .line 52
    .line 53
    .line 54
    move-result-object v5

    .line 55
    invoke-virtual {v5, v1}, Landroidx/fragment/app/X;->l(Landroidx/fragment/app/u;)Z

    .line 56
    .line 57
    .line 58
    move-result v5

    .line 59
    if-eqz v5, :cond_3

    .line 60
    .line 61
    goto :goto_2

    .line 62
    :cond_3
    const/4 v5, 0x0

    .line 63
    goto :goto_3

    .line 64
    :cond_4
    :goto_2
    const/4 v5, 0x1

    .line 65
    :goto_3
    if-eqz v5, :cond_c

    .line 66
    .line 67
    iget-object v5, v1, Landroidx/fragment/app/u;->s:Landroidx/fragment/app/E;

    .line 68
    .line 69
    instance-of v6, v5, Landroidx/lifecycle/Z;

    .line 70
    .line 71
    if-eqz v6, :cond_5

    .line 72
    .line 73
    invoke-virtual {v4}, Landroidx/fragment/app/c0;->n()Landroidx/fragment/app/X;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    invoke-virtual {v3}, Landroidx/fragment/app/X;->i()Z

    .line 78
    .line 79
    .line 80
    move-result v3

    .line 81
    goto :goto_4

    .line 82
    :cond_5
    invoke-virtual {v5}, Landroidx/fragment/app/E;->u()Landroid/content/Context;

    .line 83
    .line 84
    .line 85
    move-result-object v6

    .line 86
    instance-of v6, v6, Landroid/app/Activity;

    .line 87
    .line 88
    if-eqz v6, :cond_6

    .line 89
    .line 90
    invoke-virtual {v5}, Landroidx/fragment/app/E;->u()Landroid/content/Context;

    .line 91
    .line 92
    .line 93
    move-result-object v5

    .line 94
    check-cast v5, Landroid/app/Activity;

    .line 95
    .line 96
    invoke-virtual {v5}, Landroid/app/Activity;->isChangingConfigurations()Z

    .line 97
    .line 98
    .line 99
    move-result v5

    .line 100
    xor-int/2addr v3, v5

    .line 101
    :cond_6
    :goto_4
    if-nez v0, :cond_7

    .line 102
    .line 103
    if-eqz v3, :cond_8

    .line 104
    .line 105
    :cond_7
    invoke-virtual {v4}, Landroidx/fragment/app/c0;->n()Landroidx/fragment/app/X;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    invoke-virtual {v0, v1}, Landroidx/fragment/app/X;->c(Landroidx/fragment/app/u;)V

    .line 110
    .line 111
    .line 112
    :cond_8
    invoke-virtual {v1}, Landroidx/fragment/app/u;->H()V

    .line 113
    .line 114
    .line 115
    iget-object v0, p0, Landroidx/fragment/app/b0;->a:Landroidx/fragment/app/h;

    .line 116
    .line 117
    invoke-virtual {v0, v2}, Landroidx/fragment/app/h;->e(Z)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v4}, Landroidx/fragment/app/c0;->j()Ljava/util/ArrayList;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    :cond_9
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 129
    .line 130
    .line 131
    move-result v2

    .line 132
    if-eqz v2, :cond_a

    .line 133
    .line 134
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v2

    .line 138
    check-cast v2, Landroidx/fragment/app/b0;

    .line 139
    .line 140
    if-eqz v2, :cond_9

    .line 141
    .line 142
    iget-object v3, v1, Landroidx/fragment/app/u;->e:Ljava/lang/String;

    .line 143
    .line 144
    iget-object v2, v2, Landroidx/fragment/app/b0;->c:Landroidx/fragment/app/u;

    .line 145
    .line 146
    iget-object v5, v2, Landroidx/fragment/app/u;->h:Ljava/lang/String;

    .line 147
    .line 148
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    move-result v3

    .line 152
    if-eqz v3, :cond_9

    .line 153
    .line 154
    iput-object v1, v2, Landroidx/fragment/app/u;->g:Landroidx/fragment/app/u;

    .line 155
    .line 156
    const/4 v3, 0x0

    .line 157
    iput-object v3, v2, Landroidx/fragment/app/u;->h:Ljava/lang/String;

    .line 158
    .line 159
    goto :goto_5

    .line 160
    :cond_a
    iget-object v0, v1, Landroidx/fragment/app/u;->h:Ljava/lang/String;

    .line 161
    .line 162
    if-eqz v0, :cond_b

    .line 163
    .line 164
    invoke-virtual {v4, v0}, Landroidx/fragment/app/c0;->f(Ljava/lang/String;)Landroidx/fragment/app/u;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    iput-object v0, v1, Landroidx/fragment/app/u;->g:Landroidx/fragment/app/u;

    .line 169
    .line 170
    :cond_b
    invoke-virtual {v4, p0}, Landroidx/fragment/app/c0;->p(Landroidx/fragment/app/b0;)V

    .line 171
    .line 172
    .line 173
    goto :goto_6

    .line 174
    :cond_c
    iget-object v0, v1, Landroidx/fragment/app/u;->h:Ljava/lang/String;

    .line 175
    .line 176
    if-eqz v0, :cond_d

    .line 177
    .line 178
    invoke-virtual {v4, v0}, Landroidx/fragment/app/c0;->f(Ljava/lang/String;)Landroidx/fragment/app/u;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    if-eqz v0, :cond_d

    .line 183
    .line 184
    iget-boolean v3, v0, Landroidx/fragment/app/u;->A:Z

    .line 185
    .line 186
    if-eqz v3, :cond_d

    .line 187
    .line 188
    iput-object v0, v1, Landroidx/fragment/app/u;->g:Landroidx/fragment/app/u;

    .line 189
    .line 190
    :cond_d
    iput v2, v1, Landroidx/fragment/app/u;->a:I

    .line 191
    .line 192
    :goto_6
    return-void
.end method

.method final g()V
    .locals 4

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-static {v0}, Landroidx/fragment/app/T;->f0(I)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    iget-object v1, p0, Landroidx/fragment/app/b0;->c:Landroidx/fragment/app/u;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v2, "movefrom CREATE_VIEW: "

    .line 13
    .line 14
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v2, "FragmentManager"

    .line 25
    .line 26
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    :cond_0
    iget-object v0, v1, Landroidx/fragment/app/u;->D:Landroid/view/ViewGroup;

    .line 30
    .line 31
    invoke-virtual {v1}, Landroidx/fragment/app/u;->I()V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Landroidx/fragment/app/b0;->a:Landroidx/fragment/app/h;

    .line 35
    .line 36
    const/4 v2, 0x0

    .line 37
    invoke-virtual {v0, v2}, Landroidx/fragment/app/h;->n(Z)V

    .line 38
    .line 39
    .line 40
    const/4 v0, 0x0

    .line 41
    iput-object v0, v1, Landroidx/fragment/app/u;->D:Landroid/view/ViewGroup;

    .line 42
    .line 43
    iput-object v0, v1, Landroidx/fragment/app/u;->L:Landroidx/fragment/app/f0;

    .line 44
    .line 45
    iget-object v3, v1, Landroidx/fragment/app/u;->M:Landroidx/lifecycle/A;

    .line 46
    .line 47
    invoke-virtual {v3, v0}, Landroidx/lifecycle/A;->i(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    iput-boolean v2, v1, Landroidx/fragment/app/u;->n:Z

    .line 51
    .line 52
    return-void
.end method

.method final h()V
    .locals 6

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-static {v0}, Landroidx/fragment/app/T;->f0(I)Z

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    const-string v2, "FragmentManager"

    .line 7
    .line 8
    iget-object v3, p0, Landroidx/fragment/app/b0;->c:Landroidx/fragment/app/u;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string v4, "movefrom ATTACHED: "

    .line 15
    .line 16
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    :cond_0
    invoke-virtual {v3}, Landroidx/fragment/app/u;->J()V

    .line 30
    .line 31
    .line 32
    iget-object v1, p0, Landroidx/fragment/app/b0;->a:Landroidx/fragment/app/h;

    .line 33
    .line 34
    const/4 v4, 0x0

    .line 35
    invoke-virtual {v1, v4}, Landroidx/fragment/app/h;->f(Z)V

    .line 36
    .line 37
    .line 38
    const/4 v1, -0x1

    .line 39
    iput v1, v3, Landroidx/fragment/app/u;->a:I

    .line 40
    .line 41
    const/4 v1, 0x0

    .line 42
    iput-object v1, v3, Landroidx/fragment/app/u;->s:Landroidx/fragment/app/E;

    .line 43
    .line 44
    iput-object v1, v3, Landroidx/fragment/app/u;->u:Landroidx/fragment/app/u;

    .line 45
    .line 46
    iput-object v1, v3, Landroidx/fragment/app/u;->r:Landroidx/fragment/app/T;

    .line 47
    .line 48
    iget-boolean v1, v3, Landroidx/fragment/app/u;->l:Z

    .line 49
    .line 50
    if-eqz v1, :cond_2

    .line 51
    .line 52
    iget v1, v3, Landroidx/fragment/app/u;->q:I

    .line 53
    .line 54
    const/4 v5, 0x1

    .line 55
    if-lez v1, :cond_1

    .line 56
    .line 57
    const/4 v1, 0x1

    .line 58
    goto :goto_0

    .line 59
    :cond_1
    const/4 v1, 0x0

    .line 60
    :goto_0
    if-nez v1, :cond_2

    .line 61
    .line 62
    const/4 v4, 0x1

    .line 63
    :cond_2
    if-nez v4, :cond_3

    .line 64
    .line 65
    iget-object v1, p0, Landroidx/fragment/app/b0;->b:Landroidx/fragment/app/c0;

    .line 66
    .line 67
    invoke-virtual {v1}, Landroidx/fragment/app/c0;->n()Landroidx/fragment/app/X;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-virtual {v1, v3}, Landroidx/fragment/app/X;->l(Landroidx/fragment/app/u;)Z

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    if-eqz v1, :cond_5

    .line 76
    .line 77
    :cond_3
    invoke-static {v0}, Landroidx/fragment/app/T;->f0(I)Z

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    if-eqz v0, :cond_4

    .line 82
    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    const-string v1, "initState called for fragment: "

    .line 86
    .line 87
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    .line 99
    .line 100
    :cond_4
    invoke-virtual {v3}, Landroidx/fragment/app/u;->o()V

    .line 101
    .line 102
    .line 103
    :cond_5
    return-void
.end method

.method final i()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/b0;->c:Landroidx/fragment/app/u;

    .line 2
    .line 3
    iget-boolean v1, v0, Landroidx/fragment/app/u;->m:Z

    .line 4
    .line 5
    if-eqz v1, :cond_1

    .line 6
    .line 7
    iget-boolean v1, v0, Landroidx/fragment/app/u;->n:Z

    .line 8
    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    iget-boolean v1, v0, Landroidx/fragment/app/u;->p:Z

    .line 12
    .line 13
    if-nez v1, :cond_1

    .line 14
    .line 15
    const/4 v1, 0x3

    .line 16
    invoke-static {v1}, Landroidx/fragment/app/T;->f0(I)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    const-string v2, "moveto CREATE_VIEW: "

    .line 25
    .line 26
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    const-string v2, "FragmentManager"

    .line 37
    .line 38
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    :cond_0
    iget-object v1, v0, Landroidx/fragment/app/u;->b:Landroid/os/Bundle;

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Landroidx/fragment/app/u;->v(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    const/4 v2, 0x0

    .line 48
    iget-object v3, v0, Landroidx/fragment/app/u;->b:Landroid/os/Bundle;

    .line 49
    .line 50
    invoke-virtual {v0, v1, v2, v3}, Landroidx/fragment/app/u;->G(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V

    .line 51
    .line 52
    .line 53
    :cond_1
    return-void
.end method

.method final j()Landroidx/fragment/app/u;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/b0;->c:Landroidx/fragment/app/u;

    .line 2
    .line 3
    return-object v0
.end method

.method final k()V
    .locals 8

    .line 1
    iget-boolean v0, p0, Landroidx/fragment/app/b0;->d:Z

    .line 2
    .line 3
    const-string v1, "FragmentManager"

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    iget-object v3, p0, Landroidx/fragment/app/b0;->c:Landroidx/fragment/app/u;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    invoke-static {v2}, Landroidx/fragment/app/T;->f0(I)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const-string v2, "Ignoring re-entrant call to moveToExpectedState() for "

    .line 19
    .line 20
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    :cond_0
    return-void

    .line 34
    :cond_1
    const/4 v0, 0x0

    .line 35
    const/4 v4, 0x1

    .line 36
    :try_start_0
    iput-boolean v4, p0, Landroidx/fragment/app/b0;->d:Z

    .line 37
    .line 38
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/b0;->c()I

    .line 39
    .line 40
    .line 41
    move-result v5

    .line 42
    iget v6, v3, Landroidx/fragment/app/u;->a:I

    .line 43
    .line 44
    if-eq v5, v6, :cond_4

    .line 45
    .line 46
    if-le v5, v6, :cond_2

    .line 47
    .line 48
    add-int/lit8 v6, v6, 0x1

    .line 49
    .line 50
    packed-switch v6, :pswitch_data_0

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :pswitch_0
    invoke-virtual {p0}, Landroidx/fragment/app/b0;->n()V

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :pswitch_1
    const/4 v5, 0x6

    .line 59
    iput v5, v3, Landroidx/fragment/app/u;->a:I

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :pswitch_2
    invoke-virtual {p0}, Landroidx/fragment/app/b0;->q()V

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :pswitch_3
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    .line 68
    .line 69
    const/4 v5, 0x4

    .line 70
    iput v5, v3, Landroidx/fragment/app/u;->a:I

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :pswitch_4
    invoke-virtual {p0}, Landroidx/fragment/app/b0;->a()V

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :pswitch_5
    invoke-virtual {p0}, Landroidx/fragment/app/b0;->i()V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0}, Landroidx/fragment/app/b0;->e()V

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :pswitch_6
    invoke-virtual {p0}, Landroidx/fragment/app/b0;->d()V

    .line 85
    .line 86
    .line 87
    goto :goto_0

    .line 88
    :pswitch_7
    invoke-virtual {p0}, Landroidx/fragment/app/b0;->b()V

    .line 89
    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_2
    add-int/lit8 v6, v6, -0x1

    .line 93
    .line 94
    packed-switch v6, :pswitch_data_1

    .line 95
    .line 96
    .line 97
    goto :goto_0

    .line 98
    :pswitch_8
    invoke-virtual {p0}, Landroidx/fragment/app/b0;->l()V

    .line 99
    .line 100
    .line 101
    goto :goto_0

    .line 102
    :pswitch_9
    const/4 v5, 0x5

    .line 103
    iput v5, v3, Landroidx/fragment/app/u;->a:I

    .line 104
    .line 105
    goto :goto_0

    .line 106
    :pswitch_a
    invoke-virtual {p0}, Landroidx/fragment/app/b0;->r()V

    .line 107
    .line 108
    .line 109
    goto :goto_0

    .line 110
    :pswitch_b
    const/4 v5, 0x3

    .line 111
    invoke-static {v5}, Landroidx/fragment/app/T;->f0(I)Z

    .line 112
    .line 113
    .line 114
    move-result v6

    .line 115
    if-eqz v6, :cond_3

    .line 116
    .line 117
    new-instance v6, Ljava/lang/StringBuilder;

    .line 118
    .line 119
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 120
    .line 121
    .line 122
    const-string v7, "movefrom ACTIVITY_CREATED: "

    .line 123
    .line 124
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v6

    .line 134
    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    .line 136
    .line 137
    :cond_3
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 141
    .line 142
    .line 143
    iput v5, v3, Landroidx/fragment/app/u;->a:I

    .line 144
    .line 145
    goto :goto_0

    .line 146
    :pswitch_c
    iput-boolean v0, v3, Landroidx/fragment/app/u;->n:Z

    .line 147
    .line 148
    iput v2, v3, Landroidx/fragment/app/u;->a:I

    .line 149
    .line 150
    goto :goto_0

    .line 151
    :pswitch_d
    invoke-virtual {p0}, Landroidx/fragment/app/b0;->g()V

    .line 152
    .line 153
    .line 154
    iput v4, v3, Landroidx/fragment/app/u;->a:I

    .line 155
    .line 156
    goto :goto_0

    .line 157
    :pswitch_e
    invoke-virtual {p0}, Landroidx/fragment/app/b0;->f()V

    .line 158
    .line 159
    .line 160
    goto :goto_0

    .line 161
    :pswitch_f
    invoke-virtual {p0}, Landroidx/fragment/app/b0;->h()V

    .line 162
    .line 163
    .line 164
    goto :goto_0

    .line 165
    :cond_4
    iget-boolean v1, v3, Landroidx/fragment/app/u;->H:Z

    .line 166
    .line 167
    if-eqz v1, :cond_6

    .line 168
    .line 169
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 170
    .line 171
    .line 172
    iget-object v1, v3, Landroidx/fragment/app/u;->r:Landroidx/fragment/app/T;

    .line 173
    .line 174
    if-eqz v1, :cond_5

    .line 175
    .line 176
    invoke-virtual {v1, v3}, Landroidx/fragment/app/T;->d0(Landroidx/fragment/app/u;)V

    .line 177
    .line 178
    .line 179
    :cond_5
    iput-boolean v0, v3, Landroidx/fragment/app/u;->H:Z

    .line 180
    .line 181
    iget-boolean v1, v3, Landroidx/fragment/app/u;->y:Z

    .line 182
    .line 183
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    .line 185
    .line 186
    :cond_6
    iput-boolean v0, p0, Landroidx/fragment/app/b0;->d:Z

    .line 187
    .line 188
    return-void

    .line 189
    :catchall_0
    move-exception v1

    .line 190
    iput-boolean v0, p0, Landroidx/fragment/app/b0;->d:Z

    .line 191
    .line 192
    throw v1

    .line 193
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    :pswitch_data_1
    .packed-switch -0x1
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch
.end method

.method final l()V
    .locals 3

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-static {v0}, Landroidx/fragment/app/T;->f0(I)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    iget-object v1, p0, Landroidx/fragment/app/b0;->c:Landroidx/fragment/app/u;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v2, "movefrom RESUMED: "

    .line 13
    .line 14
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v2, "FragmentManager"

    .line 25
    .line 26
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    :cond_0
    invoke-virtual {v1}, Landroidx/fragment/app/u;->O()V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Landroidx/fragment/app/b0;->a:Landroidx/fragment/app/h;

    .line 33
    .line 34
    const/4 v1, 0x0

    .line 35
    invoke-virtual {v0, v1}, Landroidx/fragment/app/h;->g(Z)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method final m(Ljava/lang/ClassLoader;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/b0;->c:Landroidx/fragment/app/u;

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/fragment/app/u;->b:Landroid/os/Bundle;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {v1, p1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, v0, Landroidx/fragment/app/u;->b:Landroid/os/Bundle;

    .line 12
    .line 13
    const-string v1, "android:view_state"

    .line 14
    .line 15
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iput-object p1, v0, Landroidx/fragment/app/u;->c:Landroid/util/SparseArray;

    .line 20
    .line 21
    iget-object p1, v0, Landroidx/fragment/app/u;->b:Landroid/os/Bundle;

    .line 22
    .line 23
    const-string v1, "android:view_registry_state"

    .line 24
    .line 25
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    iput-object p1, v0, Landroidx/fragment/app/u;->d:Landroid/os/Bundle;

    .line 30
    .line 31
    iget-object p1, v0, Landroidx/fragment/app/u;->b:Landroid/os/Bundle;

    .line 32
    .line 33
    const-string v1, "android:target_state"

    .line 34
    .line 35
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    iput-object p1, v0, Landroidx/fragment/app/u;->h:Ljava/lang/String;

    .line 40
    .line 41
    if-eqz p1, :cond_1

    .line 42
    .line 43
    iget-object p1, v0, Landroidx/fragment/app/u;->b:Landroid/os/Bundle;

    .line 44
    .line 45
    const-string v1, "android:target_req_state"

    .line 46
    .line 47
    const/4 v2, 0x0

    .line 48
    invoke-virtual {p1, v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    iput p1, v0, Landroidx/fragment/app/u;->i:I

    .line 53
    .line 54
    :cond_1
    iget-object p1, v0, Landroidx/fragment/app/u;->b:Landroid/os/Bundle;

    .line 55
    .line 56
    const-string v1, "android:user_visible_hint"

    .line 57
    .line 58
    const/4 v2, 0x1

    .line 59
    invoke-virtual {p1, v1, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    iput-boolean p1, v0, Landroidx/fragment/app/u;->F:Z

    .line 64
    .line 65
    if-nez p1, :cond_2

    .line 66
    .line 67
    iput-boolean v2, v0, Landroidx/fragment/app/u;->E:Z

    .line 68
    .line 69
    :cond_2
    return-void
.end method

.method final n()V
    .locals 4

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-static {v0}, Landroidx/fragment/app/T;->f0(I)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    iget-object v1, p0, Landroidx/fragment/app/b0;->c:Landroidx/fragment/app/u;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v2, "moveto RESUMED: "

    .line 13
    .line 14
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v2, "FragmentManager"

    .line 25
    .line 26
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    :cond_0
    iget-object v0, v1, Landroidx/fragment/app/u;->G:Landroidx/fragment/app/r;

    .line 30
    .line 31
    const/4 v2, 0x0

    .line 32
    if-nez v0, :cond_1

    .line 33
    .line 34
    move-object v0, v2

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    iget-object v0, v0, Landroidx/fragment/app/r;->k:Landroid/view/View;

    .line 37
    .line 38
    :goto_0
    if-eqz v0, :cond_2

    .line 39
    .line 40
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    :goto_1
    if-eqz v0, :cond_2

    .line 45
    .line 46
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    goto :goto_1

    .line 51
    :cond_2
    invoke-virtual {v1, v2}, Landroidx/fragment/app/u;->Z(Landroid/view/View;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1}, Landroidx/fragment/app/u;->S()V

    .line 55
    .line 56
    .line 57
    iget-object v0, p0, Landroidx/fragment/app/b0;->a:Landroidx/fragment/app/h;

    .line 58
    .line 59
    const/4 v3, 0x0

    .line 60
    invoke-virtual {v0, v3}, Landroidx/fragment/app/h;->j(Z)V

    .line 61
    .line 62
    .line 63
    iput-object v2, v1, Landroidx/fragment/app/u;->b:Landroid/os/Bundle;

    .line 64
    .line 65
    iput-object v2, v1, Landroidx/fragment/app/u;->c:Landroid/util/SparseArray;

    .line 66
    .line 67
    iput-object v2, v1, Landroidx/fragment/app/u;->d:Landroid/os/Bundle;

    .line 68
    .line 69
    return-void
.end method

.method final o()Landroidx/fragment/app/a0;
    .locals 5

    .line 1
    new-instance v0, Landroidx/fragment/app/a0;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/fragment/app/b0;->c:Landroidx/fragment/app/u;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroidx/fragment/app/a0;-><init>(Landroidx/fragment/app/u;)V

    .line 6
    .line 7
    .line 8
    iget v2, v1, Landroidx/fragment/app/u;->a:I

    .line 9
    .line 10
    const/4 v3, -0x1

    .line 11
    if-le v2, v3, :cond_9

    .line 12
    .line 13
    iget-object v2, v0, Landroidx/fragment/app/a0;->m:Landroid/os/Bundle;

    .line 14
    .line 15
    if-nez v2, :cond_9

    .line 16
    .line 17
    new-instance v2, Landroid/os/Bundle;

    .line 18
    .line 19
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, v2}, Landroidx/fragment/app/u;->y(Landroid/os/Bundle;)V

    .line 23
    .line 24
    .line 25
    iget-object v3, v1, Landroidx/fragment/app/u;->N:Lv/e;

    .line 26
    .line 27
    invoke-virtual {v3, v2}, Lv/e;->d(Landroid/os/Bundle;)V

    .line 28
    .line 29
    .line 30
    iget-object v3, v1, Landroidx/fragment/app/u;->t:Landroidx/fragment/app/T;

    .line 31
    .line 32
    invoke-virtual {v3}, Landroidx/fragment/app/T;->u0()Landroid/os/Parcelable;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    if-eqz v3, :cond_0

    .line 37
    .line 38
    const-string v4, "android:support:fragments"

    .line 39
    .line 40
    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 41
    .line 42
    .line 43
    :cond_0
    iget-object v3, p0, Landroidx/fragment/app/b0;->a:Landroidx/fragment/app/h;

    .line 44
    .line 45
    const/4 v4, 0x0

    .line 46
    invoke-virtual {v3, v4}, Landroidx/fragment/app/h;->k(Z)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2}, Landroid/os/BaseBundle;->isEmpty()Z

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    if-eqz v3, :cond_1

    .line 54
    .line 55
    const/4 v2, 0x0

    .line 56
    :cond_1
    iget-object v3, v1, Landroidx/fragment/app/u;->c:Landroid/util/SparseArray;

    .line 57
    .line 58
    if-eqz v3, :cond_3

    .line 59
    .line 60
    if-nez v2, :cond_2

    .line 61
    .line 62
    new-instance v2, Landroid/os/Bundle;

    .line 63
    .line 64
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 65
    .line 66
    .line 67
    :cond_2
    const-string v3, "android:view_state"

    .line 68
    .line 69
    iget-object v4, v1, Landroidx/fragment/app/u;->c:Landroid/util/SparseArray;

    .line 70
    .line 71
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 72
    .line 73
    .line 74
    :cond_3
    iget-object v3, v1, Landroidx/fragment/app/u;->d:Landroid/os/Bundle;

    .line 75
    .line 76
    if-eqz v3, :cond_5

    .line 77
    .line 78
    if-nez v2, :cond_4

    .line 79
    .line 80
    new-instance v2, Landroid/os/Bundle;

    .line 81
    .line 82
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 83
    .line 84
    .line 85
    :cond_4
    const-string v3, "android:view_registry_state"

    .line 86
    .line 87
    iget-object v4, v1, Landroidx/fragment/app/u;->d:Landroid/os/Bundle;

    .line 88
    .line 89
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 90
    .line 91
    .line 92
    :cond_5
    iget-boolean v3, v1, Landroidx/fragment/app/u;->F:Z

    .line 93
    .line 94
    if-nez v3, :cond_7

    .line 95
    .line 96
    if-nez v2, :cond_6

    .line 97
    .line 98
    new-instance v2, Landroid/os/Bundle;

    .line 99
    .line 100
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 101
    .line 102
    .line 103
    :cond_6
    const-string v3, "android:user_visible_hint"

    .line 104
    .line 105
    iget-boolean v4, v1, Landroidx/fragment/app/u;->F:Z

    .line 106
    .line 107
    invoke-virtual {v2, v3, v4}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 108
    .line 109
    .line 110
    :cond_7
    iput-object v2, v0, Landroidx/fragment/app/a0;->m:Landroid/os/Bundle;

    .line 111
    .line 112
    iget-object v3, v1, Landroidx/fragment/app/u;->h:Ljava/lang/String;

    .line 113
    .line 114
    if-eqz v3, :cond_a

    .line 115
    .line 116
    if-nez v2, :cond_8

    .line 117
    .line 118
    new-instance v2, Landroid/os/Bundle;

    .line 119
    .line 120
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 121
    .line 122
    .line 123
    iput-object v2, v0, Landroidx/fragment/app/a0;->m:Landroid/os/Bundle;

    .line 124
    .line 125
    :cond_8
    iget-object v2, v0, Landroidx/fragment/app/a0;->m:Landroid/os/Bundle;

    .line 126
    .line 127
    const-string v3, "android:target_state"

    .line 128
    .line 129
    iget-object v4, v1, Landroidx/fragment/app/u;->h:Ljava/lang/String;

    .line 130
    .line 131
    invoke-virtual {v2, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    iget v1, v1, Landroidx/fragment/app/u;->i:I

    .line 135
    .line 136
    if-eqz v1, :cond_a

    .line 137
    .line 138
    iget-object v2, v0, Landroidx/fragment/app/a0;->m:Landroid/os/Bundle;

    .line 139
    .line 140
    const-string v3, "android:target_req_state"

    .line 141
    .line 142
    invoke-virtual {v2, v3, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 143
    .line 144
    .line 145
    goto :goto_0

    .line 146
    :cond_9
    iget-object v1, v1, Landroidx/fragment/app/u;->b:Landroid/os/Bundle;

    .line 147
    .line 148
    iput-object v1, v0, Landroidx/fragment/app/a0;->m:Landroid/os/Bundle;

    .line 149
    .line 150
    :cond_a
    :goto_0
    return-object v0
.end method

.method final p(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/fragment/app/b0;->e:I

    .line 2
    .line 3
    return-void
.end method

.method final q()V
    .locals 3

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-static {v0}, Landroidx/fragment/app/T;->f0(I)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    iget-object v1, p0, Landroidx/fragment/app/b0;->c:Landroidx/fragment/app/u;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v2, "moveto STARTED: "

    .line 13
    .line 14
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v2, "FragmentManager"

    .line 25
    .line 26
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    :cond_0
    invoke-virtual {v1}, Landroidx/fragment/app/u;->T()V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Landroidx/fragment/app/b0;->a:Landroidx/fragment/app/h;

    .line 33
    .line 34
    const/4 v1, 0x0

    .line 35
    invoke-virtual {v0, v1}, Landroidx/fragment/app/h;->l(Z)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method final r()V
    .locals 3

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-static {v0}, Landroidx/fragment/app/T;->f0(I)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    iget-object v1, p0, Landroidx/fragment/app/b0;->c:Landroidx/fragment/app/u;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v2, "movefrom STARTED: "

    .line 13
    .line 14
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v2, "FragmentManager"

    .line 25
    .line 26
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    :cond_0
    invoke-virtual {v1}, Landroidx/fragment/app/u;->U()V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Landroidx/fragment/app/b0;->a:Landroidx/fragment/app/h;

    .line 33
    .line 34
    const/4 v1, 0x0

    .line 35
    invoke-virtual {v0, v1}, Landroidx/fragment/app/h;->m(Z)V

    .line 36
    .line 37
    .line 38
    return-void
.end method
