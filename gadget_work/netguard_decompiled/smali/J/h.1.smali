.class public final LJ/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LJ/G;


# instance fields
.field public final synthetic a:I

.field private final b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, LJ/h;->a:I

    .line 2
    .line 3
    iput-object p2, p0, LJ/h;->b:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;IILE/i;)LJ/F;
    .locals 4

    .line 1
    iget v0, p0, LJ/h;->a:I

    .line 2
    .line 3
    iget-object v1, p0, LJ/h;->b:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :pswitch_0
    check-cast p1, Landroid/net/Uri;

    .line 10
    .line 11
    new-instance p2, LJ/F;

    .line 12
    .line 13
    new-instance p3, LW/b;

    .line 14
    .line 15
    invoke-direct {p3, p1}, LW/b;-><init>(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    new-instance p4, LJ/A;

    .line 19
    .line 20
    check-cast v1, Landroid/content/Context;

    .line 21
    .line 22
    invoke-direct {p4, v1, p1}, LJ/A;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .line 23
    .line 24
    .line 25
    invoke-direct {p2, p3, p4}, LJ/F;-><init>(LE/e;Lcom/bumptech/glide/load/data/e;)V

    .line 26
    .line 27
    .line 28
    return-object p2

    .line 29
    :pswitch_1
    check-cast p1, Ljava/io/File;

    .line 30
    .line 31
    new-instance p2, LJ/F;

    .line 32
    .line 33
    new-instance p3, LW/b;

    .line 34
    .line 35
    invoke-direct {p3, p1}, LW/b;-><init>(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    new-instance p4, LJ/s;

    .line 39
    .line 40
    check-cast v1, LJ/t;

    .line 41
    .line 42
    invoke-direct {p4, p1, v1}, LJ/s;-><init>(Ljava/io/File;LJ/t;)V

    .line 43
    .line 44
    .line 45
    invoke-direct {p2, p3, p4}, LJ/F;-><init>(LE/e;Lcom/bumptech/glide/load/data/e;)V

    .line 46
    .line 47
    .line 48
    return-object p2

    .line 49
    :pswitch_2
    check-cast p1, [B

    .line 50
    .line 51
    new-instance p2, LJ/F;

    .line 52
    .line 53
    new-instance p3, LW/b;

    .line 54
    .line 55
    invoke-direct {p3, p1}, LW/b;-><init>(Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    new-instance p4, LJ/g;

    .line 59
    .line 60
    check-cast v1, LJ/f;

    .line 61
    .line 62
    invoke-direct {p4, p1, v1}, LJ/g;-><init>([BLJ/f;)V

    .line 63
    .line 64
    .line 65
    invoke-direct {p2, p3, p4}, LJ/F;-><init>(LE/e;Lcom/bumptech/glide/load/data/e;)V

    .line 66
    .line 67
    .line 68
    return-object p2

    .line 69
    :goto_0
    check-cast p1, Ljava/lang/String;

    .line 70
    .line 71
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    const/4 v2, 0x0

    .line 76
    if-eqz v0, :cond_0

    .line 77
    .line 78
    move-object p1, v2

    .line 79
    goto :goto_1

    .line 80
    :cond_0
    const/4 v0, 0x0

    .line 81
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    const/16 v3, 0x2f

    .line 86
    .line 87
    if-ne v0, v3, :cond_1

    .line 88
    .line 89
    new-instance v0, Ljava/io/File;

    .line 90
    .line 91
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    goto :goto_1

    .line 99
    :cond_1
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v3

    .line 107
    if-nez v3, :cond_2

    .line 108
    .line 109
    new-instance v0, Ljava/io/File;

    .line 110
    .line 111
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    goto :goto_1

    .line 119
    :cond_2
    move-object p1, v0

    .line 120
    :goto_1
    if-eqz p1, :cond_4

    .line 121
    .line 122
    check-cast v1, LJ/G;

    .line 123
    .line 124
    invoke-interface {v1, p1}, LJ/G;->b(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    move-result v0

    .line 128
    if-nez v0, :cond_3

    .line 129
    .line 130
    goto :goto_2

    .line 131
    :cond_3
    invoke-interface {v1, p1, p2, p3, p4}, LJ/G;->a(Ljava/lang/Object;IILE/i;)LJ/F;

    .line 132
    .line 133
    .line 134
    move-result-object v2

    .line 135
    :cond_4
    :goto_2
    return-object v2

    .line 136
    nop

    .line 137
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    iget v0, p0, LJ/h;->a:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    goto :goto_0

    .line 8
    :pswitch_0
    check-cast p1, Landroid/net/Uri;

    .line 9
    .line 10
    invoke-static {p1}, Lt0/a;->B(Landroid/net/Uri;)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    return p1

    .line 15
    :pswitch_1
    check-cast p1, Ljava/io/File;

    .line 16
    .line 17
    return v1

    .line 18
    :pswitch_2
    check-cast p1, [B

    .line 19
    .line 20
    return v1

    .line 21
    :goto_0
    check-cast p1, Ljava/lang/String;

    .line 22
    .line 23
    return v1

    .line 24
    nop

    .line 25
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
