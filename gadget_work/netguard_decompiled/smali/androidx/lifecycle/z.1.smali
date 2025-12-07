.class abstract Landroidx/lifecycle/z;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Landroidx/lifecycle/B;

.field b:Z

.field c:I

.field final synthetic d:Landroidx/lifecycle/A;


# direct methods
.method constructor <init>(Landroidx/lifecycle/A;Landroidx/lifecycle/B;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/lifecycle/z;->d:Landroidx/lifecycle/A;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 p1, -0x1

    .line 7
    iput p1, p0, Landroidx/lifecycle/z;->c:I

    .line 8
    .line 9
    iput-object p2, p0, Landroidx/lifecycle/z;->a:Landroidx/lifecycle/B;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method final c(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/lifecycle/z;->b:Z

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput-boolean p1, p0, Landroidx/lifecycle/z;->b:Z

    .line 7
    .line 8
    if-eqz p1, :cond_1

    .line 9
    .line 10
    const/4 p1, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_1
    const/4 p1, -0x1

    .line 13
    :goto_0
    iget-object v0, p0, Landroidx/lifecycle/z;->d:Landroidx/lifecycle/A;

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Landroidx/lifecycle/A;->b(I)V

    .line 16
    .line 17
    .line 18
    iget-boolean p1, p0, Landroidx/lifecycle/z;->b:Z

    .line 19
    .line 20
    if-eqz p1, :cond_2

    .line 21
    .line 22
    invoke-virtual {v0, p0}, Landroidx/lifecycle/A;->d(Landroidx/lifecycle/z;)V

    .line 23
    .line 24
    .line 25
    :cond_2
    return-void
.end method

.method f()V
    .locals 0

    .line 1
    return-void
.end method

.method abstract g()Z
.end method
