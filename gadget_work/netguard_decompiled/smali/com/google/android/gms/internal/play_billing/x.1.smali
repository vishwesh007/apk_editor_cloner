.class public final synthetic Lcom/google/android/gms/internal/play_billing/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/gms/internal/play_billing/x;->a:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/play_billing/x;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :pswitch_0
    check-cast p1, Lcom/google/android/gms/internal/play_billing/X;

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_billing/X;->c()Lcom/google/android/gms/internal/play_billing/Y;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1

    .line 14
    :goto_0
    check-cast p1, Lcom/google/android/gms/internal/play_billing/O;

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    iput-boolean v0, p1, Lcom/google/android/gms/internal/play_billing/M;->c:Z

    .line 18
    .line 19
    iget-object v0, p1, Lcom/google/android/gms/internal/play_billing/M;->a:[Ljava/lang/Object;

    .line 20
    .line 21
    iget p1, p1, Lcom/google/android/gms/internal/play_billing/M;->b:I

    .line 22
    .line 23
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/play_billing/T;->l(I[Ljava/lang/Object;)Lcom/google/android/gms/internal/play_billing/T;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    return-object p1

    .line 28
    nop

    .line 29
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
