.class final Ln/a;
.super Ln/b;
.source "SourceFile"


# instance fields
.field private final a:Landroid/widget/EditText;

.field private final b:Ln/n;


# direct methods
.method constructor <init>(Landroid/widget/EditText;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ln/b;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ln/a;->a:Landroid/widget/EditText;

    .line 5
    .line 6
    new-instance v0, Ln/n;

    .line 7
    .line 8
    invoke-direct {v0, p1}, Ln/n;-><init>(Landroid/widget/EditText;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Ln/a;->b:Ln/n;

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 14
    .line 15
    .line 16
    invoke-static {}, Ln/d;->getInstance()Landroid/text/Editable$Factory;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEditableFactory(Landroid/text/Editable$Factory;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method final a()Z
    .locals 1

    .line 1
    iget-object v0, p0, Ln/a;->b:Ln/n;

    .line 2
    .line 3
    invoke-virtual {v0}, Ln/n;->a()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method final b(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 2

    .line 1
    instance-of v0, p1, Ln/e;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object p1

    .line 6
    :cond_0
    new-instance v0, Ln/e;

    .line 7
    .line 8
    iget-object v1, p0, Ln/a;->a:Landroid/widget/EditText;

    .line 9
    .line 10
    invoke-direct {v0, v1, p1, p2}, Ln/e;-><init>(Landroid/widget/EditText;Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;)V

    .line 11
    .line 12
    .line 13
    return-object v0
.end method

.method final c(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Ln/a;->b:Ln/n;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ln/n;->c(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
