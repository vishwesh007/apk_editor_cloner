.class public final synthetic Landroidx/core/view/X;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnUnhandledKeyEventListener;


# instance fields
.field public final synthetic a:Landroidx/core/view/d0;


# direct methods
.method public synthetic constructor <init>(Landroidx/core/view/d0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/view/X;->a:Landroidx/core/view/d0;

    return-void
.end method


# virtual methods
.method public final onUnhandledKeyEvent(Landroid/view/View;Landroid/view/KeyEvent;)Z
    .locals 0

    .line 1
    iget-object p1, p0, Landroidx/core/view/X;->a:Landroidx/core/view/d0;

    invoke-interface {p1}, Landroidx/core/view/d0;->a()Z

    move-result p1

    return p1
.end method
