.class final Lo0/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic d:Lm0/a;

.field final synthetic e:Lo0/A;


# direct methods
.method constructor <init>(Lo0/A;Lm0/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo0/z;->e:Lo0/A;

    iput-object p2, p0, Lo0/z;->d:Lm0/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lo0/z;->e:Lo0/A;

    .line 2
    .line 3
    iget-object v1, v0, Lo0/A;->f:Lo0/f;

    .line 4
    .line 5
    invoke-static {v1}, Lo0/f;->s(Lo0/f;)Ljava/util/concurrent/ConcurrentHashMap;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v0}, Lo0/A;->c(Lo0/A;)Lo0/a;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lo0/x;

    .line 18
    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    iget-object v2, p0, Lo0/z;->d:Lm0/a;

    .line 23
    .line 24
    invoke-virtual {v2}, Lm0/a;->f()Z

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    const/4 v4, 0x0

    .line 29
    if-eqz v3, :cond_2

    .line 30
    .line 31
    invoke-static {v0}, Lo0/A;->d(Lo0/A;)V

    .line 32
    .line 33
    .line 34
    invoke-static {v0}, Lo0/A;->b(Lo0/A;)Ln0/e;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-interface {v2}, Ln0/e;->j()Z

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-eqz v2, :cond_1

    .line 43
    .line 44
    invoke-static {v0}, Lo0/A;->e(Lo0/A;)V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :cond_1
    :try_start_0
    invoke-static {v0}, Lo0/A;->b(Lo0/A;)Ln0/e;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-static {v0}, Lo0/A;->b(Lo0/A;)Ln0/e;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    invoke-interface {v3}, Ln0/e;->f()Ljava/util/Set;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    invoke-interface {v2, v4, v3}, Ln0/e;->o(Lp0/n;Ljava/util/Set;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    :catch_0
    move-exception v2

    .line 65
    const-string v3, "GoogleApiManager"

    .line 66
    .line 67
    const-string v5, "Failed to get service from broker. "

    .line 68
    .line 69
    invoke-static {v3, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 70
    .line 71
    .line 72
    invoke-static {v0}, Lo0/A;->b(Lo0/A;)Ln0/e;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    const-string v2, "Failed to get service from broker."

    .line 77
    .line 78
    invoke-interface {v0, v2}, Ln0/e;->i(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    new-instance v0, Lm0/a;

    .line 82
    .line 83
    const/16 v2, 0xa

    .line 84
    .line 85
    invoke-direct {v0, v2}, Lm0/a;-><init>(I)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v1, v0, v4}, Lo0/x;->D(Lm0/a;Ljava/lang/RuntimeException;)V

    .line 89
    .line 90
    .line 91
    return-void

    .line 92
    :cond_2
    invoke-virtual {v1, v2, v4}, Lo0/x;->D(Lm0/a;Ljava/lang/RuntimeException;)V

    .line 93
    .line 94
    .line 95
    return-void
.end method
