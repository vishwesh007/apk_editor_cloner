.class public final synthetic Lcom/google/android/gms/internal/play_billing/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BinaryOperator;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/gms/internal/play_billing/w;->a:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/play_billing/w;->a:I

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
    check-cast p2, Lcom/google/android/gms/internal/play_billing/X;

    .line 10
    .line 11
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/play_billing/X;->b(Lcom/google/android/gms/internal/play_billing/X;)V

    .line 12
    .line 13
    .line 14
    return-object p1

    .line 15
    :goto_0
    check-cast p1, Lcom/google/android/gms/internal/play_billing/O;

    .line 16
    .line 17
    check-cast p2, Lcom/google/android/gms/internal/play_billing/O;

    .line 18
    .line 19
    iget-object v0, p2, Lcom/google/android/gms/internal/play_billing/M;->a:[Ljava/lang/Object;

    .line 20
    .line 21
    iget p2, p2, Lcom/google/android/gms/internal/play_billing/M;->b:I

    .line 22
    .line 23
    invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/internal/play_billing/M;->k(I[Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    return-object p1

    .line 27
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
