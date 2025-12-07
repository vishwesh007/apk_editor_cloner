.class final Lo0/D;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lz0/b;


# instance fields
.field private final a:Lo0/f;

.field private final b:I

.field private final c:Lo0/a;

.field private final d:J

.field private final e:J


# direct methods
.method constructor <init>(Lo0/f;ILo0/a;JJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo0/D;->a:Lo0/f;

    iput p2, p0, Lo0/D;->b:I

    iput-object p3, p0, Lo0/D;->c:Lo0/a;

    iput-wide p4, p0, Lo0/D;->d:J

    iput-wide p6, p0, Lo0/D;->e:J

    return-void
.end method

.method static b(Lo0/f;ILo0/a;)Lo0/D;
    .locals 9

    .line 1
    invoke-virtual {p0}, Lo0/f;->b()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return-object p0

    .line 9
    :cond_0
    invoke-static {}, Lp0/t;->a()Lp0/t;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    new-instance v0, Lo0/D;

    .line 17
    .line 18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 19
    .line 20
    .line 21
    move-result-wide v5

    .line 22
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 23
    .line 24
    .line 25
    move-result-wide v7

    .line 26
    move-object v1, v0

    .line 27
    move-object v2, p0

    .line 28
    move v3, p1

    .line 29
    move-object v4, p2

    .line 30
    invoke-direct/range {v1 .. v8}, Lo0/D;-><init>(Lo0/f;ILo0/a;JJ)V

    .line 31
    .line 32
    .line 33
    return-object v0
.end method


# virtual methods
.method public final a(Landroidx/core/view/accessibility/n;)V
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lo0/D;->a:Lo0/f;

    .line 4
    .line 5
    invoke-virtual {v1}, Lo0/f;->b()Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    goto/16 :goto_4

    .line 12
    .line 13
    :cond_0
    invoke-static {}, Lp0/t;->a()Lp0/t;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    iget-object v2, v0, Lo0/D;->c:Lo0/a;

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Lo0/f;->o(Lo0/a;)Lo0/x;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    if-eqz v1, :cond_6

    .line 27
    .line 28
    invoke-virtual {v1}, Lo0/x;->s()Ln0/e;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    instance-of v2, v2, Lp0/g;

    .line 33
    .line 34
    if-eqz v2, :cond_6

    .line 35
    .line 36
    invoke-virtual {v1}, Lo0/x;->s()Ln0/e;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    check-cast v1, Lp0/g;

    .line 41
    .line 42
    const/4 v2, 0x0

    .line 43
    iget-wide v3, v0, Lo0/D;->d:J

    .line 44
    .line 45
    const-wide/16 v5, 0x0

    .line 46
    .line 47
    cmp-long v7, v3, v5

    .line 48
    .line 49
    if-lez v7, :cond_1

    .line 50
    .line 51
    const/4 v7, 0x1

    .line 52
    goto :goto_0

    .line 53
    :cond_1
    const/4 v7, 0x0

    .line 54
    :goto_0
    invoke-virtual {v1}, Lp0/g;->v()I

    .line 55
    .line 56
    .line 57
    move-result v18

    .line 58
    const/16 v1, 0x64

    .line 59
    .line 60
    const/16 v20, 0x0

    .line 61
    .line 62
    iget-object v14, v0, Lo0/D;->a:Lo0/f;

    .line 63
    .line 64
    invoke-virtual/range {p1 .. p1}, Landroidx/core/view/accessibility/n;->j()Z

    .line 65
    .line 66
    .line 67
    move-result v8

    .line 68
    const/4 v9, -0x1

    .line 69
    if-eqz v8, :cond_2

    .line 70
    .line 71
    const/4 v10, 0x0

    .line 72
    const/4 v11, 0x0

    .line 73
    goto :goto_2

    .line 74
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroidx/core/view/accessibility/n;->h()V

    .line 75
    .line 76
    .line 77
    invoke-virtual/range {p1 .. p1}, Landroidx/core/view/accessibility/n;->f()Ljava/lang/Exception;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    instance-of v8, v2, Ln0/g;

    .line 82
    .line 83
    if-eqz v8, :cond_4

    .line 84
    .line 85
    check-cast v2, Ln0/g;

    .line 86
    .line 87
    invoke-virtual {v2}, Ln0/g;->a()Lcom/google/android/gms/common/api/Status;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    invoke-virtual {v2}, Lcom/google/android/gms/common/api/Status;->c()I

    .line 92
    .line 93
    .line 94
    move-result v8

    .line 95
    invoke-virtual {v2}, Lcom/google/android/gms/common/api/Status;->b()Lm0/a;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    if-nez v2, :cond_3

    .line 100
    .line 101
    move v2, v8

    .line 102
    goto :goto_1

    .line 103
    :cond_3
    invoke-virtual {v2}, Lm0/a;->b()I

    .line 104
    .line 105
    .line 106
    move-result v2

    .line 107
    move v11, v2

    .line 108
    move v10, v8

    .line 109
    goto :goto_2

    .line 110
    :cond_4
    const/16 v2, 0x65

    .line 111
    .line 112
    :goto_1
    move v10, v2

    .line 113
    const/4 v11, -0x1

    .line 114
    :goto_2
    if-eqz v7, :cond_5

    .line 115
    .line 116
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 117
    .line 118
    .line 119
    move-result-wide v5

    .line 120
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 121
    .line 122
    .line 123
    move-result-wide v7

    .line 124
    iget-wide v12, v0, Lo0/D;->e:J

    .line 125
    .line 126
    sub-long/2addr v7, v12

    .line 127
    long-to-int v2, v7

    .line 128
    move/from16 v19, v2

    .line 129
    .line 130
    move-wide v12, v3

    .line 131
    goto :goto_3

    .line 132
    :cond_5
    move-wide v12, v5

    .line 133
    const/16 v19, -0x1

    .line 134
    .line 135
    :goto_3
    iget v9, v0, Lo0/D;->b:I

    .line 136
    .line 137
    new-instance v2, Lp0/p;

    .line 138
    .line 139
    const/16 v16, 0x0

    .line 140
    .line 141
    const/16 v17, 0x0

    .line 142
    .line 143
    move-object v8, v2

    .line 144
    move-object v3, v14

    .line 145
    move-wide v14, v5

    .line 146
    invoke-direct/range {v8 .. v19}, Lp0/p;-><init>(IIIJJLjava/lang/String;Ljava/lang/String;II)V

    .line 147
    .line 148
    .line 149
    const/16 v4, 0x1388

    .line 150
    .line 151
    int-to-long v11, v4

    .line 152
    move-object v8, v3

    .line 153
    move-object v9, v2

    .line 154
    move/from16 v10, v20

    .line 155
    .line 156
    move v13, v1

    .line 157
    invoke-virtual/range {v8 .. v13}, Lo0/f;->w(Lp0/p;IJI)V

    .line 158
    .line 159
    .line 160
    :cond_6
    :goto_4
    return-void
.end method
