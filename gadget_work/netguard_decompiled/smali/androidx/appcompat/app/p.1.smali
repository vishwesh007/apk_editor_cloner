.class final Landroidx/appcompat/app/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb/b;


# instance fields
.field final synthetic a:Landroidx/appcompat/app/q;


# direct methods
.method constructor <init>(Landroidx/appcompat/app/q;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/appcompat/app/p;->a:Landroidx/appcompat/app/q;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 2

    .line 1
    iget-object p1, p0, Landroidx/appcompat/app/p;->a:Landroidx/appcompat/app/q;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroidx/appcompat/app/q;->getDelegate()Landroidx/appcompat/app/v;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroidx/appcompat/app/v;->m()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Landroidx/activity/k;->getSavedStateRegistry()Lv/d;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    const-string v1, "androidx:appcompat"

    .line 15
    .line 16
    invoke-virtual {p1, v1}, Lv/d;->b(Ljava/lang/String;)Landroid/os/Bundle;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Landroidx/appcompat/app/v;->q()V

    .line 20
    .line 21
    .line 22
    return-void
.end method
