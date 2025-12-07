.class public final Landroidx/core/app/w;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Landroid/content/Context;

.field public b:Ljava/util/ArrayList;

.field public c:Ljava/util/ArrayList;

.field d:Ljava/util/ArrayList;

.field e:Ljava/lang/CharSequence;

.field f:Ljava/lang/CharSequence;

.field g:Landroid/app/PendingIntent;

.field h:I

.field i:Z

.field j:Landroidx/core/app/y;

.field k:I

.field l:I

.field m:Z

.field n:Ljava/lang/String;

.field o:Z

.field p:Ljava/lang/String;

.field q:Landroid/os/Bundle;

.field r:I

.field s:I

.field t:Ljava/lang/String;

.field u:Z

.field v:Landroid/app/Notification;

.field public w:Ljava/util/ArrayList;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroidx/core/app/w;->b:Ljava/util/ArrayList;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Landroidx/core/app/w;->c:Ljava/util/ArrayList;

    .line 17
    .line 18
    new-instance v0, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Landroidx/core/app/w;->d:Ljava/util/ArrayList;

    .line 24
    .line 25
    const/4 v0, 0x1

    .line 26
    iput-boolean v0, p0, Landroidx/core/app/w;->i:Z

    .line 27
    .line 28
    const/4 v1, 0x0

    .line 29
    iput-boolean v1, p0, Landroidx/core/app/w;->o:Z

    .line 30
    .line 31
    iput v1, p0, Landroidx/core/app/w;->r:I

    .line 32
    .line 33
    iput v1, p0, Landroidx/core/app/w;->s:I

    .line 34
    .line 35
    new-instance v2, Landroid/app/Notification;

    .line 36
    .line 37
    invoke-direct {v2}, Landroid/app/Notification;-><init>()V

    .line 38
    .line 39
    .line 40
    iput-object v2, p0, Landroidx/core/app/w;->v:Landroid/app/Notification;

    .line 41
    .line 42
    iput-object p1, p0, Landroidx/core/app/w;->a:Landroid/content/Context;

    .line 43
    .line 44
    iput-object p2, p0, Landroidx/core/app/w;->t:Ljava/lang/String;

    .line 45
    .line 46
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 47
    .line 48
    .line 49
    move-result-wide p1

    .line 50
    iput-wide p1, v2, Landroid/app/Notification;->when:J

    .line 51
    .line 52
    iget-object p1, p0, Landroidx/core/app/w;->v:Landroid/app/Notification;

    .line 53
    .line 54
    const/4 p2, -0x1

    .line 55
    iput p2, p1, Landroid/app/Notification;->audioStreamType:I

    .line 56
    .line 57
    iput v1, p0, Landroidx/core/app/w;->h:I

    .line 58
    .line 59
    new-instance p1, Ljava/util/ArrayList;

    .line 60
    .line 61
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 62
    .line 63
    .line 64
    iput-object p1, p0, Landroidx/core/app/w;->w:Ljava/util/ArrayList;

    .line 65
    .line 66
    iput-boolean v0, p0, Landroidx/core/app/w;->u:Z

    .line 67
    .line 68
    return-void
.end method

.method protected static c(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    return-object p0

    .line 4
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/16 v1, 0x1400

    .line 9
    .line 10
    if-le v0, v1, :cond_1

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-interface {p0, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    :cond_1
    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Landroid/app/PendingIntent;)V
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    iget-object v1, v0, Landroidx/core/app/w;->b:Ljava/util/ArrayList;

    .line 3
    .line 4
    new-instance v14, Landroidx/core/app/u;

    .line 5
    .line 6
    const-string v2, ""

    .line 7
    .line 8
    const v3, 0x7f080058

    .line 9
    .line 10
    .line 11
    invoke-static {v2, v3}, Landroidx/core/graphics/drawable/IconCompat;->c(Ljava/lang/String;I)Landroidx/core/graphics/drawable/IconCompat;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    new-instance v6, Landroid/os/Bundle;

    .line 16
    .line 17
    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 18
    .line 19
    .line 20
    const/4 v7, 0x0

    .line 21
    const/4 v8, 0x0

    .line 22
    const/4 v9, 0x1

    .line 23
    const/4 v10, 0x0

    .line 24
    const/4 v11, 0x1

    .line 25
    const/4 v12, 0x0

    .line 26
    const/4 v13, 0x0

    .line 27
    move-object v2, v14

    .line 28
    move-object/from16 v4, p1

    .line 29
    .line 30
    move-object/from16 v5, p2

    .line 31
    .line 32
    invoke-direct/range {v2 .. v13}, Landroidx/core/app/u;-><init>(Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroidx/core/app/M;[Landroidx/core/app/M;ZIZZZ)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public final b()Landroid/app/Notification;
    .locals 1

    .line 1
    new-instance v0, Landroidx/core/app/A;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroidx/core/app/A;-><init>(Landroidx/core/app/w;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Landroidx/core/app/A;->a()Landroid/app/Notification;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    return-object v0
.end method

.method public final d(Z)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Landroidx/core/app/w;->v:Landroid/app/Notification;

    .line 4
    .line 5
    iget v0, p1, Landroid/app/Notification;->flags:I

    .line 6
    .line 7
    const/16 v1, 0x10

    .line 8
    .line 9
    or-int/2addr v0, v1

    .line 10
    iput v0, p1, Landroid/app/Notification;->flags:I

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object p1, p0, Landroidx/core/app/w;->v:Landroid/app/Notification;

    .line 14
    .line 15
    iget v0, p1, Landroid/app/Notification;->flags:I

    .line 16
    .line 17
    const/16 v1, -0x11

    .line 18
    .line 19
    and-int/2addr v0, v1

    .line 20
    iput v0, p1, Landroid/app/Notification;->flags:I

    .line 21
    .line 22
    :goto_0
    return-void
.end method

.method public final e()V
    .locals 1

    .line 1
    const-string v0, "status"

    .line 2
    .line 3
    iput-object v0, p0, Landroidx/core/app/w;->p:Ljava/lang/String;

    .line 4
    .line 5
    return-void
.end method

.method public final f()V
    .locals 1

    .line 1
    const-string v0, "com.google.android.gms.availability"

    .line 2
    .line 3
    iput-object v0, p0, Landroidx/core/app/w;->t:Ljava/lang/String;

    .line 4
    .line 5
    return-void
.end method

.method public final g(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/core/app/w;->r:I

    .line 2
    .line 3
    return-void
.end method

.method public final h(Landroid/widget/RemoteViews;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/app/w;->v:Landroid/app/Notification;

    .line 2
    .line 3
    iput-object p1, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 4
    .line 5
    return-void
.end method

.method public final i(Landroid/app/PendingIntent;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/core/app/w;->g:Landroid/app/PendingIntent;

    .line 2
    .line 3
    return-void
.end method

.method public final j(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1}, Landroidx/core/app/w;->c(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Landroidx/core/app/w;->f:Ljava/lang/CharSequence;

    .line 6
    .line 7
    return-void
.end method

.method public final k(Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    invoke-static {p1}, Landroidx/core/app/w;->c(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Landroidx/core/app/w;->e:Ljava/lang/CharSequence;

    .line 6
    .line 7
    return-void
.end method

.method public final l()V
    .locals 1

    .line 1
    const-string v0, "AccessAttempt"

    .line 2
    .line 3
    iput-object v0, p0, Landroidx/core/app/w;->n:Ljava/lang/String;

    .line 4
    .line 5
    return-void
.end method

.method public final m()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/core/app/w;->o:Z

    .line 3
    .line 4
    return-void
.end method

.method public final n(Z)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Landroidx/core/app/w;->v:Landroid/app/Notification;

    .line 4
    .line 5
    iget v0, p1, Landroid/app/Notification;->flags:I

    .line 6
    .line 7
    const/4 v1, 0x2

    .line 8
    or-int/2addr v0, v1

    .line 9
    iput v0, p1, Landroid/app/Notification;->flags:I

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object p1, p0, Landroidx/core/app/w;->v:Landroid/app/Notification;

    .line 13
    .line 14
    iget v0, p1, Landroid/app/Notification;->flags:I

    .line 15
    .line 16
    const/4 v1, -0x3

    .line 17
    and-int/2addr v0, v1

    .line 18
    iput v0, p1, Landroid/app/Notification;->flags:I

    .line 19
    .line 20
    :goto_0
    return-void
.end method

.method public final o(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/core/app/w;->h:I

    .line 2
    .line 3
    return-void
.end method

.method public final p(I)V
    .locals 1

    .line 1
    const/16 v0, 0x64

    .line 2
    .line 3
    iput v0, p0, Landroidx/core/app/w;->k:I

    .line 4
    .line 5
    iput p1, p0, Landroidx/core/app/w;->l:I

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    iput-boolean p1, p0, Landroidx/core/app/w;->m:Z

    .line 9
    .line 10
    return-void
.end method

.method public final q(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/app/w;->v:Landroid/app/Notification;

    .line 2
    .line 3
    iput p1, v0, Landroid/app/Notification;->icon:I

    .line 4
    .line 5
    return-void
.end method

.method public final r(Landroidx/core/app/y;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/app/w;->j:Landroidx/core/app/y;

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput-object p1, p0, Landroidx/core/app/w;->j:Landroidx/core/app/y;

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1, p0}, Landroidx/core/app/y;->e(Landroidx/core/app/w;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public final s(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/app/w;->v:Landroid/app/Notification;

    .line 2
    .line 3
    invoke-static {p1}, Landroidx/core/app/w;->c(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iput-object p1, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 8
    .line 9
    return-void
.end method

.method public final t(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/core/app/w;->s:I

    .line 2
    .line 3
    return-void
.end method

.method public final u(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/app/w;->v:Landroid/app/Notification;

    .line 2
    .line 3
    iput-wide p1, v0, Landroid/app/Notification;->when:J

    .line 4
    .line 5
    return-void
.end method
