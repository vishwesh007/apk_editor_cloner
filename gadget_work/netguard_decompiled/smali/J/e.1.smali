.class public final LJ/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LJ/H;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, LJ/e;->a:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final c(LJ/P;)LJ/G;
    .locals 3

    .line 1
    iget v0, p0, LJ/e;->a:I

    .line 2
    .line 3
    const-class v1, Ljava/io/InputStream;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :pswitch_0
    new-instance v0, LJ/h;

    .line 11
    .line 12
    const-class v2, Landroid/net/Uri;

    .line 13
    .line 14
    invoke-virtual {p1, v2, v1}, LJ/P;->b(Ljava/lang/Class;Ljava/lang/Class;)LJ/G;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    const/4 v1, 0x3

    .line 19
    invoke-direct {v0, v1, p1}, LJ/h;-><init>(ILjava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    return-object v0

    .line 23
    :pswitch_1
    new-instance p1, LJ/h;

    .line 24
    .line 25
    new-instance v0, LJ/d;

    .line 26
    .line 27
    const/4 v1, 0x1

    .line 28
    invoke-direct {v0, v1}, LJ/d;-><init>(I)V

    .line 29
    .line 30
    .line 31
    invoke-direct {p1, v2, v0}, LJ/h;-><init>(ILjava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    return-object p1

    .line 35
    :pswitch_2
    new-instance p1, LJ/h;

    .line 36
    .line 37
    new-instance v0, LJ/d;

    .line 38
    .line 39
    invoke-direct {v0, v2}, LJ/d;-><init>(I)V

    .line 40
    .line 41
    .line 42
    invoke-direct {p1, v2, v0}, LJ/h;-><init>(ILjava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    return-object p1

    .line 46
    :goto_0
    new-instance v0, LJ/Y;

    .line 47
    .line 48
    const-class v2, LJ/u;

    .line 49
    .line 50
    invoke-virtual {p1, v2, v1}, LJ/P;->b(Ljava/lang/Class;Ljava/lang/Class;)LJ/G;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-direct {v0, p1}, LJ/Y;-><init>(LJ/G;)V

    .line 55
    .line 56
    .line 57
    return-object v0

    .line 58
    nop

    .line 59
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
