.class final Landroidx/fragment/app/i;
.super Landroidx/fragment/app/h;
.source "SourceFile"


# instance fields
.field private final c:Ljava/lang/Object;

.field private final d:Ljava/lang/Object;


# direct methods
.method constructor <init>(Landroidx/fragment/app/j0;Landroidx/core/os/e;ZZ)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/fragment/app/h;-><init>(Landroidx/fragment/app/j0;Landroidx/core/os/e;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroidx/fragment/app/j0;->e()I

    .line 5
    .line 6
    .line 7
    move-result p2

    .line 8
    const/4 v0, 0x2

    .line 9
    const/4 v1, 0x0

    .line 10
    if-ne p2, v0, :cond_2

    .line 11
    .line 12
    if-eqz p3, :cond_0

    .line 13
    .line 14
    invoke-virtual {p1}, Landroidx/fragment/app/j0;->f()Landroidx/fragment/app/u;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    invoke-virtual {p2}, Landroidx/fragment/app/u;->l()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {p1}, Landroidx/fragment/app/j0;->f()Landroidx/fragment/app/u;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    move-object p2, v1

    .line 31
    :goto_0
    iput-object p2, p0, Landroidx/fragment/app/i;->c:Ljava/lang/Object;

    .line 32
    .line 33
    if-eqz p3, :cond_1

    .line 34
    .line 35
    invoke-virtual {p1}, Landroidx/fragment/app/j0;->f()Landroidx/fragment/app/u;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    goto :goto_2

    .line 43
    :cond_1
    invoke-virtual {p1}, Landroidx/fragment/app/j0;->f()Landroidx/fragment/app/u;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    .line 49
    .line 50
    goto :goto_2

    .line 51
    :cond_2
    if-eqz p3, :cond_3

    .line 52
    .line 53
    invoke-virtual {p1}, Landroidx/fragment/app/j0;->f()Landroidx/fragment/app/u;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    invoke-virtual {p2}, Landroidx/fragment/app/u;->m()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object p2

    .line 61
    goto :goto_1

    .line 62
    :cond_3
    invoke-virtual {p1}, Landroidx/fragment/app/j0;->f()Landroidx/fragment/app/u;

    .line 63
    .line 64
    .line 65
    move-result-object p2

    .line 66
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    .line 68
    .line 69
    move-object p2, v1

    .line 70
    :goto_1
    iput-object p2, p0, Landroidx/fragment/app/i;->c:Ljava/lang/Object;

    .line 71
    .line 72
    :goto_2
    if-eqz p4, :cond_5

    .line 73
    .line 74
    if-eqz p3, :cond_4

    .line 75
    .line 76
    invoke-virtual {p1}, Landroidx/fragment/app/j0;->f()Landroidx/fragment/app/u;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-virtual {p1}, Landroidx/fragment/app/u;->n()Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    iput-object p1, p0, Landroidx/fragment/app/i;->d:Ljava/lang/Object;

    .line 85
    .line 86
    goto :goto_3

    .line 87
    :cond_4
    invoke-virtual {p1}, Landroidx/fragment/app/j0;->f()Landroidx/fragment/app/u;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 92
    .line 93
    .line 94
    iput-object v1, p0, Landroidx/fragment/app/i;->d:Ljava/lang/Object;

    .line 95
    .line 96
    goto :goto_3

    .line 97
    :cond_5
    iput-object v1, p0, Landroidx/fragment/app/i;->d:Ljava/lang/Object;

    .line 98
    .line 99
    :goto_3
    return-void
.end method
