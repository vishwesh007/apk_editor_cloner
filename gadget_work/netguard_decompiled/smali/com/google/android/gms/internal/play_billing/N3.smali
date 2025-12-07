.class public final Lcom/google/android/gms/internal/play_billing/N3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Ljava/io/Serializable;

.field b:Lcom/google/android/gms/internal/play_billing/Q3;

.field private c:Lcom/google/android/gms/internal/play_billing/R3;

.field private d:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/R3;->i()Lcom/google/android/gms/internal/play_billing/R3;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/google/android/gms/internal/play_billing/N3;->c:Lcom/google/android/gms/internal/play_billing/R3;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method final a()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/internal/play_billing/N3;->a:Ljava/io/Serializable;

    .line 3
    .line 4
    iput-object v0, p0, Lcom/google/android/gms/internal/play_billing/N3;->b:Lcom/google/android/gms/internal/play_billing/Q3;

    .line 5
    .line 6
    iget-object v1, p0, Lcom/google/android/gms/internal/play_billing/N3;->c:Lcom/google/android/gms/internal/play_billing/R3;

    .line 7
    .line 8
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/play_billing/R3;->c(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final b(Ljava/lang/Integer;)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/google/android/gms/internal/play_billing/N3;->d:Z

    .line 3
    .line 4
    iget-object v1, p0, Lcom/google/android/gms/internal/play_billing/N3;->b:Lcom/google/android/gms/internal/play_billing/Q3;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/play_billing/Q3;->a(Ljava/lang/Integer;)Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    if-eqz v0, :cond_1

    .line 17
    .line 18
    const/4 p1, 0x0

    .line 19
    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/N3;->a:Ljava/io/Serializable;

    .line 20
    .line 21
    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/N3;->b:Lcom/google/android/gms/internal/play_billing/Q3;

    .line 22
    .line 23
    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/N3;->c:Lcom/google/android/gms/internal/play_billing/R3;

    .line 24
    .line 25
    :cond_1
    return-void
.end method

.method protected final finalize()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/N3;->b:Lcom/google/android/gms/internal/play_billing/Q3;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/Q3;->isDone()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    new-instance v1, Lcom/google/android/gms/internal/play_billing/O3;

    .line 12
    .line 13
    iget-object v2, p0, Lcom/google/android/gms/internal/play_billing/N3;->a:Ljava/io/Serializable;

    .line 14
    .line 15
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    const-string v3, "The completer object was garbage collected - this future would otherwise never complete. The tag was: "

    .line 20
    .line 21
    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/play_billing/O3;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/play_billing/Q3;->b(Ljava/lang/Throwable;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/play_billing/N3;->d:Z

    .line 32
    .line 33
    if-nez v0, :cond_1

    .line 34
    .line 35
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/N3;->c:Lcom/google/android/gms/internal/play_billing/R3;

    .line 36
    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    const/4 v1, 0x0

    .line 40
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/play_billing/R3;->c(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    :cond_1
    return-void
.end method
