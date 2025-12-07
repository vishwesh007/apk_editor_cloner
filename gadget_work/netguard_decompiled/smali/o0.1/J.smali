.class public final Lo0/J;
.super Ly0/d;
.source "SourceFile"

# interfaces
.implements Ln0/k;
.implements Ln0/l;


# static fields
.field private static final h:Ln0/a;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/os/Handler;

.field private final c:Ln0/a;

.field private final d:Ljava/util/Set;

.field private final e:Lp0/i;

.field private f:Lx0/f;

.field private g:Lo0/I;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lx0/e;->a:Ln0/a;

    .line 2
    .line 3
    sput-object v0, Lo0/J;->h:Ln0/a;

    .line 4
    .line 5
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lv0/h;Lp0/i;)V
    .locals 1

    .line 1
    sget-object v0, Lo0/J;->h:Ln0/a;

    .line 2
    .line 3
    invoke-direct {p0}, Ly0/d;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lo0/J;->a:Landroid/content/Context;

    .line 7
    .line 8
    iput-object p2, p0, Lo0/J;->b:Landroid/os/Handler;

    .line 9
    .line 10
    iput-object p3, p0, Lo0/J;->e:Lp0/i;

    .line 11
    .line 12
    invoke-virtual {p3}, Lp0/i;->e()Ljava/util/Set;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iput-object p1, p0, Lo0/J;->d:Ljava/util/Set;

    .line 17
    .line 18
    iput-object v0, p0, Lo0/J;->c:Ln0/a;

    .line 19
    .line 20
    return-void
.end method

.method static bridge synthetic w(Lo0/J;)Lo0/I;
    .locals 0

    .line 1
    iget-object p0, p0, Lo0/J;->g:Lo0/I;

    return-object p0
.end method

.method static bridge synthetic x(Lo0/J;Ly0/i;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ly0/i;->b()Lm0/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lm0/a;->f()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    invoke-virtual {p1}, Ly0/i;->c()Lp0/H;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-static {p1}, Lp0/s;->b(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Lp0/H;->b()Lm0/a;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Lm0/a;->f()Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-nez v1, :cond_0

    .line 27
    .line 28
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    new-instance v1, Ljava/lang/Exception;

    .line 33
    .line 34
    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    .line 35
    .line 36
    .line 37
    const-string v2, "Sign-in succeeded with resolve account failure: "

    .line 38
    .line 39
    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    const-string v2, "SignInCoordinator"

    .line 44
    .line 45
    invoke-static {v2, p1, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 46
    .line 47
    .line 48
    iget-object p1, p0, Lo0/J;->g:Lo0/I;

    .line 49
    .line 50
    check-cast p1, Lo0/A;

    .line 51
    .line 52
    invoke-virtual {p1, v0}, Lo0/A;->f(Lm0/a;)V

    .line 53
    .line 54
    .line 55
    iget-object p0, p0, Lo0/J;->f:Lx0/f;

    .line 56
    .line 57
    invoke-interface {p0}, Ln0/e;->h()V

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :cond_0
    iget-object v0, p0, Lo0/J;->g:Lo0/I;

    .line 62
    .line 63
    invoke-virtual {p1}, Lp0/H;->c()Lp0/n;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    iget-object v1, p0, Lo0/J;->d:Ljava/util/Set;

    .line 68
    .line 69
    check-cast v0, Lo0/A;

    .line 70
    .line 71
    invoke-virtual {v0, p1, v1}, Lo0/A;->g(Lp0/n;Ljava/util/Set;)V

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_1
    iget-object p1, p0, Lo0/J;->g:Lo0/I;

    .line 76
    .line 77
    check-cast p1, Lo0/A;

    .line 78
    .line 79
    invoke-virtual {p1, v0}, Lo0/A;->f(Lm0/a;)V

    .line 80
    .line 81
    .line 82
    :goto_0
    iget-object p0, p0, Lo0/J;->f:Lx0/f;

    .line 83
    .line 84
    invoke-interface {p0}, Ln0/e;->h()V

    .line 85
    .line 86
    .line 87
    return-void
.end method


# virtual methods
.method public final l(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lo0/J;->g:Lo0/I;

    .line 2
    .line 3
    check-cast v0, Lo0/A;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lo0/A;->h(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final o(Lm0/a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lo0/J;->g:Lo0/I;

    .line 2
    .line 3
    check-cast v0, Lo0/A;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lo0/A;->f(Lm0/a;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final r()V
    .locals 1

    .line 1
    iget-object v0, p0, Lo0/J;->f:Lx0/f;

    .line 2
    .line 3
    invoke-interface {v0, p0}, Lx0/f;->g(Ly0/e;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final v(Ly0/i;)V
    .locals 1

    .line 1
    new-instance v0, Lo0/H;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lo0/H;-><init>(Lo0/J;Ly0/i;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lo0/J;->b:Landroid/os/Handler;

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final y(Lo0/I;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lo0/J;->f:Lx0/f;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Ln0/e;->h()V

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget-object v4, p0, Lo0/J;->e:Lp0/i;

    .line 17
    .line 18
    invoke-virtual {v4, v0}, Lp0/i;->i(Ljava/lang/Integer;)V

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lo0/J;->c:Ln0/a;

    .line 22
    .line 23
    iget-object v2, p0, Lo0/J;->a:Landroid/content/Context;

    .line 24
    .line 25
    iget-object v0, p0, Lo0/J;->b:Landroid/os/Handler;

    .line 26
    .line 27
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    invoke-virtual {v4}, Lp0/i;->f()Lx0/a;

    .line 32
    .line 33
    .line 34
    move-result-object v5

    .line 35
    move-object v6, p0

    .line 36
    move-object v7, p0

    .line 37
    invoke-virtual/range {v1 .. v7}, Ln0/a;->a(Landroid/content/Context;Landroid/os/Looper;Lp0/i;Ln0/d;Ln0/k;Ln0/l;)Ln0/e;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    iput-object v1, p0, Lo0/J;->f:Lx0/f;

    .line 42
    .line 43
    iput-object p1, p0, Lo0/J;->g:Lo0/I;

    .line 44
    .line 45
    iget-object p1, p0, Lo0/J;->d:Ljava/util/Set;

    .line 46
    .line 47
    if-eqz p1, :cond_2

    .line 48
    .line 49
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    if-eqz p1, :cond_1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    iget-object p1, p0, Lo0/J;->f:Lx0/f;

    .line 57
    .line 58
    invoke-interface {p1}, Lx0/f;->l()V

    .line 59
    .line 60
    .line 61
    return-void

    .line 62
    :cond_2
    :goto_0
    new-instance p1, Lo0/v;

    .line 63
    .line 64
    const/4 v1, 0x1

    .line 65
    invoke-direct {p1, v1, p0}, Lo0/v;-><init>(ILjava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 69
    .line 70
    .line 71
    return-void
.end method

.method public final z()V
    .locals 1

    .line 1
    iget-object v0, p0, Lo0/J;->f:Lx0/f;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Ln0/e;->h()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method
