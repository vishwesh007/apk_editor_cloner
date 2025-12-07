.class final Lcom/google/android/gms/internal/play_billing/p0;
.super Lcom/google/android/gms/internal/play_billing/a0;
.source "SourceFile"


# instance fields
.field private final transient f:Lcom/google/android/gms/internal/play_billing/W;

.field private final transient g:Lcom/google/android/gms/internal/play_billing/T;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/play_billing/W;Lcom/google/android/gms/internal/play_billing/T;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/play_billing/a0;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/p0;->f:Lcom/google/android/gms/internal/play_billing/W;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/play_billing/p0;->g:Lcom/google/android/gms/internal/play_billing/T;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/p0;->f:Lcom/google/android/gms/internal/play_billing/W;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/play_billing/W;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x1

    .line 10
    return p1

    .line 11
    :cond_0
    const/4 p1, 0x0

    .line 12
    return p1
.end method

.method final e([Ljava/lang/Object;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/p0;->g:Lcom/google/android/gms/internal/play_billing/T;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/play_billing/T;->e([Ljava/lang/Object;)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final h()Lcom/google/android/gms/internal/play_billing/w0;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/p0;->g:Lcom/google/android/gms/internal/play_billing/T;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/play_billing/T;->n(I)Lcom/google/android/gms/internal/play_billing/x0;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    return-object v0
.end method

.method public final synthetic iterator()Ljava/util/Iterator;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/p0;->g:Lcom/google/android/gms/internal/play_billing/T;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/play_billing/T;->n(I)Lcom/google/android/gms/internal/play_billing/x0;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    return-object v0
.end method

.method public final j()Lcom/google/android/gms/internal/play_billing/T;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/p0;->g:Lcom/google/android/gms/internal/play_billing/T;

    return-object v0
.end method

.method public final size()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/p0;->f:Lcom/google/android/gms/internal/play_billing/W;

    .line 2
    .line 3
    check-cast v0, Lcom/google/android/gms/internal/play_billing/r0;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/r0;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method
