.class final Lkotlinx/coroutines/internal/w;
.super LP0/g;
.source "SourceFile"

# interfaces
.implements LO0/p;


# static fields
.field public static final e:Lkotlinx/coroutines/internal/w;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlinx/coroutines/internal/w;

    invoke-direct {v0}, Lkotlinx/coroutines/internal/w;-><init>()V

    sput-object v0, Lkotlinx/coroutines/internal/w;->e:Lkotlinx/coroutines/internal/w;

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
    .locals 0

    .line 1
    check-cast p1, LW0/e0;

    .line 2
    .line 3
    check-cast p2, LI0/i;

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    instance-of p1, p2, LW0/e0;

    .line 9
    .line 10
    if-eqz p1, :cond_1

    .line 11
    .line 12
    check-cast p2, LW0/e0;

    .line 13
    .line 14
    move-object p1, p2

    .line 15
    goto :goto_0

    .line 16
    :cond_1
    const/4 p1, 0x0

    .line 17
    :goto_0
    return-object p1
.end method
