.class public final Lkotlinx/coroutines/internal/o;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LW0/Z;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    const-string v0, "kotlinx.coroutines.fast.service.loader"

    .line 2
    .line 3
    invoke-static {v0}, Lkotlinx/coroutines/internal/b;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    :goto_0
    const/4 v0, 0x0

    .line 14
    :try_start_0
    invoke-static {}, LB/g;->e()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    const-string v2, "<this>"

    .line 19
    .line 20
    invoke-static {v1, v2}, LP0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    new-instance v2, LU0/h;

    .line 24
    .line 25
    invoke-direct {v2, v1}, LU0/h;-><init>(Ljava/util/Iterator;)V

    .line 26
    .line 27
    .line 28
    instance-of v1, v2, LU0/a;

    .line 29
    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_1
    new-instance v1, LU0/a;

    .line 34
    .line 35
    invoke-direct {v1, v2}, LU0/a;-><init>(LU0/h;)V

    .line 36
    .line 37
    .line 38
    move-object v2, v1

    .line 39
    :goto_1
    invoke-static {v2}, LU0/e;->a(LU0/b;)Ljava/util/List;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    if-nez v3, :cond_2

    .line 52
    .line 53
    move-object v3, v0

    .line 54
    goto :goto_2

    .line 55
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    if-nez v4, :cond_3

    .line 64
    .line 65
    goto :goto_2

    .line 66
    :cond_3
    move-object v4, v3

    .line 67
    check-cast v4, Lkotlinx/coroutines/internal/n;

    .line 68
    .line 69
    invoke-interface {v4}, Lkotlinx/coroutines/internal/n;->getLoadPriority()I

    .line 70
    .line 71
    .line 72
    move-result v4

    .line 73
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v5

    .line 77
    move-object v6, v5

    .line 78
    check-cast v6, Lkotlinx/coroutines/internal/n;

    .line 79
    .line 80
    invoke-interface {v6}, Lkotlinx/coroutines/internal/n;->getLoadPriority()I

    .line 81
    .line 82
    .line 83
    move-result v6

    .line 84
    if-ge v4, v6, :cond_5

    .line 85
    .line 86
    move-object v3, v5

    .line 87
    move v4, v6

    .line 88
    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 89
    .line 90
    .line 91
    move-result v5

    .line 92
    if-nez v5, :cond_4

    .line 93
    .line 94
    :goto_2
    check-cast v3, Lkotlinx/coroutines/internal/n;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 95
    .line 96
    if-nez v3, :cond_6

    .line 97
    .line 98
    goto :goto_3

    .line 99
    :cond_6
    :try_start_1
    invoke-interface {v3, v1}, Lkotlinx/coroutines/internal/n;->createDispatcher(Ljava/util/List;)LW0/Z;

    .line 100
    .line 101
    .line 102
    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 103
    goto :goto_4

    .line 104
    :catchall_0
    :try_start_2
    invoke-interface {v3}, Lkotlinx/coroutines/internal/n;->hintOnError()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 105
    .line 106
    .line 107
    :goto_3
    move-object v1, v0

    .line 108
    :goto_4
    if-eqz v1, :cond_7

    .line 109
    .line 110
    sput-object v1, Lkotlinx/coroutines/internal/o;->a:LW0/Z;

    .line 111
    .line 112
    return-void

    .line 113
    :cond_7
    const/4 v1, 0x3

    .line 114
    :try_start_3
    invoke-static {v0, v1}, Lkotlinx/coroutines/internal/b;->a(Ljava/lang/Throwable;I)V

    .line 115
    .line 116
    .line 117
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 118
    :catchall_1
    move-exception v1

    .line 119
    const/4 v2, 0x2

    .line 120
    invoke-static {v1, v2}, Lkotlinx/coroutines/internal/b;->a(Ljava/lang/Throwable;I)V

    .line 121
    .line 122
    .line 123
    throw v0
.end method
