.class final Landroidx/core/widget/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic d:Landroidx/core/widget/k;


# direct methods
.method constructor <init>(Landroidx/core/widget/k;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/core/widget/b;->d:Landroidx/core/widget/k;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    .line 1
    iget-object v0, p0, Landroidx/core/widget/b;->d:Landroidx/core/widget/k;

    .line 2
    .line 3
    iget-boolean v1, v0, Landroidx/core/widget/k;->o:Z

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-boolean v1, v0, Landroidx/core/widget/k;->m:Z

    .line 9
    .line 10
    iget-object v2, v0, Landroidx/core/widget/k;->a:Landroidx/core/widget/a;

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    iput-boolean v3, v0, Landroidx/core/widget/k;->m:Z

    .line 16
    .line 17
    invoke-virtual {v2}, Landroidx/core/widget/a;->k()V

    .line 18
    .line 19
    .line 20
    :cond_1
    invoke-virtual {v2}, Landroidx/core/widget/a;->f()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-nez v1, :cond_4

    .line 25
    .line 26
    invoke-virtual {v0}, Landroidx/core/widget/k;->f()Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-nez v1, :cond_2

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_2
    iget-boolean v1, v0, Landroidx/core/widget/k;->n:Z

    .line 34
    .line 35
    iget-object v4, v0, Landroidx/core/widget/k;->c:Landroid/view/View;

    .line 36
    .line 37
    if-eqz v1, :cond_3

    .line 38
    .line 39
    iput-boolean v3, v0, Landroidx/core/widget/k;->n:Z

    .line 40
    .line 41
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 42
    .line 43
    .line 44
    move-result-wide v7

    .line 45
    const/4 v9, 0x3

    .line 46
    const/4 v10, 0x0

    .line 47
    const/4 v11, 0x0

    .line 48
    const/4 v12, 0x0

    .line 49
    move-wide v5, v7

    .line 50
    invoke-static/range {v5 .. v12}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-virtual {v4, v1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 58
    .line 59
    .line 60
    :cond_3
    invoke-virtual {v2}, Landroidx/core/widget/a;->a()V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v2}, Landroidx/core/widget/a;->b()I

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    invoke-virtual {v0, v1}, Landroidx/core/widget/k;->d(I)V

    .line 68
    .line 69
    .line 70
    invoke-static {v4, p0}, Landroidx/core/view/f0;->G(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 71
    .line 72
    .line 73
    return-void

    .line 74
    :cond_4
    :goto_0
    iput-boolean v3, v0, Landroidx/core/widget/k;->o:Z

    .line 75
    .line 76
    return-void
.end method
