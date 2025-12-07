.class public final Landroidx/appcompat/app/m;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroidx/appcompat/app/i;

.field private final b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {p1, v0}, Landroidx/appcompat/app/n;->e(Landroid/content/Context;I)I

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    new-instance v1, Landroidx/appcompat/app/i;

    .line 10
    .line 11
    new-instance v2, Landroid/view/ContextThemeWrapper;

    .line 12
    .line 13
    invoke-static {p1, v0}, Landroidx/appcompat/app/n;->e(Landroid/content/Context;I)I

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    invoke-direct {v2, p1, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 18
    .line 19
    .line 20
    invoke-direct {v1, v2}, Landroidx/appcompat/app/i;-><init>(Landroid/view/ContextThemeWrapper;)V

    .line 21
    .line 22
    .line 23
    iput-object v1, p0, Landroidx/appcompat/app/m;->a:Landroidx/appcompat/app/i;

    .line 24
    .line 25
    iput v0, p0, Landroidx/appcompat/app/m;->b:I

    .line 26
    .line 27
    return-void
.end method


# virtual methods
.method public final a()Landroidx/appcompat/app/n;
    .locals 9

    .line 1
    new-instance v0, Landroidx/appcompat/app/n;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/appcompat/app/m;->a:Landroidx/appcompat/app/i;

    .line 4
    .line 5
    iget-object v2, v1, Landroidx/appcompat/app/i;->a:Landroid/content/Context;

    .line 6
    .line 7
    iget v3, p0, Landroidx/appcompat/app/m;->b:I

    .line 8
    .line 9
    invoke-direct {v0, v2, v3}, Landroidx/appcompat/app/n;-><init>(Landroid/content/Context;I)V

    .line 10
    .line 11
    .line 12
    iget-object v2, v1, Landroidx/appcompat/app/i;->e:Landroid/view/View;

    .line 13
    .line 14
    iget-object v3, v0, Landroidx/appcompat/app/n;->e:Landroidx/appcompat/app/l;

    .line 15
    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    invoke-virtual {v3, v2}, Landroidx/appcompat/app/l;->g(Landroid/view/View;)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget-object v2, v1, Landroidx/appcompat/app/i;->d:Ljava/lang/CharSequence;

    .line 23
    .line 24
    if-eqz v2, :cond_1

    .line 25
    .line 26
    invoke-virtual {v3, v2}, Landroidx/appcompat/app/l;->i(Ljava/lang/CharSequence;)V

    .line 27
    .line 28
    .line 29
    :cond_1
    iget-object v2, v1, Landroidx/appcompat/app/i;->c:Landroid/graphics/drawable/Drawable;

    .line 30
    .line 31
    if-eqz v2, :cond_2

    .line 32
    .line 33
    invoke-virtual {v3, v2}, Landroidx/appcompat/app/l;->h(Landroid/graphics/drawable/Drawable;)V

    .line 34
    .line 35
    .line 36
    :cond_2
    :goto_0
    iget-object v2, v1, Landroidx/appcompat/app/i;->f:Ljava/lang/CharSequence;

    .line 37
    .line 38
    if-nez v2, :cond_3

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_3
    const/4 v4, -0x1

    .line 42
    iget-object v5, v1, Landroidx/appcompat/app/i;->g:Landroid/content/DialogInterface$OnClickListener;

    .line 43
    .line 44
    invoke-virtual {v3, v4, v2, v5}, Landroidx/appcompat/app/l;->f(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 45
    .line 46
    .line 47
    :goto_1
    iget-object v2, v1, Landroidx/appcompat/app/i;->h:Ljava/lang/CharSequence;

    .line 48
    .line 49
    if-nez v2, :cond_4

    .line 50
    .line 51
    goto :goto_2

    .line 52
    :cond_4
    const/4 v4, -0x2

    .line 53
    iget-object v5, v1, Landroidx/appcompat/app/i;->i:Landroid/content/DialogInterface$OnClickListener;

    .line 54
    .line 55
    invoke-virtual {v3, v4, v2, v5}, Landroidx/appcompat/app/l;->f(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 56
    .line 57
    .line 58
    :goto_2
    iget-object v2, v1, Landroidx/appcompat/app/i;->m:Landroid/widget/ListAdapter;

    .line 59
    .line 60
    const/4 v4, 0x1

    .line 61
    const/4 v5, 0x0

    .line 62
    if-eqz v2, :cond_9

    .line 63
    .line 64
    iget v2, v3, Landroidx/appcompat/app/l;->G:I

    .line 65
    .line 66
    iget-object v6, v1, Landroidx/appcompat/app/i;->b:Landroid/view/LayoutInflater;

    .line 67
    .line 68
    invoke-virtual {v6, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    check-cast v2, Landroidx/appcompat/app/AlertController$RecycleListView;

    .line 73
    .line 74
    iget-boolean v6, v1, Landroidx/appcompat/app/i;->p:Z

    .line 75
    .line 76
    if-eqz v6, :cond_5

    .line 77
    .line 78
    iget v6, v3, Landroidx/appcompat/app/l;->H:I

    .line 79
    .line 80
    goto :goto_3

    .line 81
    :cond_5
    iget v6, v3, Landroidx/appcompat/app/l;->I:I

    .line 82
    .line 83
    :goto_3
    iget-object v7, v1, Landroidx/appcompat/app/i;->m:Landroid/widget/ListAdapter;

    .line 84
    .line 85
    if-eqz v7, :cond_6

    .line 86
    .line 87
    goto :goto_4

    .line 88
    :cond_6
    new-instance v7, Landroidx/appcompat/app/k;

    .line 89
    .line 90
    iget-object v8, v1, Landroidx/appcompat/app/i;->a:Landroid/content/Context;

    .line 91
    .line 92
    invoke-direct {v7, v8, v6}, Landroidx/appcompat/app/k;-><init>(Landroid/content/Context;I)V

    .line 93
    .line 94
    .line 95
    :goto_4
    iput-object v7, v3, Landroidx/appcompat/app/l;->C:Landroid/widget/ListAdapter;

    .line 96
    .line 97
    iget v6, v1, Landroidx/appcompat/app/i;->q:I

    .line 98
    .line 99
    iput v6, v3, Landroidx/appcompat/app/l;->D:I

    .line 100
    .line 101
    iget-object v6, v1, Landroidx/appcompat/app/i;->n:Landroid/content/DialogInterface$OnClickListener;

    .line 102
    .line 103
    if-eqz v6, :cond_7

    .line 104
    .line 105
    new-instance v6, Landroidx/appcompat/app/h;

    .line 106
    .line 107
    invoke-direct {v6, v1, v3}, Landroidx/appcompat/app/h;-><init>(Landroidx/appcompat/app/i;Landroidx/appcompat/app/l;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v2, v6}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 111
    .line 112
    .line 113
    :cond_7
    iget-boolean v6, v1, Landroidx/appcompat/app/i;->p:Z

    .line 114
    .line 115
    if-eqz v6, :cond_8

    .line 116
    .line 117
    invoke-virtual {v2, v4}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    .line 118
    .line 119
    .line 120
    :cond_8
    iput-object v2, v3, Landroidx/appcompat/app/l;->f:Landroidx/appcompat/app/AlertController$RecycleListView;

    .line 121
    .line 122
    :cond_9
    iget-object v2, v1, Landroidx/appcompat/app/i;->o:Landroid/view/View;

    .line 123
    .line 124
    if-eqz v2, :cond_a

    .line 125
    .line 126
    invoke-virtual {v3, v2}, Landroidx/appcompat/app/l;->j(Landroid/view/View;)V

    .line 127
    .line 128
    .line 129
    :cond_a
    iget-boolean v2, v1, Landroidx/appcompat/app/i;->j:Z

    .line 130
    .line 131
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 132
    .line 133
    .line 134
    iget-boolean v2, v1, Landroidx/appcompat/app/i;->j:Z

    .line 135
    .line 136
    if-eqz v2, :cond_b

    .line 137
    .line 138
    invoke-virtual {v0, v4}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 139
    .line 140
    .line 141
    :cond_b
    invoke-virtual {v0, v5}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 142
    .line 143
    .line 144
    iget-object v2, v1, Landroidx/appcompat/app/i;->k:Landroid/content/DialogInterface$OnDismissListener;

    .line 145
    .line 146
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 147
    .line 148
    .line 149
    iget-object v1, v1, Landroidx/appcompat/app/i;->l:Landroid/content/DialogInterface$OnKeyListener;

    .line 150
    .line 151
    if-eqz v1, :cond_c

    .line 152
    .line 153
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 154
    .line 155
    .line 156
    :cond_c
    return-object v0
.end method

.method public final b()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/m;->a:Landroidx/appcompat/app/i;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/appcompat/app/i;->a:Landroid/content/Context;

    .line 4
    .line 5
    return-object v0
.end method

.method public final c(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/m;->a:Landroidx/appcompat/app/i;

    .line 2
    .line 3
    iput-object p1, v0, Landroidx/appcompat/app/i;->m:Landroid/widget/ListAdapter;

    .line 4
    .line 5
    iput-object p2, v0, Landroidx/appcompat/app/i;->n:Landroid/content/DialogInterface$OnClickListener;

    .line 6
    .line 7
    return-void
.end method

.method public final d(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/m;->a:Landroidx/appcompat/app/i;

    .line 2
    .line 3
    iput-boolean p1, v0, Landroidx/appcompat/app/i;->j:Z

    .line 4
    .line 5
    return-void
.end method

.method public final e(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/m;->a:Landroidx/appcompat/app/i;

    .line 2
    .line 3
    iput-object p1, v0, Landroidx/appcompat/app/i;->e:Landroid/view/View;

    .line 4
    .line 5
    return-void
.end method

.method public final f(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/m;->a:Landroidx/appcompat/app/i;

    .line 2
    .line 3
    iput-object p1, v0, Landroidx/appcompat/app/i;->c:Landroid/graphics/drawable/Drawable;

    .line 4
    .line 5
    return-void
.end method

.method public final g(ILandroid/content/DialogInterface$OnClickListener;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/m;->a:Landroidx/appcompat/app/i;

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/appcompat/app/i;->a:Landroid/content/Context;

    .line 4
    .line 5
    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iput-object p1, v0, Landroidx/appcompat/app/i;->h:Ljava/lang/CharSequence;

    .line 10
    .line 11
    iput-object p2, v0, Landroidx/appcompat/app/i;->i:Landroid/content/DialogInterface$OnClickListener;

    .line 12
    .line 13
    return-void
.end method

.method public final h(Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/m;->a:Landroidx/appcompat/app/i;

    .line 2
    .line 3
    iput-object p1, v0, Landroidx/appcompat/app/i;->k:Landroid/content/DialogInterface$OnDismissListener;

    .line 4
    .line 5
    return-void
.end method

.method public final i(Landroid/content/DialogInterface$OnKeyListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/m;->a:Landroidx/appcompat/app/i;

    .line 2
    .line 3
    iput-object p1, v0, Landroidx/appcompat/app/i;->l:Landroid/content/DialogInterface$OnKeyListener;

    .line 4
    .line 5
    return-void
.end method

.method public final j(ILandroid/content/DialogInterface$OnClickListener;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/m;->a:Landroidx/appcompat/app/i;

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/appcompat/app/i;->a:Landroid/content/Context;

    .line 4
    .line 5
    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iput-object p1, v0, Landroidx/appcompat/app/i;->f:Ljava/lang/CharSequence;

    .line 10
    .line 11
    iput-object p2, v0, Landroidx/appcompat/app/i;->g:Landroid/content/DialogInterface$OnClickListener;

    .line 12
    .line 13
    return-void
.end method

.method public final k(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/m;->a:Landroidx/appcompat/app/i;

    .line 2
    .line 3
    iput-object p1, v0, Landroidx/appcompat/app/i;->m:Landroid/widget/ListAdapter;

    .line 4
    .line 5
    iput-object p3, v0, Landroidx/appcompat/app/i;->n:Landroid/content/DialogInterface$OnClickListener;

    .line 6
    .line 7
    iput p2, v0, Landroidx/appcompat/app/i;->q:I

    .line 8
    .line 9
    const/4 p1, 0x1

    .line 10
    iput-boolean p1, v0, Landroidx/appcompat/app/i;->p:Z

    .line 11
    .line 12
    return-void
.end method

.method public final l(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/m;->a:Landroidx/appcompat/app/i;

    .line 2
    .line 3
    iput-object p1, v0, Landroidx/appcompat/app/i;->d:Ljava/lang/CharSequence;

    .line 4
    .line 5
    return-void
.end method

.method public final m(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/m;->a:Landroidx/appcompat/app/i;

    .line 2
    .line 3
    iput-object p1, v0, Landroidx/appcompat/app/i;->o:Landroid/view/View;

    .line 4
    .line 5
    return-void
.end method
