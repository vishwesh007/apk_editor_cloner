.class final Lcom/google/android/gms/internal/play_billing/F3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/play_billing/b2;


# static fields
.field static final a:Lcom/google/android/gms/internal/play_billing/b2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/play_billing/F3;

    invoke-direct {v0}, Lcom/google/android/gms/internal/play_billing/F3;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/play_billing/F3;->a:Lcom/google/android/gms/internal/play_billing/b2;

    return-void
.end method


# virtual methods
.method public final c(I)Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    if-eqz p1, :cond_0

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    return v0
.end method
