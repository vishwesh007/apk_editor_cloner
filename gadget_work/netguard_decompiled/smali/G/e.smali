.class final LG/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LG/o;


# instance fields
.field public final synthetic a:I

.field private final b:Ljava/lang/Object;

.field private final c:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, LG/e;->a:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    new-instance v0, LG/i;

    .line 8
    .line 9
    invoke-direct {v0}, LG/i;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, LG/e;->b:Ljava/lang/Object;

    .line 13
    .line 14
    new-instance v0, Ljava/util/HashMap;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, LG/e;->c:Ljava/lang/Object;

    .line 20
    .line 21
    return-void
.end method

.method static g(IILandroid/graphics/Bitmap$Config;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "["

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string p0, "x"

    .line 12
    .line 13
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string p0, "], "

    .line 20
    .line 21
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    return-object p0
.end method


# virtual methods
.method public final a(Landroid/graphics/Bitmap;)I
    .locals 0

    .line 1
    invoke-static {p1}, LX/s;->c(Landroid/graphics/Bitmap;)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public final b(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 1

    .line 1
    iget-object v0, p0, LG/e;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, LG/d;

    .line 4
    .line 5
    invoke-virtual {v0}, LG/f;->b()LG/p;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, LG/c;

    .line 10
    .line 11
    invoke-virtual {v0, p1, p2, p3}, LG/c;->b(IILandroid/graphics/Bitmap$Config;)V

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, LG/e;->c:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast p1, LG/e;

    .line 17
    .line 18
    invoke-virtual {p1, v0}, LG/e;->f(LG/p;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Landroid/graphics/Bitmap;

    .line 23
    .line 24
    return-object p1
.end method

.method public final c(Landroid/graphics/Bitmap;)V
    .locals 4

    .line 1
    iget-object v0, p0, LG/e;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, LG/d;

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    invoke-virtual {v0}, LG/f;->b()LG/p;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, LG/c;

    .line 22
    .line 23
    invoke-virtual {v0, v1, v2, v3}, LG/c;->b(IILandroid/graphics/Bitmap$Config;)V

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, LG/e;->c:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v1, LG/e;

    .line 29
    .line 30
    invoke-virtual {v1, v0, p1}, LG/e;->h(LG/p;Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public final d(IILandroid/graphics/Bitmap$Config;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p1, p2, p3}, LG/e;->g(IILandroid/graphics/Bitmap$Config;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public final e(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-static {v0, v1, p1}, LG/e;->g(IILandroid/graphics/Bitmap$Config;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public final f(LG/p;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, LG/e;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/Map;

    .line 4
    .line 5
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    check-cast v1, LG/i;

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    new-instance v1, LG/i;

    .line 14
    .line 15
    invoke-direct {v1, p1}, LG/i;-><init>(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-interface {p1}, LG/p;->a()V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v1, LG/i;->d:LG/i;

    .line 26
    .line 27
    iget-object v0, v1, LG/i;->c:LG/i;

    .line 28
    .line 29
    iput-object v0, p1, LG/i;->c:LG/i;

    .line 30
    .line 31
    iget-object v0, v1, LG/i;->c:LG/i;

    .line 32
    .line 33
    iput-object p1, v0, LG/i;->d:LG/i;

    .line 34
    .line 35
    iget-object p1, p0, LG/e;->b:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast p1, LG/i;

    .line 38
    .line 39
    iput-object p1, v1, LG/i;->d:LG/i;

    .line 40
    .line 41
    iget-object p1, p1, LG/i;->c:LG/i;

    .line 42
    .line 43
    iput-object p1, v1, LG/i;->c:LG/i;

    .line 44
    .line 45
    iput-object v1, p1, LG/i;->d:LG/i;

    .line 46
    .line 47
    iget-object p1, v1, LG/i;->d:LG/i;

    .line 48
    .line 49
    iput-object v1, p1, LG/i;->c:LG/i;

    .line 50
    .line 51
    invoke-virtual {v1}, LG/i;->b()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    return-object p1
.end method

.method public final h(LG/p;Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget-object v0, p0, LG/e;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/Map;

    .line 4
    .line 5
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    check-cast v1, LG/i;

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    new-instance v1, LG/i;

    .line 14
    .line 15
    invoke-direct {v1, p1}, LG/i;-><init>(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    iget-object v2, v1, LG/i;->d:LG/i;

    .line 19
    .line 20
    iget-object v3, v1, LG/i;->c:LG/i;

    .line 21
    .line 22
    iput-object v3, v2, LG/i;->c:LG/i;

    .line 23
    .line 24
    iget-object v3, v1, LG/i;->c:LG/i;

    .line 25
    .line 26
    iput-object v2, v3, LG/i;->d:LG/i;

    .line 27
    .line 28
    iget-object v2, p0, LG/e;->b:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v2, LG/i;

    .line 31
    .line 32
    iget-object v3, v2, LG/i;->d:LG/i;

    .line 33
    .line 34
    iput-object v3, v1, LG/i;->d:LG/i;

    .line 35
    .line 36
    iput-object v2, v1, LG/i;->c:LG/i;

    .line 37
    .line 38
    iput-object v1, v2, LG/i;->d:LG/i;

    .line 39
    .line 40
    iget-object v2, v1, LG/i;->d:LG/i;

    .line 41
    .line 42
    iput-object v1, v2, LG/i;->c:LG/i;

    .line 43
    .line 44
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    invoke-interface {p1}, LG/p;->a()V

    .line 49
    .line 50
    .line 51
    :goto_0
    invoke-virtual {v1, p2}, LG/i;->a(Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method public final i()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, LG/e;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, LG/i;

    .line 4
    .line 5
    iget-object v1, v0, LG/i;->d:LG/i;

    .line 6
    .line 7
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-nez v2, :cond_1

    .line 12
    .line 13
    invoke-virtual {v1}, LG/i;->b()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    return-object v2

    .line 20
    :cond_0
    iget-object v2, v1, LG/i;->d:LG/i;

    .line 21
    .line 22
    iget-object v3, v1, LG/i;->c:LG/i;

    .line 23
    .line 24
    iput-object v3, v2, LG/i;->c:LG/i;

    .line 25
    .line 26
    iget-object v3, v1, LG/i;->c:LG/i;

    .line 27
    .line 28
    iput-object v2, v3, LG/i;->d:LG/i;

    .line 29
    .line 30
    iget-object v2, p0, LG/e;->c:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast v2, Ljava/util/Map;

    .line 33
    .line 34
    iget-object v3, v1, LG/i;->a:Ljava/lang/Object;

    .line 35
    .line 36
    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    check-cast v3, LG/p;

    .line 40
    .line 41
    invoke-interface {v3}, LG/p;->a()V

    .line 42
    .line 43
    .line 44
    iget-object v1, v1, LG/i;->d:LG/i;

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    const/4 v0, 0x0

    .line 48
    return-object v0
.end method

.method public final removeLast()Landroid/graphics/Bitmap;
    .locals 1

    .line 1
    iget-object v0, p0, LG/e;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, LG/e;

    .line 4
    .line 5
    invoke-virtual {v0}, LG/e;->i()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/graphics/Bitmap;

    .line 10
    .line 11
    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 1
    iget v0, p0, LG/e;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v1, "AttributeStrategy:\n  "

    .line 10
    .line 11
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object v1, p0, LG/e;->c:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v1, LG/e;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    return-object v0

    .line 26
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    const-string v1, "GroupedLinkedMap( "

    .line 29
    .line 30
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iget-object v1, p0, LG/e;->b:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast v1, LG/i;

    .line 36
    .line 37
    iget-object v2, v1, LG/i;->c:LG/i;

    .line 38
    .line 39
    const/4 v3, 0x0

    .line 40
    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    if-nez v4, :cond_0

    .line 45
    .line 46
    const/16 v3, 0x7b

    .line 47
    .line 48
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    iget-object v3, v2, LG/i;->a:Ljava/lang/Object;

    .line 52
    .line 53
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const/16 v3, 0x3a

    .line 57
    .line 58
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2}, LG/i;->c()I

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    const-string v3, "}, "

    .line 69
    .line 70
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    iget-object v2, v2, LG/i;->c:LG/i;

    .line 74
    .line 75
    const/4 v3, 0x1

    .line 76
    goto :goto_1

    .line 77
    :cond_0
    if-eqz v3, :cond_1

    .line 78
    .line 79
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    add-int/lit8 v1, v1, -0x2

    .line 84
    .line 85
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    :cond_1
    const-string v1, " )"

    .line 93
    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    return-object v0

    .line 102
    nop

    .line 103
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
