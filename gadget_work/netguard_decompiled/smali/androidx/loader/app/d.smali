.class final Landroidx/loader/app/d;
.super Landroidx/lifecycle/S;
.source "SourceFile"


# static fields
.field private static final d:Landroidx/lifecycle/U;


# instance fields
.field private c:Landroidx/collection/o;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/loader/app/c;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/loader/app/c;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/loader/app/d;->d:Landroidx/lifecycle/U;

    .line 7
    .line 8
    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/lifecycle/S;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/collection/o;

    .line 5
    .line 6
    invoke-direct {v0}, Landroidx/collection/o;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroidx/loader/app/d;->c:Landroidx/collection/o;

    .line 10
    .line 11
    return-void
.end method

.method static d(Landroidx/lifecycle/Y;)Landroidx/loader/app/d;
    .locals 2

    .line 1
    new-instance v0, Landroidx/lifecycle/X;

    .line 2
    .line 3
    sget-object v1, Landroidx/loader/app/d;->d:Landroidx/lifecycle/U;

    .line 4
    .line 5
    invoke-direct {v0, p0, v1}, Landroidx/lifecycle/X;-><init>(Landroidx/lifecycle/Y;Landroidx/lifecycle/U;)V

    .line 6
    .line 7
    .line 8
    const-class p0, Landroidx/loader/app/d;

    .line 9
    .line 10
    invoke-virtual {v0, p0}, Landroidx/lifecycle/X;->a(Ljava/lang/Class;)Landroidx/lifecycle/S;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    check-cast p0, Landroidx/loader/app/d;

    .line 15
    .line 16
    return-object p0
.end method


# virtual methods
.method protected final b()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/loader/app/d;->c:Landroidx/collection/o;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/collection/o;->g()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-gtz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Landroidx/loader/app/d;->c:Landroidx/collection/o;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroidx/collection/o;->b()V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    iget-object v0, p0, Landroidx/loader/app/d;->c:Landroidx/collection/o;

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-virtual {v0, v1}, Landroidx/collection/o;->h(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Landroidx/loader/app/b;

    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    const/4 v0, 0x0

    .line 28
    throw v0
.end method

.method public final c(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/loader/app/d;->c:Landroidx/collection/o;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/collection/o;->g()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-lez v0, :cond_1

    .line 8
    .line 9
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string v0, "Loaders:"

    .line 13
    .line 14
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v1, "    "

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iget-object v1, p0, Landroidx/loader/app/d;->c:Landroidx/collection/o;

    .line 35
    .line 36
    invoke-virtual {v1}, Landroidx/collection/o;->g()I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-gtz v1, :cond_0

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    iget-object v1, p0, Landroidx/loader/app/d;->c:Landroidx/collection/o;

    .line 44
    .line 45
    const/4 v2, 0x0

    .line 46
    invoke-virtual {v1, v2}, Landroidx/collection/o;->h(I)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    check-cast v1, Landroidx/loader/app/b;

    .line 51
    .line 52
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    const-string p1, "  #"

    .line 56
    .line 57
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    iget-object p1, p0, Landroidx/loader/app/d;->c:Landroidx/collection/o;

    .line 61
    .line 62
    invoke-virtual {p1, v2}, Landroidx/collection/o;->e(I)I

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(I)V

    .line 67
    .line 68
    .line 69
    const-string p1, ": "

    .line 70
    .line 71
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1}, Landroidx/loader/app/b;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    const-string p1, "mId="

    .line 85
    .line 86
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 90
    .line 91
    .line 92
    const-string p1, " mArgs="

    .line 93
    .line 94
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    const/4 p1, 0x0

    .line 98
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    const-string v0, "mLoader="

    .line 105
    .line 106
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 110
    .line 111
    .line 112
    throw p1

    .line 113
    :cond_1
    :goto_0
    return-void
.end method

.method final e()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/loader/app/d;->c:Landroidx/collection/o;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/collection/o;->g()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_0
    if-ge v1, v0, :cond_0

    .line 9
    .line 10
    iget-object v2, p0, Landroidx/loader/app/d;->c:Landroidx/collection/o;

    .line 11
    .line 12
    invoke-virtual {v2, v1}, Landroidx/collection/o;->h(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    check-cast v2, Landroidx/loader/app/b;

    .line 17
    .line 18
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    add-int/lit8 v1, v1, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    return-void
.end method
