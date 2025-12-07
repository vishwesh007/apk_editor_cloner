.class final Lcom/google/android/gms/internal/play_billing/J;
.super Lcom/google/android/gms/internal/play_billing/L;
.source "SourceFile"


# static fields
.field private static final d:Lcom/google/android/gms/internal/play_billing/J;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/play_billing/J;

    invoke-direct {v0}, Lcom/google/android/gms/internal/play_billing/J;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/play_billing/J;->d:Lcom/google/android/gms/internal/play_billing/J;

    return-void
.end method

.method static bridge synthetic i()Lcom/google/android/gms/internal/play_billing/J;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/play_billing/J;->d:Lcom/google/android/gms/internal/play_billing/J;

    return-object v0
.end method


# virtual methods
.method public final compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/play_billing/L;

    .line 2
    .line 3
    if-ne p1, p0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p1, 0x1

    .line 8
    :goto_0
    return p1
.end method

.method public final f(Lcom/google/android/gms/internal/play_billing/L;)I
    .locals 0

    .line 1
    if-ne p1, p0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method final g(Ljava/lang/StringBuilder;)V
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/AssertionError;

    .line 2
    .line 3
    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    .line 4
    .line 5
    .line 6
    throw p1
.end method

.method final h(Ljava/lang/StringBuilder;)V
    .locals 1

    .line 1
    const-string v0, "+\u221e)"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "+\u221e"

    return-object v0
.end method
