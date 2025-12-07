.class final LJ/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/data/e;


# instance fields
.field private final d:Ljava/io/File;

.field private final e:LJ/t;

.field private f:Ljava/io/Closeable;


# direct methods
.method constructor <init>(Ljava/io/File;LJ/t;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LJ/s;->d:Ljava/io/File;

    .line 5
    .line 6
    iput-object p2, p0, LJ/s;->e:LJ/t;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget-object v0, p0, LJ/s;->f:Ljava/io/Closeable;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    iget-object v1, p0, LJ/s;->e:LJ/t;

    .line 6
    .line 7
    check-cast v1, LJ/q;

    .line 8
    .line 9
    iget v1, v1, LJ/q;->a:I

    .line 10
    .line 11
    packed-switch v1, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :pswitch_0
    check-cast v0, Landroid/os/ParcelFileDescriptor;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 18
    .line 19
    .line 20
    goto :goto_1

    .line 21
    :goto_0
    check-cast v0, Ljava/io/InputStream;

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    .line 25
    .line 26
    :catch_0
    :cond_0
    :goto_1
    return-void

    .line 27
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final b()Ljava/lang/Class;
    .locals 1

    .line 1
    iget-object v0, p0, LJ/s;->e:LJ/t;

    .line 2
    .line 3
    check-cast v0, LJ/q;

    .line 4
    .line 5
    iget v0, v0, LJ/q;->a:I

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    const-class v0, Ljava/io/InputStream;

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :pswitch_0
    const-class v0, Landroid/os/ParcelFileDescriptor;

    .line 14
    .line 15
    :goto_0
    return-object v0

    .line 16
    nop

    .line 17
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final c()Lcom/bumptech/glide/load/DataSource;
    .locals 1

    .line 1
    sget-object v0, Lcom/bumptech/glide/load/DataSource;->LOCAL:Lcom/bumptech/glide/load/DataSource;

    .line 2
    .line 3
    return-object v0
.end method

.method public final cancel()V
    .locals 0

    .line 1
    return-void
.end method

.method public final e(Lcom/bumptech/glide/Priority;Lcom/bumptech/glide/load/data/d;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object p1, p0, LJ/s;->e:LJ/t;

    .line 2
    .line 3
    iget-object v0, p0, LJ/s;->d:Ljava/io/File;

    .line 4
    .line 5
    check-cast p1, LJ/q;

    .line 6
    .line 7
    iget p1, p1, LJ/q;->a:I

    .line 8
    .line 9
    packed-switch p1, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :pswitch_0
    const/high16 p1, 0x10000000

    .line 14
    .line 15
    invoke-static {v0, p1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    goto :goto_1

    .line 20
    :goto_0
    new-instance p1, Ljava/io/FileInputStream;

    .line 21
    .line 22
    invoke-direct {p1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 23
    .line 24
    .line 25
    :goto_1
    iput-object p1, p0, LJ/s;->f:Ljava/io/Closeable;

    .line 26
    .line 27
    invoke-interface {p2, p1}, Lcom/bumptech/glide/load/data/d;->f(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    .line 29
    .line 30
    goto :goto_2

    .line 31
    :catch_0
    move-exception p1

    .line 32
    const-string v0, "FileLoader"

    .line 33
    .line 34
    const/4 v1, 0x3

    .line 35
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-eqz v1, :cond_0

    .line 40
    .line 41
    const-string v1, "Failed to open file"

    .line 42
    .line 43
    invoke-static {v0, v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 44
    .line 45
    .line 46
    :cond_0
    invoke-interface {p2, p1}, Lcom/bumptech/glide/load/data/d;->d(Ljava/lang/Exception;)V

    .line 47
    .line 48
    .line 49
    :goto_2
    return-void

    .line 50
    nop

    .line 51
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
