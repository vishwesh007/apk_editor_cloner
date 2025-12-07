.class public final LJ/F;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:LE/e;

.field public final b:Ljava/util/List;

.field public final c:Lcom/bumptech/glide/load/data/e;


# direct methods
.method public constructor <init>(LE/e;Lcom/bumptech/glide/load/data/e;)V
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-static {p1}, LX/l;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, LJ/F;->a:LE/e;

    .line 12
    .line 13
    invoke-static {v0}, LX/l;->b(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, LJ/F;->b:Ljava/util/List;

    .line 17
    .line 18
    invoke-static {p2}, LX/l;->b(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    iput-object p2, p0, LJ/F;->c:Lcom/bumptech/glide/load/data/e;

    .line 22
    .line 23
    return-void
.end method
