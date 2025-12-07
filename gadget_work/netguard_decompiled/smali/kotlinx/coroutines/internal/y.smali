.class public final Lkotlinx/coroutines/internal/y;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lkotlinx/coroutines/internal/t;

.field private static final b:LO0/p;

.field private static final c:LO0/p;

.field private static final d:LO0/p;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lkotlinx/coroutines/internal/t;

    .line 2
    .line 3
    const-string v1, "NO_THREAD_ELEMENTS"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/t;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lkotlinx/coroutines/internal/y;->a:Lkotlinx/coroutines/internal/t;

    .line 9
    .line 10
    sget-object v0, Lkotlinx/coroutines/internal/v;->e:Lkotlinx/coroutines/internal/v;

    .line 11
    .line 12
    sput-object v0, Lkotlinx/coroutines/internal/y;->b:LO0/p;

    .line 13
    .line 14
    sget-object v0, Lkotlinx/coroutines/internal/w;->e:Lkotlinx/coroutines/internal/w;

    .line 15
    .line 16
    sput-object v0, Lkotlinx/coroutines/internal/y;->c:LO0/p;

    .line 17
    .line 18
    sget-object v0, Lkotlinx/coroutines/internal/x;->e:Lkotlinx/coroutines/internal/x;

    .line 19
    .line 20
    sput-object v0, Lkotlinx/coroutines/internal/y;->d:LO0/p;

    .line 21
    .line 22
    return-void
.end method

.method public static final a(LI0/l;Ljava/lang/Object;)V
    .locals 2

    .line 1
    sget-object v0, Lkotlinx/coroutines/internal/y;->a:Lkotlinx/coroutines/internal/t;

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    instance-of v0, p1, Lkotlinx/coroutines/internal/B;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    check-cast p1, Lkotlinx/coroutines/internal/B;

    .line 11
    .line 12
    invoke-virtual {p1, p0}, Lkotlinx/coroutines/internal/B;->b(LI0/l;)V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_1
    sget-object v0, Lkotlinx/coroutines/internal/w;->e:Lkotlinx/coroutines/internal/w;

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-interface {p0, v1, v0}, LI0/l;->fold(Ljava/lang/Object;LO0/p;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    if-eqz p0, :cond_2

    .line 24
    .line 25
    check-cast p0, LW0/e0;

    .line 26
    .line 27
    invoke-interface {p0, p1}, LW0/e0;->b(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    :goto_0
    return-void

    .line 31
    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    .line 32
    .line 33
    const-string p1, "null cannot be cast to non-null type kotlinx.coroutines.ThreadContextElement<kotlin.Any?>"

    .line 34
    .line 35
    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    throw p0
.end method

.method public static final b(LI0/l;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    sget-object p1, Lkotlinx/coroutines/internal/v;->e:Lkotlinx/coroutines/internal/v;

    .line 9
    .line 10
    invoke-interface {p0, v0, p1}, LI0/l;->fold(Ljava/lang/Object;LO0/p;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-static {p1}, LP0/f;->b(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    if-ne p1, v0, :cond_1

    .line 18
    .line 19
    sget-object p0, Lkotlinx/coroutines/internal/y;->a:Lkotlinx/coroutines/internal/t;

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    instance-of v0, p1, Ljava/lang/Integer;

    .line 23
    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    new-instance v0, Lkotlinx/coroutines/internal/B;

    .line 27
    .line 28
    check-cast p1, Ljava/lang/Number;

    .line 29
    .line 30
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    invoke-direct {v0, p0, p1}, Lkotlinx/coroutines/internal/B;-><init>(LI0/l;I)V

    .line 35
    .line 36
    .line 37
    sget-object p1, Lkotlinx/coroutines/internal/x;->e:Lkotlinx/coroutines/internal/x;

    .line 38
    .line 39
    invoke-interface {p0, v0, p1}, LI0/l;->fold(Ljava/lang/Object;LO0/p;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    goto :goto_0

    .line 44
    :cond_2
    check-cast p1, LW0/e0;

    .line 45
    .line 46
    invoke-interface {p1, p0}, LW0/e0;->n(LI0/l;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    :goto_0
    return-object p0
.end method
