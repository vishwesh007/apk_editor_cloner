.class public final LW0/X;
.super Lkotlinx/coroutines/internal/h;
.source "SourceFile"


# instance fields
.field final synthetic d:LW0/Y;

.field final synthetic e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/internal/j;LW0/Y;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p2, p0, LW0/X;->d:LW0/Y;

    .line 2
    .line 3
    iput-object p3, p0, LW0/X;->e:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0, p1}, Lkotlinx/coroutines/internal/h;-><init>(Lkotlinx/coroutines/internal/j;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/Object;)Lkotlinx/coroutines/internal/t;
    .locals 1

    .line 1
    check-cast p1, Lkotlinx/coroutines/internal/j;

    .line 2
    .line 3
    iget-object p1, p0, LW0/X;->d:LW0/Y;

    .line 4
    .line 5
    invoke-virtual {p1}, LW0/Y;->w()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iget-object v0, p0, LW0/X;->e:Ljava/lang/Object;

    .line 10
    .line 11
    if-ne p1, v0, :cond_0

    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p1, 0x0

    .line 16
    :goto_0
    if-eqz p1, :cond_1

    .line 17
    .line 18
    const/4 p1, 0x0

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    invoke-static {}, Lkotlinx/coroutines/internal/b;->c()Lkotlinx/coroutines/internal/t;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    :goto_1
    return-object p1
.end method
