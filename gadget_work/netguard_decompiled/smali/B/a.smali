.class public final LB/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public static c()LB/k;
    .locals 1

    .line 1
    new-instance v0, LB/k;

    invoke-direct {v0}, LB/k;-><init>()V

    return-object v0
.end method

.method static bridge synthetic e(LB/a;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, LB/a;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()LB/b;
    .locals 2

    .line 1
    iget-object v0, p0, LB/a;->a:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, LB/b;

    .line 6
    .line 7
    invoke-direct {v1}, LB/b;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-static {v1, v0}, LB/b;->b(LB/b;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    return-object v1

    .line 14
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 15
    .line 16
    const-string v1, "Purchase token must be set"

    .line 17
    .line 18
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    throw v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, LB/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final d(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, LB/a;->a:Ljava/lang/String;

    return-void
.end method
