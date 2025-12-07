.class public final Lcom/android/billingclient/api/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Z


# direct methods
.method static synthetic b(Lcom/android/billingclient/api/e;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/billingclient/api/e;->a:Z

    return-void
.end method


# virtual methods
.method public final a()Lcom/android/billingclient/api/f;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    const/4 v2, 0x1

    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v1, 0x0

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 19
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    xor-int/2addr v0, v2

    .line 24
    if-eqz v1, :cond_3

    .line 25
    .line 26
    if-nez v0, :cond_2

    .line 27
    .line 28
    goto :goto_2

    .line 29
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 30
    .line 31
    const-string v1, "Please provide Old SKU purchase information(token/id) or original external transaction id, not both."

    .line 32
    .line 33
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    throw v0

    .line 37
    :cond_3
    :goto_2
    iget-boolean v2, p0, Lcom/android/billingclient/api/e;->a:Z

    .line 38
    .line 39
    if-nez v2, :cond_5

    .line 40
    .line 41
    if-nez v1, :cond_5

    .line 42
    .line 43
    if-eqz v0, :cond_4

    .line 44
    .line 45
    goto :goto_3

    .line 46
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 47
    .line 48
    const-string v1, "Old SKU purchase information(token/id) or original external transaction id must be provided."

    .line 49
    .line 50
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw v0

    .line 54
    :cond_5
    :goto_3
    new-instance v0, Lcom/android/billingclient/api/f;

    .line 55
    .line 56
    invoke-direct {v0}, Lcom/android/billingclient/api/f;-><init>()V

    .line 57
    .line 58
    .line 59
    invoke-static {v0}, Lcom/android/billingclient/api/f;->d(Lcom/android/billingclient/api/f;)V

    .line 60
    .line 61
    .line 62
    invoke-static {v0}, Lcom/android/billingclient/api/f;->f(Lcom/android/billingclient/api/f;)V

    .line 63
    .line 64
    .line 65
    invoke-static {v0}, Lcom/android/billingclient/api/f;->e(Lcom/android/billingclient/api/f;)V

    .line 66
    .line 67
    .line 68
    return-object v0
.end method
