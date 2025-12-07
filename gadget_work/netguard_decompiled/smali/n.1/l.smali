.class public final Ln/l;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ln/j;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    new-instance v0, Ln/k;

    .line 7
    .line 8
    invoke-direct {v0, p1}, Ln/k;-><init>(Landroid/widget/TextView;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Ln/l;->a:Ln/j;

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    .line 15
    .line 16
    const-string v0, "textView cannot be null"

    .line 17
    .line 18
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    throw p1
.end method


# virtual methods
.method public final a([Landroid/text/InputFilter;)[Landroid/text/InputFilter;
    .locals 1

    .line 1
    iget-object v0, p0, Ln/l;->a:Ln/j;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ln/j;->a([Landroid/text/InputFilter;)[Landroid/text/InputFilter;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public final b()Z
    .locals 1

    .line 1
    iget-object v0, p0, Ln/l;->a:Ln/j;

    .line 2
    .line 3
    invoke-virtual {v0}, Ln/j;->b()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final c(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Ln/l;->a:Ln/j;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ln/j;->c(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final d(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Ln/l;->a:Ln/j;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ln/j;->d(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final e(Landroid/text/method/TransformationMethod;)Landroid/text/method/TransformationMethod;
    .locals 1

    .line 1
    iget-object v0, p0, Ln/l;->a:Ln/j;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ln/j;->e(Landroid/text/method/TransformationMethod;)Landroid/text/method/TransformationMethod;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
