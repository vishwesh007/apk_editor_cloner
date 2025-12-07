.class final Landroidx/core/view/c0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/OnReceiveContentListener;


# instance fields
.field private final a:Landroidx/core/view/E;


# direct methods
.method constructor <init>(Landroidx/core/view/E;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/core/view/c0;->a:Landroidx/core/view/E;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onReceiveContent(Landroid/view/View;Landroid/view/ContentInfo;)Landroid/view/ContentInfo;
    .locals 2

    .line 1
    new-instance v0, Landroidx/core/view/n;

    .line 2
    .line 3
    new-instance v1, Landroidx/core/view/w0;

    .line 4
    .line 5
    invoke-direct {v1, p2}, Landroidx/core/view/w0;-><init>(Landroid/view/ContentInfo;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1}, Landroidx/core/view/n;-><init>(Landroidx/core/view/l;)V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Landroidx/core/view/c0;->a:Landroidx/core/view/E;

    .line 12
    .line 13
    invoke-interface {v1, p1, v0}, Landroidx/core/view/E;->a(Landroid/view/View;Landroidx/core/view/n;)Landroidx/core/view/n;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    const/4 p1, 0x0

    .line 20
    return-object p1

    .line 21
    :cond_0
    if-ne p1, v0, :cond_1

    .line 22
    .line 23
    return-object p2

    .line 24
    :cond_1
    invoke-virtual {p1}, Landroidx/core/view/n;->d()Landroid/view/ContentInfo;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    return-object p1
.end method
