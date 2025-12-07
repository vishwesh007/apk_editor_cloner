.class public final Landroidx/core/view/j0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LU0/b;


# instance fields
.field final synthetic a:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Landroid/view/ViewGroup;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/core/view/j0;->a:Landroid/view/ViewGroup;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 2

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/core/view/j0;->a:Landroid/view/ViewGroup;

    .line 4
    .line 5
    invoke-static {v1, v0}, LP0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance v0, Landroidx/core/view/l0;

    .line 9
    .line 10
    invoke-direct {v0, v1}, Landroidx/core/view/l0;-><init>(Landroid/view/ViewGroup;)V

    .line 11
    .line 12
    .line 13
    return-object v0
.end method
