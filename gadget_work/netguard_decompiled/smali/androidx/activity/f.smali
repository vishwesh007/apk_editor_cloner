.class final Landroidx/activity/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic d:I

.field final synthetic e:Lc/a;

.field final synthetic f:Landroidx/activity/h;


# direct methods
.method constructor <init>(Landroidx/activity/h;ILc/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/activity/f;->f:Landroidx/activity/h;

    .line 2
    .line 3
    iput p2, p0, Landroidx/activity/f;->d:I

    .line 4
    .line 5
    iput-object p3, p0, Landroidx/activity/f;->e:Lc/a;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/activity/f;->e:Lc/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lc/a;->b()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Landroidx/activity/f;->f:Landroidx/activity/h;

    .line 8
    .line 9
    iget v2, p0, Landroidx/activity/f;->d:I

    .line 10
    .line 11
    invoke-virtual {v1, v2, v0}, Landroidx/activity/result/i;->a(ILjava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
