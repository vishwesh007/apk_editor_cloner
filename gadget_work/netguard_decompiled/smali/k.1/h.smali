.class public final Lk/h;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Landroid/view/View;)Landroid/view/inputmethod/InputConnection;
    .locals 2

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Lk/e;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1, p2}, Lk/e;-><init>(ILjava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    if-eqz p1, :cond_2

    .line 11
    .line 12
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 13
    .line 14
    const/16 v1, 0x19

    .line 15
    .line 16
    if-lt p2, v1, :cond_0

    .line 17
    .line 18
    new-instance p1, Lk/f;

    .line 19
    .line 20
    invoke-direct {p1, p0, v0}, Lk/f;-><init>(Landroid/view/inputmethod/InputConnection;Lk/e;)V

    .line 21
    .line 22
    .line 23
    :goto_0
    move-object p0, p1

    .line 24
    goto :goto_1

    .line 25
    :cond_0
    invoke-static {p1}, Lk/d;->a(Landroid/view/inputmethod/EditorInfo;)[Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    array-length p1, p1

    .line 30
    if-nez p1, :cond_1

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_1
    new-instance p1, Lk/g;

    .line 34
    .line 35
    invoke-direct {p1, p0, v0}, Lk/g;-><init>(Landroid/view/inputmethod/InputConnection;Lk/e;)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :goto_1
    return-object p0

    .line 40
    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    .line 41
    .line 42
    const-string p1, "editorInfo must be non-null"

    .line 43
    .line 44
    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    throw p0
.end method
