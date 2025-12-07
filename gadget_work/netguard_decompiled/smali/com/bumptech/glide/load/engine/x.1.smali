.class final Lcom/bumptech/glide/load/engine/x;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Lcom/bumptech/glide/load/engine/A;

.field final b:Landroidx/core/util/f;

.field private c:I


# direct methods
.method constructor <init>(Lcom/bumptech/glide/load/engine/A;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/bumptech/glide/load/engine/w;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/bumptech/glide/load/engine/w;-><init>(Lcom/bumptech/glide/load/engine/x;)V

    .line 7
    .line 8
    .line 9
    const/16 v1, 0x96

    .line 10
    .line 11
    invoke-static {v1, v0}, LY/g;->b(ILY/c;)Landroidx/core/util/f;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/x;->b:Landroidx/core/util/f;

    .line 16
    .line 17
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/x;->a:Lcom/bumptech/glide/load/engine/A;

    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method final a(Lcom/bumptech/glide/k;Ljava/lang/Object;Lcom/bumptech/glide/load/engine/K;LE/e;IILjava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/Priority;Lcom/bumptech/glide/load/engine/v;Ljava/util/Map;ZZZLE/i;Lcom/bumptech/glide/load/engine/I;)Lcom/bumptech/glide/load/engine/q;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move/from16 v13, p12

    move/from16 v14, p13

    move/from16 v15, p14

    move-object/from16 v16, p15

    move-object/from16 v17, p16

    .line 1
    iget-object v1, v0, Lcom/bumptech/glide/load/engine/x;->b:Landroidx/core/util/f;

    invoke-interface {v1}, Landroidx/core/util/f;->b()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v19, v1

    check-cast v19, Lcom/bumptech/glide/load/engine/q;

    move-object/from16 v1, v19

    invoke-static/range {v19 .. v19}, LX/l;->b(Ljava/lang/Object;)V

    move-object/from16 p1, v1

    .line 2
    iget v1, v0, Lcom/bumptech/glide/load/engine/x;->c:I

    move/from16 v18, v1

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/bumptech/glide/load/engine/x;->c:I

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v18}, Lcom/bumptech/glide/load/engine/q;->p(Lcom/bumptech/glide/k;Ljava/lang/Object;Lcom/bumptech/glide/load/engine/K;LE/e;IILjava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/Priority;Lcom/bumptech/glide/load/engine/v;Ljava/util/Map;ZZZLE/i;Lcom/bumptech/glide/load/engine/I;I)V

    return-object v19
.end method
