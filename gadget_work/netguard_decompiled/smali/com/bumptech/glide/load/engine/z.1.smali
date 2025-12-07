.class final Lcom/bumptech/glide/load/engine/z;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:LI/h;

.field final b:LI/h;

.field final c:LI/h;

.field final d:LI/h;

.field final e:Lcom/bumptech/glide/load/engine/J;

.field final f:Lcom/bumptech/glide/load/engine/M;

.field final g:Landroidx/core/util/f;


# direct methods
.method constructor <init>(LI/h;LI/h;LI/h;LI/h;Lcom/bumptech/glide/load/engine/J;Lcom/bumptech/glide/load/engine/M;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/bumptech/glide/load/engine/y;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/bumptech/glide/load/engine/y;-><init>(Lcom/bumptech/glide/load/engine/z;)V

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
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/z;->g:Landroidx/core/util/f;

    .line 16
    .line 17
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/z;->a:LI/h;

    .line 18
    .line 19
    iput-object p2, p0, Lcom/bumptech/glide/load/engine/z;->b:LI/h;

    .line 20
    .line 21
    iput-object p3, p0, Lcom/bumptech/glide/load/engine/z;->c:LI/h;

    .line 22
    .line 23
    iput-object p4, p0, Lcom/bumptech/glide/load/engine/z;->d:LI/h;

    .line 24
    .line 25
    iput-object p5, p0, Lcom/bumptech/glide/load/engine/z;->e:Lcom/bumptech/glide/load/engine/J;

    .line 26
    .line 27
    iput-object p6, p0, Lcom/bumptech/glide/load/engine/z;->f:Lcom/bumptech/glide/load/engine/M;

    .line 28
    .line 29
    return-void
.end method
