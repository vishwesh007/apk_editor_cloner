.class public abstract LW0/o;
.super LI0/a;
.source "SourceFile"

# interfaces
.implements LI0/g;


# static fields
.field public static final d:LW0/n;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, LW0/n;

    invoke-direct {v0}, LW0/n;-><init>()V

    sput-object v0, LW0/o;->d:LW0/n;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, LI0/g;->a:LI0/f;

    .line 2
    .line 3
    invoke-direct {p0, v0}, LI0/a;-><init>(LI0/j;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final get(LI0/j;)LI0/i;
    .locals 2

    .line 1
    const-string v0, "key"

    .line 2
    .line 3
    invoke-static {p1, v0}, LP0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    instance-of v0, p1, LI0/b;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    check-cast p1, LI0/b;

    .line 12
    .line 13
    invoke-interface {p0}, LI0/i;->getKey()LI0/j;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {p1, v0}, LI0/b;->a(LI0/j;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    invoke-virtual {p1, p0}, LI0/b;->b(LI0/i;)LI0/i;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    instance-of v0, p1, LI0/i;

    .line 28
    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    move-object v1, p1

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    sget-object v0, LI0/g;->a:LI0/f;

    .line 34
    .line 35
    if-ne v0, p1, :cond_1

    .line 36
    .line 37
    move-object v1, p0

    .line 38
    :cond_1
    :goto_0
    return-object v1
.end method

.method public final minusKey(LI0/j;)LI0/l;
    .locals 2

    .line 1
    const-string v0, "key"

    .line 2
    .line 3
    invoke-static {p1, v0}, LP0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    instance-of v0, p1, LI0/b;

    .line 7
    .line 8
    sget-object v1, LI0/m;->d:LI0/m;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    check-cast p1, LI0/b;

    .line 13
    .line 14
    invoke-interface {p0}, LI0/i;->getKey()LI0/j;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {p1, v0}, LI0/b;->a(LI0/j;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    invoke-virtual {p1, p0}, LI0/b;->b(LI0/i;)LI0/i;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    if-eqz p1, :cond_0

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    move-object v1, p0

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    sget-object v0, LI0/g;->a:LI0/f;

    .line 34
    .line 35
    if-ne v0, p1, :cond_0

    .line 36
    .line 37
    :goto_0
    return-object v1
.end method

.method public final q(LI0/e;)Lkotlinx/coroutines/internal/d;
    .locals 1

    .line 1
    new-instance v0, Lkotlinx/coroutines/internal/d;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lkotlinx/coroutines/internal/d;-><init>(LW0/o;LI0/e;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public final r(LI0/e;)V
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/internal/d;

    .line 2
    .line 3
    invoke-virtual {p1}, Lkotlinx/coroutines/internal/d;->i()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public abstract t(LI0/l;Ljava/lang/Runnable;)V
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const/16 v1, 0x40

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-static {p0}, LW0/s;->a(Ljava/lang/Object;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    return-object v0
.end method

.method public u()Z
    .locals 1

    .line 1
    instance-of v0, p0, LW0/g0;

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
