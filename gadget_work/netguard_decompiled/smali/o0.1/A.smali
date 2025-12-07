.class final Lo0/A;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp0/d;
.implements Lo0/I;


# instance fields
.field private final a:Ln0/e;

.field private final b:Lo0/a;

.field private c:Lp0/n;

.field private d:Ljava/util/Set;

.field private e:Z

.field final synthetic f:Lo0/f;


# direct methods
.method public constructor <init>(Lo0/f;Ln0/e;Lo0/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo0/A;->f:Lo0/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lo0/A;->c:Lp0/n;

    iput-object p1, p0, Lo0/A;->d:Ljava/util/Set;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lo0/A;->e:Z

    iput-object p2, p0, Lo0/A;->a:Ln0/e;

    iput-object p3, p0, Lo0/A;->b:Lo0/a;

    return-void
.end method

.method static bridge synthetic b(Lo0/A;)Ln0/e;
    .locals 0

    .line 1
    iget-object p0, p0, Lo0/A;->a:Ln0/e;

    return-object p0
.end method

.method static bridge synthetic c(Lo0/A;)Lo0/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lo0/A;->b:Lo0/a;

    return-object p0
.end method

.method static bridge synthetic d(Lo0/A;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo0/A;->e:Z

    return-void
.end method

.method static e(Lo0/A;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lo0/A;->e:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lo0/A;->c:Lp0/n;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v1, p0, Lo0/A;->a:Ln0/e;

    .line 10
    .line 11
    iget-object p0, p0, Lo0/A;->d:Ljava/util/Set;

    .line 12
    .line 13
    invoke-interface {v1, v0, p0}, Ln0/e;->o(Lp0/n;Ljava/util/Set;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lm0/a;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lo0/A;->f:Lo0/f;

    .line 2
    .line 3
    invoke-static {v0}, Lo0/f;->j(Lo0/f;)Lv0/h;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lo0/z;

    .line 8
    .line 9
    invoke-direct {v1, p0, p1}, Lo0/z;-><init>(Lo0/A;Lm0/a;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final f(Lm0/a;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lo0/A;->f:Lo0/f;

    .line 2
    .line 3
    invoke-static {v0}, Lo0/f;->s(Lo0/f;)Ljava/util/concurrent/ConcurrentHashMap;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lo0/A;->b:Lo0/a;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lo0/x;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Lo0/x;->E(Lm0/a;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public final g(Lp0/n;Ljava/util/Set;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    if-nez p2, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lo0/A;->c:Lp0/n;

    .line 7
    .line 8
    iput-object p2, p0, Lo0/A;->d:Ljava/util/Set;

    .line 9
    .line 10
    iget-boolean v0, p0, Lo0/A;->e:Z

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iget-object v0, p0, Lo0/A;->a:Ln0/e;

    .line 15
    .line 16
    invoke-interface {v0, p1, p2}, Ln0/e;->o(Lp0/n;Ljava/util/Set;)V

    .line 17
    .line 18
    .line 19
    :cond_1
    return-void

    .line 20
    :cond_2
    :goto_0
    new-instance p1, Ljava/lang/Exception;

    .line 21
    .line 22
    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    .line 23
    .line 24
    .line 25
    const-string p2, "GoogleApiManager"

    .line 26
    .line 27
    const-string v0, "Received null response from onSignInSuccess"

    .line 28
    .line 29
    invoke-static {p2, v0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 30
    .line 31
    .line 32
    new-instance p1, Lm0/a;

    .line 33
    .line 34
    const/4 p2, 0x4

    .line 35
    invoke-direct {p1, p2}, Lm0/a;-><init>(I)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, p1}, Lo0/A;->f(Lm0/a;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public final h(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lo0/A;->f:Lo0/f;

    .line 2
    .line 3
    invoke-static {v0}, Lo0/f;->s(Lo0/f;)Ljava/util/concurrent/ConcurrentHashMap;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lo0/A;->b:Lo0/a;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lo0/x;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-static {v0}, Lo0/x;->I(Lo0/x;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    new-instance p1, Lm0/a;

    .line 24
    .line 25
    const/16 v1, 0x11

    .line 26
    .line 27
    invoke-direct {p1, v1}, Lm0/a;-><init>(I)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, p1}, Lo0/x;->E(Lm0/a;)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_0
    invoke-virtual {v0, p1}, Lo0/x;->l(I)V

    .line 35
    .line 36
    .line 37
    :cond_1
    return-void
.end method
