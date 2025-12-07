.class final Landroidx/core/view/I;
.super Landroidx/core/view/M;
.source "SourceFile"


# instance fields
.field public final synthetic e:I


# direct methods
.method public constructor <init>(II)V
    .locals 2

    .line 1
    iput p2, p0, Landroidx/core/view/I;->e:I

    .line 2
    .line 3
    const/4 p2, 0x0

    .line 4
    const-class v0, Ljava/lang/Boolean;

    .line 5
    .line 6
    const/16 v1, 0x1c

    .line 7
    .line 8
    invoke-direct {p0, p1, v0, p2, v1}, Landroidx/core/view/M;-><init>(ILjava/lang/Class;II)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method final bridge synthetic b(Landroid/view/View;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Landroidx/core/view/I;->e:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :pswitch_0
    invoke-virtual {p0, p1}, Landroidx/core/view/I;->g(Landroid/view/View;)Ljava/lang/Boolean;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1

    .line 12
    :goto_0
    invoke-virtual {p0, p1}, Landroidx/core/view/I;->g(Landroid/view/View;)Ljava/lang/Boolean;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    return-object p1

    .line 17
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method final c(Landroid/view/View;Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/core/view/I;->e:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    goto :goto_2

    .line 7
    :pswitch_0
    check-cast p2, Ljava/lang/Boolean;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_1

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :pswitch_1
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 14
    .line 15
    .line 16
    move-result p2

    .line 17
    invoke-static {p1, p2}, Landroidx/core/view/Y;->i(Landroid/view/View;Z)V

    .line 18
    .line 19
    .line 20
    goto :goto_1

    .line 21
    :goto_0
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    invoke-static {p1, p2}, Landroidx/core/view/Y;->g(Landroid/view/View;Z)V

    .line 26
    .line 27
    .line 28
    :goto_1
    return-void

    .line 29
    :goto_2
    check-cast p2, Ljava/lang/Boolean;

    .line 30
    .line 31
    packed-switch v0, :pswitch_data_2

    .line 32
    .line 33
    .line 34
    goto :goto_3

    .line 35
    :pswitch_2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 36
    .line 37
    .line 38
    move-result p2

    .line 39
    invoke-static {p1, p2}, Landroidx/core/view/Y;->i(Landroid/view/View;Z)V

    .line 40
    .line 41
    .line 42
    goto :goto_4

    .line 43
    :goto_3
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 44
    .line 45
    .line 46
    move-result p2

    .line 47
    invoke-static {p1, p2}, Landroidx/core/view/Y;->g(Landroid/view/View;Z)V

    .line 48
    .line 49
    .line 50
    :goto_4
    return-void

    .line 51
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch
.end method

.method final f(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget v0, p0, Landroidx/core/view/I;->e:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    goto :goto_2

    .line 7
    :pswitch_0
    check-cast p1, Ljava/lang/Boolean;

    .line 8
    .line 9
    check-cast p2, Ljava/lang/Boolean;

    .line 10
    .line 11
    packed-switch v0, :pswitch_data_1

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :pswitch_1
    invoke-static {p1, p2}, Landroidx/core/view/M;->a(Ljava/lang/Boolean;Ljava/lang/Boolean;)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    goto :goto_1

    .line 20
    :goto_0
    invoke-static {p1, p2}, Landroidx/core/view/M;->a(Ljava/lang/Boolean;Ljava/lang/Boolean;)Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    :goto_1
    xor-int/lit8 p1, p1, 0x1

    .line 25
    .line 26
    return p1

    .line 27
    :goto_2
    check-cast p1, Ljava/lang/Boolean;

    .line 28
    .line 29
    check-cast p2, Ljava/lang/Boolean;

    .line 30
    .line 31
    packed-switch v0, :pswitch_data_2

    .line 32
    .line 33
    .line 34
    goto :goto_3

    .line 35
    :pswitch_2
    invoke-static {p1, p2}, Landroidx/core/view/M;->a(Ljava/lang/Boolean;Ljava/lang/Boolean;)Z

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    goto :goto_4

    .line 40
    :goto_3
    invoke-static {p1, p2}, Landroidx/core/view/M;->a(Ljava/lang/Boolean;Ljava/lang/Boolean;)Z

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    :goto_4
    xor-int/lit8 p1, p1, 0x1

    .line 45
    .line 46
    return p1

    .line 47
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch
.end method

.method final g(Landroid/view/View;)Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget v0, p0, Landroidx/core/view/I;->e:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :pswitch_0
    invoke-static {p1}, Landroidx/core/view/Y;->d(Landroid/view/View;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1

    .line 16
    :goto_0
    invoke-static {p1}, Landroidx/core/view/Y;->c(Landroid/view/View;)Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    return-object p1

    .line 25
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
