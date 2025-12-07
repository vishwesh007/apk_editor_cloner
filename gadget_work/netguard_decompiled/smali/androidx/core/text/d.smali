.class public final Landroidx/core/text/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/text/TextPaint;

.field private b:Landroid/text/TextDirectionHeuristic;

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>(Landroid/text/TextPaint;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/core/text/d;->a:Landroid/text/TextPaint;

    .line 5
    .line 6
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 7
    .line 8
    const/16 v0, 0x17

    .line 9
    .line 10
    if-lt p1, v0, :cond_0

    .line 11
    .line 12
    const/4 p1, 0x1

    .line 13
    iput p1, p0, Landroidx/core/text/d;->c:I

    .line 14
    .line 15
    iput p1, p0, Landroidx/core/text/d;->d:I

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p1, 0x0

    .line 19
    iput p1, p0, Landroidx/core/text/d;->d:I

    .line 20
    .line 21
    iput p1, p0, Landroidx/core/text/d;->c:I

    .line 22
    .line 23
    :goto_0
    sget-object p1, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    .line 24
    .line 25
    iput-object p1, p0, Landroidx/core/text/d;->b:Landroid/text/TextDirectionHeuristic;

    .line 26
    .line 27
    return-void
.end method


# virtual methods
.method public final a()Landroidx/core/text/e;
    .locals 5

    .line 1
    new-instance v0, Landroidx/core/text/e;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/core/text/d;->b:Landroid/text/TextDirectionHeuristic;

    .line 4
    .line 5
    iget v2, p0, Landroidx/core/text/d;->c:I

    .line 6
    .line 7
    iget v3, p0, Landroidx/core/text/d;->d:I

    .line 8
    .line 9
    iget-object v4, p0, Landroidx/core/text/d;->a:Landroid/text/TextPaint;

    .line 10
    .line 11
    invoke-direct {v0, v4, v1, v2, v3}, Landroidx/core/text/e;-><init>(Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;II)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method

.method public final b(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/core/text/d;->c:I

    .line 2
    .line 3
    return-void
.end method

.method public final c(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/core/text/d;->d:I

    .line 2
    .line 3
    return-void
.end method

.method public final d(Landroid/text/TextDirectionHeuristic;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/core/text/d;->b:Landroid/text/TextDirectionHeuristic;

    .line 2
    .line 3
    return-void
.end method
