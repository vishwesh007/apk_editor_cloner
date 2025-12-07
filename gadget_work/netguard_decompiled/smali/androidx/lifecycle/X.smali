.class public final Landroidx/lifecycle/X;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroidx/lifecycle/Y;

.field private final b:Landroidx/lifecycle/U;

.field private final c:Lq/c;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/Y;Landroidx/lifecycle/U;)V
    .locals 1

    const-string v0, "store"

    invoke-static {p1, v0}, LP0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    sget-object v0, Lq/a;->b:Lq/a;

    .line 6
    invoke-direct {p0, p1, p2, v0}, Landroidx/lifecycle/X;-><init>(Landroidx/lifecycle/Y;Landroidx/lifecycle/U;Lq/c;)V

    return-void
.end method

.method public constructor <init>(Landroidx/lifecycle/Y;Landroidx/lifecycle/U;Lq/c;)V
    .locals 1

    const-string v0, "store"

    invoke-static {p1, v0}, LP0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "defaultCreationExtras"

    invoke-static {p3, v0}, LP0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/lifecycle/X;->a:Landroidx/lifecycle/Y;

    .line 3
    iput-object p2, p0, Landroidx/lifecycle/X;->b:Landroidx/lifecycle/U;

    .line 4
    iput-object p3, p0, Landroidx/lifecycle/X;->c:Lq/c;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Class;)Landroidx/lifecycle/S;
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string v1, "androidx.lifecycle.ViewModelProvider.DefaultKey:"

    .line 8
    .line 9
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {p0, p1, v0}, Landroidx/lifecycle/X;->b(Ljava/lang/Class;Ljava/lang/String;)Landroidx/lifecycle/S;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1

    .line 18
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 19
    .line 20
    const-string v0, "Local and anonymous classes can not be ViewModels"

    .line 21
    .line 22
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw p1
.end method

.method public final b(Ljava/lang/Class;Ljava/lang/String;)Landroidx/lifecycle/S;
    .locals 5

    .line 1
    const-string v0, "key"

    .line 2
    .line 3
    invoke-static {p2, v0}, LP0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/lifecycle/X;->a:Landroidx/lifecycle/Y;

    .line 7
    .line 8
    invoke-virtual {v0, p2}, Landroidx/lifecycle/Y;->b(Ljava/lang/String;)Landroidx/lifecycle/S;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {p1, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    iget-object v3, p0, Landroidx/lifecycle/X;->b:Landroidx/lifecycle/U;

    .line 17
    .line 18
    if-eqz v2, :cond_3

    .line 19
    .line 20
    instance-of p1, v3, Landroidx/lifecycle/W;

    .line 21
    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    check-cast v3, Landroidx/lifecycle/W;

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 v3, 0x0

    .line 28
    :goto_0
    if-eqz v3, :cond_1

    .line 29
    .line 30
    const-string p1, "viewModel"

    .line 31
    .line 32
    invoke-static {v1, p1}, LP0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    :cond_1
    if-eqz v1, :cond_2

    .line 36
    .line 37
    return-object v1

    .line 38
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    .line 39
    .line 40
    const-string p2, "null cannot be cast to non-null type T of androidx.lifecycle.ViewModelProvider.get"

    .line 41
    .line 42
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw p1

    .line 46
    :cond_3
    new-instance v1, Lq/e;

    .line 47
    .line 48
    iget-object v2, p0, Landroidx/lifecycle/X;->c:Lq/c;

    .line 49
    .line 50
    invoke-direct {v1, v2}, Lq/e;-><init>(Lq/c;)V

    .line 51
    .line 52
    .line 53
    sget v2, Landroidx/lifecycle/V;->a:I

    .line 54
    .line 55
    sget-object v2, Landroidx/lifecycle/L;->a:Landroidx/lifecycle/L;

    .line 56
    .line 57
    invoke-virtual {v1}, Lq/c;->a()Ljava/util/LinkedHashMap;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    invoke-interface {v4, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    :try_start_0
    invoke-interface {v3, p1, v1}, Landroidx/lifecycle/U;->b(Ljava/lang/Class;Lq/e;)Landroidx/lifecycle/S;

    .line 65
    .line 66
    .line 67
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    goto :goto_1

    .line 69
    :catch_0
    invoke-interface {v3, p1}, Landroidx/lifecycle/U;->a(Ljava/lang/Class;)Landroidx/lifecycle/S;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    :goto_1
    invoke-virtual {v0, p2, p1}, Landroidx/lifecycle/Y;->c(Ljava/lang/String;Landroidx/lifecycle/S;)V

    .line 74
    .line 75
    .line 76
    return-object p1
.end method
