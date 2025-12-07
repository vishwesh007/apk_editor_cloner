.class final Lp0/N;
.super Lv0/h;
.source "SourceFile"


# instance fields
.field final synthetic a:Lp0/g;


# direct methods
.method public constructor <init>(Lp0/g;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lp0/N;->a:Lp0/g;

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    invoke-direct {p0, p2, p1}, Lv0/h;-><init>(Landroid/os/Looper;I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lp0/N;->a:Lp0/g;

    .line 2
    .line 3
    iget-object v1, v0, Lp0/g;->v:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    const/4 v4, 0x7

    .line 13
    const/4 v5, 0x2

    .line 14
    const/4 v6, 0x1

    .line 15
    if-eq v1, v2, :cond_3

    .line 16
    .line 17
    iget v0, p1, Landroid/os/Message;->what:I

    .line 18
    .line 19
    if-eq v0, v5, :cond_0

    .line 20
    .line 21
    if-eq v0, v6, :cond_0

    .line 22
    .line 23
    if-ne v0, v4, :cond_1

    .line 24
    .line 25
    :cond_0
    const/4 v3, 0x1

    .line 26
    :cond_1
    if-eqz v3, :cond_2

    .line 27
    .line 28
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast p1, Lp0/O;

    .line 31
    .line 32
    invoke-virtual {p1}, Lp0/O;->b()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Lp0/O;->e()V

    .line 36
    .line 37
    .line 38
    :cond_2
    return-void

    .line 39
    :cond_3
    iget v1, p1, Landroid/os/Message;->what:I

    .line 40
    .line 41
    const/4 v2, 0x4

    .line 42
    const/4 v7, 0x5

    .line 43
    if-eq v1, v6, :cond_5

    .line 44
    .line 45
    if-eq v1, v4, :cond_5

    .line 46
    .line 47
    if-ne v1, v2, :cond_4

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_4
    if-ne v1, v7, :cond_6

    .line 51
    .line 52
    :cond_5
    :goto_0
    invoke-virtual {v0}, Lp0/g;->a()Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-eqz v1, :cond_16

    .line 57
    .line 58
    :cond_6
    iget v1, p1, Landroid/os/Message;->what:I

    .line 59
    .line 60
    const/16 v8, 0x8

    .line 61
    .line 62
    const/4 v9, 0x3

    .line 63
    if-ne v1, v2, :cond_a

    .line 64
    .line 65
    new-instance v1, Lm0/a;

    .line 66
    .line 67
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 68
    .line 69
    invoke-direct {v1, p1}, Lm0/a;-><init>(I)V

    .line 70
    .line 71
    .line 72
    invoke-static {v0, v1}, Lp0/g;->I(Lp0/g;Lm0/a;)V

    .line 73
    .line 74
    .line 75
    invoke-static {v0}, Lp0/g;->P(Lp0/g;)Z

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    if-eqz p1, :cond_8

    .line 80
    .line 81
    invoke-static {v0}, Lp0/g;->N(Lp0/g;)Z

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    if-eqz p1, :cond_7

    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_7
    invoke-static {v0, v9}, Lp0/g;->K(Lp0/g;I)V

    .line 89
    .line 90
    .line 91
    return-void

    .line 92
    :cond_8
    :goto_1
    invoke-static {v0}, Lp0/g;->D(Lp0/g;)Lm0/a;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    if-eqz p1, :cond_9

    .line 97
    .line 98
    invoke-static {v0}, Lp0/g;->D(Lp0/g;)Lm0/a;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    goto :goto_2

    .line 103
    :cond_9
    new-instance p1, Lm0/a;

    .line 104
    .line 105
    invoke-direct {p1, v8}, Lm0/a;-><init>(I)V

    .line 106
    .line 107
    .line 108
    :goto_2
    iget-object v0, v0, Lp0/g;->i:Lp0/d;

    .line 109
    .line 110
    invoke-interface {v0, p1}, Lp0/d;->a(Lm0/a;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 114
    .line 115
    .line 116
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 117
    .line 118
    .line 119
    return-void

    .line 120
    :cond_a
    if-ne v1, v7, :cond_c

    .line 121
    .line 122
    invoke-static {v0}, Lp0/g;->D(Lp0/g;)Lm0/a;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    if-eqz p1, :cond_b

    .line 127
    .line 128
    invoke-static {v0}, Lp0/g;->D(Lp0/g;)Lm0/a;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    goto :goto_3

    .line 133
    :cond_b
    new-instance p1, Lm0/a;

    .line 134
    .line 135
    invoke-direct {p1, v8}, Lm0/a;-><init>(I)V

    .line 136
    .line 137
    .line 138
    :goto_3
    iget-object v0, v0, Lp0/g;->i:Lp0/d;

    .line 139
    .line 140
    invoke-interface {v0, p1}, Lp0/d;->a(Lm0/a;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 144
    .line 145
    .line 146
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 147
    .line 148
    .line 149
    return-void

    .line 150
    :cond_c
    const/4 v2, 0x0

    .line 151
    if-ne v1, v9, :cond_e

    .line 152
    .line 153
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 154
    .line 155
    instance-of v3, v1, Landroid/app/PendingIntent;

    .line 156
    .line 157
    if-eqz v3, :cond_d

    .line 158
    .line 159
    move-object v2, v1

    .line 160
    check-cast v2, Landroid/app/PendingIntent;

    .line 161
    .line 162
    :cond_d
    new-instance v1, Lm0/a;

    .line 163
    .line 164
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 165
    .line 166
    invoke-direct {v1, p1, v2}, Lm0/a;-><init>(ILandroid/app/PendingIntent;)V

    .line 167
    .line 168
    .line 169
    iget-object p1, v0, Lp0/g;->i:Lp0/d;

    .line 170
    .line 171
    invoke-interface {p1, v1}, Lp0/d;->a(Lm0/a;)V

    .line 172
    .line 173
    .line 174
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 175
    .line 176
    .line 177
    return-void

    .line 178
    :cond_e
    const/4 v8, 0x6

    .line 179
    if-ne v1, v8, :cond_10

    .line 180
    .line 181
    invoke-static {v0, v7}, Lp0/g;->K(Lp0/g;I)V

    .line 182
    .line 183
    .line 184
    invoke-static {v0}, Lp0/g;->E(Lp0/g;)Lp0/b;

    .line 185
    .line 186
    .line 187
    move-result-object v1

    .line 188
    if-eqz v1, :cond_f

    .line 189
    .line 190
    invoke-static {v0}, Lp0/g;->E(Lp0/g;)Lp0/b;

    .line 191
    .line 192
    .line 193
    move-result-object v1

    .line 194
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 195
    .line 196
    check-cast v1, Lp0/B;

    .line 197
    .line 198
    iget-object v1, v1, Lp0/B;->a:Lo0/e;

    .line 199
    .line 200
    invoke-interface {v1, p1}, Lo0/e;->l(I)V

    .line 201
    .line 202
    .line 203
    :cond_f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 204
    .line 205
    .line 206
    invoke-static {v0, v7, v6, v2}, Lp0/g;->O(Lp0/g;IILandroid/os/IInterface;)Z

    .line 207
    .line 208
    .line 209
    return-void

    .line 210
    :cond_10
    if-ne v1, v5, :cond_12

    .line 211
    .line 212
    invoke-virtual {v0}, Lp0/g;->c()Z

    .line 213
    .line 214
    .line 215
    move-result v0

    .line 216
    if-eqz v0, :cond_11

    .line 217
    .line 218
    goto :goto_4

    .line 219
    :cond_11
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 220
    .line 221
    check-cast p1, Lp0/O;

    .line 222
    .line 223
    invoke-virtual {p1}, Lp0/O;->b()V

    .line 224
    .line 225
    .line 226
    invoke-virtual {p1}, Lp0/O;->e()V

    .line 227
    .line 228
    .line 229
    return-void

    .line 230
    :cond_12
    :goto_4
    iget v0, p1, Landroid/os/Message;->what:I

    .line 231
    .line 232
    if-eq v0, v5, :cond_13

    .line 233
    .line 234
    if-eq v0, v6, :cond_13

    .line 235
    .line 236
    if-ne v0, v4, :cond_14

    .line 237
    .line 238
    :cond_13
    const/4 v3, 0x1

    .line 239
    :cond_14
    if-eqz v3, :cond_15

    .line 240
    .line 241
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 242
    .line 243
    check-cast p1, Lp0/O;

    .line 244
    .line 245
    invoke-virtual {p1}, Lp0/O;->c()V

    .line 246
    .line 247
    .line 248
    return-void

    .line 249
    :cond_15
    const-string p1, "Don\'t know how to handle message: "

    .line 250
    .line 251
    invoke-static {p1, v0}, LB/g;->c(Ljava/lang/String;I)Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object p1

    .line 255
    new-instance v0, Ljava/lang/Exception;

    .line 256
    .line 257
    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    .line 258
    .line 259
    .line 260
    const-string v1, "GmsClient"

    .line 261
    .line 262
    invoke-static {v1, p1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 263
    .line 264
    .line 265
    return-void

    .line 266
    :cond_16
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 267
    .line 268
    check-cast p1, Lp0/O;

    .line 269
    .line 270
    invoke-virtual {p1}, Lp0/O;->b()V

    .line 271
    .line 272
    .line 273
    invoke-virtual {p1}, Lp0/O;->e()V

    .line 274
    .line 275
    .line 276
    return-void
.end method
