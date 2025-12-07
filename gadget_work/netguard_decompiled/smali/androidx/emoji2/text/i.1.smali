.class final Landroidx/emoji2/text/i;
.super Landroidx/emoji2/text/j;
.source "SourceFile"


# instance fields
.field private volatile b:Landroidx/emoji2/text/x;

.field private volatile c:Landroidx/emoji2/text/F;


# virtual methods
.method final a(Landroidx/emoji2/text/F;)V
    .locals 4

    .line 1
    iput-object p1, p0, Landroidx/emoji2/text/i;->c:Landroidx/emoji2/text/F;

    .line 2
    .line 3
    new-instance p1, Landroidx/emoji2/text/x;

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/emoji2/text/i;->c:Landroidx/emoji2/text/F;

    .line 6
    .line 7
    new-instance v1, Landroidx/emoji2/text/z;

    .line 8
    .line 9
    invoke-direct {v1}, Landroidx/emoji2/text/z;-><init>()V

    .line 10
    .line 11
    .line 12
    iget-object v2, p0, Landroidx/emoji2/text/j;->a:Landroidx/emoji2/text/p;

    .line 13
    .line 14
    invoke-static {v2}, Landroidx/emoji2/text/p;->a(Landroidx/emoji2/text/p;)Landroidx/emoji2/text/l;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    iget-object v3, p0, Landroidx/emoji2/text/j;->a:Landroidx/emoji2/text/p;

    .line 19
    .line 20
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    iget-object v3, p0, Landroidx/emoji2/text/j;->a:Landroidx/emoji2/text/p;

    .line 24
    .line 25
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    invoke-direct {p1, v0, v1, v2}, Landroidx/emoji2/text/x;-><init>(Landroidx/emoji2/text/F;Landroidx/emoji2/text/z;Landroidx/emoji2/text/l;)V

    .line 29
    .line 30
    .line 31
    iput-object p1, p0, Landroidx/emoji2/text/i;->b:Landroidx/emoji2/text/x;

    .line 32
    .line 33
    iget-object p1, p0, Landroidx/emoji2/text/j;->a:Landroidx/emoji2/text/p;

    .line 34
    .line 35
    invoke-virtual {p1}, Landroidx/emoji2/text/p;->j()V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method final b(Ljava/lang/CharSequence;IIZ)Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/emoji2/text/i;->b:Landroidx/emoji2/text/x;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/emoji2/text/x;->e(Ljava/lang/CharSequence;IIZ)Ljava/lang/CharSequence;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method final c(Landroid/view/inputmethod/EditorInfo;)V
    .locals 3

    .line 1
    iget-object v0, p1, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/emoji2/text/i;->c:Landroidx/emoji2/text/F;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroidx/emoji2/text/F;->d()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const-string v2, "android.support.text.emoji.emojiCompat_metadataVersion"

    .line 10
    .line 11
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 12
    .line 13
    .line 14
    iget-object p1, p1, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    .line 15
    .line 16
    iget-object v0, p0, Landroidx/emoji2/text/j;->a:Landroidx/emoji2/text/p;

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    const-string v1, "android.support.text.emoji.emojiCompat_replaceAll"

    .line 23
    .line 24
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 25
    .line 26
    .line 27
    return-void
.end method
