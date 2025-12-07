.class public final synthetic Lcom/android/billingclient/api/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lcom/android/billingclient/api/c;

.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Lcom/android/billingclient/api/c;ILjava/lang/String;Ljava/lang/String;Lcom/android/billingclient/api/g;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/billingclient/api/q;->a:Lcom/android/billingclient/api/c;

    iput p2, p0, Lcom/android/billingclient/api/q;->b:I

    iput-object p3, p0, Lcom/android/billingclient/api/q;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/billingclient/api/q;->d:Ljava/lang/String;

    iput-object p6, p0, Lcom/android/billingclient/api/q;->e:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lcom/android/billingclient/api/q;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/billingclient/api/q;->e:Landroid/os/Bundle;

    iget-object v2, p0, Lcom/android/billingclient/api/q;->a:Lcom/android/billingclient/api/c;

    iget v3, p0, Lcom/android/billingclient/api/q;->b:I

    iget-object v4, p0, Lcom/android/billingclient/api/q;->c:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v0, v1}, Lcom/android/billingclient/api/c;->b0(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method
