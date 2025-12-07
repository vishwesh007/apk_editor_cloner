.class public final LH/r;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:LX/o;

.field private final b:Landroidx/core/util/f;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, LX/o;

    .line 5
    .line 6
    const-wide/16 v1, 0x3e8

    .line 7
    .line 8
    invoke-direct {v0, v1, v2}, LX/o;-><init>(J)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, LH/r;->a:LX/o;

    .line 12
    .line 13
    new-instance v0, LH/p;

    .line 14
    .line 15
    invoke-direct {v0}, LH/p;-><init>()V

    .line 16
    .line 17
    .line 18
    const/16 v1, 0xa

    .line 19
    .line 20
    invoke-static {v1, v0}, LY/g;->b(ILY/c;)Landroidx/core/util/f;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, LH/r;->b:Landroidx/core/util/f;

    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public final a(LE/e;)Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, LH/r;->a:LX/o;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, LH/r;->a:LX/o;

    .line 5
    .line 6
    invoke-virtual {v1, p1}, LX/o;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Ljava/lang/String;

    .line 11
    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, LH/r;->b:Landroidx/core/util/f;

    .line 16
    .line 17
    invoke-interface {v0}, Landroidx/core/util/f;->b()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-static {v1}, LX/l;->b(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    check-cast v1, LH/q;

    .line 25
    .line 26
    :try_start_1
    iget-object v2, v1, LH/q;->d:Ljava/security/MessageDigest;

    .line 27
    .line 28
    invoke-interface {p1, v2}, LE/e;->a(Ljava/security/MessageDigest;)V

    .line 29
    .line 30
    .line 31
    iget-object v2, v1, LH/q;->d:Ljava/security/MessageDigest;

    .line 32
    .line 33
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-static {v2}, LX/s;->l([B)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 41
    invoke-interface {v0, v1}, Landroidx/core/util/f;->a(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-object v1, v2

    .line 45
    goto :goto_0

    .line 46
    :catchall_0
    move-exception p1

    .line 47
    invoke-interface {v0, v1}, Landroidx/core/util/f;->a(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    throw p1

    .line 51
    :cond_0
    :goto_0
    iget-object v2, p0, LH/r;->a:LX/o;

    .line 52
    .line 53
    monitor-enter v2

    .line 54
    :try_start_2
    iget-object v0, p0, LH/r;->a:LX/o;

    .line 55
    .line 56
    invoke-virtual {v0, p1, v1}, LX/o;->f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    monitor-exit v2

    .line 60
    return-object v1

    .line 61
    :catchall_1
    move-exception p1

    .line 62
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 63
    throw p1

    .line 64
    :catchall_2
    move-exception p1

    .line 65
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 66
    throw p1
.end method
