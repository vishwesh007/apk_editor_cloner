.class final Landroidx/fragment/app/j;
.super Landroidx/fragment/app/k0;
.source "SourceFile"


# virtual methods
.method final a(Ljava/util/ArrayList;Z)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    if-nez v1, :cond_9

    .line 11
    .line 12
    new-instance v0, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 15
    .line 16
    .line 17
    new-instance v1, Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 20
    .line 21
    .line 22
    new-instance v3, Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-direct {v3, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    if-eqz v4, :cond_0

    .line 36
    .line 37
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    check-cast v4, Landroidx/fragment/app/j0;

    .line 42
    .line 43
    new-instance v5, Landroidx/core/os/e;

    .line 44
    .line 45
    invoke-direct {v5}, Landroidx/core/os/e;-><init>()V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v4, v5}, Landroidx/fragment/app/j0;->j(Landroidx/core/os/e;)V

    .line 49
    .line 50
    .line 51
    new-instance v6, Landroidx/fragment/app/g;

    .line 52
    .line 53
    invoke-direct {v6, v4, v5, p2}, Landroidx/fragment/app/g;-><init>(Landroidx/fragment/app/j0;Landroidx/core/os/e;Z)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    new-instance v5, Landroidx/core/os/e;

    .line 60
    .line 61
    invoke-direct {v5}, Landroidx/core/os/e;-><init>()V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v4, v5}, Landroidx/fragment/app/j0;->j(Landroidx/core/os/e;)V

    .line 65
    .line 66
    .line 67
    new-instance v6, Landroidx/fragment/app/i;

    .line 68
    .line 69
    const/4 v7, 0x0

    .line 70
    invoke-direct {v6, v4, v5, p2, v7}, Landroidx/fragment/app/i;-><init>(Landroidx/fragment/app/j0;Landroidx/core/os/e;ZZ)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    new-instance v5, Landroidx/fragment/app/d;

    .line 77
    .line 78
    invoke-direct {v5, p0, v3, v4}, Landroidx/fragment/app/d;-><init>(Landroidx/fragment/app/j;Ljava/util/ArrayList;Landroidx/fragment/app/j0;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v4, v5}, Landroidx/fragment/app/j0;->a(Ljava/lang/Runnable;)V

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_0
    new-instance p1, Ljava/util/HashMap;

    .line 86
    .line 87
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 91
    .line 92
    .line 93
    move-result-object p2

    .line 94
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 95
    .line 96
    .line 97
    move-result v4

    .line 98
    if-nez v4, :cond_8

    .line 99
    .line 100
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 101
    .line 102
    .line 103
    move-result-object p2

    .line 104
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 105
    .line 106
    .line 107
    move-result v1

    .line 108
    if-eqz v1, :cond_1

    .line 109
    .line 110
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    check-cast v1, Landroidx/fragment/app/i;

    .line 115
    .line 116
    invoke-virtual {v1}, Landroidx/fragment/app/h;->o()Landroidx/fragment/app/j0;

    .line 117
    .line 118
    .line 119
    move-result-object v4

    .line 120
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 121
    .line 122
    invoke-virtual {p1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v1}, Landroidx/fragment/app/h;->a()V

    .line 126
    .line 127
    .line 128
    goto :goto_1

    .line 129
    :cond_1
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 130
    .line 131
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    move-result p1

    .line 135
    invoke-virtual {p0}, Landroidx/fragment/app/k0;->f()Landroid/view/ViewGroup;

    .line 136
    .line 137
    .line 138
    move-result-object p2

    .line 139
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    new-instance v4, Ljava/util/ArrayList;

    .line 144
    .line 145
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 153
    .line 154
    .line 155
    move-result v5

    .line 156
    if-nez v5, :cond_7

    .line 157
    .line 158
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 163
    .line 164
    .line 165
    move-result v4

    .line 166
    if-eqz v4, :cond_5

    .line 167
    .line 168
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object v4

    .line 172
    check-cast v4, Landroidx/fragment/app/g;

    .line 173
    .line 174
    invoke-virtual {v4}, Landroidx/fragment/app/h;->o()Landroidx/fragment/app/j0;

    .line 175
    .line 176
    .line 177
    move-result-object v5

    .line 178
    invoke-virtual {v5}, Landroidx/fragment/app/j0;->f()Landroidx/fragment/app/u;

    .line 179
    .line 180
    .line 181
    move-result-object v6

    .line 182
    if-eqz p1, :cond_3

    .line 183
    .line 184
    const/4 v5, 0x2

    .line 185
    invoke-static {v5}, Landroidx/fragment/app/T;->f0(I)Z

    .line 186
    .line 187
    .line 188
    move-result v5

    .line 189
    if-eqz v5, :cond_2

    .line 190
    .line 191
    new-instance v5, Ljava/lang/StringBuilder;

    .line 192
    .line 193
    const-string v7, "Ignoring Animation set on "

    .line 194
    .line 195
    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    const-string v6, " as Animations cannot run alongside Transitions."

    .line 202
    .line 203
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v5

    .line 210
    const-string v6, "FragmentManager"

    .line 211
    .line 212
    invoke-static {v6, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    .line 214
    .line 215
    :cond_2
    invoke-virtual {v4}, Landroidx/fragment/app/h;->a()V

    .line 216
    .line 217
    .line 218
    goto :goto_2

    .line 219
    :cond_3
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 220
    .line 221
    .line 222
    invoke-virtual {v4, v1}, Landroidx/fragment/app/g;->q(Landroid/content/Context;)Landroidx/fragment/app/z;

    .line 223
    .line 224
    .line 225
    move-result-object p1

    .line 226
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 227
    .line 228
    .line 229
    iget-object p1, p1, Landroidx/fragment/app/z;->a:Landroid/view/animation/Animation;

    .line 230
    .line 231
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 232
    .line 233
    .line 234
    invoke-virtual {v5}, Landroidx/fragment/app/j0;->e()I

    .line 235
    .line 236
    .line 237
    move-result v0

    .line 238
    const/4 v1, 0x1

    .line 239
    if-eq v0, v1, :cond_4

    .line 240
    .line 241
    throw v2

    .line 242
    :cond_4
    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V

    .line 243
    .line 244
    .line 245
    new-instance v0, Landroidx/fragment/app/A;

    .line 246
    .line 247
    invoke-direct {v0, p1, p2, v2}, Landroidx/fragment/app/A;-><init>(Landroid/view/animation/Animation;Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 248
    .line 249
    .line 250
    new-instance p1, Landroidx/fragment/app/f;

    .line 251
    .line 252
    invoke-direct {p1, v2, p2, v4, p0}, Landroidx/fragment/app/f;-><init>(Landroid/view/View;Landroid/view/ViewGroup;Landroidx/fragment/app/g;Landroidx/fragment/app/j;)V

    .line 253
    .line 254
    .line 255
    invoke-virtual {v0, p1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 256
    .line 257
    .line 258
    throw v2

    .line 259
    :cond_5
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 260
    .line 261
    .line 262
    move-result-object p1

    .line 263
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 264
    .line 265
    .line 266
    move-result p2

    .line 267
    if-eqz p2, :cond_6

    .line 268
    .line 269
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 270
    .line 271
    .line 272
    move-result-object p2

    .line 273
    check-cast p2, Landroidx/fragment/app/j0;

    .line 274
    .line 275
    invoke-virtual {p2}, Landroidx/fragment/app/j0;->f()Landroidx/fragment/app/u;

    .line 276
    .line 277
    .line 278
    move-result-object v0

    .line 279
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 280
    .line 281
    .line 282
    invoke-virtual {p2}, Landroidx/fragment/app/j0;->e()I

    .line 283
    .line 284
    .line 285
    move-result p2

    .line 286
    invoke-static {p2, v2}, Landroidx/fragment/app/i0;->a(ILandroid/view/View;)V

    .line 287
    .line 288
    .line 289
    goto :goto_3

    .line 290
    :cond_6
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 291
    .line 292
    .line 293
    return-void

    .line 294
    :cond_7
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 295
    .line 296
    .line 297
    move-result-object p1

    .line 298
    check-cast p1, Landroidx/fragment/app/g;

    .line 299
    .line 300
    invoke-virtual {p1}, Landroidx/fragment/app/h;->p()Z

    .line 301
    .line 302
    .line 303
    throw v2

    .line 304
    :cond_8
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 305
    .line 306
    .line 307
    move-result-object p1

    .line 308
    check-cast p1, Landroidx/fragment/app/i;

    .line 309
    .line 310
    invoke-virtual {p1}, Landroidx/fragment/app/h;->p()Z

    .line 311
    .line 312
    .line 313
    throw v2

    .line 314
    :cond_9
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 315
    .line 316
    .line 317
    move-result-object p1

    .line 318
    check-cast p1, Landroidx/fragment/app/j0;

    .line 319
    .line 320
    invoke-virtual {p1}, Landroidx/fragment/app/j0;->f()Landroidx/fragment/app/u;

    .line 321
    .line 322
    .line 323
    move-result-object p1

    .line 324
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 325
    .line 326
    .line 327
    invoke-static {v2}, Landroidx/fragment/app/i0;->c(Landroid/view/View;)I

    .line 328
    .line 329
    .line 330
    throw v2
.end method
