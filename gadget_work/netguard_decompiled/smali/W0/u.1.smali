.class public final LW0/u;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:LW0/v;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "kotlinx.coroutines.main.delay"

    .line 2
    .line 3
    invoke-static {v0}, Lkotlinx/coroutines/internal/b;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    :goto_0
    if-nez v0, :cond_1

    .line 16
    .line 17
    sget-object v0, LW0/t;->j:LW0/t;

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_1
    sget v0, LW0/z;->b:I

    .line 21
    .line 22
    sget-object v0, Lkotlinx/coroutines/internal/o;->a:LW0/Z;

    .line 23
    .line 24
    invoke-virtual {v0}, LW0/Z;->v()LW0/Z;

    .line 25
    .line 26
    .line 27
    instance-of v1, v0, LW0/v;

    .line 28
    .line 29
    if-nez v1, :cond_2

    .line 30
    .line 31
    sget-object v0, LW0/t;->j:LW0/t;

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_2
    check-cast v0, LW0/v;

    .line 35
    .line 36
    :goto_1
    sput-object v0, LW0/u;->a:LW0/v;

    .line 37
    .line 38
    return-void
.end method

.method public static final a()LW0/v;
    .locals 1

    .line 1
    sget-object v0, LW0/u;->a:LW0/v;

    .line 2
    .line 3
    return-object v0
.end method
