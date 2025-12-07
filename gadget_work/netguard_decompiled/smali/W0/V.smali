.class final LW0/V;
.super LW0/U;
.source "SourceFile"


# instance fields
.field private final h:LW0/Y;

.field private final i:LW0/W;

.field private final j:LW0/g;

.field private final k:Ljava/lang/Object;


# direct methods
.method public constructor <init>(LW0/Y;LW0/W;LW0/g;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, LW0/U;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LW0/V;->h:LW0/Y;

    .line 5
    .line 6
    iput-object p2, p0, LW0/V;->i:LW0/W;

    .line 7
    .line 8
    iput-object p3, p0, LW0/V;->j:LW0/g;

    .line 9
    .line 10
    iput-object p4, p0, LW0/V;->k:Ljava/lang/Object;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final bridge synthetic c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, LW0/V;->p(Ljava/lang/Throwable;)V

    .line 4
    .line 5
    .line 6
    sget-object p1, LG0/j;->a:LG0/j;

    .line 7
    .line 8
    return-object p1
.end method

.method public final p(Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    iget-object p1, p0, LW0/V;->j:LW0/g;

    .line 2
    .line 3
    iget-object v0, p0, LW0/V;->k:Ljava/lang/Object;

    .line 4
    .line 5
    iget-object v1, p0, LW0/V;->h:LW0/Y;

    .line 6
    .line 7
    iget-object v2, p0, LW0/V;->i:LW0/W;

    .line 8
    .line 9
    invoke-static {v1, v2, p1, v0}, LW0/Y;->f(LW0/Y;LW0/W;LW0/g;Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
