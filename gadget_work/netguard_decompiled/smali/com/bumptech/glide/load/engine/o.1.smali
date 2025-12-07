.class final Lcom/bumptech/glide/load/engine/o;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/bumptech/glide/load/DataSource;

.field final synthetic b:Lcom/bumptech/glide/load/engine/q;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/load/engine/q;Lcom/bumptech/glide/load/DataSource;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/o;->b:Lcom/bumptech/glide/load/engine/q;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lcom/bumptech/glide/load/engine/o;->a:Lcom/bumptech/glide/load/DataSource;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Lcom/bumptech/glide/load/engine/V;)Lcom/bumptech/glide/load/engine/V;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/o;->b:Lcom/bumptech/glide/load/engine/q;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/o;->a:Lcom/bumptech/glide/load/DataSource;

    .line 4
    .line 5
    invoke-virtual {v0, v1, p1}, Lcom/bumptech/glide/load/engine/q;->s(Lcom/bumptech/glide/load/DataSource;Lcom/bumptech/glide/load/engine/V;)Lcom/bumptech/glide/load/engine/V;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method
