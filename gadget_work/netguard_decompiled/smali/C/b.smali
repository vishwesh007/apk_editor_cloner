.class final LC/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field final synthetic a:LC/g;


# direct methods
.method constructor <init>(LC/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, LC/b;->a:LC/g;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, LC/b;->a:LC/g;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, LC/b;->a:LC/g;

    .line 5
    .line 6
    invoke-static {v1}, LC/g;->a(LC/g;)Ljava/io/Writer;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    monitor-exit v0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v1, p0, LC/b;->a:LC/g;

    .line 15
    .line 16
    invoke-static {v1}, LC/g;->d(LC/g;)V

    .line 17
    .line 18
    .line 19
    iget-object v1, p0, LC/b;->a:LC/g;

    .line 20
    .line 21
    invoke-static {v1}, LC/g;->i(LC/g;)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    iget-object v1, p0, LC/b;->a:LC/g;

    .line 28
    .line 29
    invoke-static {v1}, LC/g;->k(LC/g;)V

    .line 30
    .line 31
    .line 32
    iget-object v1, p0, LC/b;->a:LC/g;

    .line 33
    .line 34
    invoke-static {v1}, LC/g;->n(LC/g;)V

    .line 35
    .line 36
    .line 37
    :cond_1
    monitor-exit v0

    .line 38
    :goto_0
    const/4 v0, 0x0

    .line 39
    return-object v0

    .line 40
    :catchall_0
    move-exception v1

    .line 41
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    throw v1
.end method
