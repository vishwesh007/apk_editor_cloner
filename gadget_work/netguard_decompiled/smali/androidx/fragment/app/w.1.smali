.class final Landroidx/fragment/app/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb/b;


# instance fields
.field final synthetic a:Landroidx/fragment/app/y;


# direct methods
.method constructor <init>(Landroidx/fragment/app/y;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/fragment/app/w;->a:Landroidx/fragment/app/y;

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
    iget-object p1, p0, Landroidx/fragment/app/w;->a:Landroidx/fragment/app/y;

    .line 2
    .line 3
    iget-object v0, p1, Landroidx/fragment/app/y;->mFragments:Landroidx/fragment/app/C;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/fragment/app/C;->a()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Landroidx/activity/k;->getSavedStateRegistry()Lv/d;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-string v1, "android:support:fragments"

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lv/d;->b(Ljava/lang/String;)Landroid/os/Bundle;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iget-object p1, p1, Landroidx/fragment/app/y;->mFragments:Landroidx/fragment/app/C;

    .line 25
    .line 26
    invoke-virtual {p1, v0}, Landroidx/fragment/app/C;->w(Landroid/os/Parcelable;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void
.end method
