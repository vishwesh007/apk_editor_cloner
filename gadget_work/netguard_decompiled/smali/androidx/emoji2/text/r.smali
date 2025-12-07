.class public final synthetic Landroidx/emoji2/text/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:Landroidx/emoji2/text/t;

.field public final synthetic e:Landroidx/core/view/accessibility/n;

.field public final synthetic f:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method public synthetic constructor <init>(Landroidx/emoji2/text/t;Landroidx/core/view/accessibility/n;Ljava/util/concurrent/ThreadPoolExecutor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/emoji2/text/r;->d:Landroidx/emoji2/text/t;

    iput-object p2, p0, Landroidx/emoji2/text/r;->e:Landroidx/core/view/accessibility/n;

    iput-object p3, p0, Landroidx/emoji2/text/r;->f:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/emoji2/text/r;->e:Landroidx/core/view/accessibility/n;

    iget-object v1, p0, Landroidx/emoji2/text/r;->f:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v2, p0, Landroidx/emoji2/text/r;->d:Landroidx/emoji2/text/t;

    invoke-static {v2, v0, v1}, Landroidx/emoji2/text/t;->b(Landroidx/emoji2/text/t;Landroidx/core/view/accessibility/n;Ljava/util/concurrent/ThreadPoolExecutor;)V

    return-void
.end method
