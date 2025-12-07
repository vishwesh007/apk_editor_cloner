.class public final Lb0/D;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb0/C;


# static fields
.field private static volatile e:Lb0/o;


# instance fields
.field private final a:Lj0/a;

.field private final b:Lj0/a;

.field private final c:Lf0/e;

.field private final d:Lg0/q;


# direct methods
.method constructor <init>(Lj0/a;Lj0/a;Lf0/e;Lg0/q;Lg0/t;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lb0/D;->a:Lj0/a;

    .line 5
    .line 6
    iput-object p2, p0, Lb0/D;->b:Lj0/a;

    .line 7
    .line 8
    iput-object p3, p0, Lb0/D;->c:Lf0/e;

    .line 9
    .line 10
    iput-object p4, p0, Lb0/D;->d:Lg0/q;

    .line 11
    .line 12
    invoke-virtual {p5}, Lg0/t;->c()V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public static a()Lb0/D;
    .locals 2

    .line 1
    sget-object v0, Lb0/D;->e:Lb0/o;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lb0/o;->a()Lb0/D;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 11
    .line 12
    const-string v1, "Not initialized!"

    .line 13
    .line 14
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    throw v0
.end method

.method public static c(Landroid/content/Context;)V
    .locals 2

    .line 1
    sget-object v0, Lb0/D;->e:Lb0/o;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-class v0, Lb0/D;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lb0/D;->e:Lb0/o;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Lb0/n;

    .line 13
    .line 14
    invoke-direct {v1}, Lb0/n;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, p0}, Lb0/n;->b(Landroid/content/Context;)Lb0/n;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Lb0/n;->a()Lb0/o;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    sput-object p0, Lb0/D;->e:Lb0/o;

    .line 25
    .line 26
    :cond_0
    monitor-exit v0

    .line 27
    goto :goto_0

    .line 28
    :catchall_0
    move-exception p0

    .line 29
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    throw p0

    .line 31
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final b()Lg0/q;
    .locals 1

    .line 1
    iget-object v0, p0, Lb0/D;->d:Lg0/q;

    .line 2
    .line 3
    return-object v0
.end method

.method public final d(Lcom/google/android/datatransport/cct/a;)LZ/f;
    .locals 4

    .line 1
    new-instance v0, Lb0/A;

    .line 2
    .line 3
    instance-of v1, p1, Lb0/p;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/a;->e()Ljava/util/Set;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const-string v1, "proto"

    .line 17
    .line 18
    invoke-static {v1}, LZ/b;->b(Ljava/lang/String;)LZ/b;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    :goto_0
    invoke-static {}, Lb0/z;->a()Lb0/r;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    const-string v3, "cct"

    .line 34
    .line 35
    invoke-virtual {v2, v3}, Lb0/r;->g(Ljava/lang/String;)Lb0/r;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/a;->d()[B

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {v2, p1}, Lb0/r;->k([B)Lb0/r;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2}, Lb0/r;->e()Lb0/z;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-direct {v0, v1, p1, p0}, Lb0/A;-><init>(Ljava/util/Set;Lb0/z;Lb0/C;)V

    .line 50
    .line 51
    .line 52
    return-object v0
.end method

.method public final e(Lb0/y;LB/g;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Lb0/y;->d()Lb0/z;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Lb0/y;->b()LZ/c;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, LZ/c;->c()LZ/d;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    invoke-static {}, Lb0/z;->a()Lb0/r;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {v0}, Lb0/z;->b()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    invoke-virtual {v2, v3}, Lb0/r;->g(Ljava/lang/String;)Lb0/r;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2, v1}, Lb0/r;->l(LZ/d;)Lb0/r;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Lb0/z;->c()[B

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {v2, v0}, Lb0/r;->k([B)Lb0/r;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2}, Lb0/r;->e()Lb0/z;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-static {}, Lb0/s;->a()Lb0/r;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    iget-object v2, p0, Lb0/D;->a:Lj0/a;

    .line 46
    .line 47
    invoke-interface {v2}, Lj0/a;->a()J

    .line 48
    .line 49
    .line 50
    move-result-wide v2

    .line 51
    invoke-virtual {v1, v2, v3}, Lb0/r;->j(J)Lb0/r;

    .line 52
    .line 53
    .line 54
    iget-object v2, p0, Lb0/D;->b:Lj0/a;

    .line 55
    .line 56
    invoke-interface {v2}, Lj0/a;->a()J

    .line 57
    .line 58
    .line 59
    move-result-wide v2

    .line 60
    invoke-virtual {v1, v2, v3}, Lb0/r;->n(J)Lb0/r;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1}, Lb0/y;->e()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    invoke-virtual {v1, v2}, Lb0/r;->m(Ljava/lang/String;)Lb0/r;

    .line 68
    .line 69
    .line 70
    new-instance v2, Lb0/q;

    .line 71
    .line 72
    invoke-virtual {p1}, Lb0/y;->a()LZ/b;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    invoke-virtual {p1}, Lb0/y;->c()Lm/d;

    .line 77
    .line 78
    .line 79
    move-result-object v4

    .line 80
    invoke-virtual {p1}, Lb0/y;->b()LZ/c;

    .line 81
    .line 82
    .line 83
    move-result-object v5

    .line 84
    invoke-virtual {v5}, LZ/c;->b()Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v5

    .line 88
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 89
    .line 90
    .line 91
    check-cast v5, Lcom/google/android/gms/internal/play_billing/B3;

    .line 92
    .line 93
    invoke-virtual {v5}, Lcom/google/android/gms/internal/play_billing/v1;->h()[B

    .line 94
    .line 95
    .line 96
    move-result-object v4

    .line 97
    invoke-direct {v2, v3, v4}, Lb0/q;-><init>(LZ/b;[B)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v1, v2}, Lb0/r;->i(Lb0/q;)Lb0/r;

    .line 101
    .line 102
    .line 103
    invoke-virtual {p1}, Lb0/y;->b()LZ/c;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    invoke-virtual {p1}, LZ/c;->a()Ljava/lang/Integer;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    invoke-virtual {v1, p1}, Lb0/r;->h(Ljava/lang/Integer;)Lb0/r;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v1}, Lb0/r;->d()Lb0/s;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    iget-object v1, p0, Lb0/D;->c:Lf0/e;

    .line 119
    .line 120
    invoke-interface {v1, p1, v0, p2}, Lf0/e;->a(Lb0/s;Lb0/z;LB/g;)V

    .line 121
    .line 122
    .line 123
    return-void
.end method
