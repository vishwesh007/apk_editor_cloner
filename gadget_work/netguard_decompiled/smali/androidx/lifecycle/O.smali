.class final Landroidx/lifecycle/O;
.super LP0/g;
.source "SourceFile"

# interfaces
.implements LO0/a;


# instance fields
.field final synthetic e:Landroidx/lifecycle/Z;


# direct methods
.method constructor <init>(Landroidx/lifecycle/Z;)V
    .locals 0

    iput-object p1, p0, Landroidx/lifecycle/O;->e:Landroidx/lifecycle/Z;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, LP0/g;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 6

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/lifecycle/O;->e:Landroidx/lifecycle/Z;

    .line 4
    .line 5
    invoke-static {v1, v0}, LP0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance v0, Landroidx/core/view/accessibility/l;

    .line 9
    .line 10
    const/4 v2, 0x2

    .line 11
    invoke-direct {v0, v2}, Landroidx/core/view/accessibility/l;-><init>(I)V

    .line 12
    .line 13
    .line 14
    sget-object v2, Landroidx/lifecycle/M;->e:Landroidx/lifecycle/M;

    .line 15
    .line 16
    const-class v3, Landroidx/lifecycle/Q;

    .line 17
    .line 18
    invoke-static {v3}, LP0/k;->a(Ljava/lang/Class;)LP0/c;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    invoke-virtual {v0, v4, v2}, Landroidx/core/view/accessibility/l;->a(LP0/c;LO0/l;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Landroidx/core/view/accessibility/l;->b()Lq/d;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    new-instance v2, Landroidx/lifecycle/X;

    .line 30
    .line 31
    invoke-interface {v1}, Landroidx/lifecycle/Z;->getViewModelStore()Landroidx/lifecycle/Y;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    const-string v5, "owner.viewModelStore"

    .line 36
    .line 37
    invoke-static {v4, v5}, LP0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    instance-of v5, v1, Landroidx/lifecycle/i;

    .line 41
    .line 42
    if-eqz v5, :cond_0

    .line 43
    .line 44
    check-cast v1, Landroidx/lifecycle/i;

    .line 45
    .line 46
    invoke-interface {v1}, Landroidx/lifecycle/i;->getDefaultViewModelCreationExtras()Lq/c;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    const-string v5, "{\n        owner.defaultV\u2026ModelCreationExtras\n    }"

    .line 51
    .line 52
    invoke-static {v1, v5}, LP0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_0
    sget-object v1, Lq/a;->b:Lq/a;

    .line 57
    .line 58
    :goto_0
    invoke-direct {v2, v4, v0, v1}, Landroidx/lifecycle/X;-><init>(Landroidx/lifecycle/Y;Landroidx/lifecycle/U;Lq/c;)V

    .line 59
    .line 60
    .line 61
    const-string v0, "androidx.lifecycle.internal.SavedStateHandlesVM"

    .line 62
    .line 63
    invoke-virtual {v2, v3, v0}, Landroidx/lifecycle/X;->b(Ljava/lang/Class;Ljava/lang/String;)Landroidx/lifecycle/S;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    check-cast v0, Landroidx/lifecycle/Q;

    .line 68
    .line 69
    return-object v0
.end method
