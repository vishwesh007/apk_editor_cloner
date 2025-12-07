.class public final Lcom/android/billingclient/api/l;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private a:Ljava/util/List;

.field private b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/android/billingclient/api/i;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/billingclient/api/l;->a:Ljava/util/List;

    iput-object p1, p0, Lcom/android/billingclient/api/l;->b:Ljava/lang/Object;

    return-void
.end method

.method static bridge synthetic d(Lcom/android/billingclient/api/l;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/billingclient/api/l;->b:Ljava/lang/Object;

    return-void
.end method

.method static bridge synthetic f(Lcom/android/billingclient/api/l;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/billingclient/api/l;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/l;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/l;->a:Ljava/util/List;

    return-object v0
.end method

.method public final c()Lcom/android/billingclient/api/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/l;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/billingclient/api/i;

    return-object v0
.end method

.method public final e()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/l;->a:Ljava/util/List;

    return-object v0
.end method
