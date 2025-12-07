.class final Landroidx/appcompat/app/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic d:Landroid/view/View;

.field final synthetic e:Landroid/view/View;

.field final synthetic f:Landroidx/appcompat/app/l;


# direct methods
.method constructor <init>(Landroidx/appcompat/app/l;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/appcompat/app/g;->f:Landroidx/appcompat/app/l;

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/appcompat/app/g;->d:Landroid/view/View;

    .line 4
    .line 5
    iput-object p3, p0, Landroidx/appcompat/app/g;->e:Landroid/view/View;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/g;->f:Landroidx/appcompat/app/l;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/appcompat/app/l;->f:Landroidx/appcompat/app/AlertController$RecycleListView;

    .line 4
    .line 5
    iget-object v1, p0, Landroidx/appcompat/app/g;->d:Landroid/view/View;

    .line 6
    .line 7
    iget-object v2, p0, Landroidx/appcompat/app/g;->e:Landroid/view/View;

    .line 8
    .line 9
    invoke-static {v0, v1, v2}, Landroidx/appcompat/app/l;->d(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
