.class final Landroidx/fragment/app/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:I

.field final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/fragment/app/e;->d:I

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/fragment/app/e;->e:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget v0, p0, Landroidx/fragment/app/e;->d:I

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/fragment/app/e;->e:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :pswitch_0
    check-cast v1, Landroidx/fragment/app/u;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-virtual {v1, v0}, Landroidx/fragment/app/u;->a(Z)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :pswitch_1
    check-cast v1, Landroidx/fragment/app/o;

    .line 17
    .line 18
    invoke-static {v1}, Landroidx/fragment/app/o;->e0(Landroidx/fragment/app/o;)Landroid/content/DialogInterface$OnDismissListener;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-static {v1}, Landroidx/fragment/app/o;->d0(Landroidx/fragment/app/o;)Landroid/app/Dialog;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v0, Landroidx/fragment/app/l;

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroidx/fragment/app/l;->onDismiss(Landroid/content/DialogInterface;)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :pswitch_2
    check-cast v1, Landroidx/fragment/app/f;

    .line 33
    .line 34
    iget-object v0, v1, Landroidx/fragment/app/f;->b:Landroid/view/ViewGroup;

    .line 35
    .line 36
    iget-object v2, v1, Landroidx/fragment/app/f;->c:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast v2, Landroid/view/View;

    .line 39
    .line 40
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    .line 41
    .line 42
    .line 43
    iget-object v0, v1, Landroidx/fragment/app/f;->d:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast v0, Landroidx/fragment/app/g;

    .line 46
    .line 47
    invoke-virtual {v0}, Landroidx/fragment/app/h;->a()V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :goto_0
    check-cast v1, Landroidx/fragment/app/f;

    .line 52
    .line 53
    iget-object v0, v1, Landroidx/fragment/app/f;->c:Ljava/lang/Object;

    .line 54
    .line 55
    move-object v2, v0

    .line 56
    check-cast v2, Landroidx/fragment/app/u;

    .line 57
    .line 58
    iget-object v2, v2, Landroidx/fragment/app/u;->G:Landroidx/fragment/app/r;

    .line 59
    .line 60
    if-nez v2, :cond_0

    .line 61
    .line 62
    const/4 v2, 0x0

    .line 63
    goto :goto_1

    .line 64
    :cond_0
    iget-object v2, v2, Landroidx/fragment/app/r;->a:Landroid/view/View;

    .line 65
    .line 66
    :goto_1
    if-eqz v2, :cond_1

    .line 67
    .line 68
    check-cast v0, Landroidx/fragment/app/u;

    .line 69
    .line 70
    invoke-virtual {v0}, Landroidx/fragment/app/u;->X()V

    .line 71
    .line 72
    .line 73
    iget-object v0, v1, Landroidx/fragment/app/f;->d:Ljava/lang/Object;

    .line 74
    .line 75
    check-cast v0, Landroidx/fragment/app/H;

    .line 76
    .line 77
    iget-object v2, v1, Landroidx/fragment/app/f;->c:Ljava/lang/Object;

    .line 78
    .line 79
    check-cast v2, Landroidx/fragment/app/u;

    .line 80
    .line 81
    iget-object v1, v1, Landroidx/fragment/app/f;->e:Ljava/lang/Object;

    .line 82
    .line 83
    check-cast v1, Landroidx/core/os/e;

    .line 84
    .line 85
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v1}, Landroidx/core/os/e;->b()Z

    .line 89
    .line 90
    .line 91
    move-result v3

    .line 92
    if-nez v3, :cond_1

    .line 93
    .line 94
    iget-object v0, v0, Landroidx/fragment/app/H;->b:Landroidx/fragment/app/T;

    .line 95
    .line 96
    invoke-virtual {v0, v2, v1}, Landroidx/fragment/app/T;->q0(Landroidx/fragment/app/u;Landroidx/core/os/e;)V

    .line 97
    .line 98
    .line 99
    :cond_1
    return-void

    .line 100
    nop

    .line 101
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
