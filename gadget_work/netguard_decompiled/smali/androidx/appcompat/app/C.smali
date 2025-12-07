.class final Landroidx/appcompat/app/C;
.super Landroidx/core/view/t0;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/appcompat/app/C;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/appcompat/app/C;->b:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Landroidx/core/view/t0;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/View;)V
    .locals 4

    .line 1
    iget p1, p0, Landroidx/appcompat/app/C;->a:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const/16 v1, 0x8

    .line 5
    .line 6
    iget-object v2, p0, Landroidx/appcompat/app/C;->b:Ljava/lang/Object;

    .line 7
    .line 8
    packed-switch p1, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    goto :goto_1

    .line 12
    :pswitch_0
    check-cast v2, Landroidx/appcompat/app/D;

    .line 13
    .line 14
    iget-object p1, v2, Landroidx/appcompat/app/D;->b:Landroidx/appcompat/app/U;

    .line 15
    .line 16
    iget-object p1, p1, Landroidx/appcompat/app/U;->v:Landroidx/appcompat/widget/ActionBarContextView;

    .line 17
    .line 18
    invoke-virtual {p1, v1}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    .line 19
    .line 20
    .line 21
    iget-object p1, v2, Landroidx/appcompat/app/D;->b:Landroidx/appcompat/app/U;

    .line 22
    .line 23
    iget-object v1, p1, Landroidx/appcompat/app/U;->w:Landroid/widget/PopupWindow;

    .line 24
    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    iget-object v1, p1, Landroidx/appcompat/app/U;->v:Landroidx/appcompat/widget/ActionBarContextView;

    .line 32
    .line 33
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    instance-of v1, v1, Landroid/view/View;

    .line 38
    .line 39
    if-eqz v1, :cond_1

    .line 40
    .line 41
    iget-object v1, p1, Landroidx/appcompat/app/U;->v:Landroidx/appcompat/widget/ActionBarContextView;

    .line 42
    .line 43
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    check-cast v1, Landroid/view/View;

    .line 48
    .line 49
    invoke-static {v1}, Landroidx/core/view/f0;->I(Landroid/view/View;)V

    .line 50
    .line 51
    .line 52
    :cond_1
    :goto_0
    iget-object v1, p1, Landroidx/appcompat/app/U;->v:Landroidx/appcompat/widget/ActionBarContextView;

    .line 53
    .line 54
    invoke-virtual {v1}, Landroidx/appcompat/widget/ActionBarContextView;->killMode()V

    .line 55
    .line 56
    .line 57
    iget-object v1, p1, Landroidx/appcompat/app/U;->y:Landroidx/core/view/r0;

    .line 58
    .line 59
    invoke-virtual {v1, v0}, Landroidx/core/view/r0;->f(Landroidx/core/view/s0;)V

    .line 60
    .line 61
    .line 62
    iput-object v0, p1, Landroidx/appcompat/app/U;->y:Landroidx/core/view/r0;

    .line 63
    .line 64
    iget-object p1, p1, Landroidx/appcompat/app/U;->B:Landroid/view/ViewGroup;

    .line 65
    .line 66
    invoke-static {p1}, Landroidx/core/view/f0;->I(Landroid/view/View;)V

    .line 67
    .line 68
    .line 69
    return-void

    .line 70
    :goto_1
    check-cast v2, Landroidx/appcompat/app/h0;

    .line 71
    .line 72
    iget-boolean p1, v2, Landroidx/appcompat/app/h0;->p:Z

    .line 73
    .line 74
    if-eqz p1, :cond_2

    .line 75
    .line 76
    iget-object p1, v2, Landroidx/appcompat/app/h0;->g:Landroid/view/View;

    .line 77
    .line 78
    if-eqz p1, :cond_2

    .line 79
    .line 80
    const/4 v3, 0x0

    .line 81
    invoke-virtual {p1, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 82
    .line 83
    .line 84
    iget-object p1, v2, Landroidx/appcompat/app/h0;->d:Landroidx/appcompat/widget/ActionBarContainer;

    .line 85
    .line 86
    invoke-virtual {p1, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 87
    .line 88
    .line 89
    :cond_2
    iget-object p1, v2, Landroidx/appcompat/app/h0;->d:Landroidx/appcompat/widget/ActionBarContainer;

    .line 90
    .line 91
    invoke-virtual {p1, v1}, Landroidx/appcompat/widget/ActionBarContainer;->setVisibility(I)V

    .line 92
    .line 93
    .line 94
    iget-object p1, v2, Landroidx/appcompat/app/h0;->d:Landroidx/appcompat/widget/ActionBarContainer;

    .line 95
    .line 96
    const/4 v1, 0x0

    .line 97
    invoke-virtual {p1, v1}, Landroidx/appcompat/widget/ActionBarContainer;->setTransitioning(Z)V

    .line 98
    .line 99
    .line 100
    iput-object v0, v2, Landroidx/appcompat/app/h0;->t:Landroidx/appcompat/view/n;

    .line 101
    .line 102
    iget-object p1, v2, Landroidx/appcompat/app/h0;->k:Landroidx/appcompat/view/b;

    .line 103
    .line 104
    if-eqz p1, :cond_3

    .line 105
    .line 106
    iget-object v1, v2, Landroidx/appcompat/app/h0;->j:Landroidx/appcompat/app/g0;

    .line 107
    .line 108
    invoke-interface {p1, v1}, Landroidx/appcompat/view/b;->c(Landroidx/appcompat/view/c;)V

    .line 109
    .line 110
    .line 111
    iput-object v0, v2, Landroidx/appcompat/app/h0;->j:Landroidx/appcompat/app/g0;

    .line 112
    .line 113
    iput-object v0, v2, Landroidx/appcompat/app/h0;->k:Landroidx/appcompat/view/b;

    .line 114
    .line 115
    :cond_3
    iget-object p1, v2, Landroidx/appcompat/app/h0;->c:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 116
    .line 117
    if-eqz p1, :cond_4

    .line 118
    .line 119
    invoke-static {p1}, Landroidx/core/view/f0;->I(Landroid/view/View;)V

    .line 120
    .line 121
    .line 122
    :cond_4
    return-void

    .line 123
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
