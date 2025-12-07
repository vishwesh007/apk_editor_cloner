.class final Landroidx/core/provider/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# instance fields
.field private a:Ljava/lang/String;

.field private b:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "fonts-androidx"

    .line 5
    .line 6
    iput-object v0, p0, Landroidx/core/provider/r;->a:Ljava/lang/String;

    .line 7
    .line 8
    const/16 v0, 0xa

    .line 9
    .line 10
    iput v0, p0, Landroidx/core/provider/r;->b:I

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 3

    .line 1
    new-instance v0, Landroidx/core/provider/q;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/core/provider/r;->a:Ljava/lang/String;

    .line 4
    .line 5
    iget v2, p0, Landroidx/core/provider/r;->b:I

    .line 6
    .line 7
    invoke-direct {v0, p1, v1, v2}, Landroidx/core/provider/q;-><init>(Ljava/lang/Runnable;Ljava/lang/String;I)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method
