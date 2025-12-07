.class public final Lcom/android/billingclient/api/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Z

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Lcom/android/billingclient/api/f;

.field private e:Lcom/google/android/gms/internal/play_billing/T;

.field private f:Ljava/util/ArrayList;

.field private g:Z


# direct methods
.method synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/android/billingclient/api/d;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/billingclient/api/d;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/android/billingclient/api/d;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method static bridge synthetic j(Lcom/android/billingclient/api/g;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/billingclient/api/g;->a:Z

    return-void
.end method

.method static bridge synthetic k(Lcom/android/billingclient/api/g;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/billingclient/api/g;->g:Z

    return-void
.end method

.method static bridge synthetic l(Lcom/android/billingclient/api/g;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/billingclient/api/g;->b:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic m(Lcom/android/billingclient/api/g;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/billingclient/api/g;->c:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic n(Lcom/android/billingclient/api/g;Lcom/google/android/gms/internal/play_billing/T;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/billingclient/api/g;->e:Lcom/google/android/gms/internal/play_billing/T;

    return-void
.end method

.method static bridge synthetic o(Lcom/android/billingclient/api/g;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/billingclient/api/g;->f:Ljava/util/ArrayList;

    return-void
.end method

.method static bridge synthetic p(Lcom/android/billingclient/api/g;Lcom/android/billingclient/api/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/billingclient/api/g;->d:Lcom/android/billingclient/api/f;

    return-void
.end method


# virtual methods
.method public final b()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/g;->d:Lcom/android/billingclient/api/f;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/billingclient/api/f;->a()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method final c()Lcom/android/billingclient/api/i;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/g;->e:Lcom/google/android/gms/internal/play_billing/T;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lcom/android/billingclient/api/F;->l:Lcom/android/billingclient/api/i;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/android/billingclient/api/g;->e:Lcom/google/android/gms/internal/play_billing/T;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, LB/j;

    .line 20
    .line 21
    iget-object v1, p0, Lcom/android/billingclient/api/g;->e:Lcom/google/android/gms/internal/play_billing/T;

    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    const/4 v2, 0x0

    .line 28
    const/4 v3, 0x1

    .line 29
    if-ge v3, v1, :cond_1

    .line 30
    .line 31
    iget-object v0, p0, Lcom/android/billingclient/api/g;->e:Lcom/google/android/gms/internal/play_billing/T;

    .line 32
    .line 33
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, LB/j;

    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    throw v2

    .line 43
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    throw v2
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/g;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/g;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/g;->d:Lcom/android/billingclient/api/f;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/billingclient/api/f;->b()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/g;->d:Lcom/android/billingclient/api/f;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/billingclient/api/f;->c()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final h()Ljava/util/ArrayList;
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/billingclient/api/g;->f:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method public final i()Lcom/google/android/gms/internal/play_billing/T;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/g;->e:Lcom/google/android/gms/internal/play_billing/T;

    return-object v0
.end method

.method public final q()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/billingclient/api/g;->g:Z

    return v0
.end method

.method final r()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/g;->b:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/billingclient/api/g;->c:Ljava/lang/String;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/billingclient/api/g;->d:Lcom/android/billingclient/api/f;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/android/billingclient/api/f;->c()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lcom/android/billingclient/api/g;->d:Lcom/android/billingclient/api/f;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/android/billingclient/api/f;->a()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_0

    .line 24
    .line 25
    iget-object v0, p0, Lcom/android/billingclient/api/g;->e:Lcom/google/android/gms/internal/play_billing/T;

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->stream()Ljava/util/stream/Stream;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    new-instance v1, LB/u;

    .line 32
    .line 33
    invoke-direct {v1}, LB/u;-><init>()V

    .line 34
    .line 35
    .line 36
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-nez v0, :cond_0

    .line 41
    .line 42
    iget-boolean v0, p0, Lcom/android/billingclient/api/g;->a:Z

    .line 43
    .line 44
    if-nez v0, :cond_0

    .line 45
    .line 46
    iget-boolean v0, p0, Lcom/android/billingclient/api/g;->g:Z

    .line 47
    .line 48
    if-nez v0, :cond_0

    .line 49
    .line 50
    const/4 v0, 0x0

    .line 51
    return v0

    .line 52
    :cond_0
    const/4 v0, 0x1

    .line 53
    return v0
.end method
