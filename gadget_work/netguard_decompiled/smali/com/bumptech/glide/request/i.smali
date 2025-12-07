.class public final Lcom/bumptech/glide/request/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/request/d;
.implements LU/f;
.implements Lcom/bumptech/glide/request/h;


# static fields
.field private static final D:Z


# instance fields
.field private A:I

.field private B:Z

.field private C:Ljava/lang/RuntimeException;

.field private final a:Ljava/lang/String;

.field private final b:LY/i;

.field private final c:Ljava/lang/Object;

.field private final d:Lcom/bumptech/glide/request/f;

.field private final e:Lcom/bumptech/glide/request/e;

.field private final f:Landroid/content/Context;

.field private final g:Lcom/bumptech/glide/k;

.field private final h:Ljava/lang/Object;

.field private final i:Ljava/lang/Class;

.field private final j:Lcom/bumptech/glide/request/a;

.field private final k:I

.field private final l:I

.field private final m:Lcom/bumptech/glide/Priority;

.field private final n:LU/g;

.field private final o:Ljava/util/List;

.field private final p:LV/a;

.field private final q:Ljava/util/concurrent/Executor;

.field private r:Lcom/bumptech/glide/load/engine/V;

.field private s:Lcom/bumptech/glide/load/engine/B;

.field private t:J

.field private volatile u:Lcom/bumptech/glide/load/engine/C;

.field private v:Lcom/bumptech/glide/request/SingleRequest$Status;

.field private w:Landroid/graphics/drawable/Drawable;

.field private x:Landroid/graphics/drawable/Drawable;

.field private y:Landroid/graphics/drawable/Drawable;

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "GlideRequest"

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    sput-boolean v0, Lcom/bumptech/glide/request/i;->D:Z

    .line 9
    .line 10
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/bumptech/glide/k;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;Lcom/bumptech/glide/request/a;IILcom/bumptech/glide/Priority;LU/g;Lcom/bumptech/glide/request/f;Ljava/util/List;Lcom/bumptech/glide/request/e;Lcom/bumptech/glide/load/engine/C;LV/a;Ljava/util/concurrent/Executor;)V
    .locals 3

    move-object v0, p0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-boolean v1, Lcom/bumptech/glide/request/i;->D:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-object v1, v0, Lcom/bumptech/glide/request/i;->a:Ljava/lang/String;

    .line 3
    invoke-static {}, LY/i;->a()LY/i;

    move-result-object v1

    iput-object v1, v0, Lcom/bumptech/glide/request/i;->b:LY/i;

    move-object v1, p3

    .line 4
    iput-object v1, v0, Lcom/bumptech/glide/request/i;->c:Ljava/lang/Object;

    move-object v1, p1

    .line 5
    iput-object v1, v0, Lcom/bumptech/glide/request/i;->f:Landroid/content/Context;

    move-object v1, p2

    .line 6
    iput-object v1, v0, Lcom/bumptech/glide/request/i;->g:Lcom/bumptech/glide/k;

    move-object v2, p4

    .line 7
    iput-object v2, v0, Lcom/bumptech/glide/request/i;->h:Ljava/lang/Object;

    move-object v2, p5

    .line 8
    iput-object v2, v0, Lcom/bumptech/glide/request/i;->i:Ljava/lang/Class;

    move-object v2, p6

    .line 9
    iput-object v2, v0, Lcom/bumptech/glide/request/i;->j:Lcom/bumptech/glide/request/a;

    move v2, p7

    .line 10
    iput v2, v0, Lcom/bumptech/glide/request/i;->k:I

    move v2, p8

    .line 11
    iput v2, v0, Lcom/bumptech/glide/request/i;->l:I

    move-object v2, p9

    .line 12
    iput-object v2, v0, Lcom/bumptech/glide/request/i;->m:Lcom/bumptech/glide/Priority;

    move-object v2, p10

    .line 13
    iput-object v2, v0, Lcom/bumptech/glide/request/i;->n:LU/g;

    move-object v2, p11

    .line 14
    iput-object v2, v0, Lcom/bumptech/glide/request/i;->d:Lcom/bumptech/glide/request/f;

    move-object v2, p12

    .line 15
    iput-object v2, v0, Lcom/bumptech/glide/request/i;->o:Ljava/util/List;

    move-object/from16 v2, p13

    .line 16
    iput-object v2, v0, Lcom/bumptech/glide/request/i;->e:Lcom/bumptech/glide/request/e;

    move-object/from16 v2, p14

    .line 17
    iput-object v2, v0, Lcom/bumptech/glide/request/i;->u:Lcom/bumptech/glide/load/engine/C;

    move-object/from16 v2, p15

    .line 18
    iput-object v2, v0, Lcom/bumptech/glide/request/i;->p:LV/a;

    move-object/from16 v2, p16

    .line 19
    iput-object v2, v0, Lcom/bumptech/glide/request/i;->q:Ljava/util/concurrent/Executor;

    .line 20
    sget-object v2, Lcom/bumptech/glide/request/SingleRequest$Status;->PENDING:Lcom/bumptech/glide/request/SingleRequest$Status;

    iput-object v2, v0, Lcom/bumptech/glide/request/i;->v:Lcom/bumptech/glide/request/SingleRequest$Status;

    .line 21
    iget-object v2, v0, Lcom/bumptech/glide/request/i;->C:Ljava/lang/RuntimeException;

    if-nez v2, :cond_1

    invoke-virtual {p2}, Lcom/bumptech/glide/k;->g()Lcom/bumptech/glide/m;

    move-result-object v1

    const-class v2, Lcom/bumptech/glide/g;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/m;->a(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 22
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Glide request origin trace"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/bumptech/glide/request/i;->C:Ljava/lang/RuntimeException;

    :cond_1
    return-void
.end method

.method private c()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/request/i;->y:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/bumptech/glide/request/i;->j:Lcom/bumptech/glide/request/a;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/bumptech/glide/request/a;->getFallbackDrawable()Landroid/graphics/drawable/Drawable;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iput-object v1, p0, Lcom/bumptech/glide/request/i;->y:Landroid/graphics/drawable/Drawable;

    .line 12
    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/bumptech/glide/request/a;->getFallbackId()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-lez v1, :cond_0

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/bumptech/glide/request/a;->getFallbackId()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    invoke-direct {p0, v0}, Lcom/bumptech/glide/request/i;->l(I)Landroid/graphics/drawable/Drawable;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iput-object v0, p0, Lcom/bumptech/glide/request/i;->y:Landroid/graphics/drawable/Drawable;

    .line 30
    .line 31
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/request/i;->y:Landroid/graphics/drawable/Drawable;

    .line 32
    .line 33
    return-object v0
.end method

.method private g()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/request/i;->x:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/bumptech/glide/request/i;->j:Lcom/bumptech/glide/request/a;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/bumptech/glide/request/a;->getPlaceholderDrawable()Landroid/graphics/drawable/Drawable;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iput-object v1, p0, Lcom/bumptech/glide/request/i;->x:Landroid/graphics/drawable/Drawable;

    .line 12
    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/bumptech/glide/request/a;->getPlaceholderId()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-lez v1, :cond_0

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/bumptech/glide/request/a;->getPlaceholderId()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    invoke-direct {p0, v0}, Lcom/bumptech/glide/request/i;->l(I)Landroid/graphics/drawable/Drawable;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iput-object v0, p0, Lcom/bumptech/glide/request/i;->x:Landroid/graphics/drawable/Drawable;

    .line 30
    .line 31
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/request/i;->x:Landroid/graphics/drawable/Drawable;

    .line 32
    .line 33
    return-object v0
.end method

.method private k()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/request/i;->e:Lcom/bumptech/glide/request/e;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/bumptech/glide/request/e;->c()Lcom/bumptech/glide/request/e;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0}, Lcom/bumptech/glide/request/e;->a()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 19
    :goto_1
    return v0
.end method

.method private l(I)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/request/i;->j:Lcom/bumptech/glide/request/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/bumptech/glide/request/a;->getTheme()Landroid/content/res/Resources$Theme;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/bumptech/glide/request/a;->getTheme()Landroid/content/res/Resources$Theme;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/request/i;->f:Landroid/content/Context;

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :goto_0
    iget-object v1, p0, Lcom/bumptech/glide/request/i;->g:Lcom/bumptech/glide/k;

    .line 21
    .line 22
    invoke-static {v1, p1, v0}, LE/d;->c(Landroid/content/Context;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    return-object p1
.end method

.method private m(Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    const-string p1, " this: "

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lcom/bumptech/glide/request/i;->a:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    const-string v0, "GlideRequest"

    .line 24
    .line 25
    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public static n(Landroid/content/Context;Lcom/bumptech/glide/k;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;Lcom/bumptech/glide/request/a;IILcom/bumptech/glide/Priority;LU/g;Lcom/bumptech/glide/request/f;Ljava/util/List;Lcom/bumptech/glide/request/e;Lcom/bumptech/glide/load/engine/C;LV/a;Ljava/util/concurrent/Executor;)Lcom/bumptech/glide/request/i;
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    .line 1
    new-instance v17, Lcom/bumptech/glide/request/i;

    move-object/from16 v0, v17

    invoke-direct/range {v0 .. v16}, Lcom/bumptech/glide/request/i;-><init>(Landroid/content/Context;Lcom/bumptech/glide/k;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;Lcom/bumptech/glide/request/a;IILcom/bumptech/glide/Priority;LU/g;Lcom/bumptech/glide/request/f;Ljava/util/List;Lcom/bumptech/glide/request/e;Lcom/bumptech/glide/load/engine/C;LV/a;Ljava/util/concurrent/Executor;)V

    return-object v17
.end method

.method private p(Lcom/bumptech/glide/load/engine/P;I)V
    .locals 4

    .line 1
    const-string v0, "Load failed for ["

    .line 2
    .line 3
    iget-object v1, p0, Lcom/bumptech/glide/request/i;->b:LY/i;

    .line 4
    .line 5
    invoke-virtual {v1}, LY/i;->c()V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/bumptech/glide/request/i;->c:Ljava/lang/Object;

    .line 9
    .line 10
    monitor-enter v1

    .line 11
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    iget-object v2, p0, Lcom/bumptech/glide/request/i;->g:Lcom/bumptech/glide/k;

    .line 15
    .line 16
    invoke-virtual {v2}, Lcom/bumptech/glide/k;->h()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-gt v2, p2, :cond_0

    .line 21
    .line 22
    const-string p2, "Glide"

    .line 23
    .line 24
    new-instance v3, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/bumptech/glide/request/i;->h:Ljava/lang/Object;

    .line 30
    .line 31
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v0, "] with dimensions ["

    .line 35
    .line 36
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    iget v0, p0, Lcom/bumptech/glide/request/i;->z:I

    .line 40
    .line 41
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v0, "x"

    .line 45
    .line 46
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    iget v0, p0, Lcom/bumptech/glide/request/i;->A:I

    .line 50
    .line 51
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string v0, "]"

    .line 55
    .line 56
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-static {p2, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 64
    .line 65
    .line 66
    const/4 p2, 0x4

    .line 67
    if-gt v2, p2, :cond_0

    .line 68
    .line 69
    invoke-virtual {p1}, Lcom/bumptech/glide/load/engine/P;->e()V

    .line 70
    .line 71
    .line 72
    :cond_0
    const/4 p1, 0x0

    .line 73
    iput-object p1, p0, Lcom/bumptech/glide/request/i;->s:Lcom/bumptech/glide/load/engine/B;

    .line 74
    .line 75
    sget-object p1, Lcom/bumptech/glide/request/SingleRequest$Status;->FAILED:Lcom/bumptech/glide/request/SingleRequest$Status;

    .line 76
    .line 77
    iput-object p1, p0, Lcom/bumptech/glide/request/i;->v:Lcom/bumptech/glide/request/SingleRequest$Status;

    .line 78
    .line 79
    iget-object p1, p0, Lcom/bumptech/glide/request/i;->e:Lcom/bumptech/glide/request/e;

    .line 80
    .line 81
    if-eqz p1, :cond_1

    .line 82
    .line 83
    invoke-interface {p1, p0}, Lcom/bumptech/glide/request/e;->d(Lcom/bumptech/glide/request/d;)V

    .line 84
    .line 85
    .line 86
    :cond_1
    const/4 p1, 0x1

    .line 87
    iput-boolean p1, p0, Lcom/bumptech/glide/request/i;->B:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 88
    .line 89
    const/4 p2, 0x0

    .line 90
    :try_start_1
    iget-object v0, p0, Lcom/bumptech/glide/request/i;->o:Ljava/util/List;

    .line 91
    .line 92
    if-eqz v0, :cond_2

    .line 93
    .line 94
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    const/4 v2, 0x0

    .line 99
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 100
    .line 101
    .line 102
    move-result v3

    .line 103
    if-eqz v3, :cond_3

    .line 104
    .line 105
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v3

    .line 109
    check-cast v3, Lcom/bumptech/glide/request/f;

    .line 110
    .line 111
    invoke-direct {p0}, Lcom/bumptech/glide/request/i;->k()Z

    .line 112
    .line 113
    .line 114
    invoke-interface {v3}, Lcom/bumptech/glide/request/f;->a()Z

    .line 115
    .line 116
    .line 117
    move-result v3

    .line 118
    or-int/2addr v2, v3

    .line 119
    goto :goto_0

    .line 120
    :cond_2
    const/4 v2, 0x0

    .line 121
    :cond_3
    iget-object v0, p0, Lcom/bumptech/glide/request/i;->d:Lcom/bumptech/glide/request/f;

    .line 122
    .line 123
    if-eqz v0, :cond_4

    .line 124
    .line 125
    invoke-direct {p0}, Lcom/bumptech/glide/request/i;->k()Z

    .line 126
    .line 127
    .line 128
    invoke-interface {v0}, Lcom/bumptech/glide/request/f;->a()Z

    .line 129
    .line 130
    .line 131
    move-result v0

    .line 132
    if-eqz v0, :cond_4

    .line 133
    .line 134
    goto :goto_1

    .line 135
    :cond_4
    const/4 p1, 0x0

    .line 136
    :goto_1
    or-int/2addr p1, v2

    .line 137
    if-nez p1, :cond_5

    .line 138
    .line 139
    invoke-direct {p0}, Lcom/bumptech/glide/request/i;->s()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 140
    .line 141
    .line 142
    :cond_5
    :try_start_2
    iput-boolean p2, p0, Lcom/bumptech/glide/request/i;->B:Z

    .line 143
    .line 144
    monitor-exit v1

    .line 145
    return-void

    .line 146
    :catchall_0
    move-exception p1

    .line 147
    iput-boolean p2, p0, Lcom/bumptech/glide/request/i;->B:Z

    .line 148
    .line 149
    throw p1

    .line 150
    :catchall_1
    move-exception p1

    .line 151
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 152
    throw p1
.end method

.method private r(Lcom/bumptech/glide/load/engine/V;Ljava/lang/Object;Lcom/bumptech/glide/load/DataSource;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/bumptech/glide/request/i;->k()Z

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/bumptech/glide/request/SingleRequest$Status;->COMPLETE:Lcom/bumptech/glide/request/SingleRequest$Status;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/bumptech/glide/request/i;->v:Lcom/bumptech/glide/request/SingleRequest$Status;

    .line 7
    .line 8
    iput-object p1, p0, Lcom/bumptech/glide/request/i;->r:Lcom/bumptech/glide/load/engine/V;

    .line 9
    .line 10
    iget-object p1, p0, Lcom/bumptech/glide/request/i;->g:Lcom/bumptech/glide/k;

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/bumptech/glide/k;->h()I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    const/4 v0, 0x3

    .line 17
    if-gt p1, v0, :cond_0

    .line 18
    .line 19
    new-instance p1, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string v0, "Finished loading "

    .line 22
    .line 23
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v0, " from "

    .line 38
    .line 39
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string p3, " for "

    .line 46
    .line 47
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    iget-object p3, p0, Lcom/bumptech/glide/request/i;->h:Ljava/lang/Object;

    .line 51
    .line 52
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string p3, " with size ["

    .line 56
    .line 57
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    iget p3, p0, Lcom/bumptech/glide/request/i;->z:I

    .line 61
    .line 62
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    const-string p3, "x"

    .line 66
    .line 67
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    iget p3, p0, Lcom/bumptech/glide/request/i;->A:I

    .line 71
    .line 72
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    const-string p3, "] in "

    .line 76
    .line 77
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    iget-wide v0, p0, Lcom/bumptech/glide/request/i;->t:J

    .line 81
    .line 82
    invoke-static {v0, v1}, LX/m;->a(J)D

    .line 83
    .line 84
    .line 85
    move-result-wide v0

    .line 86
    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    const-string p3, " ms"

    .line 90
    .line 91
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    const-string p3, "Glide"

    .line 99
    .line 100
    invoke-static {p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    .line 102
    .line 103
    :cond_0
    iget-object p1, p0, Lcom/bumptech/glide/request/i;->e:Lcom/bumptech/glide/request/e;

    .line 104
    .line 105
    if-eqz p1, :cond_1

    .line 106
    .line 107
    invoke-interface {p1, p0}, Lcom/bumptech/glide/request/e;->g(Lcom/bumptech/glide/request/d;)V

    .line 108
    .line 109
    .line 110
    :cond_1
    const/4 p1, 0x1

    .line 111
    iput-boolean p1, p0, Lcom/bumptech/glide/request/i;->B:Z

    .line 112
    .line 113
    const/4 p3, 0x0

    .line 114
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/request/i;->o:Ljava/util/List;

    .line 115
    .line 116
    if-eqz v0, :cond_2

    .line 117
    .line 118
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    const/4 v1, 0x0

    .line 123
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 124
    .line 125
    .line 126
    move-result v2

    .line 127
    if-eqz v2, :cond_3

    .line 128
    .line 129
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v2

    .line 133
    check-cast v2, Lcom/bumptech/glide/request/f;

    .line 134
    .line 135
    invoke-interface {v2}, Lcom/bumptech/glide/request/f;->b()Z

    .line 136
    .line 137
    .line 138
    move-result v2

    .line 139
    or-int/2addr v1, v2

    .line 140
    goto :goto_0

    .line 141
    :cond_2
    const/4 v1, 0x0

    .line 142
    :cond_3
    iget-object v0, p0, Lcom/bumptech/glide/request/i;->d:Lcom/bumptech/glide/request/f;

    .line 143
    .line 144
    if-eqz v0, :cond_4

    .line 145
    .line 146
    invoke-interface {v0}, Lcom/bumptech/glide/request/f;->b()Z

    .line 147
    .line 148
    .line 149
    move-result v0

    .line 150
    if-eqz v0, :cond_4

    .line 151
    .line 152
    goto :goto_1

    .line 153
    :cond_4
    const/4 p1, 0x0

    .line 154
    :goto_1
    or-int/2addr p1, v1

    .line 155
    if-nez p1, :cond_5

    .line 156
    .line 157
    iget-object p1, p0, Lcom/bumptech/glide/request/i;->p:LV/a;

    .line 158
    .line 159
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 160
    .line 161
    .line 162
    invoke-static {}, LV/a;->a()LV/b;

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    iget-object v0, p0, Lcom/bumptech/glide/request/i;->n:LU/g;

    .line 167
    .line 168
    invoke-interface {v0, p2, p1}, LU/g;->b(Ljava/lang/Object;LV/b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    .line 170
    .line 171
    :cond_5
    iput-boolean p3, p0, Lcom/bumptech/glide/request/i;->B:Z

    .line 172
    .line 173
    return-void

    .line 174
    :catchall_0
    move-exception p1

    .line 175
    iput-boolean p3, p0, Lcom/bumptech/glide/request/i;->B:Z

    .line 176
    .line 177
    throw p1
.end method

.method private s()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/request/i;->e:Lcom/bumptech/glide/request/e;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-interface {v0, p0}, Lcom/bumptech/glide/request/e;->k(Lcom/bumptech/glide/request/d;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    goto :goto_1

    .line 14
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 15
    :goto_1
    if-nez v0, :cond_2

    .line 16
    .line 17
    return-void

    .line 18
    :cond_2
    iget-object v0, p0, Lcom/bumptech/glide/request/i;->h:Ljava/lang/Object;

    .line 19
    .line 20
    if-nez v0, :cond_3

    .line 21
    .line 22
    invoke-direct {p0}, Lcom/bumptech/glide/request/i;->c()Landroid/graphics/drawable/Drawable;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    goto :goto_2

    .line 27
    :cond_3
    const/4 v0, 0x0

    .line 28
    :goto_2
    if-nez v0, :cond_5

    .line 29
    .line 30
    iget-object v0, p0, Lcom/bumptech/glide/request/i;->w:Landroid/graphics/drawable/Drawable;

    .line 31
    .line 32
    if-nez v0, :cond_4

    .line 33
    .line 34
    iget-object v0, p0, Lcom/bumptech/glide/request/i;->j:Lcom/bumptech/glide/request/a;

    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/bumptech/glide/request/a;->getErrorPlaceholder()Landroid/graphics/drawable/Drawable;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    iput-object v1, p0, Lcom/bumptech/glide/request/i;->w:Landroid/graphics/drawable/Drawable;

    .line 41
    .line 42
    if-nez v1, :cond_4

    .line 43
    .line 44
    invoke-virtual {v0}, Lcom/bumptech/glide/request/a;->getErrorId()I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-lez v1, :cond_4

    .line 49
    .line 50
    invoke-virtual {v0}, Lcom/bumptech/glide/request/a;->getErrorId()I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    invoke-direct {p0, v0}, Lcom/bumptech/glide/request/i;->l(I)Landroid/graphics/drawable/Drawable;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    iput-object v0, p0, Lcom/bumptech/glide/request/i;->w:Landroid/graphics/drawable/Drawable;

    .line 59
    .line 60
    :cond_4
    iget-object v0, p0, Lcom/bumptech/glide/request/i;->w:Landroid/graphics/drawable/Drawable;

    .line 61
    .line 62
    :cond_5
    if-nez v0, :cond_6

    .line 63
    .line 64
    invoke-direct {p0}, Lcom/bumptech/glide/request/i;->g()Landroid/graphics/drawable/Drawable;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    :cond_6
    iget-object v1, p0, Lcom/bumptech/glide/request/i;->n:LU/g;

    .line 69
    .line 70
    invoke-interface {v1, v0}, LU/g;->c(Landroid/graphics/drawable/Drawable;)V

    .line 71
    .line 72
    .line 73
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/request/i;->c:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/bumptech/glide/request/i;->v:Lcom/bumptech/glide/request/SingleRequest$Status;

    .line 5
    .line 6
    sget-object v2, Lcom/bumptech/glide/request/SingleRequest$Status;->COMPLETE:Lcom/bumptech/glide/request/SingleRequest$Status;

    .line 7
    .line 8
    if-ne v1, v2, :cond_0

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v1, 0x0

    .line 13
    :goto_0
    monitor-exit v0

    .line 14
    return v1

    .line 15
    :catchall_0
    move-exception v1

    .line 16
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    throw v1
.end method

.method public final b(II)V
    .locals 27

    .line 1
    move-object/from16 v15, p0

    .line 2
    .line 3
    move/from16 v0, p1

    .line 4
    .line 5
    move/from16 v1, p2

    .line 6
    .line 7
    const-string v14, "finished onSizeReady in "

    .line 8
    .line 9
    const-string v2, "finished setup for calling load in "

    .line 10
    .line 11
    const-string v3, "Got onSizeReady in "

    .line 12
    .line 13
    iget-object v4, v15, Lcom/bumptech/glide/request/i;->b:LY/i;

    .line 14
    .line 15
    invoke-virtual {v4}, LY/i;->c()V

    .line 16
    .line 17
    .line 18
    iget-object v13, v15, Lcom/bumptech/glide/request/i;->c:Ljava/lang/Object;

    .line 19
    .line 20
    monitor-enter v13

    .line 21
    :try_start_0
    sget-boolean v21, Lcom/bumptech/glide/request/i;->D:Z

    .line 22
    .line 23
    if-eqz v21, :cond_0

    .line 24
    .line 25
    new-instance v4, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iget-wide v5, v15, Lcom/bumptech/glide/request/i;->t:J

    .line 31
    .line 32
    invoke-static {v5, v6}, LX/m;->a(J)D

    .line 33
    .line 34
    .line 35
    move-result-wide v5

    .line 36
    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    invoke-direct {v15, v3}, Lcom/bumptech/glide/request/i;->m(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    :cond_0
    iget-object v3, v15, Lcom/bumptech/glide/request/i;->v:Lcom/bumptech/glide/request/SingleRequest$Status;

    .line 47
    .line 48
    sget-object v4, Lcom/bumptech/glide/request/SingleRequest$Status;->WAITING_FOR_SIZE:Lcom/bumptech/glide/request/SingleRequest$Status;

    .line 49
    .line 50
    if-eq v3, v4, :cond_1

    .line 51
    .line 52
    monitor-exit v13

    .line 53
    return-void

    .line 54
    :cond_1
    sget-object v12, Lcom/bumptech/glide/request/SingleRequest$Status;->RUNNING:Lcom/bumptech/glide/request/SingleRequest$Status;

    .line 55
    .line 56
    iput-object v12, v15, Lcom/bumptech/glide/request/i;->v:Lcom/bumptech/glide/request/SingleRequest$Status;

    .line 57
    .line 58
    iget-object v3, v15, Lcom/bumptech/glide/request/i;->j:Lcom/bumptech/glide/request/a;

    .line 59
    .line 60
    invoke-virtual {v3}, Lcom/bumptech/glide/request/a;->getSizeMultiplier()F

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    const/high16 v4, -0x80000000

    .line 65
    .line 66
    if-ne v0, v4, :cond_2

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_2
    int-to-float v0, v0

    .line 70
    mul-float v0, v0, v3

    .line 71
    .line 72
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    :goto_0
    iput v0, v15, Lcom/bumptech/glide/request/i;->z:I

    .line 77
    .line 78
    if-ne v1, v4, :cond_3

    .line 79
    .line 80
    move v0, v1

    .line 81
    goto :goto_1

    .line 82
    :cond_3
    int-to-float v0, v1

    .line 83
    mul-float v3, v3, v0

    .line 84
    .line 85
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    :goto_1
    iput v0, v15, Lcom/bumptech/glide/request/i;->A:I

    .line 90
    .line 91
    if-eqz v21, :cond_4

    .line 92
    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    iget-wide v1, v15, Lcom/bumptech/glide/request/i;->t:J

    .line 99
    .line 100
    invoke-static {v1, v2}, LX/m;->a(J)D

    .line 101
    .line 102
    .line 103
    move-result-wide v1

    .line 104
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    invoke-direct {v15, v0}, Lcom/bumptech/glide/request/i;->m(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    :cond_4
    iget-object v1, v15, Lcom/bumptech/glide/request/i;->u:Lcom/bumptech/glide/load/engine/C;

    .line 115
    .line 116
    iget-object v2, v15, Lcom/bumptech/glide/request/i;->g:Lcom/bumptech/glide/k;

    .line 117
    .line 118
    iget-object v3, v15, Lcom/bumptech/glide/request/i;->h:Ljava/lang/Object;

    .line 119
    .line 120
    iget-object v0, v15, Lcom/bumptech/glide/request/i;->j:Lcom/bumptech/glide/request/a;

    .line 121
    .line 122
    invoke-virtual {v0}, Lcom/bumptech/glide/request/a;->getSignature()LE/e;

    .line 123
    .line 124
    .line 125
    move-result-object v4

    .line 126
    iget v5, v15, Lcom/bumptech/glide/request/i;->z:I

    .line 127
    .line 128
    iget v6, v15, Lcom/bumptech/glide/request/i;->A:I

    .line 129
    .line 130
    iget-object v0, v15, Lcom/bumptech/glide/request/i;->j:Lcom/bumptech/glide/request/a;

    .line 131
    .line 132
    invoke-virtual {v0}, Lcom/bumptech/glide/request/a;->getResourceClass()Ljava/lang/Class;

    .line 133
    .line 134
    .line 135
    move-result-object v7

    .line 136
    iget-object v8, v15, Lcom/bumptech/glide/request/i;->i:Ljava/lang/Class;

    .line 137
    .line 138
    iget-object v9, v15, Lcom/bumptech/glide/request/i;->m:Lcom/bumptech/glide/Priority;

    .line 139
    .line 140
    iget-object v0, v15, Lcom/bumptech/glide/request/i;->j:Lcom/bumptech/glide/request/a;

    .line 141
    .line 142
    invoke-virtual {v0}, Lcom/bumptech/glide/request/a;->getDiskCacheStrategy()Lcom/bumptech/glide/load/engine/v;

    .line 143
    .line 144
    .line 145
    move-result-object v10

    .line 146
    iget-object v0, v15, Lcom/bumptech/glide/request/i;->j:Lcom/bumptech/glide/request/a;

    .line 147
    .line 148
    invoke-virtual {v0}, Lcom/bumptech/glide/request/a;->getTransformations()Ljava/util/Map;

    .line 149
    .line 150
    .line 151
    move-result-object v11

    .line 152
    iget-object v0, v15, Lcom/bumptech/glide/request/i;->j:Lcom/bumptech/glide/request/a;

    .line 153
    .line 154
    invoke-virtual {v0}, Lcom/bumptech/glide/request/a;->isTransformationRequired()Z

    .line 155
    .line 156
    .line 157
    move-result v0

    .line 158
    move-object/from16 v16, v12

    .line 159
    .line 160
    iget-object v12, v15, Lcom/bumptech/glide/request/i;->j:Lcom/bumptech/glide/request/a;

    .line 161
    .line 162
    invoke-virtual {v12}, Lcom/bumptech/glide/request/a;->isScaleOnlyOrNoTransform()Z

    .line 163
    .line 164
    .line 165
    move-result v17

    .line 166
    iget-object v12, v15, Lcom/bumptech/glide/request/i;->j:Lcom/bumptech/glide/request/a;

    .line 167
    .line 168
    invoke-virtual {v12}, Lcom/bumptech/glide/request/a;->getOptions()LE/i;

    .line 169
    .line 170
    .line 171
    move-result-object v18

    .line 172
    iget-object v12, v15, Lcom/bumptech/glide/request/i;->j:Lcom/bumptech/glide/request/a;

    .line 173
    .line 174
    invoke-virtual {v12}, Lcom/bumptech/glide/request/a;->isMemoryCacheable()Z

    .line 175
    .line 176
    .line 177
    move-result v19

    .line 178
    iget-object v12, v15, Lcom/bumptech/glide/request/i;->j:Lcom/bumptech/glide/request/a;

    .line 179
    .line 180
    invoke-virtual {v12}, Lcom/bumptech/glide/request/a;->getUseUnlimitedSourceGeneratorsPool()Z

    .line 181
    .line 182
    .line 183
    move-result v20

    .line 184
    iget-object v12, v15, Lcom/bumptech/glide/request/i;->j:Lcom/bumptech/glide/request/a;

    .line 185
    .line 186
    invoke-virtual {v12}, Lcom/bumptech/glide/request/a;->getUseAnimationPool()Z

    .line 187
    .line 188
    .line 189
    move-result v22

    .line 190
    iget-object v12, v15, Lcom/bumptech/glide/request/i;->j:Lcom/bumptech/glide/request/a;

    .line 191
    .line 192
    invoke-virtual {v12}, Lcom/bumptech/glide/request/a;->getOnlyRetrieveFromCache()Z

    .line 193
    .line 194
    .line 195
    move-result v23

    .line 196
    iget-object v12, v15, Lcom/bumptech/glide/request/i;->q:Ljava/util/concurrent/Executor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 197
    .line 198
    move-object/from16 v25, v12

    .line 199
    .line 200
    move-object/from16 v24, v16

    .line 201
    .line 202
    move v12, v0

    .line 203
    move-object/from16 v26, v13

    .line 204
    .line 205
    move/from16 v13, v17

    .line 206
    .line 207
    move-object v0, v14

    .line 208
    move-object/from16 v14, v18

    .line 209
    .line 210
    move/from16 v15, v19

    .line 211
    .line 212
    move/from16 v16, v20

    .line 213
    .line 214
    move/from16 v17, v22

    .line 215
    .line 216
    move/from16 v18, v23

    .line 217
    .line 218
    move-object/from16 v19, p0

    .line 219
    .line 220
    move-object/from16 v20, v25

    .line 221
    .line 222
    :try_start_1
    invoke-virtual/range {v1 .. v20}, Lcom/bumptech/glide/load/engine/C;->b(Lcom/bumptech/glide/k;Ljava/lang/Object;LE/e;IILjava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/Priority;Lcom/bumptech/glide/load/engine/v;Ljava/util/Map;ZZLE/i;ZZZZLcom/bumptech/glide/request/h;Ljava/util/concurrent/Executor;)Lcom/bumptech/glide/load/engine/B;

    .line 223
    .line 224
    .line 225
    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 226
    move-object/from16 v2, p0

    .line 227
    .line 228
    :try_start_2
    iput-object v1, v2, Lcom/bumptech/glide/request/i;->s:Lcom/bumptech/glide/load/engine/B;

    .line 229
    .line 230
    iget-object v1, v2, Lcom/bumptech/glide/request/i;->v:Lcom/bumptech/glide/request/SingleRequest$Status;

    .line 231
    .line 232
    move-object/from16 v3, v24

    .line 233
    .line 234
    if-eq v1, v3, :cond_5

    .line 235
    .line 236
    const/4 v1, 0x0

    .line 237
    iput-object v1, v2, Lcom/bumptech/glide/request/i;->s:Lcom/bumptech/glide/load/engine/B;

    .line 238
    .line 239
    :cond_5
    if-eqz v21, :cond_6

    .line 240
    .line 241
    new-instance v1, Ljava/lang/StringBuilder;

    .line 242
    .line 243
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 244
    .line 245
    .line 246
    iget-wide v3, v2, Lcom/bumptech/glide/request/i;->t:J

    .line 247
    .line 248
    invoke-static {v3, v4}, LX/m;->a(J)D

    .line 249
    .line 250
    .line 251
    move-result-wide v3

    .line 252
    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 253
    .line 254
    .line 255
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v0

    .line 259
    invoke-direct {v2, v0}, Lcom/bumptech/glide/request/i;->m(Ljava/lang/String;)V

    .line 260
    .line 261
    .line 262
    :cond_6
    monitor-exit v26
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 263
    return-void

    .line 264
    :catchall_0
    move-exception v0

    .line 265
    goto :goto_2

    .line 266
    :catchall_1
    move-exception v0

    .line 267
    move-object/from16 v2, p0

    .line 268
    .line 269
    goto :goto_2

    .line 270
    :catchall_2
    move-exception v0

    .line 271
    move-object/from16 v26, v13

    .line 272
    .line 273
    move-object v2, v15

    .line 274
    :goto_2
    move-object/from16 v13, v26

    .line 275
    .line 276
    :goto_3
    :try_start_3
    monitor-exit v13
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 277
    throw v0

    .line 278
    :catchall_3
    move-exception v0

    .line 279
    goto :goto_3
.end method

.method public final clear()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/request/i;->c:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lcom/bumptech/glide/request/i;->B:Z

    .line 5
    .line 6
    if-nez v1, :cond_8

    .line 7
    .line 8
    iget-object v1, p0, Lcom/bumptech/glide/request/i;->b:LY/i;

    .line 9
    .line 10
    invoke-virtual {v1}, LY/i;->c()V

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Lcom/bumptech/glide/request/i;->v:Lcom/bumptech/glide/request/SingleRequest$Status;

    .line 14
    .line 15
    sget-object v2, Lcom/bumptech/glide/request/SingleRequest$Status;->CLEARED:Lcom/bumptech/glide/request/SingleRequest$Status;

    .line 16
    .line 17
    if-ne v1, v2, :cond_0

    .line 18
    .line 19
    monitor-exit v0

    .line 20
    return-void

    .line 21
    :cond_0
    iget-boolean v1, p0, Lcom/bumptech/glide/request/i;->B:Z

    .line 22
    .line 23
    if-nez v1, :cond_7

    .line 24
    .line 25
    iget-object v1, p0, Lcom/bumptech/glide/request/i;->b:LY/i;

    .line 26
    .line 27
    invoke-virtual {v1}, LY/i;->c()V

    .line 28
    .line 29
    .line 30
    iget-object v1, p0, Lcom/bumptech/glide/request/i;->n:LU/g;

    .line 31
    .line 32
    invoke-interface {v1, p0}, LU/g;->e(LU/f;)V

    .line 33
    .line 34
    .line 35
    iget-object v1, p0, Lcom/bumptech/glide/request/i;->s:Lcom/bumptech/glide/load/engine/B;

    .line 36
    .line 37
    const/4 v3, 0x0

    .line 38
    if-eqz v1, :cond_1

    .line 39
    .line 40
    invoke-virtual {v1}, Lcom/bumptech/glide/load/engine/B;->a()V

    .line 41
    .line 42
    .line 43
    iput-object v3, p0, Lcom/bumptech/glide/request/i;->s:Lcom/bumptech/glide/load/engine/B;

    .line 44
    .line 45
    :cond_1
    iget-object v1, p0, Lcom/bumptech/glide/request/i;->r:Lcom/bumptech/glide/load/engine/V;

    .line 46
    .line 47
    if-eqz v1, :cond_2

    .line 48
    .line 49
    iput-object v3, p0, Lcom/bumptech/glide/request/i;->r:Lcom/bumptech/glide/load/engine/V;

    .line 50
    .line 51
    move-object v3, v1

    .line 52
    :cond_2
    iget-object v1, p0, Lcom/bumptech/glide/request/i;->e:Lcom/bumptech/glide/request/e;

    .line 53
    .line 54
    if-eqz v1, :cond_4

    .line 55
    .line 56
    invoke-interface {v1, p0}, Lcom/bumptech/glide/request/e;->l(Lcom/bumptech/glide/request/d;)Z

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    if-eqz v1, :cond_3

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_3
    const/4 v1, 0x0

    .line 64
    goto :goto_1

    .line 65
    :cond_4
    :goto_0
    const/4 v1, 0x1

    .line 66
    :goto_1
    if-eqz v1, :cond_5

    .line 67
    .line 68
    iget-object v1, p0, Lcom/bumptech/glide/request/i;->n:LU/g;

    .line 69
    .line 70
    invoke-direct {p0}, Lcom/bumptech/glide/request/i;->g()Landroid/graphics/drawable/Drawable;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    invoke-interface {v1, v4}, LU/g;->f(Landroid/graphics/drawable/Drawable;)V

    .line 75
    .line 76
    .line 77
    :cond_5
    iput-object v2, p0, Lcom/bumptech/glide/request/i;->v:Lcom/bumptech/glide/request/SingleRequest$Status;

    .line 78
    .line 79
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    if-eqz v3, :cond_6

    .line 81
    .line 82
    iget-object v0, p0, Lcom/bumptech/glide/request/i;->u:Lcom/bumptech/glide/load/engine/C;

    .line 83
    .line 84
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 85
    .line 86
    .line 87
    invoke-static {v3}, Lcom/bumptech/glide/load/engine/C;->h(Lcom/bumptech/glide/load/engine/V;)V

    .line 88
    .line 89
    .line 90
    :cond_6
    return-void

    .line 91
    :cond_7
    :try_start_1
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 92
    .line 93
    const-string v2, "You can\'t start or clear loads in RequestListener or Target callbacks. If you\'re trying to start a fallback request when a load fails, use RequestBuilder#error(RequestBuilder). Otherwise consider posting your into() or clear() calls to the main thread using a Handler instead."

    .line 94
    .line 95
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    throw v1

    .line 99
    :catchall_0
    move-exception v1

    .line 100
    goto :goto_2

    .line 101
    :cond_8
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 102
    .line 103
    const-string v2, "You can\'t start or clear loads in RequestListener or Target callbacks. If you\'re trying to start a fallback request when a load fails, use RequestBuilder#error(RequestBuilder). Otherwise consider posting your into() or clear() calls to the main thread using a Handler instead."

    .line 104
    .line 105
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    throw v1

    .line 109
    :goto_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 110
    throw v1
.end method

.method public final d()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/request/i;->b:LY/i;

    .line 2
    .line 3
    invoke-virtual {v0}, LY/i;->c()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/bumptech/glide/request/i;->c:Ljava/lang/Object;

    .line 7
    .line 8
    return-object v0
.end method

.method public final e()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/request/i;->c:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Lcom/bumptech/glide/request/i;->isRunning()Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/bumptech/glide/request/i;->clear()V

    .line 11
    .line 12
    .line 13
    :cond_0
    monitor-exit v0

    .line 14
    return-void

    .line 15
    :catchall_0
    move-exception v1

    .line 16
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    throw v1
.end method

.method public final f()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/request/i;->c:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lcom/bumptech/glide/request/i;->B:Z

    .line 5
    .line 6
    if-nez v1, :cond_e

    .line 7
    .line 8
    iget-object v1, p0, Lcom/bumptech/glide/request/i;->b:LY/i;

    .line 9
    .line 10
    invoke-virtual {v1}, LY/i;->c()V

    .line 11
    .line 12
    .line 13
    sget v1, LX/m;->b:I

    .line 14
    .line 15
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    .line 16
    .line 17
    .line 18
    move-result-wide v1

    .line 19
    iput-wide v1, p0, Lcom/bumptech/glide/request/i;->t:J

    .line 20
    .line 21
    iget-object v1, p0, Lcom/bumptech/glide/request/i;->h:Ljava/lang/Object;

    .line 22
    .line 23
    if-nez v1, :cond_2

    .line 24
    .line 25
    iget v1, p0, Lcom/bumptech/glide/request/i;->k:I

    .line 26
    .line 27
    iget v2, p0, Lcom/bumptech/glide/request/i;->l:I

    .line 28
    .line 29
    invoke-static {v1, v2}, LX/s;->i(II)Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_0

    .line 34
    .line 35
    iget v1, p0, Lcom/bumptech/glide/request/i;->k:I

    .line 36
    .line 37
    iput v1, p0, Lcom/bumptech/glide/request/i;->z:I

    .line 38
    .line 39
    iget v1, p0, Lcom/bumptech/glide/request/i;->l:I

    .line 40
    .line 41
    iput v1, p0, Lcom/bumptech/glide/request/i;->A:I

    .line 42
    .line 43
    :cond_0
    invoke-direct {p0}, Lcom/bumptech/glide/request/i;->c()Landroid/graphics/drawable/Drawable;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    if-nez v1, :cond_1

    .line 48
    .line 49
    const/4 v1, 0x5

    .line 50
    goto :goto_0

    .line 51
    :cond_1
    const/4 v1, 0x3

    .line 52
    :goto_0
    new-instance v2, Lcom/bumptech/glide/load/engine/P;

    .line 53
    .line 54
    const-string v3, "Received null model"

    .line 55
    .line 56
    invoke-direct {v2, v3}, Lcom/bumptech/glide/load/engine/P;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-direct {p0, v2, v1}, Lcom/bumptech/glide/request/i;->p(Lcom/bumptech/glide/load/engine/P;I)V

    .line 60
    .line 61
    .line 62
    monitor-exit v0

    .line 63
    return-void

    .line 64
    :cond_2
    iget-object v1, p0, Lcom/bumptech/glide/request/i;->v:Lcom/bumptech/glide/request/SingleRequest$Status;

    .line 65
    .line 66
    sget-object v2, Lcom/bumptech/glide/request/SingleRequest$Status;->RUNNING:Lcom/bumptech/glide/request/SingleRequest$Status;

    .line 67
    .line 68
    if-eq v1, v2, :cond_d

    .line 69
    .line 70
    sget-object v2, Lcom/bumptech/glide/request/SingleRequest$Status;->COMPLETE:Lcom/bumptech/glide/request/SingleRequest$Status;

    .line 71
    .line 72
    const/4 v3, 0x0

    .line 73
    if-ne v1, v2, :cond_3

    .line 74
    .line 75
    iget-object v1, p0, Lcom/bumptech/glide/request/i;->r:Lcom/bumptech/glide/load/engine/V;

    .line 76
    .line 77
    sget-object v2, Lcom/bumptech/glide/load/DataSource;->MEMORY_CACHE:Lcom/bumptech/glide/load/DataSource;

    .line 78
    .line 79
    invoke-virtual {p0, v1, v2, v3}, Lcom/bumptech/glide/request/i;->q(Lcom/bumptech/glide/load/engine/V;Lcom/bumptech/glide/load/DataSource;Z)V

    .line 80
    .line 81
    .line 82
    monitor-exit v0

    .line 83
    return-void

    .line 84
    :cond_3
    iget-object v1, p0, Lcom/bumptech/glide/request/i;->o:Ljava/util/List;

    .line 85
    .line 86
    if-nez v1, :cond_4

    .line 87
    .line 88
    goto :goto_2

    .line 89
    :cond_4
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    :cond_5
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 94
    .line 95
    .line 96
    move-result v2

    .line 97
    if-eqz v2, :cond_6

    .line 98
    .line 99
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    check-cast v2, Lcom/bumptech/glide/request/f;

    .line 104
    .line 105
    instance-of v4, v2, Lcom/bumptech/glide/request/c;

    .line 106
    .line 107
    if-eqz v4, :cond_5

    .line 108
    .line 109
    check-cast v2, Lcom/bumptech/glide/request/c;

    .line 110
    .line 111
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 112
    .line 113
    .line 114
    goto :goto_1

    .line 115
    :cond_6
    :goto_2
    sget-object v1, Lcom/bumptech/glide/request/SingleRequest$Status;->WAITING_FOR_SIZE:Lcom/bumptech/glide/request/SingleRequest$Status;

    .line 116
    .line 117
    iput-object v1, p0, Lcom/bumptech/glide/request/i;->v:Lcom/bumptech/glide/request/SingleRequest$Status;

    .line 118
    .line 119
    iget v2, p0, Lcom/bumptech/glide/request/i;->k:I

    .line 120
    .line 121
    iget v4, p0, Lcom/bumptech/glide/request/i;->l:I

    .line 122
    .line 123
    invoke-static {v2, v4}, LX/s;->i(II)Z

    .line 124
    .line 125
    .line 126
    move-result v2

    .line 127
    if-eqz v2, :cond_7

    .line 128
    .line 129
    iget v2, p0, Lcom/bumptech/glide/request/i;->k:I

    .line 130
    .line 131
    iget v4, p0, Lcom/bumptech/glide/request/i;->l:I

    .line 132
    .line 133
    invoke-virtual {p0, v2, v4}, Lcom/bumptech/glide/request/i;->b(II)V

    .line 134
    .line 135
    .line 136
    goto :goto_3

    .line 137
    :cond_7
    iget-object v2, p0, Lcom/bumptech/glide/request/i;->n:LU/g;

    .line 138
    .line 139
    invoke-interface {v2, p0}, LU/g;->h(LU/f;)V

    .line 140
    .line 141
    .line 142
    :goto_3
    iget-object v2, p0, Lcom/bumptech/glide/request/i;->v:Lcom/bumptech/glide/request/SingleRequest$Status;

    .line 143
    .line 144
    sget-object v4, Lcom/bumptech/glide/request/SingleRequest$Status;->RUNNING:Lcom/bumptech/glide/request/SingleRequest$Status;

    .line 145
    .line 146
    if-eq v2, v4, :cond_8

    .line 147
    .line 148
    if-ne v2, v1, :cond_b

    .line 149
    .line 150
    :cond_8
    iget-object v1, p0, Lcom/bumptech/glide/request/i;->e:Lcom/bumptech/glide/request/e;

    .line 151
    .line 152
    if-eqz v1, :cond_9

    .line 153
    .line 154
    invoke-interface {v1, p0}, Lcom/bumptech/glide/request/e;->k(Lcom/bumptech/glide/request/d;)Z

    .line 155
    .line 156
    .line 157
    move-result v1

    .line 158
    if-eqz v1, :cond_a

    .line 159
    .line 160
    :cond_9
    const/4 v3, 0x1

    .line 161
    :cond_a
    if-eqz v3, :cond_b

    .line 162
    .line 163
    iget-object v1, p0, Lcom/bumptech/glide/request/i;->n:LU/g;

    .line 164
    .line 165
    invoke-direct {p0}, Lcom/bumptech/glide/request/i;->g()Landroid/graphics/drawable/Drawable;

    .line 166
    .line 167
    .line 168
    move-result-object v2

    .line 169
    invoke-interface {v1, v2}, LU/g;->a(Landroid/graphics/drawable/Drawable;)V

    .line 170
    .line 171
    .line 172
    :cond_b
    sget-boolean v1, Lcom/bumptech/glide/request/i;->D:Z

    .line 173
    .line 174
    if-eqz v1, :cond_c

    .line 175
    .line 176
    new-instance v1, Ljava/lang/StringBuilder;

    .line 177
    .line 178
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 179
    .line 180
    .line 181
    const-string v2, "finished run method in "

    .line 182
    .line 183
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    iget-wide v2, p0, Lcom/bumptech/glide/request/i;->t:J

    .line 187
    .line 188
    invoke-static {v2, v3}, LX/m;->a(J)D

    .line 189
    .line 190
    .line 191
    move-result-wide v2

    .line 192
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v1

    .line 199
    invoke-direct {p0, v1}, Lcom/bumptech/glide/request/i;->m(Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    :cond_c
    monitor-exit v0

    .line 203
    return-void

    .line 204
    :cond_d
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 205
    .line 206
    const-string v2, "Cannot restart a running request"

    .line 207
    .line 208
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    throw v1

    .line 212
    :catchall_0
    move-exception v1

    .line 213
    goto :goto_4

    .line 214
    :cond_e
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 215
    .line 216
    const-string v2, "You can\'t start or clear loads in RequestListener or Target callbacks. If you\'re trying to start a fallback request when a load fails, use RequestBuilder#error(RequestBuilder). Otherwise consider posting your into() or clear() calls to the main thread using a Handler instead."

    .line 217
    .line 218
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    throw v1

    .line 222
    :goto_4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 223
    throw v1
.end method

.method public final h(Lcom/bumptech/glide/request/d;)Z
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    instance-of v2, v0, Lcom/bumptech/glide/request/i;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    return v3

    .line 11
    :cond_0
    iget-object v2, v1, Lcom/bumptech/glide/request/i;->c:Ljava/lang/Object;

    .line 12
    .line 13
    monitor-enter v2

    .line 14
    :try_start_0
    iget v4, v1, Lcom/bumptech/glide/request/i;->k:I

    .line 15
    .line 16
    iget v5, v1, Lcom/bumptech/glide/request/i;->l:I

    .line 17
    .line 18
    iget-object v6, v1, Lcom/bumptech/glide/request/i;->h:Ljava/lang/Object;

    .line 19
    .line 20
    iget-object v7, v1, Lcom/bumptech/glide/request/i;->i:Ljava/lang/Class;

    .line 21
    .line 22
    iget-object v8, v1, Lcom/bumptech/glide/request/i;->j:Lcom/bumptech/glide/request/a;

    .line 23
    .line 24
    iget-object v9, v1, Lcom/bumptech/glide/request/i;->m:Lcom/bumptech/glide/Priority;

    .line 25
    .line 26
    iget-object v10, v1, Lcom/bumptech/glide/request/i;->o:Ljava/util/List;

    .line 27
    .line 28
    if-eqz v10, :cond_1

    .line 29
    .line 30
    invoke-interface {v10}, Ljava/util/List;->size()I

    .line 31
    .line 32
    .line 33
    move-result v10

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    const/4 v10, 0x0

    .line 36
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 37
    check-cast v0, Lcom/bumptech/glide/request/i;

    .line 38
    .line 39
    iget-object v11, v0, Lcom/bumptech/glide/request/i;->c:Ljava/lang/Object;

    .line 40
    .line 41
    monitor-enter v11

    .line 42
    :try_start_1
    iget v2, v0, Lcom/bumptech/glide/request/i;->k:I

    .line 43
    .line 44
    iget v12, v0, Lcom/bumptech/glide/request/i;->l:I

    .line 45
    .line 46
    iget-object v13, v0, Lcom/bumptech/glide/request/i;->h:Ljava/lang/Object;

    .line 47
    .line 48
    iget-object v14, v0, Lcom/bumptech/glide/request/i;->i:Ljava/lang/Class;

    .line 49
    .line 50
    iget-object v15, v0, Lcom/bumptech/glide/request/i;->j:Lcom/bumptech/glide/request/a;

    .line 51
    .line 52
    iget-object v3, v0, Lcom/bumptech/glide/request/i;->m:Lcom/bumptech/glide/Priority;

    .line 53
    .line 54
    iget-object v0, v0, Lcom/bumptech/glide/request/i;->o:Ljava/util/List;

    .line 55
    .line 56
    if-eqz v0, :cond_2

    .line 57
    .line 58
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    goto :goto_1

    .line 63
    :cond_2
    const/4 v0, 0x0

    .line 64
    :goto_1
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 65
    if-ne v4, v2, :cond_6

    .line 66
    .line 67
    if-ne v5, v12, :cond_6

    .line 68
    .line 69
    sget v2, LX/s;->d:I

    .line 70
    .line 71
    const/4 v2, 0x1

    .line 72
    if-nez v6, :cond_4

    .line 73
    .line 74
    if-nez v13, :cond_3

    .line 75
    .line 76
    const/4 v4, 0x1

    .line 77
    goto :goto_2

    .line 78
    :cond_3
    const/4 v4, 0x0

    .line 79
    goto :goto_2

    .line 80
    :cond_4
    instance-of v4, v6, LJ/B;

    .line 81
    .line 82
    if-eqz v4, :cond_5

    .line 83
    .line 84
    check-cast v6, LJ/B;

    .line 85
    .line 86
    invoke-interface {v6}, LJ/B;->a()Z

    .line 87
    .line 88
    .line 89
    move-result v4

    .line 90
    goto :goto_2

    .line 91
    :cond_5
    invoke-virtual {v6, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result v4

    .line 95
    :goto_2
    if-eqz v4, :cond_6

    .line 96
    .line 97
    invoke-virtual {v7, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result v4

    .line 101
    if-eqz v4, :cond_6

    .line 102
    .line 103
    invoke-virtual {v8, v15}, Lcom/bumptech/glide/request/a;->equals(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    move-result v4

    .line 107
    if-eqz v4, :cond_6

    .line 108
    .line 109
    if-ne v9, v3, :cond_6

    .line 110
    .line 111
    if-ne v10, v0, :cond_6

    .line 112
    .line 113
    const/4 v3, 0x1

    .line 114
    goto :goto_3

    .line 115
    :cond_6
    const/4 v3, 0x0

    .line 116
    :goto_3
    return v3

    .line 117
    :catchall_0
    move-exception v0

    .line 118
    :try_start_2
    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 119
    throw v0

    .line 120
    :catchall_1
    move-exception v0

    .line 121
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 122
    throw v0
.end method

.method public final i()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/request/i;->c:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/bumptech/glide/request/i;->v:Lcom/bumptech/glide/request/SingleRequest$Status;

    .line 5
    .line 6
    sget-object v2, Lcom/bumptech/glide/request/SingleRequest$Status;->COMPLETE:Lcom/bumptech/glide/request/SingleRequest$Status;

    .line 7
    .line 8
    if-ne v1, v2, :cond_0

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v1, 0x0

    .line 13
    :goto_0
    monitor-exit v0

    .line 14
    return v1

    .line 15
    :catchall_0
    move-exception v1

    .line 16
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    throw v1
.end method

.method public final isRunning()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/request/i;->c:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/bumptech/glide/request/i;->v:Lcom/bumptech/glide/request/SingleRequest$Status;

    .line 5
    .line 6
    sget-object v2, Lcom/bumptech/glide/request/SingleRequest$Status;->RUNNING:Lcom/bumptech/glide/request/SingleRequest$Status;

    .line 7
    .line 8
    if-eq v1, v2, :cond_1

    .line 9
    .line 10
    sget-object v2, Lcom/bumptech/glide/request/SingleRequest$Status;->WAITING_FOR_SIZE:Lcom/bumptech/glide/request/SingleRequest$Status;

    .line 11
    .line 12
    if-ne v1, v2, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v1, 0x0

    .line 16
    goto :goto_1

    .line 17
    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 18
    :goto_1
    monitor-exit v0

    .line 19
    return v1

    .line 20
    :catchall_0
    move-exception v1

    .line 21
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    throw v1
.end method

.method public final j()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/request/i;->c:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/bumptech/glide/request/i;->v:Lcom/bumptech/glide/request/SingleRequest$Status;

    .line 5
    .line 6
    sget-object v2, Lcom/bumptech/glide/request/SingleRequest$Status;->CLEARED:Lcom/bumptech/glide/request/SingleRequest$Status;

    .line 7
    .line 8
    if-ne v1, v2, :cond_0

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v1, 0x0

    .line 13
    :goto_0
    monitor-exit v0

    .line 14
    return v1

    .line 15
    :catchall_0
    move-exception v1

    .line 16
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    throw v1
.end method

.method public final o(Lcom/bumptech/glide/load/engine/P;)V
    .locals 1

    .line 1
    const/4 v0, 0x5

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/bumptech/glide/request/i;->p(Lcom/bumptech/glide/load/engine/P;I)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public final q(Lcom/bumptech/glide/load/engine/V;Lcom/bumptech/glide/load/DataSource;Z)V
    .locals 7

    .line 1
    const-string p3, "Expected to receive an object of "

    .line 2
    .line 3
    const-string v0, "Expected to receive a Resource<R> with an object of "

    .line 4
    .line 5
    iget-object v1, p0, Lcom/bumptech/glide/request/i;->b:LY/i;

    .line 6
    .line 7
    invoke-virtual {v1}, LY/i;->c()V

    .line 8
    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    :try_start_0
    iget-object v2, p0, Lcom/bumptech/glide/request/i;->c:Ljava/lang/Object;

    .line 12
    .line 13
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 14
    :try_start_1
    iput-object v1, p0, Lcom/bumptech/glide/request/i;->s:Lcom/bumptech/glide/load/engine/B;

    .line 15
    .line 16
    const/4 v3, 0x5

    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    new-instance p1, Lcom/bumptech/glide/load/engine/P;

    .line 20
    .line 21
    new-instance p2, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object p3, p0, Lcom/bumptech/glide/request/i;->i:Ljava/lang/Class;

    .line 27
    .line 28
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string p3, " inside, but instead got null."

    .line 32
    .line 33
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    invoke-direct {p1, p2}, Lcom/bumptech/glide/load/engine/P;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-direct {p0, p1, v3}, Lcom/bumptech/glide/request/i;->p(Lcom/bumptech/glide/load/engine/P;I)V

    .line 44
    .line 45
    .line 46
    monitor-exit v2

    .line 47
    return-void

    .line 48
    :cond_0
    invoke-interface {p1}, Lcom/bumptech/glide/load/engine/V;->get()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    if-eqz v0, :cond_5

    .line 53
    .line 54
    iget-object v4, p0, Lcom/bumptech/glide/request/i;->i:Ljava/lang/Class;

    .line 55
    .line 56
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    .line 58
    .line 59
    move-result-object v5

    .line 60
    invoke-virtual {v4, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 61
    .line 62
    .line 63
    move-result v4

    .line 64
    if-nez v4, :cond_1

    .line 65
    .line 66
    goto :goto_3

    .line 67
    :cond_1
    iget-object p3, p0, Lcom/bumptech/glide/request/i;->e:Lcom/bumptech/glide/request/e;

    .line 68
    .line 69
    if-eqz p3, :cond_3

    .line 70
    .line 71
    invoke-interface {p3, p0}, Lcom/bumptech/glide/request/e;->b(Lcom/bumptech/glide/request/d;)Z

    .line 72
    .line 73
    .line 74
    move-result p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 75
    if-eqz p3, :cond_2

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_2
    const/4 p3, 0x0

    .line 79
    goto :goto_1

    .line 80
    :cond_3
    :goto_0
    const/4 p3, 0x1

    .line 81
    :goto_1
    if-nez p3, :cond_4

    .line 82
    .line 83
    :try_start_2
    iput-object v1, p0, Lcom/bumptech/glide/request/i;->r:Lcom/bumptech/glide/load/engine/V;

    .line 84
    .line 85
    sget-object p2, Lcom/bumptech/glide/request/SingleRequest$Status;->COMPLETE:Lcom/bumptech/glide/request/SingleRequest$Status;

    .line 86
    .line 87
    iput-object p2, p0, Lcom/bumptech/glide/request/i;->v:Lcom/bumptech/glide/request/SingleRequest$Status;

    .line 88
    .line 89
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 90
    :goto_2
    iget-object p2, p0, Lcom/bumptech/glide/request/i;->u:Lcom/bumptech/glide/load/engine/C;

    .line 91
    .line 92
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 93
    .line 94
    .line 95
    invoke-static {p1}, Lcom/bumptech/glide/load/engine/C;->h(Lcom/bumptech/glide/load/engine/V;)V

    .line 96
    .line 97
    .line 98
    return-void

    .line 99
    :cond_4
    :try_start_3
    invoke-direct {p0, p1, v0, p2}, Lcom/bumptech/glide/request/i;->r(Lcom/bumptech/glide/load/engine/V;Ljava/lang/Object;Lcom/bumptech/glide/load/DataSource;)V

    .line 100
    .line 101
    .line 102
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 103
    return-void

    .line 104
    :cond_5
    :goto_3
    :try_start_4
    iput-object v1, p0, Lcom/bumptech/glide/request/i;->r:Lcom/bumptech/glide/load/engine/V;

    .line 105
    .line 106
    new-instance p2, Lcom/bumptech/glide/load/engine/P;

    .line 107
    .line 108
    new-instance v1, Ljava/lang/StringBuilder;

    .line 109
    .line 110
    invoke-direct {v1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    iget-object p3, p0, Lcom/bumptech/glide/request/i;->i:Ljava/lang/Class;

    .line 114
    .line 115
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    const-string p3, " but instead got "

    .line 119
    .line 120
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    if-eqz v0, :cond_6

    .line 124
    .line 125
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 126
    .line 127
    .line 128
    move-result-object p3

    .line 129
    goto :goto_4

    .line 130
    :cond_6
    const-string p3, ""

    .line 131
    .line 132
    :goto_4
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    const-string p3, "{"

    .line 136
    .line 137
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    const-string p3, "} inside Resource{"

    .line 144
    .line 145
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    const-string p3, "}."

    .line 152
    .line 153
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    if-eqz v0, :cond_7

    .line 157
    .line 158
    const-string p3, ""

    .line 159
    .line 160
    goto :goto_5

    .line 161
    :cond_7
    const-string p3, " To indicate failure return a null Resource object, rather than a Resource object containing null data."

    .line 162
    .line 163
    :goto_5
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object p3

    .line 170
    invoke-direct {p2, p3}, Lcom/bumptech/glide/load/engine/P;-><init>(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    invoke-direct {p0, p2, v3}, Lcom/bumptech/glide/request/i;->p(Lcom/bumptech/glide/load/engine/P;I)V

    .line 174
    .line 175
    .line 176
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 177
    goto :goto_2

    .line 178
    :catchall_0
    move-exception p2

    .line 179
    move-object v1, p1

    .line 180
    move-object p1, p0

    .line 181
    goto :goto_7

    .line 182
    :catchall_1
    move-exception p1

    .line 183
    move-object p2, p0

    .line 184
    :goto_6
    move-object v6, p2

    .line 185
    move-object p2, p1

    .line 186
    move-object p1, v6

    .line 187
    :goto_7
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 188
    :try_start_6
    throw p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 189
    :catchall_2
    move-exception p2

    .line 190
    goto :goto_8

    .line 191
    :catchall_3
    move-exception p2

    .line 192
    move-object v6, p2

    .line 193
    move-object p2, p1

    .line 194
    move-object p1, v6

    .line 195
    goto :goto_6

    .line 196
    :catchall_4
    move-exception p2

    .line 197
    move-object p1, p0

    .line 198
    :goto_8
    if-eqz v1, :cond_8

    .line 199
    .line 200
    iget-object p1, p1, Lcom/bumptech/glide/request/i;->u:Lcom/bumptech/glide/load/engine/C;

    .line 201
    .line 202
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 203
    .line 204
    .line 205
    invoke-static {v1}, Lcom/bumptech/glide/load/engine/C;->h(Lcom/bumptech/glide/load/engine/V;)V

    .line 206
    .line 207
    .line 208
    :cond_8
    throw p2
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/request/i;->c:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/bumptech/glide/request/i;->h:Ljava/lang/Object;

    .line 5
    .line 6
    iget-object v2, p0, Lcom/bumptech/glide/request/i;->i:Ljava/lang/Class;

    .line 7
    .line 8
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v3, "[model="

    .line 22
    .line 23
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v1, ", transcodeClass="

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v1, "]"

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    return-object v0

    .line 47
    :catchall_0
    move-exception v1

    .line 48
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    throw v1
.end method
