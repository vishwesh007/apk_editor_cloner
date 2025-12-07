.class public abstract Lcom/bumptech/glide/load/engine/v;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/bumptech/glide/load/engine/v;

.field public static final b:Lcom/bumptech/glide/load/engine/v;

.field public static final c:Lcom/bumptech/glide/load/engine/v;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/bumptech/glide/load/engine/s;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/bumptech/glide/load/engine/s;-><init>(I)V

    .line 5
    .line 6
    .line 7
    new-instance v0, Lcom/bumptech/glide/load/engine/t;

    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/bumptech/glide/load/engine/t;-><init>(I)V

    .line 10
    .line 11
    .line 12
    sput-object v0, Lcom/bumptech/glide/load/engine/v;->a:Lcom/bumptech/glide/load/engine/v;

    .line 13
    .line 14
    new-instance v0, Lcom/bumptech/glide/load/engine/u;

    .line 15
    .line 16
    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/u;-><init>()V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lcom/bumptech/glide/load/engine/v;->b:Lcom/bumptech/glide/load/engine/v;

    .line 20
    .line 21
    new-instance v0, Lcom/bumptech/glide/load/engine/s;

    .line 22
    .line 23
    const/4 v1, 0x1

    .line 24
    invoke-direct {v0, v1}, Lcom/bumptech/glide/load/engine/s;-><init>(I)V

    .line 25
    .line 26
    .line 27
    new-instance v0, Lcom/bumptech/glide/load/engine/t;

    .line 28
    .line 29
    invoke-direct {v0, v1}, Lcom/bumptech/glide/load/engine/t;-><init>(I)V

    .line 30
    .line 31
    .line 32
    sput-object v0, Lcom/bumptech/glide/load/engine/v;->c:Lcom/bumptech/glide/load/engine/v;

    .line 33
    .line 34
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()Z
.end method

.method public abstract b()Z
.end method

.method public abstract c(Lcom/bumptech/glide/load/DataSource;)Z
.end method

.method public abstract d(ZLcom/bumptech/glide/load/DataSource;Lcom/bumptech/glide/load/EncodeStrategy;)Z
.end method
