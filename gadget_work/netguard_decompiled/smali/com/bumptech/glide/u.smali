.class public Lcom/bumptech/glide/u;
.super Lcom/bumptech/glide/request/a;
.source "SourceFile"


# static fields
.field protected static final DOWNLOAD_ONLY_OPTIONS:Lcom/bumptech/glide/request/g;


# instance fields
.field private final context:Landroid/content/Context;

.field private errorBuilder:Lcom/bumptech/glide/u;

.field private final glide:Lcom/bumptech/glide/d;

.field private final glideContext:Lcom/bumptech/glide/k;

.field private isDefaultTransitionOptionsSet:Z

.field private isModelSet:Z

.field private isThumbnailBuilt:Z

.field private model:Ljava/lang/Object;

.field private requestListeners:Ljava/util/List;

.field private final requestManager:Lcom/bumptech/glide/x;

.field private thumbSizeMultiplier:Ljava/lang/Float;

.field private thumbnailBuilder:Lcom/bumptech/glide/u;

.field private final transcodeClass:Ljava/lang/Class;

.field private transitionOptions:Lcom/bumptech/glide/y;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/bumptech/glide/request/g;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/bumptech/glide/request/g;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lcom/bumptech/glide/load/engine/v;->b:Lcom/bumptech/glide/load/engine/v;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/a;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/v;)Lcom/bumptech/glide/request/a;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lcom/bumptech/glide/request/g;

    .line 13
    .line 14
    sget-object v1, Lcom/bumptech/glide/Priority;->LOW:Lcom/bumptech/glide/Priority;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/a;->priority(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/request/a;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Lcom/bumptech/glide/request/g;

    .line 21
    .line 22
    const/4 v1, 0x1

    .line 23
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/a;->skipMemoryCache(Z)Lcom/bumptech/glide/request/a;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Lcom/bumptech/glide/request/g;

    .line 28
    .line 29
    sput-object v0, Lcom/bumptech/glide/u;->DOWNLOAD_ONLY_OPTIONS:Lcom/bumptech/glide/request/g;

    .line 30
    .line 31
    return-void
.end method

.method protected constructor <init>(Lcom/bumptech/glide/d;Lcom/bumptech/glide/x;Ljava/lang/Class;Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/bumptech/glide/request/a;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/bumptech/glide/u;->isDefaultTransitionOptionsSet:Z

    .line 6
    .line 7
    iput-object p1, p0, Lcom/bumptech/glide/u;->glide:Lcom/bumptech/glide/d;

    .line 8
    .line 9
    iput-object p2, p0, Lcom/bumptech/glide/u;->requestManager:Lcom/bumptech/glide/x;

    .line 10
    .line 11
    iput-object p3, p0, Lcom/bumptech/glide/u;->transcodeClass:Ljava/lang/Class;

    .line 12
    .line 13
    iput-object p4, p0, Lcom/bumptech/glide/u;->context:Landroid/content/Context;

    .line 14
    .line 15
    invoke-virtual {p2, p3}, Lcom/bumptech/glide/x;->getDefaultTransitionOptions(Ljava/lang/Class;)Lcom/bumptech/glide/y;

    .line 16
    .line 17
    .line 18
    move-result-object p3

    .line 19
    iput-object p3, p0, Lcom/bumptech/glide/u;->transitionOptions:Lcom/bumptech/glide/y;

    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/bumptech/glide/d;->g()Lcom/bumptech/glide/k;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    iput-object p1, p0, Lcom/bumptech/glide/u;->glideContext:Lcom/bumptech/glide/k;

    .line 26
    .line 27
    invoke-virtual {p2}, Lcom/bumptech/glide/x;->getDefaultRequestListeners()Ljava/util/List;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-direct {p0, p1}, Lcom/bumptech/glide/u;->initRequestListeners(Ljava/util/List;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p2}, Lcom/bumptech/glide/x;->getDefaultRequestOptions()Lcom/bumptech/glide/request/g;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/u;->apply(Lcom/bumptech/glide/request/a;)Lcom/bumptech/glide/u;

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method private buildRequest(LU/g;Lcom/bumptech/glide/request/f;Lcom/bumptech/glide/request/a;Ljava/util/concurrent/Executor;)Lcom/bumptech/glide/request/d;
    .locals 11

    .line 1
    new-instance v1, Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v4, 0x0

    .line 7
    iget-object v5, p0, Lcom/bumptech/glide/u;->transitionOptions:Lcom/bumptech/glide/y;

    .line 8
    .line 9
    invoke-virtual {p3}, Lcom/bumptech/glide/request/a;->getPriority()Lcom/bumptech/glide/Priority;

    .line 10
    .line 11
    .line 12
    move-result-object v6

    .line 13
    invoke-virtual {p3}, Lcom/bumptech/glide/request/a;->getOverrideWidth()I

    .line 14
    .line 15
    .line 16
    move-result v7

    .line 17
    invoke-virtual {p3}, Lcom/bumptech/glide/request/a;->getOverrideHeight()I

    .line 18
    .line 19
    .line 20
    move-result v8

    .line 21
    move-object v0, p0

    .line 22
    move-object v2, p1

    .line 23
    move-object v3, p2

    .line 24
    move-object v9, p3

    .line 25
    move-object v10, p4

    .line 26
    invoke-direct/range {v0 .. v10}, Lcom/bumptech/glide/u;->buildRequestRecursive(Ljava/lang/Object;LU/g;Lcom/bumptech/glide/request/f;Lcom/bumptech/glide/request/e;Lcom/bumptech/glide/y;Lcom/bumptech/glide/Priority;IILcom/bumptech/glide/request/a;Ljava/util/concurrent/Executor;)Lcom/bumptech/glide/request/d;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    return-object p1
.end method

.method private buildRequestRecursive(Ljava/lang/Object;LU/g;Lcom/bumptech/glide/request/f;Lcom/bumptech/glide/request/e;Lcom/bumptech/glide/y;Lcom/bumptech/glide/Priority;IILcom/bumptech/glide/request/a;Ljava/util/concurrent/Executor;)Lcom/bumptech/glide/request/d;
    .locals 23

    move-object/from16 v11, p0

    .line 1
    iget-object v0, v11, Lcom/bumptech/glide/u;->errorBuilder:Lcom/bumptech/glide/u;

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/bumptech/glide/request/b;

    move-object/from16 v13, p1

    move-object/from16 v1, p4

    invoke-direct {v0, v13, v1}, Lcom/bumptech/glide/request/b;-><init>(Ljava/lang/Object;Lcom/bumptech/glide/request/e;)V

    move-object v4, v0

    move-object v15, v4

    goto :goto_0

    :cond_0
    move-object/from16 v13, p1

    move-object/from16 v1, p4

    const/4 v0, 0x0

    move-object v15, v0

    move-object v4, v1

    :goto_0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    .line 3
    invoke-direct/range {v0 .. v10}, Lcom/bumptech/glide/u;->buildThumbnailRequestRecursive(Ljava/lang/Object;LU/g;Lcom/bumptech/glide/request/f;Lcom/bumptech/glide/request/e;Lcom/bumptech/glide/y;Lcom/bumptech/glide/Priority;IILcom/bumptech/glide/request/a;Ljava/util/concurrent/Executor;)Lcom/bumptech/glide/request/d;

    move-result-object v0

    if-nez v15, :cond_1

    return-object v0

    .line 4
    :cond_1
    iget-object v1, v11, Lcom/bumptech/glide/u;->errorBuilder:Lcom/bumptech/glide/u;

    invoke-virtual {v1}, Lcom/bumptech/glide/request/a;->getOverrideWidth()I

    move-result v1

    .line 5
    iget-object v2, v11, Lcom/bumptech/glide/u;->errorBuilder:Lcom/bumptech/glide/u;

    invoke-virtual {v2}, Lcom/bumptech/glide/request/a;->getOverrideHeight()I

    move-result v2

    .line 6
    invoke-static/range {p7 .. p8}, LX/s;->i(II)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v11, Lcom/bumptech/glide/u;->errorBuilder:Lcom/bumptech/glide/u;

    invoke-virtual {v3}, Lcom/bumptech/glide/request/a;->isValidOverride()Z

    move-result v3

    if-nez v3, :cond_2

    .line 7
    invoke-virtual/range {p9 .. p9}, Lcom/bumptech/glide/request/a;->getOverrideWidth()I

    move-result v1

    .line 8
    invoke-virtual/range {p9 .. p9}, Lcom/bumptech/glide/request/a;->getOverrideHeight()I

    move-result v2

    :cond_2
    move/from16 v19, v1

    move/from16 v20, v2

    .line 9
    iget-object v12, v11, Lcom/bumptech/glide/u;->errorBuilder:Lcom/bumptech/glide/u;

    iget-object v1, v12, Lcom/bumptech/glide/u;->transitionOptions:Lcom/bumptech/glide/y;

    .line 10
    invoke-virtual {v12}, Lcom/bumptech/glide/request/a;->getPriority()Lcom/bumptech/glide/Priority;

    move-result-object v18

    iget-object v2, v11, Lcom/bumptech/glide/u;->errorBuilder:Lcom/bumptech/glide/u;

    move-object/from16 v13, p1

    move-object/from16 v14, p2

    move-object v3, v15

    move-object/from16 v15, p3

    move-object/from16 v16, v3

    move-object/from16 v17, v1

    move-object/from16 v21, v2

    move-object/from16 v22, p10

    .line 11
    invoke-direct/range {v12 .. v22}, Lcom/bumptech/glide/u;->buildRequestRecursive(Ljava/lang/Object;LU/g;Lcom/bumptech/glide/request/f;Lcom/bumptech/glide/request/e;Lcom/bumptech/glide/y;Lcom/bumptech/glide/Priority;IILcom/bumptech/glide/request/a;Ljava/util/concurrent/Executor;)Lcom/bumptech/glide/request/d;

    move-result-object v1

    .line 12
    invoke-virtual {v3, v0, v1}, Lcom/bumptech/glide/request/b;->m(Lcom/bumptech/glide/request/d;Lcom/bumptech/glide/request/d;)V

    return-object v3
.end method

.method private buildThumbnailRequestRecursive(Ljava/lang/Object;LU/g;Lcom/bumptech/glide/request/f;Lcom/bumptech/glide/request/e;Lcom/bumptech/glide/y;Lcom/bumptech/glide/Priority;IILcom/bumptech/glide/request/a;Ljava/util/concurrent/Executor;)Lcom/bumptech/glide/request/d;
    .locals 18

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v5, p4

    move-object/from16 v13, p6

    .line 1
    iget-object v0, v11, Lcom/bumptech/glide/u;->thumbnailBuilder:Lcom/bumptech/glide/u;

    if-eqz v0, :cond_4

    .line 2
    iget-boolean v1, v11, Lcom/bumptech/glide/u;->isThumbnailBuilt:Z

    if-nez v1, :cond_3

    .line 3
    iget-object v1, v0, Lcom/bumptech/glide/u;->transitionOptions:Lcom/bumptech/glide/y;

    .line 4
    iget-boolean v2, v0, Lcom/bumptech/glide/u;->isDefaultTransitionOptionsSet:Z

    if-eqz v2, :cond_0

    move-object/from16 v14, p5

    goto :goto_0

    :cond_0
    move-object v14, v1

    .line 5
    :goto_0
    invoke-virtual {v0}, Lcom/bumptech/glide/request/a;->isPrioritySet()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, v11, Lcom/bumptech/glide/u;->thumbnailBuilder:Lcom/bumptech/glide/u;

    invoke-virtual {v0}, Lcom/bumptech/glide/request/a;->getPriority()Lcom/bumptech/glide/Priority;

    move-result-object v0

    goto :goto_1

    .line 7
    :cond_1
    invoke-direct {v11, v13}, Lcom/bumptech/glide/u;->getThumbnailPriority(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/Priority;

    move-result-object v0

    :goto_1
    move-object v15, v0

    .line 8
    iget-object v0, v11, Lcom/bumptech/glide/u;->thumbnailBuilder:Lcom/bumptech/glide/u;

    invoke-virtual {v0}, Lcom/bumptech/glide/request/a;->getOverrideWidth()I

    move-result v0

    .line 9
    iget-object v1, v11, Lcom/bumptech/glide/u;->thumbnailBuilder:Lcom/bumptech/glide/u;

    invoke-virtual {v1}, Lcom/bumptech/glide/request/a;->getOverrideHeight()I

    move-result v1

    .line 10
    invoke-static/range {p7 .. p8}, LX/s;->i(II)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v11, Lcom/bumptech/glide/u;->thumbnailBuilder:Lcom/bumptech/glide/u;

    .line 11
    invoke-virtual {v2}, Lcom/bumptech/glide/request/a;->isValidOverride()Z

    move-result v2

    if-nez v2, :cond_2

    .line 12
    invoke-virtual/range {p9 .. p9}, Lcom/bumptech/glide/request/a;->getOverrideWidth()I

    move-result v0

    .line 13
    invoke-virtual/range {p9 .. p9}, Lcom/bumptech/glide/request/a;->getOverrideHeight()I

    move-result v1

    :cond_2
    move/from16 v16, v0

    move/from16 v17, v1

    .line 14
    new-instance v10, Lcom/bumptech/glide/request/j;

    invoke-direct {v10, v12, v5}, Lcom/bumptech/glide/request/j;-><init>(Ljava/lang/Object;Lcom/bumptech/glide/request/e;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p9

    move-object v5, v10

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object v13, v10

    move-object/from16 v10, p10

    .line 15
    invoke-direct/range {v0 .. v10}, Lcom/bumptech/glide/u;->obtainRequest(Ljava/lang/Object;LU/g;Lcom/bumptech/glide/request/f;Lcom/bumptech/glide/request/a;Lcom/bumptech/glide/request/e;Lcom/bumptech/glide/y;Lcom/bumptech/glide/Priority;IILjava/util/concurrent/Executor;)Lcom/bumptech/glide/request/d;

    move-result-object v10

    const/4 v0, 0x1

    .line 16
    iput-boolean v0, v11, Lcom/bumptech/glide/u;->isThumbnailBuilt:Z

    .line 17
    iget-object v9, v11, Lcom/bumptech/glide/u;->thumbnailBuilder:Lcom/bumptech/glide/u;

    move-object v0, v9

    move-object v4, v13

    move-object v5, v14

    move-object v6, v15

    move/from16 v7, v16

    move/from16 v8, v17

    move-object v12, v10

    move-object/from16 v10, p10

    .line 18
    invoke-direct/range {v0 .. v10}, Lcom/bumptech/glide/u;->buildRequestRecursive(Ljava/lang/Object;LU/g;Lcom/bumptech/glide/request/f;Lcom/bumptech/glide/request/e;Lcom/bumptech/glide/y;Lcom/bumptech/glide/Priority;IILcom/bumptech/glide/request/a;Ljava/util/concurrent/Executor;)Lcom/bumptech/glide/request/d;

    move-result-object v0

    const/4 v1, 0x0

    .line 19
    iput-boolean v1, v11, Lcom/bumptech/glide/u;->isThumbnailBuilt:Z

    .line 20
    invoke-virtual {v13, v12, v0}, Lcom/bumptech/glide/request/j;->m(Lcom/bumptech/glide/request/d;Lcom/bumptech/glide/request/d;)V

    return-object v13

    .line 21
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You cannot use a request as both the main request and a thumbnail, consider using clone() on the request(s) passed to thumbnail()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 22
    :cond_4
    iget-object v0, v11, Lcom/bumptech/glide/u;->thumbSizeMultiplier:Ljava/lang/Float;

    if-eqz v0, :cond_5

    .line 23
    new-instance v14, Lcom/bumptech/glide/request/j;

    invoke-direct {v14, v12, v5}, Lcom/bumptech/glide/request/j;-><init>(Ljava/lang/Object;Lcom/bumptech/glide/request/e;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p9

    move-object v5, v14

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p10

    .line 24
    invoke-direct/range {v0 .. v10}, Lcom/bumptech/glide/u;->obtainRequest(Ljava/lang/Object;LU/g;Lcom/bumptech/glide/request/f;Lcom/bumptech/glide/request/a;Lcom/bumptech/glide/request/e;Lcom/bumptech/glide/y;Lcom/bumptech/glide/Priority;IILjava/util/concurrent/Executor;)Lcom/bumptech/glide/request/d;

    move-result-object v15

    .line 25
    invoke-virtual/range {p9 .. p9}, Lcom/bumptech/glide/request/a;->clone()Lcom/bumptech/glide/request/a;

    move-result-object v0

    iget-object v1, v11, Lcom/bumptech/glide/u;->thumbSizeMultiplier:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/a;->sizeMultiplier(F)Lcom/bumptech/glide/request/a;

    move-result-object v4

    .line 26
    invoke-direct {v11, v13}, Lcom/bumptech/glide/u;->getThumbnailPriority(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/Priority;

    move-result-object v7

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 27
    invoke-direct/range {v0 .. v10}, Lcom/bumptech/glide/u;->obtainRequest(Ljava/lang/Object;LU/g;Lcom/bumptech/glide/request/f;Lcom/bumptech/glide/request/a;Lcom/bumptech/glide/request/e;Lcom/bumptech/glide/y;Lcom/bumptech/glide/Priority;IILjava/util/concurrent/Executor;)Lcom/bumptech/glide/request/d;

    move-result-object v0

    .line 28
    invoke-virtual {v14, v15, v0}, Lcom/bumptech/glide/request/j;->m(Lcom/bumptech/glide/request/d;Lcom/bumptech/glide/request/d;)V

    return-object v14

    :cond_5
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p9

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p10

    .line 29
    invoke-direct/range {v0 .. v10}, Lcom/bumptech/glide/u;->obtainRequest(Ljava/lang/Object;LU/g;Lcom/bumptech/glide/request/f;Lcom/bumptech/glide/request/a;Lcom/bumptech/glide/request/e;Lcom/bumptech/glide/y;Lcom/bumptech/glide/Priority;IILjava/util/concurrent/Executor;)Lcom/bumptech/glide/request/d;

    move-result-object v0

    return-object v0
.end method

.method private getThumbnailPriority(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/Priority;
    .locals 2

    .line 1
    sget-object v0, Lcom/bumptech/glide/t;->b:[I

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    aget p1, v0, p1

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    if-eq p1, v0, :cond_3

    .line 11
    .line 12
    const/4 v0, 0x2

    .line 13
    if-eq p1, v0, :cond_2

    .line 14
    .line 15
    const/4 v0, 0x3

    .line 16
    if-eq p1, v0, :cond_1

    .line 17
    .line 18
    const/4 v0, 0x4

    .line 19
    if-ne p1, v0, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 23
    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    const-string v1, "unknown priority: "

    .line 27
    .line 28
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/bumptech/glide/request/a;->getPriority()Lcom/bumptech/glide/Priority;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw p1

    .line 46
    :cond_1
    :goto_0
    sget-object p1, Lcom/bumptech/glide/Priority;->IMMEDIATE:Lcom/bumptech/glide/Priority;

    .line 47
    .line 48
    return-object p1

    .line 49
    :cond_2
    sget-object p1, Lcom/bumptech/glide/Priority;->HIGH:Lcom/bumptech/glide/Priority;

    .line 50
    .line 51
    return-object p1

    .line 52
    :cond_3
    sget-object p1, Lcom/bumptech/glide/Priority;->NORMAL:Lcom/bumptech/glide/Priority;

    .line 53
    .line 54
    return-object p1
.end method

.method private initRequestListeners(Ljava/util/List;)V
    .locals 1

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lcom/bumptech/glide/request/f;

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Lcom/bumptech/glide/u;->addListener(Lcom/bumptech/glide/request/f;)Lcom/bumptech/glide/u;

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    return-void
.end method

.method private into(LU/g;Lcom/bumptech/glide/request/f;Lcom/bumptech/glide/request/a;Ljava/util/concurrent/Executor;)LU/g;
    .locals 1

    .line 3
    invoke-static {p1}, LX/l;->b(Ljava/lang/Object;)V

    .line 4
    iget-boolean v0, p0, Lcom/bumptech/glide/u;->isModelSet:Z

    if-eqz v0, :cond_2

    .line 5
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bumptech/glide/u;->buildRequest(LU/g;Lcom/bumptech/glide/request/f;Lcom/bumptech/glide/request/a;Ljava/util/concurrent/Executor;)Lcom/bumptech/glide/request/d;

    move-result-object p2

    .line 6
    invoke-interface {p1}, LU/g;->d()Lcom/bumptech/glide/request/d;

    move-result-object p4

    .line 7
    invoke-interface {p2, p4}, Lcom/bumptech/glide/request/d;->h(Lcom/bumptech/glide/request/d;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    invoke-direct {p0, p3, p4}, Lcom/bumptech/glide/u;->isSkipMemoryCacheWithCompletePreviousRequest(Lcom/bumptech/glide/request/a;Lcom/bumptech/glide/request/d;)Z

    move-result p3

    if-nez p3, :cond_1

    .line 9
    invoke-static {p4}, LX/l;->b(Ljava/lang/Object;)V

    invoke-interface {p4}, Lcom/bumptech/glide/request/d;->isRunning()Z

    move-result p2

    if-nez p2, :cond_0

    .line 10
    invoke-interface {p4}, Lcom/bumptech/glide/request/d;->f()V

    :cond_0
    return-object p1

    .line 11
    :cond_1
    iget-object p3, p0, Lcom/bumptech/glide/u;->requestManager:Lcom/bumptech/glide/x;

    invoke-virtual {p3, p1}, Lcom/bumptech/glide/x;->clear(LU/g;)V

    .line 12
    invoke-interface {p1, p2}, LU/g;->g(Lcom/bumptech/glide/request/d;)V

    .line 13
    iget-object p3, p0, Lcom/bumptech/glide/u;->requestManager:Lcom/bumptech/glide/x;

    invoke-virtual {p3, p1, p2}, Lcom/bumptech/glide/x;->track(LU/g;Lcom/bumptech/glide/request/d;)V

    return-object p1

    .line 14
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "You must call #load() before calling #into()"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private isSkipMemoryCacheWithCompletePreviousRequest(Lcom/bumptech/glide/request/a;Lcom/bumptech/glide/request/d;)Z
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/bumptech/glide/request/a;->isMemoryCacheable()Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    invoke-interface {p2}, Lcom/bumptech/glide/request/d;->i()Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p1, 0x0

    .line 16
    :goto_0
    return p1
.end method

.method private loadGeneric(Ljava/lang/Object;)Lcom/bumptech/glide/u;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/bumptech/glide/request/a;->isAutoCloneEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/bumptech/glide/u;->clone()Lcom/bumptech/glide/u;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-direct {v0, p1}, Lcom/bumptech/glide/u;->loadGeneric(Ljava/lang/Object;)Lcom/bumptech/glide/u;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1

    .line 16
    :cond_0
    iput-object p1, p0, Lcom/bumptech/glide/u;->model:Ljava/lang/Object;

    .line 17
    .line 18
    const/4 p1, 0x1

    .line 19
    iput-boolean p1, p0, Lcom/bumptech/glide/u;->isModelSet:Z

    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/bumptech/glide/request/a;->selfOrThrowIfLocked()Lcom/bumptech/glide/request/a;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    check-cast p1, Lcom/bumptech/glide/u;

    .line 26
    .line 27
    return-object p1
.end method

.method private obtainRequest(Ljava/lang/Object;LU/g;Lcom/bumptech/glide/request/f;Lcom/bumptech/glide/request/a;Lcom/bumptech/glide/request/e;Lcom/bumptech/glide/y;Lcom/bumptech/glide/Priority;IILjava/util/concurrent/Executor;)Lcom/bumptech/glide/request/d;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/bumptech/glide/u;->context:Landroid/content/Context;

    .line 4
    .line 5
    iget-object v2, v0, Lcom/bumptech/glide/u;->glideContext:Lcom/bumptech/glide/k;

    .line 6
    .line 7
    iget-object v4, v0, Lcom/bumptech/glide/u;->model:Ljava/lang/Object;

    .line 8
    .line 9
    iget-object v5, v0, Lcom/bumptech/glide/u;->transcodeClass:Ljava/lang/Class;

    .line 10
    .line 11
    iget-object v12, v0, Lcom/bumptech/glide/u;->requestListeners:Ljava/util/List;

    .line 12
    .line 13
    invoke-virtual {v2}, Lcom/bumptech/glide/k;->f()Lcom/bumptech/glide/load/engine/C;

    .line 14
    .line 15
    .line 16
    move-result-object v14

    .line 17
    invoke-virtual/range {p6 .. p6}, Lcom/bumptech/glide/y;->b()LV/a;

    .line 18
    .line 19
    .line 20
    move-result-object v15

    .line 21
    move-object/from16 v3, p1

    .line 22
    .line 23
    move-object/from16 v6, p4

    .line 24
    .line 25
    move/from16 v7, p8

    .line 26
    .line 27
    move/from16 v8, p9

    .line 28
    .line 29
    move-object/from16 v9, p7

    .line 30
    .line 31
    move-object/from16 v10, p2

    .line 32
    .line 33
    move-object/from16 v11, p3

    .line 34
    .line 35
    move-object/from16 v13, p5

    .line 36
    .line 37
    move-object/from16 v16, p10

    .line 38
    .line 39
    invoke-static/range {v1 .. v16}, Lcom/bumptech/glide/request/i;->n(Landroid/content/Context;Lcom/bumptech/glide/k;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;Lcom/bumptech/glide/request/a;IILcom/bumptech/glide/Priority;LU/g;Lcom/bumptech/glide/request/f;Ljava/util/List;Lcom/bumptech/glide/request/e;Lcom/bumptech/glide/load/engine/C;LV/a;Ljava/util/concurrent/Executor;)Lcom/bumptech/glide/request/i;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    return-object v1
.end method


# virtual methods
.method public addListener(Lcom/bumptech/glide/request/f;)Lcom/bumptech/glide/u;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/bumptech/glide/request/a;->isAutoCloneEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/bumptech/glide/u;->clone()Lcom/bumptech/glide/u;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/u;->addListener(Lcom/bumptech/glide/request/f;)Lcom/bumptech/glide/u;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1

    .line 16
    :cond_0
    if-eqz p1, :cond_2

    .line 17
    .line 18
    iget-object v0, p0, Lcom/bumptech/glide/u;->requestListeners:Ljava/util/List;

    .line 19
    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    new-instance v0, Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Lcom/bumptech/glide/u;->requestListeners:Ljava/util/List;

    .line 28
    .line 29
    :cond_1
    iget-object v0, p0, Lcom/bumptech/glide/u;->requestListeners:Ljava/util/List;

    .line 30
    .line 31
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    :cond_2
    invoke-virtual {p0}, Lcom/bumptech/glide/request/a;->selfOrThrowIfLocked()Lcom/bumptech/glide/request/a;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    check-cast p1, Lcom/bumptech/glide/u;

    .line 39
    .line 40
    return-object p1
.end method

.method public bridge synthetic apply(Lcom/bumptech/glide/request/a;)Lcom/bumptech/glide/request/a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/u;->apply(Lcom/bumptech/glide/request/a;)Lcom/bumptech/glide/u;

    move-result-object p1

    return-object p1
.end method

.method public apply(Lcom/bumptech/glide/request/a;)Lcom/bumptech/glide/u;
    .locals 0

    .line 2
    invoke-static {p1}, LX/l;->b(Ljava/lang/Object;)V

    .line 3
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/a;->apply(Lcom/bumptech/glide/request/a;)Lcom/bumptech/glide/request/a;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/u;

    return-object p1
.end method

.method public bridge synthetic clone()Lcom/bumptech/glide/request/a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/bumptech/glide/u;->clone()Lcom/bumptech/glide/u;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/bumptech/glide/u;
    .locals 3

    .line 3
    invoke-super {p0}, Lcom/bumptech/glide/request/a;->clone()Lcom/bumptech/glide/request/a;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/u;

    .line 4
    iget-object v1, v0, Lcom/bumptech/glide/u;->transitionOptions:Lcom/bumptech/glide/y;

    invoke-virtual {v1}, Lcom/bumptech/glide/y;->a()Lcom/bumptech/glide/y;

    move-result-object v1

    iput-object v1, v0, Lcom/bumptech/glide/u;->transitionOptions:Lcom/bumptech/glide/y;

    .line 5
    iget-object v1, v0, Lcom/bumptech/glide/u;->requestListeners:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 6
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, v0, Lcom/bumptech/glide/u;->requestListeners:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/bumptech/glide/u;->requestListeners:Ljava/util/List;

    .line 7
    :cond_0
    iget-object v1, v0, Lcom/bumptech/glide/u;->thumbnailBuilder:Lcom/bumptech/glide/u;

    if-eqz v1, :cond_1

    .line 8
    invoke-virtual {v1}, Lcom/bumptech/glide/u;->clone()Lcom/bumptech/glide/u;

    move-result-object v1

    iput-object v1, v0, Lcom/bumptech/glide/u;->thumbnailBuilder:Lcom/bumptech/glide/u;

    .line 9
    :cond_1
    iget-object v1, v0, Lcom/bumptech/glide/u;->errorBuilder:Lcom/bumptech/glide/u;

    if-eqz v1, :cond_2

    .line 10
    invoke-virtual {v1}, Lcom/bumptech/glide/u;->clone()Lcom/bumptech/glide/u;

    move-result-object v1

    iput-object v1, v0, Lcom/bumptech/glide/u;->errorBuilder:Lcom/bumptech/glide/u;

    :cond_2
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/bumptech/glide/u;->clone()Lcom/bumptech/glide/u;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lcom/bumptech/glide/u;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    check-cast p1, Lcom/bumptech/glide/u;

    .line 7
    .line 8
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/a;->equals(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/bumptech/glide/u;->transcodeClass:Ljava/lang/Class;

    .line 15
    .line 16
    iget-object v2, p1, Lcom/bumptech/glide/u;->transcodeClass:Ljava/lang/Class;

    .line 17
    .line 18
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    iget-object v0, p0, Lcom/bumptech/glide/u;->transitionOptions:Lcom/bumptech/glide/y;

    .line 25
    .line 26
    iget-object v2, p1, Lcom/bumptech/glide/u;->transitionOptions:Lcom/bumptech/glide/y;

    .line 27
    .line 28
    invoke-virtual {v0, v2}, Lcom/bumptech/glide/y;->equals(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_0

    .line 33
    .line 34
    iget-object v0, p0, Lcom/bumptech/glide/u;->model:Ljava/lang/Object;

    .line 35
    .line 36
    iget-object v2, p1, Lcom/bumptech/glide/u;->model:Ljava/lang/Object;

    .line 37
    .line 38
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_0

    .line 43
    .line 44
    iget-object v0, p0, Lcom/bumptech/glide/u;->requestListeners:Ljava/util/List;

    .line 45
    .line 46
    iget-object v2, p1, Lcom/bumptech/glide/u;->requestListeners:Ljava/util/List;

    .line 47
    .line 48
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-eqz v0, :cond_0

    .line 53
    .line 54
    iget-object v0, p0, Lcom/bumptech/glide/u;->thumbnailBuilder:Lcom/bumptech/glide/u;

    .line 55
    .line 56
    iget-object v2, p1, Lcom/bumptech/glide/u;->thumbnailBuilder:Lcom/bumptech/glide/u;

    .line 57
    .line 58
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    if-eqz v0, :cond_0

    .line 63
    .line 64
    iget-object v0, p0, Lcom/bumptech/glide/u;->errorBuilder:Lcom/bumptech/glide/u;

    .line 65
    .line 66
    iget-object v2, p1, Lcom/bumptech/glide/u;->errorBuilder:Lcom/bumptech/glide/u;

    .line 67
    .line 68
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    if-eqz v0, :cond_0

    .line 73
    .line 74
    iget-object v0, p0, Lcom/bumptech/glide/u;->thumbSizeMultiplier:Ljava/lang/Float;

    .line 75
    .line 76
    iget-object v2, p1, Lcom/bumptech/glide/u;->thumbSizeMultiplier:Ljava/lang/Float;

    .line 77
    .line 78
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    if-eqz v0, :cond_0

    .line 83
    .line 84
    iget-boolean v0, p0, Lcom/bumptech/glide/u;->isDefaultTransitionOptionsSet:Z

    .line 85
    .line 86
    iget-boolean v2, p1, Lcom/bumptech/glide/u;->isDefaultTransitionOptionsSet:Z

    .line 87
    .line 88
    if-ne v0, v2, :cond_0

    .line 89
    .line 90
    iget-boolean v0, p0, Lcom/bumptech/glide/u;->isModelSet:Z

    .line 91
    .line 92
    iget-boolean p1, p1, Lcom/bumptech/glide/u;->isModelSet:Z

    .line 93
    .line 94
    if-ne v0, p1, :cond_0

    .line 95
    .line 96
    const/4 v1, 0x1

    .line 97
    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/bumptech/glide/request/a;->hashCode()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/bumptech/glide/u;->transcodeClass:Ljava/lang/Class;

    .line 6
    .line 7
    invoke-static {v0, v1}, LX/s;->g(ILjava/lang/Object;)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iget-object v1, p0, Lcom/bumptech/glide/u;->transitionOptions:Lcom/bumptech/glide/y;

    .line 12
    .line 13
    invoke-static {v0, v1}, LX/s;->g(ILjava/lang/Object;)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    iget-object v1, p0, Lcom/bumptech/glide/u;->model:Ljava/lang/Object;

    .line 18
    .line 19
    invoke-static {v0, v1}, LX/s;->g(ILjava/lang/Object;)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    iget-object v1, p0, Lcom/bumptech/glide/u;->requestListeners:Ljava/util/List;

    .line 24
    .line 25
    invoke-static {v0, v1}, LX/s;->g(ILjava/lang/Object;)I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    iget-object v1, p0, Lcom/bumptech/glide/u;->thumbnailBuilder:Lcom/bumptech/glide/u;

    .line 30
    .line 31
    invoke-static {v0, v1}, LX/s;->g(ILjava/lang/Object;)I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    iget-object v1, p0, Lcom/bumptech/glide/u;->errorBuilder:Lcom/bumptech/glide/u;

    .line 36
    .line 37
    invoke-static {v0, v1}, LX/s;->g(ILjava/lang/Object;)I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    iget-object v1, p0, Lcom/bumptech/glide/u;->thumbSizeMultiplier:Ljava/lang/Float;

    .line 42
    .line 43
    invoke-static {v0, v1}, LX/s;->g(ILjava/lang/Object;)I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    iget-boolean v1, p0, Lcom/bumptech/glide/u;->isDefaultTransitionOptionsSet:Z

    .line 48
    .line 49
    invoke-static {v0, v1}, LX/s;->h(IZ)I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    iget-boolean v1, p0, Lcom/bumptech/glide/u;->isModelSet:Z

    .line 54
    .line 55
    invoke-static {v0, v1}, LX/s;->h(IZ)I

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    return v0
.end method

.method public into(LU/g;)LU/g;
    .locals 2

    .line 1
    invoke-static {}, LX/i;->b()Ljava/util/concurrent/Executor;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/bumptech/glide/u;->into(LU/g;Lcom/bumptech/glide/request/f;Ljava/util/concurrent/Executor;)LU/g;

    move-result-object p1

    return-object p1
.end method

.method into(LU/g;Lcom/bumptech/glide/request/f;Ljava/util/concurrent/Executor;)LU/g;
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p0, p3}, Lcom/bumptech/glide/u;->into(LU/g;Lcom/bumptech/glide/request/f;Lcom/bumptech/glide/request/a;Ljava/util/concurrent/Executor;)LU/g;

    move-result-object p1

    return-object p1
.end method

.method public into(Landroid/widget/ImageView;)LU/j;
    .locals 3

    .line 15
    invoke-static {}, LX/s;->a()V

    .line 16
    invoke-static {p1}, LX/l;->b(Ljava/lang/Object;)V

    .line 17
    invoke-virtual {p0}, Lcom/bumptech/glide/request/a;->isTransformationSet()Z

    move-result v0

    if-nez v0, :cond_0

    .line 18
    invoke-virtual {p0}, Lcom/bumptech/glide/request/a;->isTransformationAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 19
    invoke-virtual {p1}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 20
    sget-object v0, Lcom/bumptech/glide/t;->a:[I

    invoke-virtual {p1}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 21
    :pswitch_0
    invoke-virtual {p0}, Lcom/bumptech/glide/u;->clone()Lcom/bumptech/glide/request/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/request/a;->optionalCenterInside()Lcom/bumptech/glide/request/a;

    move-result-object v0

    goto :goto_1

    .line 22
    :pswitch_1
    invoke-virtual {p0}, Lcom/bumptech/glide/u;->clone()Lcom/bumptech/glide/request/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/request/a;->optionalFitCenter()Lcom/bumptech/glide/request/a;

    move-result-object v0

    goto :goto_1

    .line 23
    :pswitch_2
    invoke-virtual {p0}, Lcom/bumptech/glide/u;->clone()Lcom/bumptech/glide/request/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/request/a;->optionalCenterInside()Lcom/bumptech/glide/request/a;

    move-result-object v0

    goto :goto_1

    .line 24
    :pswitch_3
    invoke-virtual {p0}, Lcom/bumptech/glide/u;->clone()Lcom/bumptech/glide/request/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/request/a;->optionalCenterCrop()Lcom/bumptech/glide/request/a;

    move-result-object v0

    goto :goto_1

    :cond_0
    :goto_0
    move-object v0, p0

    .line 25
    :goto_1
    iget-object v1, p0, Lcom/bumptech/glide/u;->glideContext:Lcom/bumptech/glide/k;

    iget-object v2, p0, Lcom/bumptech/glide/u;->transcodeClass:Ljava/lang/Class;

    .line 26
    invoke-virtual {v1, p1, v2}, Lcom/bumptech/glide/k;->a(Landroid/widget/ImageView;Ljava/lang/Class;)LU/e;

    move-result-object p1

    .line 27
    invoke-static {}, LX/i;->b()Ljava/util/concurrent/Executor;

    move-result-object v1

    const/4 v2, 0x0

    .line 28
    invoke-direct {p0, p1, v2, v0, v1}, Lcom/bumptech/glide/u;->into(LU/g;Lcom/bumptech/glide/request/f;Lcom/bumptech/glide/request/a;Ljava/util/concurrent/Executor;)LU/g;

    move-result-object p1

    check-cast p1, LU/j;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public load(Landroid/net/Uri;)Lcom/bumptech/glide/u;
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/bumptech/glide/u;->loadGeneric(Ljava/lang/Object;)Lcom/bumptech/glide/u;

    move-result-object p1

    return-object p1
.end method

.method public load(Ljava/lang/Object;)Lcom/bumptech/glide/u;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/bumptech/glide/u;->loadGeneric(Ljava/lang/Object;)Lcom/bumptech/glide/u;

    move-result-object p1

    return-object p1
.end method
