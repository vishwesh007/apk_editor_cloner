.class public final Lo0/L;
.super Lo0/C;
.source "SourceFile"


# instance fields
.field private final b:Lo0/m;

.field private final c:Lz0/c;

.field private final d:LE/d;


# direct methods
.method public constructor <init>(Lo0/m;Lz0/c;LE/d;)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-direct {p0, v0}, Lo0/C;-><init>(I)V

    .line 3
    .line 4
    .line 5
    iput-object p2, p0, Lo0/L;->c:Lz0/c;

    .line 6
    .line 7
    iput-object p1, p0, Lo0/L;->b:Lo0/m;

    .line 8
    .line 9
    iput-object p3, p0, Lo0/L;->d:LE/d;

    .line 10
    .line 11
    invoke-virtual {p1}, Lo0/m;->c()Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-nez p1, :cond_0

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 19
    .line 20
    const-string p2, "Best-effort write calls cannot pass methods that should auto-resolve missing features."

    .line 21
    .line 22
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw p1
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/api/Status;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lo0/L;->d:LE/d;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->e()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    new-instance v0, Ln0/q;

    .line 13
    .line 14
    invoke-direct {v0, p1}, Ln0/q;-><init>(Lcom/google/android/gms/common/api/Status;)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    new-instance v0, Ln0/g;

    .line 19
    .line 20
    invoke-direct {v0, p1}, Ln0/g;-><init>(Lcom/google/android/gms/common/api/Status;)V

    .line 21
    .line 22
    .line 23
    :goto_0
    iget-object p1, p0, Lo0/L;->c:Lz0/c;

    .line 24
    .line 25
    invoke-virtual {p1, v0}, Lz0/c;->c(Ljava/lang/Exception;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public final b(Ljava/lang/RuntimeException;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lo0/L;->c:Lz0/c;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lz0/c;->c(Ljava/lang/Exception;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final c(Lo0/x;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lo0/L;->c:Lz0/c;

    .line 2
    .line 3
    :try_start_0
    iget-object v1, p0, Lo0/L;->b:Lo0/m;

    .line 4
    .line 5
    invoke-virtual {p1}, Lo0/x;->s()Ln0/e;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {v1, p1, v0}, Lo0/m;->b(Ln0/e;Lz0/c;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :catch_0
    move-exception p1

    .line 14
    invoke-virtual {v0, p1}, Lz0/c;->c(Ljava/lang/Exception;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :catch_1
    move-exception p1

    .line 19
    invoke-static {p1}, Lo0/N;->e(Landroid/os/RemoteException;)Lcom/google/android/gms/common/api/Status;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {p0, p1}, Lo0/L;->a(Lcom/google/android/gms/common/api/Status;)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :catch_2
    move-exception p1

    .line 28
    throw p1
.end method

.method public final d(Lo0/o;Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lo0/L;->c:Lz0/c;

    .line 2
    .line 3
    invoke-virtual {p1, v0, p2}, Lo0/o;->b(Lz0/c;Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final f(Lo0/x;)Z
    .locals 0

    .line 1
    iget-object p1, p0, Lo0/L;->b:Lo0/m;

    .line 2
    .line 3
    invoke-virtual {p1}, Lo0/m;->c()Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final g(Lo0/x;)[Lm0/c;
    .locals 0

    .line 1
    iget-object p1, p0, Lo0/L;->b:Lo0/m;

    .line 2
    .line 3
    invoke-virtual {p1}, Lo0/m;->e()[Lm0/c;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
