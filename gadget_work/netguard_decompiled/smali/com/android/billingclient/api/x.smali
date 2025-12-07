.class public final synthetic Lcom/android/billingclient/api/x;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/android/billingclient/api/C;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/billingclient/api/C;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/billingclient/api/x;->a:Lcom/android/billingclient/api/C;

    iput p2, p0, Lcom/android/billingclient/api/x;->b:I

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/play_billing/N3;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/x;->a:Lcom/android/billingclient/api/C;

    iget v1, p0, Lcom/android/billingclient/api/x;->b:I

    invoke-virtual {v0, v1, p1}, Lcom/android/billingclient/api/C;->w0(ILcom/google/android/gms/internal/play_billing/N3;)V

    return-void
.end method
