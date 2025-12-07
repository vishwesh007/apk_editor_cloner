.class final Landroidx/cursoradapter/widget/b;
.super Landroid/database/DataSetObserver;
.source "SourceFile"


# instance fields
.field final synthetic a:Landroidx/cursoradapter/widget/c;


# direct methods
.method constructor <init>(Landroidx/cursoradapter/widget/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/cursoradapter/widget/b;->a:Landroidx/cursoradapter/widget/c;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onChanged()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iget-object v1, p0, Landroidx/cursoradapter/widget/b;->a:Landroidx/cursoradapter/widget/c;

    .line 3
    .line 4
    iput-boolean v0, v1, Landroidx/cursoradapter/widget/c;->mDataValid:Z

    .line 5
    .line 6
    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final onInvalidated()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Landroidx/cursoradapter/widget/b;->a:Landroidx/cursoradapter/widget/c;

    .line 3
    .line 4
    iput-boolean v0, v1, Landroidx/cursoradapter/widget/c;->mDataValid:Z

    .line 5
    .line 6
    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->notifyDataSetInvalidated()V

    .line 7
    .line 8
    .line 9
    return-void
.end method
