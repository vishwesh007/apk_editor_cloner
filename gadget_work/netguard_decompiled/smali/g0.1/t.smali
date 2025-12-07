.class public final Lg0/t;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/concurrent/Executor;

.field private final b:Lh0/e;

.field private final c:Lg0/v;

.field private final d:Li0/c;


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;Lh0/e;Lg0/v;Li0/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lg0/t;->a:Ljava/util/concurrent/Executor;

    .line 5
    .line 6
    iput-object p2, p0, Lg0/t;->b:Lh0/e;

    .line 7
    .line 8
    iput-object p3, p0, Lg0/t;->c:Lg0/v;

    .line 9
    .line 10
    iput-object p4, p0, Lg0/t;->d:Li0/c;

    .line 11
    .line 12
    return-void
.end method

.method public static synthetic a(Lg0/t;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lg0/t;->b:Lh0/e;

    .line 2
    .line 3
    invoke-interface {v0}, Lh0/e;->s()Ljava/lang/Iterable;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lb0/z;

    .line 22
    .line 23
    iget-object v2, p0, Lg0/t;->c:Lg0/v;

    .line 24
    .line 25
    const/4 v3, 0x1

    .line 26
    invoke-interface {v2, v1, v3}, Lg0/v;->a(Lb0/z;I)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    return-void
.end method

.method public static synthetic b(Lg0/t;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Lk/e;

    .line 5
    .line 6
    const/4 v1, 0x4

    .line 7
    invoke-direct {v0, v1, p0}, Lk/e;-><init>(ILjava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Lg0/t;->d:Li0/c;

    .line 11
    .line 12
    invoke-interface {p0, v0}, Li0/c;->g(Li0/b;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final c()V
    .locals 2

    .line 1
    new-instance v0, Lg0/s;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lg0/s;-><init>(Lg0/t;)V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lg0/t;->a:Ljava/util/concurrent/Executor;

    .line 7
    .line 8
    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
