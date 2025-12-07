.class public abstract Lcom/google/android/gms/internal/play_billing/I;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/google/android/gms/internal/play_billing/I;

.field private static final b:Lcom/google/android/gms/internal/play_billing/I;

.field private static final c:Lcom/google/android/gms/internal/play_billing/I;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/play_billing/F;

    invoke-direct {v0}, Lcom/google/android/gms/internal/play_billing/F;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/play_billing/I;->a:Lcom/google/android/gms/internal/play_billing/I;

    new-instance v0, Lcom/google/android/gms/internal/play_billing/G;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/play_billing/G;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/internal/play_billing/I;->b:Lcom/google/android/gms/internal/play_billing/I;

    new-instance v0, Lcom/google/android/gms/internal/play_billing/G;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/play_billing/G;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/internal/play_billing/I;->c:Lcom/google/android/gms/internal/play_billing/I;

    return-void
.end method

.method synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static bridge synthetic c()Lcom/google/android/gms/internal/play_billing/I;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/play_billing/I;->a:Lcom/google/android/gms/internal/play_billing/I;

    return-object v0
.end method

.method static bridge synthetic d()Lcom/google/android/gms/internal/play_billing/I;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/play_billing/I;->c:Lcom/google/android/gms/internal/play_billing/I;

    return-object v0
.end method

.method static bridge synthetic e()Lcom/google/android/gms/internal/play_billing/I;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/play_billing/I;->b:Lcom/google/android/gms/internal/play_billing/I;

    return-object v0
.end method

.method public static f()Lcom/google/android/gms/internal/play_billing/I;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/play_billing/I;->a:Lcom/google/android/gms/internal/play_billing/I;

    return-object v0
.end method


# virtual methods
.method public abstract a()I
.end method

.method public abstract b(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/android/gms/internal/play_billing/I;
.end method
