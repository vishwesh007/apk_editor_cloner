.class public final LM/L;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LE/j;


# instance fields
.field public final synthetic a:I

.field private final b:Ljava/lang/Object;

.field private final c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(LM/v;LG/b;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, LM/L;->a:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, LM/L;->b:Ljava/lang/Object;

    .line 3
    iput-object p2, p0, LM/L;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;LE/j;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, LM/L;->a:I

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, LM/L;->c:Ljava/lang/Object;

    .line 6
    iput-object p2, p0, LM/L;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;IILE/i;)Lcom/bumptech/glide/load/engine/V;
    .locals 9

    .line 1
    iget v0, p0, LM/L;->a:I

    .line 2
    .line 3
    iget-object v1, p0, LM/L;->b:Ljava/lang/Object;

    .line 4
    .line 5
    iget-object v2, p0, LM/L;->c:Ljava/lang/Object;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    goto :goto_1

    .line 11
    :pswitch_0
    check-cast p1, Ljava/io/InputStream;

    .line 12
    .line 13
    instance-of v0, p1, LM/I;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    check-cast p1, LM/I;

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    new-instance v0, LM/I;

    .line 22
    .line 23
    check-cast v2, LG/b;

    .line 24
    .line 25
    invoke-direct {v0, p1, v2}, LM/I;-><init>(Ljava/io/InputStream;LG/b;)V

    .line 26
    .line 27
    .line 28
    const/4 p1, 0x1

    .line 29
    move-object p1, v0

    .line 30
    const/4 v0, 0x1

    .line 31
    :goto_0
    invoke-static {p1}, LX/f;->b(LM/I;)LX/f;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    new-instance v4, LX/p;

    .line 36
    .line 37
    invoke-direct {v4, v2}, LX/p;-><init>(LX/f;)V

    .line 38
    .line 39
    .line 40
    new-instance v8, LM/K;

    .line 41
    .line 42
    invoke-direct {v8, p1, v2}, LM/K;-><init>(LM/I;LX/f;)V

    .line 43
    .line 44
    .line 45
    :try_start_0
    move-object v3, v1

    .line 46
    check-cast v3, LM/v;

    .line 47
    .line 48
    move v5, p2

    .line 49
    move v6, p3

    .line 50
    move-object v7, p4

    .line 51
    invoke-virtual/range {v3 .. v8}, LM/v;->b(LX/p;IILE/i;LM/u;)LM/d;

    .line 52
    .line 53
    .line 54
    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    invoke-virtual {v2}, LX/f;->d()V

    .line 56
    .line 57
    .line 58
    if-eqz v0, :cond_1

    .line 59
    .line 60
    invoke-virtual {p1}, LM/I;->d()V

    .line 61
    .line 62
    .line 63
    :cond_1
    return-object p2

    .line 64
    :catchall_0
    move-exception p2

    .line 65
    invoke-virtual {v2}, LX/f;->d()V

    .line 66
    .line 67
    .line 68
    if-eqz v0, :cond_2

    .line 69
    .line 70
    invoke-virtual {p1}, LM/I;->d()V

    .line 71
    .line 72
    .line 73
    :cond_2
    throw p2

    .line 74
    :goto_1
    check-cast v1, LE/j;

    .line 75
    .line 76
    invoke-interface {v1, p1, p2, p3, p4}, LE/j;->a(Ljava/lang/Object;IILE/i;)Lcom/bumptech/glide/load/engine/V;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    check-cast v2, Landroid/content/res/Resources;

    .line 81
    .line 82
    invoke-static {v2, p1}, LM/G;->e(Landroid/content/res/Resources;Lcom/bumptech/glide/load/engine/V;)LM/G;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    return-object p1

    .line 87
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Ljava/lang/Object;LE/i;)Z
    .locals 2

    .line 1
    iget v0, p0, LM/L;->a:I

    .line 2
    .line 3
    iget-object v1, p0, LM/L;->b:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :pswitch_0
    check-cast p1, Ljava/io/InputStream;

    .line 10
    .line 11
    check-cast v1, LM/v;

    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    const/4 p1, 0x1

    .line 17
    return p1

    .line 18
    :goto_0
    check-cast v1, LE/j;

    .line 19
    .line 20
    invoke-interface {v1, p1, p2}, LE/j;->b(Ljava/lang/Object;LE/i;)Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    return p1

    .line 25
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
