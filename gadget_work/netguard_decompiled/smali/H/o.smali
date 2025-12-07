.class public final LH/o;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I


# direct methods
.method constructor <init>(LH/m;)V
    .locals 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p1, LH/m;->a:Landroid/content/Context;

    .line 5
    .line 6
    iget-object v1, p1, LH/m;->b:Landroid/app/ActivityManager;

    .line 7
    .line 8
    invoke-virtual {v1}, Landroid/app/ActivityManager;->isLowRamDevice()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    const/high16 v1, 0x200000

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/high16 v1, 0x400000

    .line 18
    .line 19
    :goto_0
    iput v1, p0, LH/o;->c:I

    .line 20
    .line 21
    iget-object v2, p1, LH/m;->b:Landroid/app/ActivityManager;

    .line 22
    .line 23
    invoke-virtual {v2}, Landroid/app/ActivityManager;->getMemoryClass()I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    mul-int/lit16 v3, v3, 0x400

    .line 28
    .line 29
    mul-int/lit16 v3, v3, 0x400

    .line 30
    .line 31
    invoke-virtual {v2}, Landroid/app/ActivityManager;->isLowRamDevice()Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    int-to-float v3, v3

    .line 36
    if-eqz v2, :cond_1

    .line 37
    .line 38
    const v2, 0x3ea8f5c3    # 0.33f

    .line 39
    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    const v2, 0x3ecccccd    # 0.4f

    .line 43
    .line 44
    .line 45
    :goto_1
    mul-float v3, v3, v2

    .line 46
    .line 47
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    iget-object v3, p1, LH/m;->c:LH/n;

    .line 52
    .line 53
    invoke-virtual {v3}, LH/n;->b()I

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    iget-object v4, p1, LH/m;->c:LH/n;

    .line 58
    .line 59
    invoke-virtual {v4}, LH/n;->a()I

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    mul-int v3, v3, v4

    .line 64
    .line 65
    mul-int/lit8 v3, v3, 0x4

    .line 66
    .line 67
    int-to-float v3, v3

    .line 68
    iget v4, p1, LH/m;->d:F

    .line 69
    .line 70
    mul-float v4, v4, v3

    .line 71
    .line 72
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    .line 73
    .line 74
    .line 75
    move-result v4

    .line 76
    const/high16 v5, 0x40000000    # 2.0f

    .line 77
    .line 78
    mul-float v3, v3, v5

    .line 79
    .line 80
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    .line 81
    .line 82
    .line 83
    move-result v3

    .line 84
    sub-int v6, v2, v1

    .line 85
    .line 86
    add-int v7, v3, v4

    .line 87
    .line 88
    if-gt v7, v6, :cond_2

    .line 89
    .line 90
    iput v3, p0, LH/o;->b:I

    .line 91
    .line 92
    iput v4, p0, LH/o;->a:I

    .line 93
    .line 94
    goto :goto_2

    .line 95
    :cond_2
    int-to-float v3, v6

    .line 96
    iget v4, p1, LH/m;->d:F

    .line 97
    .line 98
    add-float/2addr v4, v5

    .line 99
    div-float/2addr v3, v4

    .line 100
    mul-float v5, v5, v3

    .line 101
    .line 102
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    .line 103
    .line 104
    .line 105
    move-result v4

    .line 106
    iput v4, p0, LH/o;->b:I

    .line 107
    .line 108
    iget v4, p1, LH/m;->d:F

    .line 109
    .line 110
    mul-float v3, v3, v4

    .line 111
    .line 112
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    .line 113
    .line 114
    .line 115
    move-result v3

    .line 116
    iput v3, p0, LH/o;->a:I

    .line 117
    .line 118
    :goto_2
    const-string v3, "MemorySizeCalculator"

    .line 119
    .line 120
    const/4 v4, 0x3

    .line 121
    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 122
    .line 123
    .line 124
    move-result v4

    .line 125
    if-eqz v4, :cond_4

    .line 126
    .line 127
    new-instance v4, Ljava/lang/StringBuilder;

    .line 128
    .line 129
    const-string v5, "Calculation complete, Calculated memory cache size: "

    .line 130
    .line 131
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    iget v5, p0, LH/o;->b:I

    .line 135
    .line 136
    int-to-long v5, v5

    .line 137
    invoke-static {v0, v5, v6}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v5

    .line 141
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    const-string v5, ", pool size: "

    .line 145
    .line 146
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    iget v5, p0, LH/o;->a:I

    .line 150
    .line 151
    int-to-long v5, v5

    .line 152
    invoke-static {v0, v5, v6}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v5

    .line 156
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    const-string v5, ", byte array size: "

    .line 160
    .line 161
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    int-to-long v5, v1

    .line 165
    invoke-static {v0, v5, v6}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v1

    .line 169
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    const-string v1, ", memory class limited? "

    .line 173
    .line 174
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    if-le v7, v2, :cond_3

    .line 178
    .line 179
    const/4 v1, 0x1

    .line 180
    goto :goto_3

    .line 181
    :cond_3
    const/4 v1, 0x0

    .line 182
    :goto_3
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    const-string v1, ", max size: "

    .line 186
    .line 187
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    int-to-long v1, v2

    .line 191
    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    const-string v0, ", memoryClass: "

    .line 199
    .line 200
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    iget-object v0, p1, LH/m;->b:Landroid/app/ActivityManager;

    .line 204
    .line 205
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getMemoryClass()I

    .line 206
    .line 207
    .line 208
    move-result v0

    .line 209
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    const-string v0, ", isLowMemoryDevice: "

    .line 213
    .line 214
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    iget-object p1, p1, LH/m;->b:Landroid/app/ActivityManager;

    .line 218
    .line 219
    invoke-virtual {p1}, Landroid/app/ActivityManager;->isLowRamDevice()Z

    .line 220
    .line 221
    .line 222
    move-result p1

    .line 223
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object p1

    .line 230
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    .line 232
    .line 233
    :cond_4
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 1
    iget v0, p0, LH/o;->c:I

    .line 2
    .line 3
    return v0
.end method

.method public final b()I
    .locals 1

    .line 1
    iget v0, p0, LH/o;->a:I

    .line 2
    .line 3
    return v0
.end method

.method public final c()I
    .locals 1

    .line 1
    iget v0, p0, LH/o;->b:I

    .line 2
    .line 3
    return v0
.end method
