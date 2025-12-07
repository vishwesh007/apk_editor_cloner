.class final LW0/i0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LI0/i;
.implements LI0/j;


# static fields
.field public static final d:LW0/i0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, LW0/i0;

    invoke-direct {v0}, LW0/i0;-><init>()V

    sput-object v0, LW0/i0;->d:LW0/i0;

    return-void
.end method


# virtual methods
.method public final fold(Ljava/lang/Object;LO0/p;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-interface {p2, p1, p0}, LO0/p;->d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public final get(LI0/j;)LI0/i;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lt0/a;->q(LI0/i;LI0/j;)LI0/i;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public final getKey()LI0/j;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final minusKey(LI0/j;)LI0/l;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lt0/a;->F(LI0/i;LI0/j;)LI0/l;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
