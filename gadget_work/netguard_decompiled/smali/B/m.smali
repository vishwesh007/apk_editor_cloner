.class public final LB/m;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Z


# virtual methods
.method public final a()Lt0/a;
    .locals 2

    .line 1
    iget-boolean v0, p0, LB/m;->a:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lt0/a;

    .line 6
    .line 7
    invoke-direct {v0}, Lt0/a;-><init>()V

    .line 8
    .line 9
    .line 10
    return-object v0

    .line 11
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 12
    .line 13
    const-string v1, "Pending purchases for one-time products must be supported."

    .line 14
    .line 15
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    throw v0
.end method

.method public final b()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput-boolean v0, p0, LB/m;->a:Z

    return-void
.end method
