.class final Landroidx/appcompat/app/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Landroidx/appcompat/app/l;

.field final synthetic b:Landroidx/appcompat/app/i;


# direct methods
.method constructor <init>(Landroidx/appcompat/app/i;Landroidx/appcompat/app/l;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/appcompat/app/h;->b:Landroidx/appcompat/app/i;

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/appcompat/app/h;->a:Landroidx/appcompat/app/l;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroidx/appcompat/app/h;->b:Landroidx/appcompat/app/i;

    .line 2
    .line 3
    iget-object p2, p1, Landroidx/appcompat/app/i;->n:Landroid/content/DialogInterface$OnClickListener;

    .line 4
    .line 5
    iget-object p4, p0, Landroidx/appcompat/app/h;->a:Landroidx/appcompat/app/l;

    .line 6
    .line 7
    iget-object p5, p4, Landroidx/appcompat/app/l;->b:Landroidx/appcompat/app/n;

    .line 8
    .line 9
    invoke-interface {p2, p5, p3}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 10
    .line 11
    .line 12
    iget-boolean p1, p1, Landroidx/appcompat/app/i;->p:Z

    .line 13
    .line 14
    if-nez p1, :cond_0

    .line 15
    .line 16
    iget-object p1, p4, Landroidx/appcompat/app/l;->b:Landroidx/appcompat/app/n;

    .line 17
    .line 18
    invoke-virtual {p1}, Landroidx/appcompat/app/n;->dismiss()V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method
