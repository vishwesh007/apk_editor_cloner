.class final Lcom/google/android/gms/internal/play_billing/g0;
.super Lcom/google/android/gms/internal/play_billing/h0;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static final d:Lcom/google/android/gms/internal/play_billing/g0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/play_billing/g0;

    invoke-direct {v0}, Lcom/google/android/gms/internal/play_billing/g0;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/play_billing/g0;->d:Lcom/google/android/gms/internal/play_billing/g0;

    return-void
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Comparable;

    .line 2
    .line 3
    check-cast p2, Ljava/lang/Comparable;

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    invoke-interface {p1, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    return p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Ordering.natural()"

    return-object v0
.end method
