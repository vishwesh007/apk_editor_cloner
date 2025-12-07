.class final Landroidx/fragment/app/Q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/fragment/app/P;


# instance fields
.field final a:I

.field final b:I

.field final synthetic c:Landroidx/fragment/app/T;


# direct methods
.method constructor <init>(Landroidx/fragment/app/T;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/fragment/app/Q;->c:Landroidx/fragment/app/T;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput p2, p0, Landroidx/fragment/app/Q;->a:I

    .line 7
    .line 8
    const/4 p1, 0x1

    .line 9
    iput p1, p0, Landroidx/fragment/app/Q;->b:I

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/Q;->c:Landroidx/fragment/app/T;

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/fragment/app/T;->r:Landroidx/fragment/app/u;

    .line 4
    .line 5
    iget v2, p0, Landroidx/fragment/app/Q;->a:I

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    if-gez v2, :cond_0

    .line 10
    .line 11
    invoke-virtual {v1}, Landroidx/fragment/app/u;->f()Landroidx/fragment/app/T;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1}, Landroidx/fragment/app/T;->o0()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    const/4 p1, 0x0

    .line 22
    return p1

    .line 23
    :cond_0
    iget v1, p0, Landroidx/fragment/app/Q;->b:I

    .line 24
    .line 25
    invoke-virtual {v0, p1, p2, v2, v1}, Landroidx/fragment/app/T;->p0(Ljava/util/ArrayList;Ljava/util/ArrayList;II)Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    return p1
.end method
