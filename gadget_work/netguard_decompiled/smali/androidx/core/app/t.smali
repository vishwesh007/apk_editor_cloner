.class public final Landroidx/core/app/t;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroidx/core/graphics/drawable/IconCompat;

.field private final b:Ljava/lang/CharSequence;

.field private final c:Landroid/app/PendingIntent;

.field private d:Z

.field private final e:Landroid/os/Bundle;

.field private f:Z


# direct methods
.method public constructor <init>(ILjava/lang/String;Landroid/app/PendingIntent;)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    const-string v0, ""

    .line 6
    .line 7
    invoke-static {v0, p1}, Landroidx/core/graphics/drawable/IconCompat;->c(Ljava/lang/String;I)Landroidx/core/graphics/drawable/IconCompat;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    :goto_0
    new-instance v0, Landroid/os/Bundle;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    iput-boolean v1, p0, Landroidx/core/app/t;->d:Z

    .line 21
    .line 22
    iput-boolean v1, p0, Landroidx/core/app/t;->f:Z

    .line 23
    .line 24
    iput-object p1, p0, Landroidx/core/app/t;->a:Landroidx/core/graphics/drawable/IconCompat;

    .line 25
    .line 26
    invoke-static {p2}, Landroidx/core/app/w;->c(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    iput-object p1, p0, Landroidx/core/app/t;->b:Ljava/lang/CharSequence;

    .line 31
    .line 32
    iput-object p3, p0, Landroidx/core/app/t;->c:Landroid/app/PendingIntent;

    .line 33
    .line 34
    iput-object v0, p0, Landroidx/core/app/t;->e:Landroid/os/Bundle;

    .line 35
    .line 36
    iput-boolean v1, p0, Landroidx/core/app/t;->d:Z

    .line 37
    .line 38
    iput-boolean v1, p0, Landroidx/core/app/t;->f:Z

    .line 39
    .line 40
    return-void
.end method


# virtual methods
.method public final a()Landroidx/core/app/u;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v1, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    .line 8
    new-instance v2, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    const/4 v4, 0x0

    .line 18
    if-eqz v3, :cond_0

    .line 19
    .line 20
    move-object v11, v4

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    new-array v3, v3, [Landroidx/core/app/M;

    .line 27
    .line 28
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    check-cast v1, [Landroidx/core/app/M;

    .line 33
    .line 34
    move-object v11, v1

    .line 35
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-eqz v1, :cond_1

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    new-array v1, v1, [Landroidx/core/app/M;

    .line 47
    .line 48
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    move-object v4, v1

    .line 53
    check-cast v4, [Landroidx/core/app/M;

    .line 54
    .line 55
    :goto_1
    move-object v10, v4

    .line 56
    new-instance v1, Landroidx/core/app/u;

    .line 57
    .line 58
    iget-object v6, v0, Landroidx/core/app/t;->a:Landroidx/core/graphics/drawable/IconCompat;

    .line 59
    .line 60
    iget-object v7, v0, Landroidx/core/app/t;->b:Ljava/lang/CharSequence;

    .line 61
    .line 62
    iget-object v8, v0, Landroidx/core/app/t;->c:Landroid/app/PendingIntent;

    .line 63
    .line 64
    iget-object v9, v0, Landroidx/core/app/t;->e:Landroid/os/Bundle;

    .line 65
    .line 66
    iget-boolean v12, v0, Landroidx/core/app/t;->d:Z

    .line 67
    .line 68
    const/4 v13, 0x0

    .line 69
    iget-boolean v14, v0, Landroidx/core/app/t;->f:Z

    .line 70
    .line 71
    const/4 v15, 0x0

    .line 72
    const/16 v16, 0x0

    .line 73
    .line 74
    move-object v5, v1

    .line 75
    invoke-direct/range {v5 .. v16}, Landroidx/core/app/u;-><init>(Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroidx/core/app/M;[Landroidx/core/app/M;ZIZZZ)V

    .line 76
    .line 77
    .line 78
    return-object v1
.end method
