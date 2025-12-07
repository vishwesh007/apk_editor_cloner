.class final Landroidx/core/view/K;
.super Landroidx/core/view/M;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 4

    .line 1
    const/16 v0, 0x40

    .line 2
    .line 3
    const/16 v1, 0x1e

    .line 4
    .line 5
    const v2, 0x7f09013c

    .line 6
    .line 7
    .line 8
    const-class v3, Ljava/lang/CharSequence;

    .line 9
    .line 10
    invoke-direct {p0, v2, v3, v0, v1}, Landroidx/core/view/M;-><init>(ILjava/lang/Class;II)V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method final b(Landroid/view/View;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p1}, Landroidx/core/view/a0;->a(Landroid/view/View;)Ljava/lang/CharSequence;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method final c(Landroid/view/View;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/CharSequence;

    .line 2
    .line 3
    invoke-static {p1, p2}, Landroidx/core/view/a0;->b(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method final f(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/CharSequence;

    .line 2
    .line 3
    check-cast p2, Ljava/lang/CharSequence;

    .line 4
    .line 5
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    xor-int/lit8 p1, p1, 0x1

    .line 10
    .line 11
    return p1
.end method
