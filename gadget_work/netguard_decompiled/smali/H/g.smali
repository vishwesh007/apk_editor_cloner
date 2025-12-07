.class public LH/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:J

.field private final b:LH/f;


# direct methods
.method public constructor <init>(LH/f;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/32 v0, 0xfa00000

    .line 5
    .line 6
    .line 7
    iput-wide v0, p0, LH/g;->a:J

    .line 8
    .line 9
    iput-object p1, p0, LH/g;->b:LH/f;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final a()LH/h;
    .locals 4

    .line 1
    iget-object v0, p0, LH/g;->b:LH/f;

    .line 2
    .line 3
    check-cast v0, LH/i;

    .line 4
    .line 5
    iget-object v1, v0, LH/i;->a:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const/4 v2, 0x0

    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    move-object v1, v2

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object v0, v0, LH/i;->b:Ljava/lang/String;

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    new-instance v3, Ljava/io/File;

    .line 21
    .line 22
    invoke-direct {v3, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    move-object v1, v3

    .line 26
    :cond_1
    :goto_0
    if-nez v1, :cond_2

    .line 27
    .line 28
    return-object v2

    .line 29
    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-nez v0, :cond_4

    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_3

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_3
    return-object v2

    .line 43
    :cond_4
    :goto_1
    new-instance v0, LH/h;

    .line 44
    .line 45
    iget-wide v2, p0, LH/g;->a:J

    .line 46
    .line 47
    invoke-direct {v0, v1, v2, v3}, LH/h;-><init>(Ljava/io/File;J)V

    .line 48
    .line 49
    .line 50
    return-object v0
.end method
