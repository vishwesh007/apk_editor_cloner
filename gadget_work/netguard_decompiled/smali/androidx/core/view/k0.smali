.class final Landroidx/core/view/k0;
.super LK0/i;
.source "SourceFile"

# interfaces
.implements LO0/p;


# annotations
.annotation runtime LK0/e;
    c = "androidx.core.view.ViewGroupKt$descendants$1"
    f = "ViewGroup.kt"
    l = {
        0x77,
        0x79
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field f:Landroid/view/ViewGroup;

.field g:Landroid/view/View;

.field h:I

.field i:I

.field j:I

.field private synthetic k:Ljava/lang/Object;

.field final synthetic l:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Landroid/view/ViewGroup;LI0/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/core/view/k0;->l:Landroid/view/ViewGroup;

    invoke-direct {p0, p2}, LK0/i;-><init>(LI0/e;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;LI0/e;)LI0/e;
    .locals 2

    .line 1
    new-instance v0, Landroidx/core/view/k0;

    iget-object v1, p0, Landroidx/core/view/k0;->l:Landroid/view/ViewGroup;

    invoke-direct {v0, v1, p2}, Landroidx/core/view/k0;-><init>(Landroid/view/ViewGroup;LI0/e;)V

    iput-object p1, v0, Landroidx/core/view/k0;->k:Ljava/lang/Object;

    return-object v0
.end method

.method public final d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, LU0/d;

    .line 2
    .line 3
    check-cast p2, LI0/e;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Landroidx/core/view/k0;->a(Ljava/lang/Object;LI0/e;)LI0/e;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Landroidx/core/view/k0;

    .line 10
    .line 11
    sget-object p2, LG0/j;->a:LG0/j;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroidx/core/view/k0;->h(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public final h(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    .line 1
    sget-object v0, LJ0/a;->d:LJ0/a;

    .line 2
    .line 3
    iget v1, p0, Landroidx/core/view/k0;->j:I

    .line 4
    .line 5
    sget-object v2, LG0/j;->a:LG0/j;

    .line 6
    .line 7
    const/4 v3, 0x2

    .line 8
    const/4 v4, 0x1

    .line 9
    if-eqz v1, :cond_2

    .line 10
    .line 11
    if-eq v1, v4, :cond_1

    .line 12
    .line 13
    if-ne v1, v3, :cond_0

    .line 14
    .line 15
    iget v1, p0, Landroidx/core/view/k0;->i:I

    .line 16
    .line 17
    iget v5, p0, Landroidx/core/view/k0;->h:I

    .line 18
    .line 19
    iget-object v6, p0, Landroidx/core/view/k0;->f:Landroid/view/ViewGroup;

    .line 20
    .line 21
    iget-object v7, p0, Landroidx/core/view/k0;->k:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v7, LU0/d;

    .line 24
    .line 25
    invoke-static {p1}, LG0/a;->c(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    move-object p1, p0

    .line 29
    move-object v9, v0

    .line 30
    goto/16 :goto_3

    .line 31
    .line 32
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 33
    .line 34
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 35
    .line 36
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    throw p1

    .line 40
    :cond_1
    iget v1, p0, Landroidx/core/view/k0;->i:I

    .line 41
    .line 42
    iget v5, p0, Landroidx/core/view/k0;->h:I

    .line 43
    .line 44
    iget-object v6, p0, Landroidx/core/view/k0;->g:Landroid/view/View;

    .line 45
    .line 46
    iget-object v7, p0, Landroidx/core/view/k0;->f:Landroid/view/ViewGroup;

    .line 47
    .line 48
    iget-object v8, p0, Landroidx/core/view/k0;->k:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast v8, LU0/d;

    .line 51
    .line 52
    invoke-static {p1}, LG0/a;->c(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    move-object p1, p0

    .line 56
    move-object v9, v0

    .line 57
    goto :goto_1

    .line 58
    :cond_2
    invoke-static {p1}, LG0/a;->c(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    iget-object p1, p0, Landroidx/core/view/k0;->k:Ljava/lang/Object;

    .line 62
    .line 63
    check-cast p1, LU0/d;

    .line 64
    .line 65
    iget-object v1, p0, Landroidx/core/view/k0;->l:Landroid/view/ViewGroup;

    .line 66
    .line 67
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 68
    .line 69
    .line 70
    move-result v5

    .line 71
    const/4 v6, 0x0

    .line 72
    move-object v7, p0

    .line 73
    move-object v8, v0

    .line 74
    :goto_0
    if-ge v6, v5, :cond_7

    .line 75
    .line 76
    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 77
    .line 78
    .line 79
    move-result-object v9

    .line 80
    const-string v10, "getChildAt(index)"

    .line 81
    .line 82
    invoke-static {v9, v10}, LP0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    iput-object p1, v7, Landroidx/core/view/k0;->k:Ljava/lang/Object;

    .line 86
    .line 87
    iput-object v1, v7, Landroidx/core/view/k0;->f:Landroid/view/ViewGroup;

    .line 88
    .line 89
    iput-object v9, v7, Landroidx/core/view/k0;->g:Landroid/view/View;

    .line 90
    .line 91
    iput v6, v7, Landroidx/core/view/k0;->h:I

    .line 92
    .line 93
    iput v5, v7, Landroidx/core/view/k0;->i:I

    .line 94
    .line 95
    iput v4, v7, Landroidx/core/view/k0;->j:I

    .line 96
    .line 97
    invoke-virtual {p1, v9, v7}, LU0/d;->a(Landroid/view/View;LI0/e;)V

    .line 98
    .line 99
    .line 100
    if-ne v0, v8, :cond_3

    .line 101
    .line 102
    return-object v8

    .line 103
    :cond_3
    move-object v12, v8

    .line 104
    move-object v8, p1

    .line 105
    move-object p1, v7

    .line 106
    move-object v7, v1

    .line 107
    move v1, v5

    .line 108
    move v5, v6

    .line 109
    move-object v6, v9

    .line 110
    move-object v9, v12

    .line 111
    :goto_1
    instance-of v10, v6, Landroid/view/ViewGroup;

    .line 112
    .line 113
    if-eqz v10, :cond_6

    .line 114
    .line 115
    check-cast v6, Landroid/view/ViewGroup;

    .line 116
    .line 117
    const-string v10, "<this>"

    .line 118
    .line 119
    invoke-static {v6, v10}, LP0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    new-instance v10, Landroidx/core/view/k0;

    .line 123
    .line 124
    const/4 v11, 0x0

    .line 125
    invoke-direct {v10, v6, v11}, Landroidx/core/view/k0;-><init>(Landroid/view/ViewGroup;LI0/e;)V

    .line 126
    .line 127
    .line 128
    new-instance v6, LU0/f;

    .line 129
    .line 130
    invoke-direct {v6, v10}, LU0/f;-><init>(LO0/p;)V

    .line 131
    .line 132
    .line 133
    iput-object v8, p1, Landroidx/core/view/k0;->k:Ljava/lang/Object;

    .line 134
    .line 135
    iput-object v7, p1, Landroidx/core/view/k0;->f:Landroid/view/ViewGroup;

    .line 136
    .line 137
    iput-object v11, p1, Landroidx/core/view/k0;->g:Landroid/view/View;

    .line 138
    .line 139
    iput v5, p1, Landroidx/core/view/k0;->h:I

    .line 140
    .line 141
    iput v1, p1, Landroidx/core/view/k0;->i:I

    .line 142
    .line 143
    iput v3, p1, Landroidx/core/view/k0;->j:I

    .line 144
    .line 145
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v6}, LU0/f;->iterator()Ljava/util/Iterator;

    .line 149
    .line 150
    .line 151
    move-result-object v6

    .line 152
    invoke-virtual {v8, v6, p1}, LU0/d;->b(Ljava/util/Iterator;LI0/e;)Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object v6

    .line 156
    if-ne v6, v0, :cond_4

    .line 157
    .line 158
    goto :goto_2

    .line 159
    :cond_4
    move-object v6, v2

    .line 160
    :goto_2
    if-ne v6, v9, :cond_5

    .line 161
    .line 162
    return-object v9

    .line 163
    :cond_5
    move-object v6, v7

    .line 164
    move-object v7, v8

    .line 165
    :goto_3
    move-object v8, v9

    .line 166
    move-object v12, v7

    .line 167
    move-object v7, p1

    .line 168
    move-object p1, v12

    .line 169
    move-object v13, v6

    .line 170
    move v6, v1

    .line 171
    move-object v1, v13

    .line 172
    goto :goto_4

    .line 173
    :cond_6
    move v6, v1

    .line 174
    move-object v1, v7

    .line 175
    move-object v7, p1

    .line 176
    move-object p1, v8

    .line 177
    move-object v8, v9

    .line 178
    :goto_4
    add-int/2addr v5, v4

    .line 179
    move v12, v6

    .line 180
    move v6, v5

    .line 181
    move v5, v12

    .line 182
    goto :goto_0

    .line 183
    :cond_7
    return-object v2
.end method
