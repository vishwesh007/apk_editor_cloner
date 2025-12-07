.class final Ln/k;
.super Ln/j;
.source "SourceFile"


# instance fields
.field private final a:Ln/i;


# direct methods
.method constructor <init>(Landroid/widget/TextView;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ln/j;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ln/i;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Ln/i;-><init>(Landroid/widget/TextView;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Ln/k;->a:Ln/i;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method final a([Landroid/text/InputFilter;)[Landroid/text/InputFilter;
    .locals 1

    .line 1
    invoke-static {}, Landroidx/emoji2/text/p;->g()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    xor-int/lit8 v0, v0, 0x1

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-object p1

    .line 10
    :cond_0
    iget-object v0, p0, Ln/k;->a:Ln/i;

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Ln/i;->a([Landroid/text/InputFilter;)[Landroid/text/InputFilter;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    return-object p1
.end method

.method public final b()Z
    .locals 1

    .line 1
    iget-object v0, p0, Ln/k;->a:Ln/i;

    .line 2
    .line 3
    invoke-virtual {v0}, Ln/i;->b()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method final c(Z)V
    .locals 1

    .line 1
    invoke-static {}, Landroidx/emoji2/text/p;->g()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    xor-int/lit8 v0, v0, 0x1

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Ln/k;->a:Ln/i;

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Ln/i;->c(Z)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method final d(Z)V
    .locals 2

    .line 1
    invoke-static {}, Landroidx/emoji2/text/p;->g()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    xor-int/lit8 v0, v0, 0x1

    .line 6
    .line 7
    iget-object v1, p0, Ln/k;->a:Ln/i;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v1, p1}, Ln/i;->f(Z)V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {v1, p1}, Ln/i;->d(Z)V

    .line 16
    .line 17
    .line 18
    :goto_0
    return-void
.end method

.method final e(Landroid/text/method/TransformationMethod;)Landroid/text/method/TransformationMethod;
    .locals 1

    .line 1
    invoke-static {}, Landroidx/emoji2/text/p;->g()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    xor-int/lit8 v0, v0, 0x1

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-object p1

    .line 10
    :cond_0
    iget-object v0, p0, Ln/k;->a:Ln/i;

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Ln/i;->e(Landroid/text/method/TransformationMethod;)Landroid/text/method/TransformationMethod;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    return-object p1
.end method
