.class public final LJ0/c;
.super LK0/h;
.source "SourceFile"


# instance fields
.field private e:I

.field final synthetic f:LO0/p;

.field final synthetic g:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;LI0/e;LO0/p;)V
    .locals 0

    .line 1
    iput-object p3, p0, LJ0/c;->f:LO0/p;

    .line 2
    .line 3
    iput-object p1, p0, LJ0/c;->g:Ljava/lang/Object;

    .line 4
    .line 5
    const-string p1, "null cannot be cast to non-null type kotlin.coroutines.Continuation<kotlin.Any?>"

    .line 6
    .line 7
    invoke-static {p2, p1}, LP0/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, p2}, LK0/h;-><init>(LI0/e;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method protected final h(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, LJ0/c;->e:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x2

    .line 9
    iput v0, p0, LJ0/c;->e:I

    .line 10
    .line 11
    invoke-static {p1}, LG0/a;->c(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 16
    .line 17
    const-string v0, "This coroutine had already completed"

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw p1

    .line 27
    :cond_1
    iput v1, p0, LJ0/c;->e:I

    .line 28
    .line 29
    invoke-static {p1}, LG0/a;->c(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    iget-object p1, p0, LJ0/c;->f:LO0/p;

    .line 33
    .line 34
    const-string v0, "null cannot be cast to non-null type kotlin.Function2<R of kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt.createCoroutineUnintercepted$lambda-1, kotlin.coroutines.Continuation<T of kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt.createCoroutineUnintercepted$lambda-1>, kotlin.Any?>"

    .line 35
    .line 36
    invoke-static {p1, v0}, LP0/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-static {p1}, LP0/m;->a(LO0/p;)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, LJ0/c;->g:Ljava/lang/Object;

    .line 43
    .line 44
    invoke-interface {p1, v0, p0}, LO0/p;->d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    :goto_0
    return-object p1
.end method
