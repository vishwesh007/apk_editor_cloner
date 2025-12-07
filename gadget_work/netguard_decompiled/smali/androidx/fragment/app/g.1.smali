.class final Landroidx/fragment/app/g;
.super Landroidx/fragment/app/h;
.source "SourceFile"


# instance fields
.field private c:Z

.field private d:Z

.field private e:Landroidx/fragment/app/z;


# direct methods
.method constructor <init>(Landroidx/fragment/app/j0;Landroidx/core/os/e;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/fragment/app/h;-><init>(Landroidx/fragment/app/j0;Landroidx/core/os/e;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Landroidx/fragment/app/g;->d:Z

    .line 6
    .line 7
    iput-boolean p3, p0, Landroidx/fragment/app/g;->c:Z

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method final q(Landroid/content/Context;)Landroidx/fragment/app/z;
    .locals 9

    .line 1
    iget-boolean v0, p0, Landroidx/fragment/app/g;->d:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Landroidx/fragment/app/g;->e:Landroidx/fragment/app/z;

    .line 6
    .line 7
    return-object p1

    .line 8
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/h;->o()Landroidx/fragment/app/j0;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Landroidx/fragment/app/j0;->f()Landroidx/fragment/app/u;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {p0}, Landroidx/fragment/app/h;->o()Landroidx/fragment/app/j0;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v1}, Landroidx/fragment/app/j0;->e()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    const/4 v2, 0x2

    .line 25
    const/4 v3, 0x1

    .line 26
    const/4 v4, 0x0

    .line 27
    if-ne v1, v2, :cond_1

    .line 28
    .line 29
    const/4 v1, 0x1

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const/4 v1, 0x0

    .line 32
    :goto_0
    iget-boolean v2, p0, Landroidx/fragment/app/g;->c:Z

    .line 33
    .line 34
    iget-object v5, v0, Landroidx/fragment/app/u;->G:Landroidx/fragment/app/r;

    .line 35
    .line 36
    if-nez v5, :cond_2

    .line 37
    .line 38
    const/4 v6, 0x0

    .line 39
    goto :goto_1

    .line 40
    :cond_2
    iget v6, v5, Landroidx/fragment/app/r;->g:I

    .line 41
    .line 42
    :goto_1
    if-eqz v2, :cond_6

    .line 43
    .line 44
    if-eqz v1, :cond_4

    .line 45
    .line 46
    if-nez v5, :cond_3

    .line 47
    .line 48
    goto :goto_2

    .line 49
    :cond_3
    iget v2, v5, Landroidx/fragment/app/r;->e:I

    .line 50
    .line 51
    goto :goto_3

    .line 52
    :cond_4
    if-nez v5, :cond_5

    .line 53
    .line 54
    goto :goto_2

    .line 55
    :cond_5
    iget v2, v5, Landroidx/fragment/app/r;->f:I

    .line 56
    .line 57
    goto :goto_3

    .line 58
    :cond_6
    if-eqz v1, :cond_8

    .line 59
    .line 60
    if-nez v5, :cond_7

    .line 61
    .line 62
    goto :goto_2

    .line 63
    :cond_7
    iget v2, v5, Landroidx/fragment/app/r;->c:I

    .line 64
    .line 65
    goto :goto_3

    .line 66
    :cond_8
    if-nez v5, :cond_9

    .line 67
    .line 68
    :goto_2
    const/4 v2, 0x0

    .line 69
    goto :goto_3

    .line 70
    :cond_9
    iget v2, v5, Landroidx/fragment/app/r;->d:I

    .line 71
    .line 72
    :goto_3
    invoke-virtual {v0, v4, v4, v4, v4}, Landroidx/fragment/app/u;->Y(IIII)V

    .line 73
    .line 74
    .line 75
    iget-object v5, v0, Landroidx/fragment/app/u;->D:Landroid/view/ViewGroup;

    .line 76
    .line 77
    const/4 v7, 0x0

    .line 78
    if-eqz v5, :cond_a

    .line 79
    .line 80
    const v8, 0x7f09019c

    .line 81
    .line 82
    .line 83
    invoke-virtual {v5, v8}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v5

    .line 87
    if-eqz v5, :cond_a

    .line 88
    .line 89
    iget-object v5, v0, Landroidx/fragment/app/u;->D:Landroid/view/ViewGroup;

    .line 90
    .line 91
    invoke-virtual {v5, v8, v7}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    :cond_a
    iget-object v0, v0, Landroidx/fragment/app/u;->D:Landroid/view/ViewGroup;

    .line 95
    .line 96
    if-eqz v0, :cond_b

    .line 97
    .line 98
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    if-eqz v0, :cond_b

    .line 103
    .line 104
    goto/16 :goto_6

    .line 105
    .line 106
    :cond_b
    if-nez v2, :cond_12

    .line 107
    .line 108
    if-eqz v6, :cond_12

    .line 109
    .line 110
    const/16 v0, 0x1001

    .line 111
    .line 112
    if-eq v6, v0, :cond_10

    .line 113
    .line 114
    const/16 v0, 0x1003

    .line 115
    .line 116
    if-eq v6, v0, :cond_e

    .line 117
    .line 118
    const/16 v0, 0x2002

    .line 119
    .line 120
    if-eq v6, v0, :cond_c

    .line 121
    .line 122
    const/4 v2, -0x1

    .line 123
    goto :goto_4

    .line 124
    :cond_c
    if-eqz v1, :cond_d

    .line 125
    .line 126
    const/high16 v2, 0x7f020000

    .line 127
    .line 128
    goto :goto_4

    .line 129
    :cond_d
    const v2, 0x7f020001

    .line 130
    .line 131
    .line 132
    goto :goto_4

    .line 133
    :cond_e
    if-eqz v1, :cond_f

    .line 134
    .line 135
    const v2, 0x7f020002

    .line 136
    .line 137
    .line 138
    goto :goto_4

    .line 139
    :cond_f
    const v2, 0x7f020003

    .line 140
    .line 141
    .line 142
    goto :goto_4

    .line 143
    :cond_10
    if-eqz v1, :cond_11

    .line 144
    .line 145
    const v2, 0x7f020004

    .line 146
    .line 147
    .line 148
    goto :goto_4

    .line 149
    :cond_11
    const v2, 0x7f020005

    .line 150
    .line 151
    .line 152
    :cond_12
    :goto_4
    if-eqz v2, :cond_16

    .line 153
    .line 154
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    const-string v1, "anim"

    .line 163
    .line 164
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 165
    .line 166
    .line 167
    move-result v0

    .line 168
    if-eqz v0, :cond_14

    .line 169
    .line 170
    :try_start_0
    invoke-static {p1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 171
    .line 172
    .line 173
    move-result-object v1

    .line 174
    if-eqz v1, :cond_13

    .line 175
    .line 176
    new-instance v5, Landroidx/fragment/app/z;

    .line 177
    .line 178
    invoke-direct {v5, v1}, Landroidx/fragment/app/z;-><init>(Landroid/view/animation/Animation;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    .line 180
    .line 181
    move-object v7, v5

    .line 182
    goto :goto_6

    .line 183
    :cond_13
    const/4 v4, 0x1

    .line 184
    goto :goto_5

    .line 185
    :catch_0
    nop

    .line 186
    goto :goto_5

    .line 187
    :catch_1
    move-exception p1

    .line 188
    throw p1

    .line 189
    :cond_14
    :goto_5
    if-nez v4, :cond_16

    .line 190
    .line 191
    :try_start_1
    invoke-static {p1, v2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    .line 192
    .line 193
    .line 194
    move-result-object v1

    .line 195
    if-eqz v1, :cond_16

    .line 196
    .line 197
    new-instance v4, Landroidx/fragment/app/z;

    .line 198
    .line 199
    invoke-direct {v4, v1}, Landroidx/fragment/app/z;-><init>(Landroid/animation/Animator;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    .line 200
    .line 201
    .line 202
    move-object v7, v4

    .line 203
    goto :goto_6

    .line 204
    :catch_2
    move-exception v1

    .line 205
    if-nez v0, :cond_15

    .line 206
    .line 207
    invoke-static {p1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 208
    .line 209
    .line 210
    move-result-object p1

    .line 211
    if-eqz p1, :cond_16

    .line 212
    .line 213
    new-instance v7, Landroidx/fragment/app/z;

    .line 214
    .line 215
    invoke-direct {v7, p1}, Landroidx/fragment/app/z;-><init>(Landroid/view/animation/Animation;)V

    .line 216
    .line 217
    .line 218
    goto :goto_6

    .line 219
    :cond_15
    throw v1

    .line 220
    :cond_16
    :goto_6
    iput-object v7, p0, Landroidx/fragment/app/g;->e:Landroidx/fragment/app/z;

    .line 221
    .line 222
    iput-boolean v3, p0, Landroidx/fragment/app/g;->d:Z

    .line 223
    .line 224
    return-object v7
.end method
