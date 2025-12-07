.class public final synthetic Lk/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li0/b;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lk/e;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Lk/e;->b:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 3

    .line 1
    iget v0, p0, Lk/e;->a:I

    const/4 v1, 0x0

    iget-object v2, p0, Lk/e;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast v2, Lh0/d;

    invoke-interface {v2}, Lh0/d;->d()Le0/b;

    move-result-object v0

    return-object v0

    :pswitch_1
    check-cast v2, Lg0/q;

    invoke-static {v2}, Lg0/q;->i(Lg0/q;)V

    return-object v1

    :pswitch_2
    check-cast v2, Lh0/e;

    invoke-interface {v2}, Lh0/e;->c()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :goto_0
    check-cast v2, Lg0/t;

    invoke-static {v2}, Lg0/t;->a(Lg0/t;)V

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Lk/l;ILandroid/os/Bundle;)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lk/e;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/view/View;

    .line 4
    .line 5
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 6
    .line 7
    const/16 v2, 0x19

    .line 8
    .line 9
    const/4 v3, 0x1

    .line 10
    if-lt v1, v2, :cond_1

    .line 11
    .line 12
    and-int/2addr p2, v3

    .line 13
    if-eqz p2, :cond_1

    .line 14
    .line 15
    :try_start_0
    invoke-virtual {p1}, Lk/l;->d()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Lk/l;->e()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    invoke-static {p2}, Lk/b;->a(Ljava/lang/Object;)Landroid/view/inputmethod/InputContentInfo;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    if-nez p3, :cond_0

    .line 27
    .line 28
    new-instance p3, Landroid/os/Bundle;

    .line 29
    .line 30
    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    .line 35
    .line 36
    invoke-direct {v1, p3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 37
    .line 38
    .line 39
    move-object p3, v1

    .line 40
    :goto_0
    const-string v1, "androidx.core.view.extra.INPUT_CONTENT_INFO"

    .line 41
    .line 42
    invoke-virtual {p3, v1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 43
    .line 44
    .line 45
    goto :goto_1

    .line 46
    :catch_0
    move-exception p1

    .line 47
    const-string p2, "InputConnectionCompat"

    .line 48
    .line 49
    const-string p3, "Can\'t insert content from IME; requestPermission() failed"

    .line 50
    .line 51
    invoke-static {p2, p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 52
    .line 53
    .line 54
    goto :goto_2

    .line 55
    :cond_1
    :goto_1
    new-instance p2, Landroid/content/ClipData;

    .line 56
    .line 57
    invoke-virtual {p1}, Lk/l;->b()Landroid/content/ClipDescription;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    new-instance v2, Landroid/content/ClipData$Item;

    .line 62
    .line 63
    invoke-virtual {p1}, Lk/l;->a()Landroid/net/Uri;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    invoke-direct {v2, v4}, Landroid/content/ClipData$Item;-><init>(Landroid/net/Uri;)V

    .line 68
    .line 69
    .line 70
    invoke-direct {p2, v1, v2}, Landroid/content/ClipData;-><init>(Landroid/content/ClipDescription;Landroid/content/ClipData$Item;)V

    .line 71
    .line 72
    .line 73
    new-instance v1, Landroidx/core/view/g;

    .line 74
    .line 75
    const/4 v2, 0x2

    .line 76
    invoke-direct {v1, p2, v2}, Landroidx/core/view/g;-><init>(Landroid/content/ClipData;I)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1}, Lk/l;->c()Landroid/net/Uri;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-virtual {v1, p1}, Landroidx/core/view/g;->d(Landroid/net/Uri;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v1, p3}, Landroidx/core/view/g;->b(Landroid/os/Bundle;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1}, Landroidx/core/view/g;->a()Landroidx/core/view/n;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    invoke-static {v0, p1}, Landroidx/core/view/f0;->E(Landroid/view/View;Landroidx/core/view/n;)Landroidx/core/view/n;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    if-nez p1, :cond_2

    .line 98
    .line 99
    goto :goto_3

    .line 100
    :cond_2
    :goto_2
    const/4 v3, 0x0

    .line 101
    :goto_3
    return v3
.end method
