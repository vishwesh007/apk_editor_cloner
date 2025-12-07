.class final Landroidx/core/provider/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic d:Landroidx/core/util/a;

.field final synthetic e:Ljava/lang/Object;


# direct methods
.method constructor <init>(Landroidx/core/util/a;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/core/provider/s;->d:Landroidx/core/util/a;

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/core/provider/s;->e:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/core/provider/s;->d:Landroidx/core/util/a;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/core/provider/s;->e:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-interface {v0, v1}, Landroidx/core/util/a;->accept(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
