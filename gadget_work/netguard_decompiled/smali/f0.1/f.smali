.class public final Lf0/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld0/b;


# instance fields
.field private final a:LF0/a;


# direct methods
.method public constructor <init>(Lj0/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lf0/f;->a:LF0/a;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 7

    .line 1
    iget-object v0, p0, Lf0/f;->a:LF0/a;

    .line 2
    .line 3
    invoke-interface {v0}, LF0/a;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lj0/a;

    .line 8
    .line 9
    new-instance v1, Lg0/f;

    .line 10
    .line 11
    invoke-direct {v1}, Lg0/f;-><init>()V

    .line 12
    .line 13
    .line 14
    sget-object v2, LZ/d;->d:LZ/d;

    .line 15
    .line 16
    invoke-static {}, Lg0/g;->a()Landroidx/core/view/accessibility/n;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    const-wide/16 v4, 0x7530

    .line 21
    .line 22
    invoke-virtual {v3, v4, v5}, Landroidx/core/view/accessibility/n;->o(J)Landroidx/core/view/accessibility/n;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v3}, Landroidx/core/view/accessibility/n;->s()Landroidx/core/view/accessibility/n;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v3}, Landroidx/core/view/accessibility/n;->e()Lg0/g;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    invoke-virtual {v1, v2, v3}, Lg0/f;->a(LZ/d;Lg0/g;)V

    .line 33
    .line 34
    .line 35
    sget-object v2, LZ/d;->f:LZ/d;

    .line 36
    .line 37
    invoke-static {}, Lg0/g;->a()Landroidx/core/view/accessibility/n;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    const-wide/16 v4, 0x3e8

    .line 42
    .line 43
    invoke-virtual {v3, v4, v5}, Landroidx/core/view/accessibility/n;->o(J)Landroidx/core/view/accessibility/n;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v3}, Landroidx/core/view/accessibility/n;->s()Landroidx/core/view/accessibility/n;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v3}, Landroidx/core/view/accessibility/n;->e()Lg0/g;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    invoke-virtual {v1, v2, v3}, Lg0/f;->a(LZ/d;Lg0/g;)V

    .line 54
    .line 55
    .line 56
    sget-object v2, LZ/d;->e:LZ/d;

    .line 57
    .line 58
    invoke-static {}, Lg0/g;->a()Landroidx/core/view/accessibility/n;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    const-wide/32 v4, 0x5265c00

    .line 63
    .line 64
    .line 65
    invoke-virtual {v3, v4, v5}, Landroidx/core/view/accessibility/n;->o(J)Landroidx/core/view/accessibility/n;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v3}, Landroidx/core/view/accessibility/n;->s()Landroidx/core/view/accessibility/n;

    .line 69
    .line 70
    .line 71
    const/4 v4, 0x1

    .line 72
    new-array v4, v4, [Lg0/h;

    .line 73
    .line 74
    sget-object v5, Lg0/h;->e:Lg0/h;

    .line 75
    .line 76
    const/4 v6, 0x0

    .line 77
    aput-object v5, v4, v6

    .line 78
    .line 79
    new-instance v5, Ljava/util/HashSet;

    .line 80
    .line 81
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 82
    .line 83
    .line 84
    move-result-object v4

    .line 85
    invoke-direct {v5, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 86
    .line 87
    .line 88
    invoke-static {v5}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 89
    .line 90
    .line 91
    move-result-object v4

    .line 92
    invoke-virtual {v3, v4}, Landroidx/core/view/accessibility/n;->r(Ljava/util/Set;)Landroidx/core/view/accessibility/n;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v3}, Landroidx/core/view/accessibility/n;->e()Lg0/g;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    invoke-virtual {v1, v2, v3}, Lg0/f;->a(LZ/d;Lg0/g;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v1, v0}, Lg0/f;->c(Lj0/a;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v1}, Lg0/f;->b()Lg0/i;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    return-object v0
.end method
