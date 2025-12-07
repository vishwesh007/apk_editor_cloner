.class public final Lg0/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld0/b;


# instance fields
.field private final a:LF0/a;

.field private final b:LF0/a;

.field private final c:LF0/a;

.field private final d:LF0/a;

.field private final e:LF0/a;

.field private final f:LF0/a;

.field private final g:LF0/a;

.field private final h:LF0/a;

.field private final i:LF0/a;


# direct methods
.method public constructor <init>(LF0/a;LF0/a;LF0/a;Lf0/g;LF0/a;LF0/a;Lj0/b;Lj0/d;LF0/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lg0/r;->a:LF0/a;

    .line 5
    .line 6
    iput-object p2, p0, Lg0/r;->b:LF0/a;

    .line 7
    .line 8
    iput-object p3, p0, Lg0/r;->c:LF0/a;

    .line 9
    .line 10
    iput-object p4, p0, Lg0/r;->d:LF0/a;

    .line 11
    .line 12
    iput-object p5, p0, Lg0/r;->e:LF0/a;

    .line 13
    .line 14
    iput-object p6, p0, Lg0/r;->f:LF0/a;

    .line 15
    .line 16
    iput-object p7, p0, Lg0/r;->g:LF0/a;

    .line 17
    .line 18
    iput-object p8, p0, Lg0/r;->h:LF0/a;

    .line 19
    .line 20
    iput-object p9, p0, Lg0/r;->i:LF0/a;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 11

    .line 1
    iget-object v0, p0, Lg0/r;->a:LF0/a;

    .line 2
    .line 3
    invoke-interface {v0}, LF0/a;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    move-object v2, v0

    .line 8
    check-cast v2, Landroid/content/Context;

    .line 9
    .line 10
    iget-object v0, p0, Lg0/r;->b:LF0/a;

    .line 11
    .line 12
    invoke-interface {v0}, LF0/a;->get()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    move-object v3, v0

    .line 17
    check-cast v3, Lc0/f;

    .line 18
    .line 19
    iget-object v0, p0, Lg0/r;->c:LF0/a;

    .line 20
    .line 21
    invoke-interface {v0}, LF0/a;->get()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    move-object v4, v0

    .line 26
    check-cast v4, Lh0/e;

    .line 27
    .line 28
    iget-object v0, p0, Lg0/r;->d:LF0/a;

    .line 29
    .line 30
    invoke-interface {v0}, LF0/a;->get()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    move-object v5, v0

    .line 35
    check-cast v5, Lg0/v;

    .line 36
    .line 37
    iget-object v0, p0, Lg0/r;->e:LF0/a;

    .line 38
    .line 39
    invoke-interface {v0}, LF0/a;->get()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    move-object v6, v0

    .line 44
    check-cast v6, Ljava/util/concurrent/Executor;

    .line 45
    .line 46
    iget-object v0, p0, Lg0/r;->f:LF0/a;

    .line 47
    .line 48
    invoke-interface {v0}, LF0/a;->get()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    move-object v7, v0

    .line 53
    check-cast v7, Li0/c;

    .line 54
    .line 55
    iget-object v0, p0, Lg0/r;->g:LF0/a;

    .line 56
    .line 57
    invoke-interface {v0}, LF0/a;->get()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    move-object v8, v0

    .line 62
    check-cast v8, Lj0/a;

    .line 63
    .line 64
    iget-object v0, p0, Lg0/r;->h:LF0/a;

    .line 65
    .line 66
    invoke-interface {v0}, LF0/a;->get()Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    move-object v9, v0

    .line 71
    check-cast v9, Lj0/a;

    .line 72
    .line 73
    iget-object v0, p0, Lg0/r;->i:LF0/a;

    .line 74
    .line 75
    invoke-interface {v0}, LF0/a;->get()Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    move-object v10, v0

    .line 80
    check-cast v10, Lh0/d;

    .line 81
    .line 82
    new-instance v0, Lg0/q;

    .line 83
    .line 84
    move-object v1, v0

    .line 85
    invoke-direct/range {v1 .. v10}, Lg0/q;-><init>(Landroid/content/Context;Lc0/f;Lh0/e;Lg0/v;Ljava/util/concurrent/Executor;Li0/c;Lj0/a;Lj0/a;Lh0/d;)V

    .line 86
    .line 87
    .line 88
    return-object v0
.end method
