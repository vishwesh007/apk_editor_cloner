.class final Lcom/google/android/gms/internal/play_billing/n0;
.super Lcom/google/android/gms/internal/play_billing/T;
.source "SourceFile"


# instance fields
.field final synthetic g:Lcom/google/android/gms/internal/play_billing/o0;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/play_billing/o0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/n0;->g:Lcom/google/android/gms/internal/play_billing/o0;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/internal/play_billing/T;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final bridge synthetic get(I)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/n0;->g:Lcom/google/android/gms/internal/play_billing/o0;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/o0;->o(Lcom/google/android/gms/internal/play_billing/o0;)I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/play_billing/r;->e(II)V

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/o0;->p(Lcom/google/android/gms/internal/play_billing/o0;)[Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    add-int/2addr p1, p1

    .line 15
    aget-object v1, v1, p1

    .line 16
    .line 17
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/o0;->p(Lcom/google/android/gms/internal/play_billing/o0;)[Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    add-int/lit8 p1, p1, 0x1

    .line 25
    .line 26
    aget-object p1, v0, p1

    .line 27
    .line 28
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    new-instance v0, Ljava/util/AbstractMap$SimpleImmutableEntry;

    .line 32
    .line 33
    invoke-direct {v0, v1, p1}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    return-object v0
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/n0;->g:Lcom/google/android/gms/internal/play_billing/o0;

    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/o0;->o(Lcom/google/android/gms/internal/play_billing/o0;)I

    move-result v0

    return v0
.end method
