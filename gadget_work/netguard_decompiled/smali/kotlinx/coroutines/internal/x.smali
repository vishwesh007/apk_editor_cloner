.class final Lkotlinx/coroutines/internal/x;
.super LP0/g;
.source "SourceFile"

# interfaces
.implements LO0/p;


# static fields
.field public static final e:Lkotlinx/coroutines/internal/x;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlinx/coroutines/internal/x;

    invoke-direct {v0}, Lkotlinx/coroutines/internal/x;-><init>()V

    sput-object v0, Lkotlinx/coroutines/internal/x;->e:Lkotlinx/coroutines/internal/x;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, LP0/g;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Lkotlinx/coroutines/internal/B;

    .line 2
    .line 3
    check-cast p2, LI0/i;

    .line 4
    .line 5
    instance-of v0, p2, LW0/e0;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    check-cast p2, LW0/e0;

    .line 10
    .line 11
    iget-object v0, p1, Lkotlinx/coroutines/internal/B;->a:LI0/l;

    .line 12
    .line 13
    invoke-interface {p2, v0}, LW0/e0;->n(LI0/l;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {p1, p2, v0}, Lkotlinx/coroutines/internal/B;->a(LW0/e0;Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-object p1
.end method
