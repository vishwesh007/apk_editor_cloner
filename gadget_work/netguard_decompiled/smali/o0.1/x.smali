.class public final Lo0/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln0/k;
.implements Ln0/l;


# instance fields
.field private final a:Ljava/util/LinkedList;

.field private final b:Ln0/e;
    .annotation runtime Lorg/checkerframework/checker/initialization/qual/NotOnlyInitialized;
    .end annotation
.end field

.field private final c:Lo0/a;

.field private final d:Lo0/o;

.field private final e:Ljava/util/HashSet;

.field private final f:Ljava/util/HashMap;

.field private final g:I

.field private final h:Lo0/J;

.field private i:Z

.field private final j:Ljava/util/ArrayList;

.field private k:Lm0/a;

.field final synthetic l:Lo0/f;


# direct methods
.method public constructor <init>(Lo0/f;Ln0/j;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lo0/x;->l:Lo0/f;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/util/LinkedList;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lo0/x;->a:Ljava/util/LinkedList;

    .line 12
    .line 13
    new-instance v0, Ljava/util/HashSet;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lo0/x;->e:Ljava/util/HashSet;

    .line 19
    .line 20
    new-instance v0, Ljava/util/HashMap;

    .line 21
    .line 22
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lo0/x;->f:Ljava/util/HashMap;

    .line 26
    .line 27
    new-instance v0, Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 30
    .line 31
    .line 32
    iput-object v0, p0, Lo0/x;->j:Ljava/util/ArrayList;

    .line 33
    .line 34
    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Lo0/x;->k:Lm0/a;

    .line 36
    .line 37
    invoke-static {p1}, Lo0/f;->j(Lo0/f;)Lv0/h;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {p2, v1, p0}, Ln0/j;->e(Landroid/os/Looper;Lo0/x;)Ln0/e;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    iput-object v1, p0, Lo0/x;->b:Ln0/e;

    .line 50
    .line 51
    invoke-virtual {p2}, Ln0/j;->c()Lo0/a;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    iput-object v2, p0, Lo0/x;->c:Lo0/a;

    .line 56
    .line 57
    new-instance v2, Lo0/o;

    .line 58
    .line 59
    invoke-direct {v2}, Lo0/o;-><init>()V

    .line 60
    .line 61
    .line 62
    iput-object v2, p0, Lo0/x;->d:Lo0/o;

    .line 63
    .line 64
    invoke-virtual {p2}, Ln0/j;->d()I

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    iput v2, p0, Lo0/x;->g:I

    .line 69
    .line 70
    invoke-interface {v1}, Ln0/e;->j()Z

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    if-eqz v1, :cond_0

    .line 75
    .line 76
    invoke-static {p1}, Lo0/f;->i(Lo0/f;)Landroid/content/Context;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-static {p1}, Lo0/f;->j(Lo0/f;)Lv0/h;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-virtual {p2, v0, p1}, Ln0/j;->f(Landroid/content/Context;Lv0/h;)Lo0/J;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    iput-object p1, p0, Lo0/x;->h:Lo0/J;

    .line 89
    .line 90
    return-void

    .line 91
    :cond_0
    iput-object v0, p0, Lo0/x;->h:Lo0/J;

    .line 92
    .line 93
    return-void
.end method

.method static bridge synthetic I(Lo0/x;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lo0/x;->i:Z

    return p0
.end method

.method static bridge synthetic J(Lo0/x;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lo0/x;->n(Z)Z

    return-void
.end method

.method private final c(Lm0/a;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lo0/x;->e:Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-eqz v2, :cond_1

    .line 12
    .line 13
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lo0/O;

    .line 18
    .line 19
    sget-object v1, Lm0/a;->e:Lm0/a;

    .line 20
    .line 21
    invoke-static {p1, v1}, Lp0/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    if-eqz p1, :cond_0

    .line 26
    .line 27
    iget-object p1, p0, Lo0/x;->b:Ln0/e;

    .line 28
    .line 29
    invoke-interface {p1}, Ln0/e;->d()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    const/4 p1, 0x0

    .line 36
    throw p1

    .line 37
    :cond_1
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method private final d(Lcom/google/android/gms/common/api/Status;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lo0/x;->l:Lo0/f;

    .line 2
    .line 3
    invoke-static {v0}, Lo0/f;->j(Lo0/f;)Lv0/h;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lp0/s;->a(Lv0/h;)V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-direct {p0, p1, v0, v1}, Lo0/x;->e(Lcom/google/android/gms/common/api/Status;Ljava/lang/RuntimeException;Z)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method private final e(Lcom/google/android/gms/common/api/Status;Ljava/lang/RuntimeException;Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lo0/x;->l:Lo0/f;

    .line 2
    .line 3
    invoke-static {v0}, Lo0/f;->j(Lo0/f;)Lv0/h;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lp0/s;->a(Lv0/h;)V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v2, 0x1

    .line 17
    :goto_0
    if-eqz p2, :cond_1

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    :cond_1
    if-eq v2, v0, :cond_6

    .line 21
    .line 22
    iget-object v0, p0, Lo0/x;->a:Ljava/util/LinkedList;

    .line 23
    .line 24
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_5

    .line 33
    .line 34
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    check-cast v1, Lo0/N;

    .line 39
    .line 40
    if-eqz p3, :cond_3

    .line 41
    .line 42
    iget v2, v1, Lo0/N;->a:I

    .line 43
    .line 44
    const/4 v3, 0x2

    .line 45
    if-ne v2, v3, :cond_2

    .line 46
    .line 47
    :cond_3
    if-eqz p1, :cond_4

    .line 48
    .line 49
    invoke-virtual {v1, p1}, Lo0/N;->a(Lcom/google/android/gms/common/api/Status;)V

    .line 50
    .line 51
    .line 52
    goto :goto_2

    .line 53
    :cond_4
    invoke-virtual {v1, p2}, Lo0/N;->b(Ljava/lang/RuntimeException;)V

    .line 54
    .line 55
    .line 56
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 57
    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_5
    return-void

    .line 61
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 62
    .line 63
    const-string p2, "Status XOR exception should be null"

    .line 64
    .line 65
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    throw p1
.end method

.method private final f()V
    .locals 6

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    iget-object v1, p0, Lo0/x;->a:Ljava/util/LinkedList;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    const/4 v3, 0x0

    .line 13
    :goto_0
    if-ge v3, v2, :cond_2

    .line 14
    .line 15
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    check-cast v4, Lo0/N;

    .line 20
    .line 21
    iget-object v5, p0, Lo0/x;->b:Ln0/e;

    .line 22
    .line 23
    invoke-interface {v5}, Ln0/e;->c()Z

    .line 24
    .line 25
    .line 26
    move-result v5

    .line 27
    if-nez v5, :cond_0

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_0
    invoke-direct {p0, v4}, Lo0/x;->k(Lo0/N;)Z

    .line 31
    .line 32
    .line 33
    move-result v5

    .line 34
    if-eqz v5, :cond_1

    .line 35
    .line 36
    invoke-virtual {v1, v4}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_2
    :goto_1
    return-void
.end method

.method private final g()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lo0/x;->A()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lm0/a;->e:Lm0/a;

    .line 5
    .line 6
    invoke-direct {p0, v0}, Lo0/x;->c(Lm0/a;)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lo0/x;->j()V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lo0/x;->f:Ljava/util/HashMap;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-nez v1, :cond_0

    .line 27
    .line 28
    invoke-direct {p0}, Lo0/x;->f()V

    .line 29
    .line 30
    .line 31
    invoke-direct {p0}, Lo0/x;->i()V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    check-cast v0, Lo0/G;

    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    const/4 v0, 0x0

    .line 45
    throw v0
.end method

.method private final h(I)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lo0/x;->A()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lo0/x;->i:Z

    .line 6
    .line 7
    iget-object v0, p0, Lo0/x;->b:Ln0/e;

    .line 8
    .line 9
    invoke-interface {v0}, Ln0/e;->e()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v1, p0, Lo0/x;->d:Lo0/o;

    .line 14
    .line 15
    invoke-virtual {v1, p1, v0}, Lo0/o;->c(ILjava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Lo0/x;->l:Lo0/f;

    .line 19
    .line 20
    invoke-static {p1}, Lo0/f;->j(Lo0/f;)Lv0/h;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-static {p1}, Lo0/f;->j(Lo0/f;)Lv0/h;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    const/16 v2, 0x9

    .line 29
    .line 30
    iget-object v3, p0, Lo0/x;->c:Lo0/a;

    .line 31
    .line 32
    invoke-static {v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    const-wide/16 v4, 0x1388

    .line 37
    .line 38
    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 39
    .line 40
    .line 41
    invoke-static {p1}, Lo0/f;->j(Lo0/f;)Lv0/h;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-static {p1}, Lo0/f;->j(Lo0/f;)Lv0/h;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    const/16 v2, 0xb

    .line 50
    .line 51
    invoke-static {v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    const-wide/32 v2, 0x1d4c0

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 59
    .line 60
    .line 61
    invoke-static {p1}, Lo0/f;->q(Lo0/f;)Lp0/D;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-virtual {p1}, Lp0/D;->c()V

    .line 66
    .line 67
    .line 68
    iget-object p1, p0, Lo0/x;->f:Ljava/util/HashMap;

    .line 69
    .line 70
    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    if-nez v0, :cond_0

    .line 83
    .line 84
    return-void

    .line 85
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    check-cast p1, Lo0/G;

    .line 90
    .line 91
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 92
    .line 93
    .line 94
    const/4 p1, 0x0

    .line 95
    throw p1
.end method

.method private final i()V
    .locals 5

    .line 1
    iget-object v0, p0, Lo0/x;->l:Lo0/f;

    .line 2
    .line 3
    invoke-static {v0}, Lo0/f;->j(Lo0/f;)Lv0/h;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/16 v2, 0xc

    .line 8
    .line 9
    iget-object v3, p0, Lo0/x;->c:Lo0/a;

    .line 10
    .line 11
    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Lo0/f;->j(Lo0/f;)Lv0/h;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-static {v0}, Lo0/f;->j(Lo0/f;)Lv0/h;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    invoke-virtual {v4, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-static {v0}, Lo0/f;->h(Lo0/f;)J

    .line 27
    .line 28
    .line 29
    move-result-wide v3

    .line 30
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method private final j()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lo0/x;->i:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lo0/x;->l:Lo0/f;

    .line 6
    .line 7
    invoke-static {v0}, Lo0/f;->j(Lo0/f;)Lv0/h;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const/16 v2, 0xb

    .line 12
    .line 13
    iget-object v3, p0, Lo0/x;->c:Lo0/a;

    .line 14
    .line 15
    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    invoke-static {v0}, Lo0/f;->j(Lo0/f;)Lv0/h;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const/16 v1, 0x9

    .line 23
    .line 24
    invoke-virtual {v0, v1, v3}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    const/4 v0, 0x0

    .line 28
    iput-boolean v0, p0, Lo0/x;->i:Z

    .line 29
    .line 30
    :cond_0
    return-void
.end method

.method private final k(Lo0/N;)Z
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    instance-of v2, v1, Lo0/C;

    .line 6
    .line 7
    const-string v3, "DeadObjectException thrown while running ApiCallRunner."

    .line 8
    .line 9
    iget-object v4, v0, Lo0/x;->d:Lo0/o;

    .line 10
    .line 11
    iget-object v5, v0, Lo0/x;->b:Ln0/e;

    .line 12
    .line 13
    const/4 v6, 0x1

    .line 14
    if-nez v2, :cond_0

    .line 15
    .line 16
    invoke-virtual/range {p0 .. p0}, Lo0/x;->a()Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    invoke-virtual {v1, v4, v2}, Lo0/N;->d(Lo0/o;Z)V

    .line 21
    .line 22
    .line 23
    :try_start_0
    invoke-virtual {v1, v0}, Lo0/N;->c(Lo0/x;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catch_0
    invoke-virtual {v0, v6}, Lo0/x;->l(I)V

    .line 28
    .line 29
    .line 30
    invoke-interface {v5, v3}, Ln0/e;->i(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    :goto_0
    return v6

    .line 34
    :cond_0
    move-object v2, v1

    .line 35
    check-cast v2, Lo0/C;

    .line 36
    .line 37
    invoke-virtual {v2, v0}, Lo0/C;->g(Lo0/x;)[Lm0/c;

    .line 38
    .line 39
    .line 40
    move-result-object v7

    .line 41
    const/4 v8, 0x0

    .line 42
    const/4 v9, 0x0

    .line 43
    if-eqz v7, :cond_5

    .line 44
    .line 45
    array-length v10, v7

    .line 46
    if-nez v10, :cond_1

    .line 47
    .line 48
    goto :goto_3

    .line 49
    :cond_1
    invoke-interface {v5}, Ln0/e;->b()[Lm0/c;

    .line 50
    .line 51
    .line 52
    move-result-object v10

    .line 53
    if-nez v10, :cond_2

    .line 54
    .line 55
    new-array v10, v9, [Lm0/c;

    .line 56
    .line 57
    :cond_2
    new-instance v11, Landroidx/collection/b;

    .line 58
    .line 59
    array-length v12, v10

    .line 60
    invoke-direct {v11, v12}, Landroidx/collection/b;-><init>(I)V

    .line 61
    .line 62
    .line 63
    const/4 v12, 0x0

    .line 64
    :goto_1
    array-length v13, v10

    .line 65
    if-ge v12, v13, :cond_3

    .line 66
    .line 67
    aget-object v13, v10, v12

    .line 68
    .line 69
    invoke-virtual {v13}, Lm0/c;->b()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v14

    .line 73
    invoke-virtual {v13}, Lm0/c;->c()J

    .line 74
    .line 75
    .line 76
    move-result-wide v15

    .line 77
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 78
    .line 79
    .line 80
    move-result-object v13

    .line 81
    invoke-virtual {v11, v14, v13}, Landroidx/collection/n;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    add-int/lit8 v12, v12, 0x1

    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_3
    array-length v10, v7

    .line 88
    const/4 v12, 0x0

    .line 89
    :goto_2
    if-ge v12, v10, :cond_5

    .line 90
    .line 91
    aget-object v13, v7, v12

    .line 92
    .line 93
    invoke-virtual {v13}, Lm0/c;->b()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v14

    .line 97
    invoke-virtual {v11, v14, v8}, Landroidx/collection/n;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v14

    .line 101
    check-cast v14, Ljava/lang/Long;

    .line 102
    .line 103
    if-eqz v14, :cond_6

    .line 104
    .line 105
    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    .line 106
    .line 107
    .line 108
    move-result-wide v14

    .line 109
    invoke-virtual {v13}, Lm0/c;->c()J

    .line 110
    .line 111
    .line 112
    move-result-wide v16

    .line 113
    cmp-long v18, v14, v16

    .line 114
    .line 115
    if-gez v18, :cond_4

    .line 116
    .line 117
    goto :goto_4

    .line 118
    :cond_4
    add-int/lit8 v12, v12, 0x1

    .line 119
    .line 120
    goto :goto_2

    .line 121
    :cond_5
    :goto_3
    move-object v13, v8

    .line 122
    :cond_6
    :goto_4
    if-nez v13, :cond_7

    .line 123
    .line 124
    invoke-virtual/range {p0 .. p0}, Lo0/x;->a()Z

    .line 125
    .line 126
    .line 127
    move-result v2

    .line 128
    invoke-virtual {v1, v4, v2}, Lo0/N;->d(Lo0/o;Z)V

    .line 129
    .line 130
    .line 131
    :try_start_1
    invoke-virtual {v1, v0}, Lo0/N;->c(Lo0/x;)V
    :try_end_1
    .catch Landroid/os/DeadObjectException; {:try_start_1 .. :try_end_1} :catch_1

    .line 132
    .line 133
    .line 134
    goto :goto_5

    .line 135
    :catch_1
    invoke-virtual {v0, v6}, Lo0/x;->l(I)V

    .line 136
    .line 137
    .line 138
    invoke-interface {v5, v3}, Ln0/e;->i(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    :goto_5
    return v6

    .line 142
    :cond_7
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    invoke-virtual {v13}, Lm0/c;->b()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v3

    .line 154
    invoke-virtual {v13}, Lm0/c;->c()J

    .line 155
    .line 156
    .line 157
    move-result-wide v4

    .line 158
    new-instance v7, Ljava/lang/StringBuilder;

    .line 159
    .line 160
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    const-string v1, " could not execute call because it requires feature ("

    .line 167
    .line 168
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    const-string v1, ", "

    .line 175
    .line 176
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    const-string v1, ")."

    .line 183
    .line 184
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v1

    .line 191
    const-string v3, "GoogleApiManager"

    .line 192
    .line 193
    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    .line 195
    .line 196
    iget-object v1, v0, Lo0/x;->l:Lo0/f;

    .line 197
    .line 198
    invoke-static {v1}, Lo0/f;->a(Lo0/f;)Z

    .line 199
    .line 200
    .line 201
    move-result v3

    .line 202
    if-eqz v3, :cond_a

    .line 203
    .line 204
    invoke-virtual {v2, v0}, Lo0/C;->f(Lo0/x;)Z

    .line 205
    .line 206
    .line 207
    move-result v3

    .line 208
    if-eqz v3, :cond_a

    .line 209
    .line 210
    new-instance v2, Lo0/y;

    .line 211
    .line 212
    iget-object v3, v0, Lo0/x;->c:Lo0/a;

    .line 213
    .line 214
    invoke-direct {v2, v3, v13}, Lo0/y;-><init>(Lo0/a;Lm0/c;)V

    .line 215
    .line 216
    .line 217
    iget-object v3, v0, Lo0/x;->j:Ljava/util/ArrayList;

    .line 218
    .line 219
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 220
    .line 221
    .line 222
    move-result v4

    .line 223
    const-wide/16 v5, 0x1388

    .line 224
    .line 225
    const/16 v7, 0xf

    .line 226
    .line 227
    if-ltz v4, :cond_8

    .line 228
    .line 229
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 230
    .line 231
    .line 232
    move-result-object v2

    .line 233
    check-cast v2, Lo0/y;

    .line 234
    .line 235
    invoke-static {v1}, Lo0/f;->j(Lo0/f;)Lv0/h;

    .line 236
    .line 237
    .line 238
    move-result-object v3

    .line 239
    invoke-virtual {v3, v7, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 240
    .line 241
    .line 242
    invoke-static {v1}, Lo0/f;->j(Lo0/f;)Lv0/h;

    .line 243
    .line 244
    .line 245
    move-result-object v3

    .line 246
    invoke-static {v1}, Lo0/f;->j(Lo0/f;)Lv0/h;

    .line 247
    .line 248
    .line 249
    move-result-object v1

    .line 250
    invoke-static {v1, v7, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    .line 251
    .line 252
    .line 253
    move-result-object v1

    .line 254
    invoke-virtual {v3, v1, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 255
    .line 256
    .line 257
    goto :goto_6

    .line 258
    :cond_8
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 259
    .line 260
    .line 261
    invoke-static {v1}, Lo0/f;->j(Lo0/f;)Lv0/h;

    .line 262
    .line 263
    .line 264
    move-result-object v3

    .line 265
    invoke-static {v1}, Lo0/f;->j(Lo0/f;)Lv0/h;

    .line 266
    .line 267
    .line 268
    move-result-object v4

    .line 269
    invoke-static {v4, v7, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    .line 270
    .line 271
    .line 272
    move-result-object v4

    .line 273
    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 274
    .line 275
    .line 276
    invoke-static {v1}, Lo0/f;->j(Lo0/f;)Lv0/h;

    .line 277
    .line 278
    .line 279
    move-result-object v3

    .line 280
    invoke-static {v1}, Lo0/f;->j(Lo0/f;)Lv0/h;

    .line 281
    .line 282
    .line 283
    move-result-object v4

    .line 284
    const/16 v5, 0x10

    .line 285
    .line 286
    invoke-static {v4, v5, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    .line 287
    .line 288
    .line 289
    move-result-object v2

    .line 290
    const-wide/32 v4, 0x1d4c0

    .line 291
    .line 292
    .line 293
    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 294
    .line 295
    .line 296
    new-instance v2, Lm0/a;

    .line 297
    .line 298
    const/4 v3, 0x2

    .line 299
    invoke-direct {v2, v3, v8}, Lm0/a;-><init>(ILandroid/app/PendingIntent;)V

    .line 300
    .line 301
    .line 302
    invoke-direct {v0, v2}, Lo0/x;->m(Lm0/a;)Z

    .line 303
    .line 304
    .line 305
    move-result v3

    .line 306
    if-nez v3, :cond_9

    .line 307
    .line 308
    iget v3, v0, Lo0/x;->g:I

    .line 309
    .line 310
    invoke-virtual {v1, v2, v3}, Lo0/f;->c(Lm0/a;I)Z

    .line 311
    .line 312
    .line 313
    :cond_9
    :goto_6
    return v9

    .line 314
    :cond_a
    new-instance v1, Ln0/t;

    .line 315
    .line 316
    invoke-direct {v1, v13}, Ln0/t;-><init>(Lm0/c;)V

    .line 317
    .line 318
    .line 319
    invoke-virtual {v2, v1}, Lo0/N;->b(Ljava/lang/RuntimeException;)V

    .line 320
    .line 321
    .line 322
    return v6
.end method

.method private final m(Lm0/a;)Z
    .locals 3

    .line 1
    invoke-static {}, Lo0/f;->r()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lo0/x;->l:Lo0/f;

    .line 7
    .line 8
    invoke-static {v1}, Lo0/f;->n(Lo0/f;)Lo0/p;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    invoke-static {v1}, Lo0/f;->t(Lo0/f;)Landroidx/collection/d;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    iget-object v2, p0, Lo0/x;->c:Lo0/a;

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Landroidx/collection/d;->contains(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    iget-object v1, p0, Lo0/x;->l:Lo0/f;

    .line 27
    .line 28
    invoke-static {v1}, Lo0/f;->n(Lo0/f;)Lo0/p;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    iget v2, p0, Lo0/x;->g:I

    .line 33
    .line 34
    invoke-virtual {v1, p1, v2}, Lo0/p;->a(Lm0/a;I)V

    .line 35
    .line 36
    .line 37
    monitor-exit v0

    .line 38
    const/4 p1, 0x1

    .line 39
    return p1

    .line 40
    :cond_0
    monitor-exit v0

    .line 41
    const/4 p1, 0x0

    .line 42
    return p1

    .line 43
    :catchall_0
    move-exception p1

    .line 44
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    throw p1
.end method

.method private final n(Z)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lo0/x;->l:Lo0/f;

    .line 2
    .line 3
    invoke-static {v0}, Lo0/f;->j(Lo0/f;)Lv0/h;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lp0/s;->a(Lv0/h;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lo0/x;->b:Ln0/e;

    .line 11
    .line 12
    invoke-interface {v0}, Ln0/e;->c()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    iget-object v1, p0, Lo0/x;->f:Ljava/util/HashMap;

    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    iget-object v1, p0, Lo0/x;->d:Lo0/o;

    .line 27
    .line 28
    invoke-virtual {v1}, Lo0/o;->e()Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_0

    .line 33
    .line 34
    if-eqz p1, :cond_1

    .line 35
    .line 36
    invoke-direct {p0}, Lo0/x;->i()V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    const-string p1, "Timing out service connection."

    .line 41
    .line 42
    invoke-interface {v0, p1}, Ln0/e;->i(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    const/4 p1, 0x1

    .line 46
    return p1

    .line 47
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 48
    return p1
.end method

.method static bridge synthetic q(Lo0/x;)Ln0/e;
    .locals 0

    .line 1
    iget-object p0, p0, Lo0/x;->b:Ln0/e;

    return-object p0
.end method

.method static bridge synthetic t(Lo0/x;)Lo0/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lo0/x;->c:Lo0/a;

    return-object p0
.end method

.method static bridge synthetic v(Lo0/x;Lcom/google/android/gms/common/api/Status;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lo0/x;->d(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method

.method static bridge synthetic w(Lo0/x;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lo0/x;->g()V

    return-void
.end method

.method static bridge synthetic x(Lo0/x;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lo0/x;->h(I)V

    return-void
.end method

.method static bridge synthetic y(Lo0/x;Lo0/y;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lo0/x;->j:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-boolean p1, p0, Lo0/x;->i:Z

    .line 11
    .line 12
    if-nez p1, :cond_2

    .line 13
    .line 14
    iget-object p1, p0, Lo0/x;->b:Ln0/e;

    .line 15
    .line 16
    invoke-interface {p1}, Ln0/e;->c()Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-nez p1, :cond_1

    .line 21
    .line 22
    invoke-virtual {p0}, Lo0/x;->B()V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_1
    invoke-direct {p0}, Lo0/x;->f()V

    .line 27
    .line 28
    .line 29
    :cond_2
    :goto_0
    return-void
.end method

.method static z(Lo0/x;Lo0/y;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lo0/x;->j:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_4

    .line 8
    .line 9
    iget-object v0, p0, Lo0/x;->l:Lo0/f;

    .line 10
    .line 11
    invoke-static {v0}, Lo0/f;->j(Lo0/f;)Lv0/h;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const/16 v2, 0xf

    .line 16
    .line 17
    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    invoke-static {v0}, Lo0/f;->j(Lo0/f;)Lv0/h;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const/16 v1, 0x10

    .line 25
    .line 26
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    invoke-static {p1}, Lo0/y;->a(Lo0/y;)Lm0/c;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iget-object v0, p0, Lo0/x;->a:Ljava/util/LinkedList;

    .line 34
    .line 35
    new-instance v1, Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 42
    .line 43
    .line 44
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    const/4 v4, 0x0

    .line 53
    if-eqz v3, :cond_3

    .line 54
    .line 55
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    check-cast v3, Lo0/N;

    .line 60
    .line 61
    instance-of v5, v3, Lo0/C;

    .line 62
    .line 63
    if-eqz v5, :cond_0

    .line 64
    .line 65
    move-object v5, v3

    .line 66
    check-cast v5, Lo0/C;

    .line 67
    .line 68
    invoke-virtual {v5, p0}, Lo0/C;->g(Lo0/x;)[Lm0/c;

    .line 69
    .line 70
    .line 71
    move-result-object v5

    .line 72
    if-eqz v5, :cond_0

    .line 73
    .line 74
    array-length v6, v5

    .line 75
    const/4 v7, 0x0

    .line 76
    :goto_1
    if-ge v7, v6, :cond_2

    .line 77
    .line 78
    aget-object v8, v5, v7

    .line 79
    .line 80
    invoke-static {v8, p1}, Lp0/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v8

    .line 84
    if-eqz v8, :cond_1

    .line 85
    .line 86
    if-ltz v7, :cond_2

    .line 87
    .line 88
    const/4 v4, 0x1

    .line 89
    goto :goto_2

    .line 90
    :cond_1
    add-int/lit8 v7, v7, 0x1

    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_2
    :goto_2
    if-eqz v4, :cond_0

    .line 94
    .line 95
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 100
    .line 101
    .line 102
    move-result p0

    .line 103
    :goto_3
    if-ge v4, p0, :cond_4

    .line 104
    .line 105
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    check-cast v2, Lo0/N;

    .line 110
    .line 111
    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    new-instance v3, Ln0/t;

    .line 115
    .line 116
    invoke-direct {v3, p1}, Ln0/t;-><init>(Lm0/c;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v2, v3}, Lo0/N;->b(Ljava/lang/RuntimeException;)V

    .line 120
    .line 121
    .line 122
    add-int/lit8 v4, v4, 0x1

    .line 123
    .line 124
    goto :goto_3

    .line 125
    :cond_4
    return-void
.end method


# virtual methods
.method public final A()V
    .locals 1

    .line 1
    iget-object v0, p0, Lo0/x;->l:Lo0/f;

    .line 2
    .line 3
    invoke-static {v0}, Lo0/f;->j(Lo0/f;)Lv0/h;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lp0/s;->a(Lv0/h;)V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lo0/x;->k:Lm0/a;

    .line 12
    .line 13
    return-void
.end method

.method public final B()V
    .locals 8

    .line 1
    const-string v0, "The service for "

    .line 2
    .line 3
    iget-object v1, p0, Lo0/x;->l:Lo0/f;

    .line 4
    .line 5
    invoke-static {v1}, Lo0/f;->j(Lo0/f;)Lv0/h;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-static {v2}, Lp0/s;->a(Lv0/h;)V

    .line 10
    .line 11
    .line 12
    iget-object v2, p0, Lo0/x;->b:Ln0/e;

    .line 13
    .line 14
    invoke-interface {v2}, Ln0/e;->c()Z

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    if-nez v3, :cond_3

    .line 19
    .line 20
    invoke-interface {v2}, Ln0/e;->a()Z

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    if-eqz v3, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/16 v3, 0xa

    .line 28
    .line 29
    :try_start_0
    invoke-static {v1}, Lo0/f;->q(Lo0/f;)Lp0/D;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    invoke-static {v1}, Lo0/f;->i(Lo0/f;)Landroid/content/Context;

    .line 34
    .line 35
    .line 36
    move-result-object v5

    .line 37
    invoke-virtual {v4, v5, v2}, Lp0/D;->b(Landroid/content/Context;Ln0/e;)I

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    if-eqz v4, :cond_1

    .line 42
    .line 43
    new-instance v1, Lm0/a;

    .line 44
    .line 45
    const/4 v5, 0x0

    .line 46
    invoke-direct {v1, v4, v5}, Lm0/a;-><init>(ILandroid/app/PendingIntent;)V

    .line 47
    .line 48
    .line 49
    const-string v4, "GoogleApiManager"

    .line 50
    .line 51
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-virtual {v1}, Lm0/a;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v6

    .line 63
    new-instance v7, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    const-string v0, " is not available: "

    .line 72
    .line 73
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0, v1, v5}, Lo0/x;->D(Lm0/a;Ljava/lang/RuntimeException;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 87
    .line 88
    .line 89
    return-void

    .line 90
    :cond_1
    new-instance v0, Lo0/A;

    .line 91
    .line 92
    iget-object v4, p0, Lo0/x;->c:Lo0/a;

    .line 93
    .line 94
    invoke-direct {v0, v1, v2, v4}, Lo0/A;-><init>(Lo0/f;Ln0/e;Lo0/a;)V

    .line 95
    .line 96
    .line 97
    invoke-interface {v2}, Ln0/e;->j()Z

    .line 98
    .line 99
    .line 100
    move-result v1

    .line 101
    if-eqz v1, :cond_2

    .line 102
    .line 103
    iget-object v1, p0, Lo0/x;->h:Lo0/J;

    .line 104
    .line 105
    invoke-static {v1}, Lp0/s;->b(Ljava/lang/Object;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v1, v0}, Lo0/J;->y(Lo0/I;)V

    .line 109
    .line 110
    .line 111
    :cond_2
    :try_start_1
    invoke-interface {v2, v0}, Ln0/e;->n(Lp0/d;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    .line 112
    .line 113
    .line 114
    return-void

    .line 115
    :catch_0
    move-exception v0

    .line 116
    new-instance v1, Lm0/a;

    .line 117
    .line 118
    invoke-direct {v1, v3}, Lm0/a;-><init>(I)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {p0, v1, v0}, Lo0/x;->D(Lm0/a;Ljava/lang/RuntimeException;)V

    .line 122
    .line 123
    .line 124
    return-void

    .line 125
    :catch_1
    move-exception v0

    .line 126
    new-instance v1, Lm0/a;

    .line 127
    .line 128
    invoke-direct {v1, v3}, Lm0/a;-><init>(I)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {p0, v1, v0}, Lo0/x;->D(Lm0/a;Ljava/lang/RuntimeException;)V

    .line 132
    .line 133
    .line 134
    :cond_3
    :goto_0
    return-void
.end method

.method public final C(Lo0/N;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lo0/x;->l:Lo0/f;

    .line 2
    .line 3
    invoke-static {v0}, Lo0/f;->j(Lo0/f;)Lv0/h;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lp0/s;->a(Lv0/h;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lo0/x;->b:Ln0/e;

    .line 11
    .line 12
    invoke-interface {v0}, Ln0/e;->c()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iget-object v1, p0, Lo0/x;->a:Ljava/util/LinkedList;

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    invoke-direct {p0, p1}, Lo0/x;->k(Lo0/N;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    invoke-direct {p0}, Lo0/x;->i()V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_0
    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_1
    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    iget-object p1, p0, Lo0/x;->k:Lm0/a;

    .line 38
    .line 39
    if-eqz p1, :cond_2

    .line 40
    .line 41
    invoke-virtual {p1}, Lm0/a;->e()Z

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    if-eqz p1, :cond_2

    .line 46
    .line 47
    iget-object p1, p0, Lo0/x;->k:Lm0/a;

    .line 48
    .line 49
    const/4 v0, 0x0

    .line 50
    invoke-virtual {p0, p1, v0}, Lo0/x;->D(Lm0/a;Ljava/lang/RuntimeException;)V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :cond_2
    invoke-virtual {p0}, Lo0/x;->B()V

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method public final D(Lm0/a;Ljava/lang/RuntimeException;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lo0/x;->l:Lo0/f;

    .line 2
    .line 3
    invoke-static {v0}, Lo0/f;->j(Lo0/f;)Lv0/h;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-static {v1}, Lp0/s;->a(Lv0/h;)V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Lo0/x;->h:Lo0/J;

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    invoke-virtual {v1}, Lo0/J;->z()V

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-virtual {p0}, Lo0/x;->A()V

    .line 18
    .line 19
    .line 20
    invoke-static {v0}, Lo0/f;->q(Lo0/f;)Lp0/D;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v1}, Lp0/D;->c()V

    .line 25
    .line 26
    .line 27
    invoke-direct {p0, p1}, Lo0/x;->c(Lm0/a;)V

    .line 28
    .line 29
    .line 30
    iget-object v1, p0, Lo0/x;->b:Ln0/e;

    .line 31
    .line 32
    instance-of v1, v1, Lr0/e;

    .line 33
    .line 34
    if-eqz v1, :cond_1

    .line 35
    .line 36
    invoke-virtual {p1}, Lm0/a;->b()I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    const/16 v2, 0x18

    .line 41
    .line 42
    if-eq v1, v2, :cond_1

    .line 43
    .line 44
    invoke-static {v0}, Lo0/f;->u(Lo0/f;)V

    .line 45
    .line 46
    .line 47
    invoke-static {v0}, Lo0/f;->j(Lo0/f;)Lv0/h;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-static {v0}, Lo0/f;->j(Lo0/f;)Lv0/h;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    const/16 v3, 0x13

    .line 56
    .line 57
    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    const-wide/32 v3, 0x493e0

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 65
    .line 66
    .line 67
    :cond_1
    invoke-virtual {p1}, Lm0/a;->b()I

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    const/4 v2, 0x4

    .line 72
    if-ne v1, v2, :cond_2

    .line 73
    .line 74
    invoke-static {}, Lo0/f;->l()Lcom/google/android/gms/common/api/Status;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-direct {p0, p1}, Lo0/x;->d(Lcom/google/android/gms/common/api/Status;)V

    .line 79
    .line 80
    .line 81
    return-void

    .line 82
    :cond_2
    iget-object v1, p0, Lo0/x;->a:Ljava/util/LinkedList;

    .line 83
    .line 84
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 85
    .line 86
    .line 87
    move-result v2

    .line 88
    if-eqz v2, :cond_3

    .line 89
    .line 90
    iput-object p1, p0, Lo0/x;->k:Lm0/a;

    .line 91
    .line 92
    return-void

    .line 93
    :cond_3
    const/4 v2, 0x0

    .line 94
    if-eqz p2, :cond_4

    .line 95
    .line 96
    invoke-static {v0}, Lo0/f;->j(Lo0/f;)Lv0/h;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    invoke-static {p1}, Lp0/s;->a(Lv0/h;)V

    .line 101
    .line 102
    .line 103
    const/4 p1, 0x0

    .line 104
    invoke-direct {p0, v2, p2, p1}, Lo0/x;->e(Lcom/google/android/gms/common/api/Status;Ljava/lang/RuntimeException;Z)V

    .line 105
    .line 106
    .line 107
    return-void

    .line 108
    :cond_4
    invoke-static {v0}, Lo0/f;->a(Lo0/f;)Z

    .line 109
    .line 110
    .line 111
    move-result p2

    .line 112
    iget-object v3, p0, Lo0/x;->c:Lo0/a;

    .line 113
    .line 114
    if-eqz p2, :cond_9

    .line 115
    .line 116
    invoke-static {v3, p1}, Lo0/f;->m(Lo0/a;Lm0/a;)Lcom/google/android/gms/common/api/Status;

    .line 117
    .line 118
    .line 119
    move-result-object p2

    .line 120
    const/4 v4, 0x1

    .line 121
    invoke-direct {p0, p2, v2, v4}, Lo0/x;->e(Lcom/google/android/gms/common/api/Status;Ljava/lang/RuntimeException;Z)V

    .line 122
    .line 123
    .line 124
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 125
    .line 126
    .line 127
    move-result p2

    .line 128
    if-eqz p2, :cond_5

    .line 129
    .line 130
    goto :goto_0

    .line 131
    :cond_5
    invoke-direct {p0, p1}, Lo0/x;->m(Lm0/a;)Z

    .line 132
    .line 133
    .line 134
    move-result p2

    .line 135
    if-nez p2, :cond_8

    .line 136
    .line 137
    iget p2, p0, Lo0/x;->g:I

    .line 138
    .line 139
    invoke-virtual {v0, p1, p2}, Lo0/f;->c(Lm0/a;I)Z

    .line 140
    .line 141
    .line 142
    move-result p2

    .line 143
    if-nez p2, :cond_8

    .line 144
    .line 145
    invoke-virtual {p1}, Lm0/a;->b()I

    .line 146
    .line 147
    .line 148
    move-result p2

    .line 149
    const/16 v1, 0x12

    .line 150
    .line 151
    if-ne p2, v1, :cond_6

    .line 152
    .line 153
    iput-boolean v4, p0, Lo0/x;->i:Z

    .line 154
    .line 155
    :cond_6
    iget-boolean p2, p0, Lo0/x;->i:Z

    .line 156
    .line 157
    if-eqz p2, :cond_7

    .line 158
    .line 159
    invoke-static {v0}, Lo0/f;->j(Lo0/f;)Lv0/h;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    invoke-static {v0}, Lo0/f;->j(Lo0/f;)Lv0/h;

    .line 164
    .line 165
    .line 166
    move-result-object p2

    .line 167
    const/16 v0, 0x9

    .line 168
    .line 169
    invoke-static {p2, v0, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    .line 170
    .line 171
    .line 172
    move-result-object p2

    .line 173
    const-wide/16 v0, 0x1388

    .line 174
    .line 175
    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 176
    .line 177
    .line 178
    return-void

    .line 179
    :cond_7
    invoke-static {v3, p1}, Lo0/f;->m(Lo0/a;Lm0/a;)Lcom/google/android/gms/common/api/Status;

    .line 180
    .line 181
    .line 182
    move-result-object p1

    .line 183
    invoke-direct {p0, p1}, Lo0/x;->d(Lcom/google/android/gms/common/api/Status;)V

    .line 184
    .line 185
    .line 186
    :cond_8
    :goto_0
    return-void

    .line 187
    :cond_9
    invoke-static {v3, p1}, Lo0/f;->m(Lo0/a;Lm0/a;)Lcom/google/android/gms/common/api/Status;

    .line 188
    .line 189
    .line 190
    move-result-object p1

    .line 191
    invoke-direct {p0, p1}, Lo0/x;->d(Lcom/google/android/gms/common/api/Status;)V

    .line 192
    .line 193
    .line 194
    return-void
.end method

.method public final E(Lm0/a;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lo0/x;->l:Lo0/f;

    .line 2
    .line 3
    invoke-static {v0}, Lo0/f;->j(Lo0/f;)Lv0/h;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lp0/s;->a(Lv0/h;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lo0/x;->b:Ln0/e;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    new-instance v3, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    const-string v4, "onSignInFailed for "

    .line 27
    .line 28
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v1, " with "

    .line 35
    .line 36
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-interface {v0, v1}, Ln0/e;->i(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    const/4 v0, 0x0

    .line 50
    invoke-virtual {p0, p1, v0}, Lo0/x;->D(Lm0/a;Ljava/lang/RuntimeException;)V

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method public final F()V
    .locals 1

    .line 1
    iget-object v0, p0, Lo0/x;->l:Lo0/f;

    .line 2
    .line 3
    invoke-static {v0}, Lo0/f;->j(Lo0/f;)Lv0/h;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lp0/s;->a(Lv0/h;)V

    .line 8
    .line 9
    .line 10
    iget-boolean v0, p0, Lo0/x;->i:Z

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Lo0/x;->B()V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public final G()V
    .locals 6

    .line 1
    iget-object v0, p0, Lo0/x;->l:Lo0/f;

    .line 2
    .line 3
    invoke-static {v0}, Lo0/f;->j(Lo0/f;)Lv0/h;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lp0/s;->a(Lv0/h;)V

    .line 8
    .line 9
    .line 10
    sget-object v0, Lo0/f;->o:Lcom/google/android/gms/common/api/Status;

    .line 11
    .line 12
    invoke-direct {p0, v0}, Lo0/x;->d(Lcom/google/android/gms/common/api/Status;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lo0/x;->d:Lo0/o;

    .line 16
    .line 17
    invoke-virtual {v0}, Lo0/o;->d()V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lo0/x;->f:Ljava/util/HashMap;

    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const/4 v1, 0x0

    .line 27
    new-array v2, v1, [Lo0/i;

    .line 28
    .line 29
    invoke-interface {v0, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, [Lo0/i;

    .line 34
    .line 35
    array-length v2, v0

    .line 36
    :goto_0
    if-ge v1, v2, :cond_0

    .line 37
    .line 38
    aget-object v3, v0, v1

    .line 39
    .line 40
    new-instance v4, Lo0/M;

    .line 41
    .line 42
    new-instance v5, Lz0/c;

    .line 43
    .line 44
    invoke-direct {v5}, Lz0/c;-><init>()V

    .line 45
    .line 46
    .line 47
    invoke-direct {v4, v3, v5}, Lo0/M;-><init>(Lo0/i;Lz0/c;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0, v4}, Lo0/x;->C(Lo0/N;)V

    .line 51
    .line 52
    .line 53
    add-int/lit8 v1, v1, 0x1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_0
    new-instance v0, Lm0/a;

    .line 57
    .line 58
    const/4 v1, 0x4

    .line 59
    invoke-direct {v0, v1}, Lm0/a;-><init>(I)V

    .line 60
    .line 61
    .line 62
    invoke-direct {p0, v0}, Lo0/x;->c(Lm0/a;)V

    .line 63
    .line 64
    .line 65
    iget-object v0, p0, Lo0/x;->b:Ln0/e;

    .line 66
    .line 67
    invoke-interface {v0}, Ln0/e;->c()Z

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    if-eqz v1, :cond_1

    .line 72
    .line 73
    new-instance v1, Lo0/w;

    .line 74
    .line 75
    invoke-direct {v1, p0}, Lo0/w;-><init>(Lo0/x;)V

    .line 76
    .line 77
    .line 78
    invoke-interface {v0, v1}, Ln0/e;->k(Lp0/f;)V

    .line 79
    .line 80
    .line 81
    :cond_1
    return-void
.end method

.method public final H()V
    .locals 3

    .line 1
    iget-object v0, p0, Lo0/x;->l:Lo0/f;

    .line 2
    .line 3
    invoke-static {v0}, Lo0/f;->j(Lo0/f;)Lv0/h;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-static {v1}, Lp0/s;->a(Lv0/h;)V

    .line 8
    .line 9
    .line 10
    iget-boolean v1, p0, Lo0/x;->i:Z

    .line 11
    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    invoke-direct {p0}, Lo0/x;->j()V

    .line 15
    .line 16
    .line 17
    invoke-static {v0}, Lo0/f;->k(Lo0/f;)Lm0/d;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-static {v0}, Lo0/f;->i(Lo0/f;)Landroid/content/Context;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v1, v0}, Lm0/d;->e(Landroid/content/Context;)I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    const/16 v1, 0x12

    .line 30
    .line 31
    if-ne v0, v1, :cond_0

    .line 32
    .line 33
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    .line 34
    .line 35
    const/16 v1, 0x15

    .line 36
    .line 37
    const-string v2, "Connection timed out waiting for Google Play services update to complete."

    .line 38
    .line 39
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    .line 44
    .line 45
    const/16 v1, 0x16

    .line 46
    .line 47
    const-string v2, "API failed to connect while resuming due to an unknown error."

    .line 48
    .line 49
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    .line 50
    .line 51
    .line 52
    :goto_0
    invoke-direct {p0, v0}, Lo0/x;->d(Lcom/google/android/gms/common/api/Status;)V

    .line 53
    .line 54
    .line 55
    iget-object v0, p0, Lo0/x;->b:Ln0/e;

    .line 56
    .line 57
    const-string v1, "Timing out connection while resuming."

    .line 58
    .line 59
    invoke-interface {v0, v1}, Ln0/e;->i(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    :cond_1
    return-void
.end method

.method public final a()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lo0/x;->b:Ln0/e;

    .line 2
    .line 3
    invoke-interface {v0}, Ln0/e;->j()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final b()V
    .locals 1
    .annotation runtime Lcom/google/errorprone/annotations/ResultIgnorabilityUnspecified;
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Lo0/x;->n(Z)Z

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public final l(I)V
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lo0/x;->l:Lo0/f;

    .line 6
    .line 7
    invoke-static {v1}, Lo0/f;->j(Lo0/f;)Lv0/h;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    if-ne v0, v2, :cond_0

    .line 16
    .line 17
    invoke-direct {p0, p1}, Lo0/x;->h(I)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    invoke-static {v1}, Lo0/f;->j(Lo0/f;)Lv0/h;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    new-instance v1, Lo0/u;

    .line 26
    .line 27
    invoke-direct {v1, p0, p1}, Lo0/u;-><init>(Lo0/x;I)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public final o(Lm0/a;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lo0/x;->D(Lm0/a;Ljava/lang/RuntimeException;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public final p()I
    .locals 1

    .line 1
    iget v0, p0, Lo0/x;->g:I

    return v0
.end method

.method public final r()V
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lo0/x;->l:Lo0/f;

    .line 6
    .line 7
    invoke-static {v1}, Lo0/f;->j(Lo0/f;)Lv0/h;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    if-ne v0, v2, :cond_0

    .line 16
    .line 17
    invoke-direct {p0}, Lo0/x;->g()V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    invoke-static {v1}, Lo0/f;->j(Lo0/f;)Lv0/h;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    new-instance v1, Lo0/t;

    .line 26
    .line 27
    invoke-direct {v1, p0}, Lo0/t;-><init>(Lo0/x;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public final s()Ln0/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lo0/x;->b:Ln0/e;

    return-object v0
.end method

.method public final u()Ljava/util/HashMap;
    .locals 1

    .line 1
    iget-object v0, p0, Lo0/x;->f:Ljava/util/HashMap;

    return-object v0
.end method
