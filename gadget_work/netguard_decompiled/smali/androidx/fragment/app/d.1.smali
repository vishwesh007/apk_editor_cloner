.class final Landroidx/fragment/app/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:I

.field final synthetic e:Ljava/lang/Object;

.field final synthetic f:Ljava/lang/Object;

.field final synthetic g:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/j;Ljava/util/ArrayList;Landroidx/fragment/app/j0;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroidx/fragment/app/d;->d:I

    .line 3
    .line 4
    iput-object p1, p0, Landroidx/fragment/app/d;->g:Ljava/lang/Object;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/fragment/app/d;->e:Ljava/lang/Object;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/fragment/app/d;->f:Ljava/lang/Object;

    .line 9
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget v0, p0, Landroidx/fragment/app/d;->d:I

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/fragment/app/d;->g:Ljava/lang/Object;

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/fragment/app/d;->f:Ljava/lang/Object;

    .line 6
    .line 7
    iget-object v3, p0, Landroidx/fragment/app/d;->e:Ljava/lang/Object;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :pswitch_0
    check-cast v3, Ljava/util/List;

    .line 14
    .line 15
    check-cast v2, Landroidx/fragment/app/j0;

    .line 16
    .line 17
    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    invoke-interface {v3, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    check-cast v1, Landroidx/fragment/app/j;

    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2}, Landroidx/fragment/app/j0;->f()Landroidx/fragment/app/u;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    const/4 v0, 0x0

    .line 39
    invoke-virtual {v2}, Landroidx/fragment/app/j0;->e()I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    invoke-static {v1, v0}, Landroidx/fragment/app/i0;->a(ILandroid/view/View;)V

    .line 44
    .line 45
    .line 46
    :cond_0
    return-void

    .line 47
    :goto_0
    check-cast v3, Landroidx/fragment/app/H;

    .line 48
    .line 49
    check-cast v2, Landroidx/fragment/app/u;

    .line 50
    .line 51
    check-cast v1, Landroidx/core/os/e;

    .line 52
    .line 53
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1}, Landroidx/core/os/e;->b()Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-nez v0, :cond_1

    .line 61
    .line 62
    iget-object v0, v3, Landroidx/fragment/app/H;->b:Landroidx/fragment/app/T;

    .line 63
    .line 64
    invoke-virtual {v0, v2, v1}, Landroidx/fragment/app/T;->q0(Landroidx/fragment/app/u;Landroidx/core/os/e;)V

    .line 65
    .line 66
    .line 67
    :cond_1
    return-void

    .line 68
    nop

    .line 69
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
