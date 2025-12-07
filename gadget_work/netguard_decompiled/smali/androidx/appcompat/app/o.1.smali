.class final Landroidx/appcompat/app/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv/c;


# instance fields
.field final synthetic a:Landroidx/appcompat/app/q;


# direct methods
.method constructor <init>(Landroidx/appcompat/app/q;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/appcompat/app/o;->a:Landroidx/appcompat/app/q;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()Landroid/os/Bundle;
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Landroidx/appcompat/app/o;->a:Landroidx/appcompat/app/q;

    .line 7
    .line 8
    invoke-virtual {v1}, Landroidx/appcompat/app/q;->getDelegate()Landroidx/appcompat/app/v;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Landroidx/appcompat/app/v;->u()V

    .line 13
    .line 14
    .line 15
    return-object v0
.end method
