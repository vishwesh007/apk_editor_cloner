.class final Lcom/google/android/gms/internal/play_billing/i3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/play_billing/b2;


# static fields
.field static final a:Lcom/google/android/gms/internal/play_billing/b2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/play_billing/i3;

    invoke-direct {v0}, Lcom/google/android/gms/internal/play_billing/i3;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/play_billing/i3;->a:Lcom/google/android/gms/internal/play_billing/b2;

    return-void
.end method


# virtual methods
.method public final c(I)Z
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/play_billing/q;->g(I)I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
