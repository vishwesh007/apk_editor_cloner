.class public final Lcom/google/android/gms/internal/play_billing/X;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/android/gms/internal/play_billing/X;->a:Ljava/util/ArrayList;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/play_billing/j0;)V
    .locals 3

    .line 1
    iget-object v0, p1, Lcom/google/android/gms/internal/play_billing/j0;->d:Lcom/google/android/gms/internal/play_billing/L;

    .line 2
    .line 3
    iget-object v1, p1, Lcom/google/android/gms/internal/play_billing/j0;->e:Lcom/google/android/gms/internal/play_billing/L;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/play_billing/L;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    xor-int/2addr v0, v1

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/X;->a:Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 20
    .line 21
    new-array v1, v1, [Ljava/lang/Object;

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    aput-object p1, v1, v2

    .line 25
    .line 26
    const-string p1, "range must not be empty, but was %s"

    .line 27
    .line 28
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/play_billing/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    throw v0
.end method

.method final b(Lcom/google/android/gms/internal/play_billing/X;)V
    .locals 1

    .line 1
    iget-object p1, p1, Lcom/google/android/gms/internal/play_billing/X;->a:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/google/android/gms/internal/play_billing/j0;

    .line 18
    .line 19
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/play_billing/X;->a(Lcom/google/android/gms/internal/play_billing/j0;)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    return-void
.end method

.method public final c()Lcom/google/android/gms/internal/play_billing/Y;
    .locals 8

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/play_billing/O;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/play_billing/X;->a:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/play_billing/O;-><init>(I)V

    .line 10
    .line 11
    .line 12
    sget-object v2, Lcom/google/android/gms/internal/play_billing/i0;->d:Lcom/google/android/gms/internal/play_billing/h0;

    .line 13
    .line 14
    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    instance-of v2, v1, Lcom/google/android/gms/internal/play_billing/c0;

    .line 22
    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    check-cast v1, Lcom/google/android/gms/internal/play_billing/c0;

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    new-instance v2, Lcom/google/android/gms/internal/play_billing/c0;

    .line 29
    .line 30
    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/play_billing/c0;-><init>(Ljava/util/Iterator;)V

    .line 31
    .line 32
    .line 33
    move-object v1, v2

    .line 34
    :goto_0
    invoke-virtual {v1}, Lcom/google/android/gms/internal/play_billing/c0;->hasNext()Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    const/4 v3, 0x0

    .line 39
    const/4 v4, 0x1

    .line 40
    if-eqz v2, :cond_3

    .line 41
    .line 42
    invoke-virtual {v1}, Lcom/google/android/gms/internal/play_billing/c0;->next()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    check-cast v2, Lcom/google/android/gms/internal/play_billing/j0;

    .line 47
    .line 48
    :goto_1
    invoke-virtual {v1}, Lcom/google/android/gms/internal/play_billing/c0;->hasNext()Z

    .line 49
    .line 50
    .line 51
    move-result v5

    .line 52
    if-eqz v5, :cond_2

    .line 53
    .line 54
    invoke-virtual {v1}, Lcom/google/android/gms/internal/play_billing/c0;->a()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v5

    .line 58
    check-cast v5, Lcom/google/android/gms/internal/play_billing/j0;

    .line 59
    .line 60
    iget-object v6, v2, Lcom/google/android/gms/internal/play_billing/j0;->d:Lcom/google/android/gms/internal/play_billing/L;

    .line 61
    .line 62
    iget-object v7, v5, Lcom/google/android/gms/internal/play_billing/j0;->e:Lcom/google/android/gms/internal/play_billing/L;

    .line 63
    .line 64
    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/play_billing/L;->f(Lcom/google/android/gms/internal/play_billing/L;)I

    .line 65
    .line 66
    .line 67
    move-result v6

    .line 68
    if-gtz v6, :cond_2

    .line 69
    .line 70
    iget-object v6, v5, Lcom/google/android/gms/internal/play_billing/j0;->d:Lcom/google/android/gms/internal/play_billing/L;

    .line 71
    .line 72
    iget-object v7, v2, Lcom/google/android/gms/internal/play_billing/j0;->e:Lcom/google/android/gms/internal/play_billing/L;

    .line 73
    .line 74
    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/play_billing/L;->f(Lcom/google/android/gms/internal/play_billing/L;)I

    .line 75
    .line 76
    .line 77
    move-result v6

    .line 78
    if-gtz v6, :cond_2

    .line 79
    .line 80
    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/play_billing/j0;->b(Lcom/google/android/gms/internal/play_billing/j0;)Lcom/google/android/gms/internal/play_billing/j0;

    .line 81
    .line 82
    .line 83
    move-result-object v6

    .line 84
    iget-object v7, v6, Lcom/google/android/gms/internal/play_billing/j0;->d:Lcom/google/android/gms/internal/play_billing/L;

    .line 85
    .line 86
    iget-object v6, v6, Lcom/google/android/gms/internal/play_billing/j0;->e:Lcom/google/android/gms/internal/play_billing/L;

    .line 87
    .line 88
    invoke-virtual {v7, v6}, Lcom/google/android/gms/internal/play_billing/L;->equals(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result v6

    .line 92
    if-eqz v6, :cond_1

    .line 93
    .line 94
    invoke-virtual {v1}, Lcom/google/android/gms/internal/play_billing/c0;->next()Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v5

    .line 98
    check-cast v5, Lcom/google/android/gms/internal/play_billing/j0;

    .line 99
    .line 100
    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/play_billing/j0;->c(Lcom/google/android/gms/internal/play_billing/j0;)Lcom/google/android/gms/internal/play_billing/j0;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    goto :goto_1

    .line 105
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 106
    .line 107
    const/4 v1, 0x2

    .line 108
    new-array v1, v1, [Ljava/lang/Object;

    .line 109
    .line 110
    aput-object v2, v1, v3

    .line 111
    .line 112
    aput-object v5, v1, v4

    .line 113
    .line 114
    const-string v2, "Overlapping ranges not permitted but found %s overlapping %s"

    .line 115
    .line 116
    invoke-static {v2, v1}, Lcom/google/android/gms/internal/play_billing/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    throw v0

    .line 124
    :cond_2
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/play_billing/M;->f(Ljava/lang/Object;)V

    .line 125
    .line 126
    .line 127
    goto :goto_0

    .line 128
    :cond_3
    iput-boolean v4, v0, Lcom/google/android/gms/internal/play_billing/M;->c:Z

    .line 129
    .line 130
    iget-object v1, v0, Lcom/google/android/gms/internal/play_billing/M;->a:[Ljava/lang/Object;

    .line 131
    .line 132
    iget v0, v0, Lcom/google/android/gms/internal/play_billing/M;->b:I

    .line 133
    .line 134
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/play_billing/T;->l(I[Ljava/lang/Object;)Lcom/google/android/gms/internal/play_billing/T;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 139
    .line 140
    .line 141
    move-result v1

    .line 142
    if-eqz v1, :cond_4

    .line 143
    .line 144
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/Y;->c()Lcom/google/android/gms/internal/play_billing/Y;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    return-object v0

    .line 149
    :cond_4
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    .line 150
    .line 151
    .line 152
    move-result v1

    .line 153
    if-ne v1, v4, :cond_8

    .line 154
    .line 155
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/play_billing/T;->n(I)Lcom/google/android/gms/internal/play_billing/x0;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    check-cast v1, Lcom/google/android/gms/internal/play_billing/t;

    .line 160
    .line 161
    invoke-virtual {v1}, Lcom/google/android/gms/internal/play_billing/t;->next()Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object v2

    .line 165
    invoke-virtual {v1}, Lcom/google/android/gms/internal/play_billing/t;->hasNext()Z

    .line 166
    .line 167
    .line 168
    move-result v4

    .line 169
    if-nez v4, :cond_5

    .line 170
    .line 171
    check-cast v2, Lcom/google/android/gms/internal/play_billing/j0;

    .line 172
    .line 173
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/j0;->a()Lcom/google/android/gms/internal/play_billing/j0;

    .line 174
    .line 175
    .line 176
    move-result-object v1

    .line 177
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/play_billing/j0;->equals(Ljava/lang/Object;)Z

    .line 178
    .line 179
    .line 180
    move-result v1

    .line 181
    if-eqz v1, :cond_8

    .line 182
    .line 183
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/Y;->b()Lcom/google/android/gms/internal/play_billing/Y;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    return-object v0

    .line 188
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 189
    .line 190
    const-string v4, "expected one element but was: <"

    .line 191
    .line 192
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    :goto_2
    const/4 v2, 0x4

    .line 199
    if-ge v3, v2, :cond_6

    .line 200
    .line 201
    invoke-virtual {v1}, Lcom/google/android/gms/internal/play_billing/t;->hasNext()Z

    .line 202
    .line 203
    .line 204
    move-result v2

    .line 205
    if-eqz v2, :cond_6

    .line 206
    .line 207
    const-string v2, ", "

    .line 208
    .line 209
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    invoke-virtual {v1}, Lcom/google/android/gms/internal/play_billing/t;->next()Ljava/lang/Object;

    .line 213
    .line 214
    .line 215
    move-result-object v2

    .line 216
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    add-int/lit8 v3, v3, 0x1

    .line 220
    .line 221
    goto :goto_2

    .line 222
    :cond_6
    invoke-virtual {v1}, Lcom/google/android/gms/internal/play_billing/t;->hasNext()Z

    .line 223
    .line 224
    .line 225
    move-result v1

    .line 226
    if-nez v1, :cond_7

    .line 227
    .line 228
    goto :goto_3

    .line 229
    :cond_7
    const-string v1, ", ..."

    .line 230
    .line 231
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    :goto_3
    const/16 v1, 0x3e

    .line 235
    .line 236
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 237
    .line 238
    .line 239
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v0

    .line 243
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 244
    .line 245
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    throw v1

    .line 249
    :cond_8
    new-instance v1, Lcom/google/android/gms/internal/play_billing/Y;

    .line 250
    .line 251
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/play_billing/Y;-><init>(Lcom/google/android/gms/internal/play_billing/T;)V

    .line 252
    .line 253
    .line 254
    return-object v1
.end method
