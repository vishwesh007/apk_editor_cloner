.class public abstract Ln0/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/lang/String;

.field private final c:Ln0/f;

.field private final d:Ln0/d;

.field private final e:Lo0/a;

.field private final f:I

.field private final g:LE/d;

.field protected final h:Lo0/f;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ln0/f;Ln0/i;)V
    .locals 4

    .line 1
    sget-object v0, Lp0/w;->b:Lp0/w;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    if-eqz p1, :cond_3

    .line 7
    .line 8
    if-eqz p2, :cond_2

    .line 9
    .line 10
    if-eqz p3, :cond_1

    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const-string v2, "The provided context did not have an application context."

    .line 17
    .line 18
    invoke-static {v1, v2}, Lp0/s;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iput-object v1, p0, Ln0/j;->a:Landroid/content/Context;

    .line 22
    .line 23
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 24
    .line 25
    const/16 v3, 0x1e

    .line 26
    .line 27
    if-lt v2, v3, :cond_0

    .line 28
    .line 29
    invoke-static {p1}, Landroidx/core/view/F0;->b(Landroid/content/Context;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const/4 p1, 0x0

    .line 35
    :goto_0
    iput-object p1, p0, Ln0/j;->b:Ljava/lang/String;

    .line 36
    .line 37
    iput-object p2, p0, Ln0/j;->c:Ln0/f;

    .line 38
    .line 39
    iput-object v0, p0, Ln0/j;->d:Ln0/d;

    .line 40
    .line 41
    invoke-static {p2, p1}, Lo0/a;->a(Ln0/f;Ljava/lang/String;)Lo0/a;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    iput-object p1, p0, Ln0/j;->e:Lo0/a;

    .line 46
    .line 47
    new-instance p1, Lo0/B;

    .line 48
    .line 49
    invoke-static {v1}, Lo0/f;->p(Landroid/content/Context;)Lo0/f;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    iput-object p1, p0, Ln0/j;->h:Lo0/f;

    .line 54
    .line 55
    invoke-virtual {p1}, Lo0/f;->g()I

    .line 56
    .line 57
    .line 58
    move-result p2

    .line 59
    iput p2, p0, Ln0/j;->f:I

    .line 60
    .line 61
    iget-object p2, p3, Ln0/i;->a:LE/d;

    .line 62
    .line 63
    iput-object p2, p0, Ln0/j;->g:LE/d;

    .line 64
    .line 65
    invoke-virtual {p1, p0}, Lo0/f;->z(Ln0/j;)V

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    .line 70
    .line 71
    const-string p2, "Settings must not be null; use Settings.DEFAULT_SETTINGS instead."

    .line 72
    .line 73
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    throw p1

    .line 77
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    .line 78
    .line 79
    const-string p2, "Api must not be null."

    .line 80
    .line 81
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    throw p1

    .line 85
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    .line 86
    .line 87
    const-string p2, "Null context is not permitted."

    .line 88
    .line 89
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    throw p1
.end method


# virtual methods
.method protected final a()Lp0/h;
    .locals 4

    .line 1
    new-instance v0, Lp0/h;

    .line 2
    .line 3
    invoke-direct {v0}, Lp0/h;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Ln0/j;->d:Ln0/d;

    .line 7
    .line 8
    instance-of v2, v1, Ln0/c;

    .line 9
    .line 10
    if-eqz v2, :cond_0

    .line 11
    .line 12
    move-object v3, v1

    .line 13
    check-cast v3, Ln0/c;

    .line 14
    .line 15
    invoke-interface {v3}, Ln0/c;->b()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    if-eqz v3, :cond_0

    .line 20
    .line 21
    invoke-virtual {v3}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->b()Landroid/accounts/Account;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    instance-of v3, v1, Ln0/b;

    .line 27
    .line 28
    if-eqz v3, :cond_1

    .line 29
    .line 30
    move-object v3, v1

    .line 31
    check-cast v3, Ln0/b;

    .line 32
    .line 33
    invoke-interface {v3}, Ln0/b;->a()Landroid/accounts/Account;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    const/4 v3, 0x0

    .line 39
    :goto_0
    invoke-virtual {v0, v3}, Lp0/h;->d(Landroid/accounts/Account;)V

    .line 40
    .line 41
    .line 42
    if-eqz v2, :cond_3

    .line 43
    .line 44
    check-cast v1, Ln0/c;

    .line 45
    .line 46
    invoke-interface {v1}, Ln0/c;->b()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    if-nez v1, :cond_2

    .line 51
    .line 52
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    goto :goto_1

    .line 57
    :cond_2
    invoke-virtual {v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->c()Ljava/util/HashSet;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    goto :goto_1

    .line 62
    :cond_3
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    :goto_1
    invoke-virtual {v0, v1}, Lp0/h;->c(Ljava/util/Set;)V

    .line 67
    .line 68
    .line 69
    iget-object v1, p0, Ln0/j;->a:Landroid/content/Context;

    .line 70
    .line 71
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    invoke-virtual {v0, v2}, Lp0/h;->e(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    invoke-virtual {v0, v1}, Lp0/h;->b(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    return-object v0
.end method

.method public final b(Lo0/m;)Landroidx/core/view/accessibility/n;
    .locals 3
    .annotation runtime Lcom/google/errorprone/annotations/ResultIgnorabilityUnspecified;
    .end annotation

    .line 1
    new-instance v0, Lz0/c;

    .line 2
    .line 3
    invoke-direct {v0}, Lz0/c;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Ln0/j;->g:LE/d;

    .line 7
    .line 8
    iget-object v2, p0, Ln0/j;->h:Lo0/f;

    .line 9
    .line 10
    invoke-virtual {v2, p0, p1, v0, v1}, Lo0/f;->v(Ln0/j;Lo0/m;Lz0/c;LE/d;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lz0/c;->a()Landroidx/core/view/accessibility/n;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public final c()Lo0/a;
    .locals 1

    .line 1
    iget-object v0, p0, Ln0/j;->e:Lo0/a;

    return-object v0
.end method

.method public final d()I
    .locals 1

    .line 1
    iget v0, p0, Ln0/j;->f:I

    return v0
.end method

.method public final e(Landroid/os/Looper;Lo0/x;)Ln0/e;
    .locals 8

    .line 1
    invoke-virtual {p0}, Ln0/j;->a()Lp0/h;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lp0/h;->a()Lp0/i;

    .line 6
    .line 7
    .line 8
    move-result-object v4

    .line 9
    iget-object v0, p0, Ln0/j;->c:Ln0/f;

    .line 10
    .line 11
    invoke-virtual {v0}, Ln0/f;->a()Ln0/a;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-static {v1}, Lp0/s;->b(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    iget-object v5, p0, Ln0/j;->d:Ln0/d;

    .line 19
    .line 20
    iget-object v2, p0, Ln0/j;->a:Landroid/content/Context;

    .line 21
    .line 22
    move-object v3, p1

    .line 23
    move-object v6, p2

    .line 24
    move-object v7, p2

    .line 25
    invoke-virtual/range {v1 .. v7}, Ln0/a;->a(Landroid/content/Context;Landroid/os/Looper;Lp0/i;Ln0/d;Ln0/k;Ln0/l;)Ln0/e;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    iget-object p2, p0, Ln0/j;->b:Ljava/lang/String;

    .line 30
    .line 31
    if-eqz p2, :cond_0

    .line 32
    .line 33
    instance-of v0, p1, Lp0/g;

    .line 34
    .line 35
    if-eqz v0, :cond_0

    .line 36
    .line 37
    move-object v0, p1

    .line 38
    check-cast v0, Lp0/g;

    .line 39
    .line 40
    invoke-virtual {v0, p2}, Lp0/g;->C(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    :cond_0
    if-eqz p2, :cond_1

    .line 44
    .line 45
    instance-of p2, p1, Lo0/j;

    .line 46
    .line 47
    if-eqz p2, :cond_1

    .line 48
    .line 49
    move-object p2, p1

    .line 50
    check-cast p2, Lo0/j;

    .line 51
    .line 52
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    :cond_1
    return-object p1
.end method

.method public final f(Landroid/content/Context;Lv0/h;)Lo0/J;
    .locals 2

    .line 1
    new-instance v0, Lo0/J;

    .line 2
    .line 3
    invoke-virtual {p0}, Ln0/j;->a()Lp0/h;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Lp0/h;->a()Lp0/i;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-direct {v0, p1, p2, v1}, Lo0/J;-><init>(Landroid/content/Context;Lv0/h;Lp0/i;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method
