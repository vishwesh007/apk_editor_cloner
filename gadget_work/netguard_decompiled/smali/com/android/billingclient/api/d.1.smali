.class public final Lcom/android/billingclient/api/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/ArrayList;

.field private b:Lcom/android/billingclient/api/e;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/billingclient/api/e;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/android/billingclient/api/e;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lcom/android/billingclient/api/e;->b(Lcom/android/billingclient/api/e;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/android/billingclient/api/d;->b:Lcom/android/billingclient/api/e;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final a()Lcom/android/billingclient/api/g;
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/d;->a:Ljava/util/ArrayList;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    if-eqz v0, :cond_c

    .line 17
    .line 18
    const/4 v3, 0x0

    .line 19
    if-eqz v0, :cond_b

    .line 20
    .line 21
    iget-object v4, p0, Lcom/android/billingclient/api/d;->a:Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    if-nez v3, :cond_a

    .line 28
    .line 29
    iget-object v3, p0, Lcom/android/billingclient/api/d;->a:Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    if-le v3, v1, :cond_6

    .line 36
    .line 37
    iget-object v3, p0, Lcom/android/billingclient/api/d;->a:Ljava/util/ArrayList;

    .line 38
    .line 39
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    check-cast v3, Lcom/android/billingclient/api/j;

    .line 44
    .line 45
    invoke-virtual {v3}, Lcom/android/billingclient/api/j;->b()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    iget-object v5, p0, Lcom/android/billingclient/api/d;->a:Ljava/util/ArrayList;

    .line 50
    .line 51
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 52
    .line 53
    .line 54
    move-result v6

    .line 55
    const/4 v7, 0x0

    .line 56
    :goto_1
    const-string v8, "play_pass_subs"

    .line 57
    .line 58
    if-ge v7, v6, :cond_3

    .line 59
    .line 60
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v9

    .line 64
    check-cast v9, Lcom/android/billingclient/api/j;

    .line 65
    .line 66
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v10

    .line 70
    if-nez v10, :cond_2

    .line 71
    .line 72
    invoke-virtual {v9}, Lcom/android/billingclient/api/j;->b()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v10

    .line 76
    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v8

    .line 80
    if-nez v8, :cond_2

    .line 81
    .line 82
    invoke-virtual {v9}, Lcom/android/billingclient/api/j;->b()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v8

    .line 86
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result v8

    .line 90
    if-eqz v8, :cond_1

    .line 91
    .line 92
    goto :goto_2

    .line 93
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 94
    .line 95
    const-string v1, "SKUs should have the same type."

    .line 96
    .line 97
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    throw v0

    .line 101
    :cond_2
    :goto_2
    add-int/lit8 v7, v7, 0x1

    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_3
    invoke-virtual {v3}, Lcom/android/billingclient/api/j;->f()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v3

    .line 108
    iget-object v5, p0, Lcom/android/billingclient/api/d;->a:Ljava/util/ArrayList;

    .line 109
    .line 110
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 111
    .line 112
    .line 113
    move-result v6

    .line 114
    const/4 v7, 0x0

    .line 115
    :goto_3
    if-ge v7, v6, :cond_6

    .line 116
    .line 117
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v9

    .line 121
    check-cast v9, Lcom/android/billingclient/api/j;

    .line 122
    .line 123
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    move-result v10

    .line 127
    if-nez v10, :cond_5

    .line 128
    .line 129
    invoke-virtual {v9}, Lcom/android/billingclient/api/j;->b()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v10

    .line 133
    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    move-result v10

    .line 137
    if-nez v10, :cond_5

    .line 138
    .line 139
    invoke-virtual {v9}, Lcom/android/billingclient/api/j;->f()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v9

    .line 143
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    move-result v9

    .line 147
    if-eqz v9, :cond_4

    .line 148
    .line 149
    goto :goto_4

    .line 150
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 151
    .line 152
    const-string v1, "All SKUs must have the same package name."

    .line 153
    .line 154
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    throw v0

    .line 158
    :cond_5
    :goto_4
    add-int/lit8 v7, v7, 0x1

    .line 159
    .line 160
    goto :goto_3

    .line 161
    :cond_6
    new-instance v3, Lcom/android/billingclient/api/g;

    .line 162
    .line 163
    invoke-direct {v3}, Lcom/android/billingclient/api/g;-><init>()V

    .line 164
    .line 165
    .line 166
    if-eqz v0, :cond_7

    .line 167
    .line 168
    iget-object v0, p0, Lcom/android/billingclient/api/d;->a:Ljava/util/ArrayList;

    .line 169
    .line 170
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    check-cast v0, Lcom/android/billingclient/api/j;

    .line 175
    .line 176
    invoke-virtual {v0}, Lcom/android/billingclient/api/j;->f()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 181
    .line 182
    .line 183
    move-result v0

    .line 184
    if-eqz v0, :cond_8

    .line 185
    .line 186
    :cond_7
    const/4 v1, 0x0

    .line 187
    :cond_8
    invoke-static {v3, v1}, Lcom/android/billingclient/api/g;->j(Lcom/android/billingclient/api/g;Z)V

    .line 188
    .line 189
    .line 190
    invoke-static {v3}, Lcom/android/billingclient/api/g;->l(Lcom/android/billingclient/api/g;)V

    .line 191
    .line 192
    .line 193
    invoke-static {v3}, Lcom/android/billingclient/api/g;->m(Lcom/android/billingclient/api/g;)V

    .line 194
    .line 195
    .line 196
    iget-object v0, p0, Lcom/android/billingclient/api/d;->b:Lcom/android/billingclient/api/e;

    .line 197
    .line 198
    invoke-virtual {v0}, Lcom/android/billingclient/api/e;->a()Lcom/android/billingclient/api/f;

    .line 199
    .line 200
    .line 201
    move-result-object v0

    .line 202
    invoke-static {v3, v0}, Lcom/android/billingclient/api/g;->p(Lcom/android/billingclient/api/g;Lcom/android/billingclient/api/f;)V

    .line 203
    .line 204
    .line 205
    iget-object v0, p0, Lcom/android/billingclient/api/d;->a:Ljava/util/ArrayList;

    .line 206
    .line 207
    if-eqz v0, :cond_9

    .line 208
    .line 209
    new-instance v1, Ljava/util/ArrayList;

    .line 210
    .line 211
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 212
    .line 213
    .line 214
    goto :goto_5

    .line 215
    :cond_9
    new-instance v1, Ljava/util/ArrayList;

    .line 216
    .line 217
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 218
    .line 219
    .line 220
    :goto_5
    invoke-static {v3, v1}, Lcom/android/billingclient/api/g;->o(Lcom/android/billingclient/api/g;Ljava/util/ArrayList;)V

    .line 221
    .line 222
    .line 223
    invoke-static {v3}, Lcom/android/billingclient/api/g;->k(Lcom/android/billingclient/api/g;)V

    .line 224
    .line 225
    .line 226
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/T;->m()Lcom/google/android/gms/internal/play_billing/T;

    .line 227
    .line 228
    .line 229
    move-result-object v0

    .line 230
    invoke-static {v3, v0}, Lcom/android/billingclient/api/g;->n(Lcom/android/billingclient/api/g;Lcom/google/android/gms/internal/play_billing/T;)V

    .line 231
    .line 232
    .line 233
    return-object v3

    .line 234
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 235
    .line 236
    const-string v1, "SKU cannot be null."

    .line 237
    .line 238
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 239
    .line 240
    .line 241
    throw v0

    .line 242
    :cond_b
    new-instance v0, LB/v;

    .line 243
    .line 244
    invoke-direct {v0}, LB/v;-><init>()V

    .line 245
    .line 246
    .line 247
    invoke-static {v0}, LB/i;->d(LB/v;)V

    .line 248
    .line 249
    .line 250
    throw v3

    .line 251
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 252
    .line 253
    const-string v1, "Details of the products must be provided."

    .line 254
    .line 255
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 256
    .line 257
    .line 258
    throw v0
.end method

.method public final b(Lcom/android/billingclient/api/j;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/billingclient/api/d;->a:Ljava/util/ArrayList;

    .line 10
    .line 11
    return-void
.end method
