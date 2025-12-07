.class public final Lcom/google/android/gms/internal/play_billing/Y;
.super Lcom/google/android/gms/internal/play_billing/u;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final e:Lcom/google/android/gms/internal/play_billing/Y;

.field private static final f:Lcom/google/android/gms/internal/play_billing/Y;


# instance fields
.field private final transient d:Lcom/google/android/gms/internal/play_billing/T;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/play_billing/Y;

    .line 2
    .line 3
    sget v1, Lcom/google/android/gms/internal/play_billing/T;->f:I

    .line 4
    .line 5
    sget-object v1, Lcom/google/android/gms/internal/play_billing/m0;->i:Lcom/google/android/gms/internal/play_billing/T;

    .line 6
    .line 7
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/play_billing/Y;-><init>(Lcom/google/android/gms/internal/play_billing/T;)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/google/android/gms/internal/play_billing/Y;->e:Lcom/google/android/gms/internal/play_billing/Y;

    .line 11
    .line 12
    new-instance v0, Lcom/google/android/gms/internal/play_billing/Y;

    .line 13
    .line 14
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/j0;->a()Lcom/google/android/gms/internal/play_billing/j0;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    const/4 v2, 0x1

    .line 19
    new-array v3, v2, [Ljava/lang/Object;

    .line 20
    .line 21
    const/4 v4, 0x0

    .line 22
    aput-object v1, v3, v4

    .line 23
    .line 24
    :goto_0
    if-ge v4, v2, :cond_1

    .line 25
    .line 26
    aget-object v1, v3, v4

    .line 27
    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    add-int/lit8 v4, v4, 0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    .line 34
    .line 35
    const-string v1, "at index "

    .line 36
    .line 37
    invoke-static {v1, v4}, LB/g;->c(Ljava/lang/String;I)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    throw v0

    .line 45
    :cond_1
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/play_billing/T;->l(I[Ljava/lang/Object;)Lcom/google/android/gms/internal/play_billing/T;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/play_billing/Y;-><init>(Lcom/google/android/gms/internal/play_billing/T;)V

    .line 50
    .line 51
    .line 52
    sput-object v0, Lcom/google/android/gms/internal/play_billing/Y;->f:Lcom/google/android/gms/internal/play_billing/Y;

    .line 53
    .line 54
    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/play_billing/T;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/play_billing/u;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/Y;->d:Lcom/google/android/gms/internal/play_billing/T;

    return-void
.end method

.method static b()Lcom/google/android/gms/internal/play_billing/Y;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/play_billing/Y;->f:Lcom/google/android/gms/internal/play_billing/Y;

    return-object v0
.end method

.method public static c()Lcom/google/android/gms/internal/play_billing/Y;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/play_billing/Y;->e:Lcom/google/android/gms/internal/play_billing/Y;

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic a()Lcom/google/android/gms/internal/play_billing/a0;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/Y;->d:Lcom/google/android/gms/internal/play_billing/T;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    sget-object v0, Lcom/google/android/gms/internal/play_billing/s0;->l:Lcom/google/android/gms/internal/play_billing/s0;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/play_billing/t0;

    .line 13
    .line 14
    sget-object v2, Lcom/google/android/gms/internal/play_billing/i0;->d:Lcom/google/android/gms/internal/play_billing/h0;

    .line 15
    .line 16
    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/internal/play_billing/t0;-><init>(Lcom/google/android/gms/internal/play_billing/T;Ljava/util/Comparator;)V

    .line 17
    .line 18
    .line 19
    move-object v0, v1

    .line 20
    :goto_0
    return-object v0
.end method
