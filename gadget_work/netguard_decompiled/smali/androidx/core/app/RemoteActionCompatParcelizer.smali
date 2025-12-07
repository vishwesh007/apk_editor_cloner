.class public Landroidx/core/app/RemoteActionCompatParcelizer;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(Landroidx/versionedparcelable/b;)Landroidx/core/app/RemoteActionCompat;
    .locals 3

    .line 1
    new-instance v0, Landroidx/core/app/RemoteActionCompat;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/core/app/RemoteActionCompat;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, v0, Landroidx/core/app/RemoteActionCompat;->a:Landroidx/core/graphics/drawable/IconCompat;

    .line 7
    .line 8
    invoke-virtual {p0, v1}, Landroidx/versionedparcelable/b;->t(Landroidx/core/graphics/drawable/IconCompat;)LA/a;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    check-cast v1, Landroidx/core/graphics/drawable/IconCompat;

    .line 13
    .line 14
    iput-object v1, v0, Landroidx/core/app/RemoteActionCompat;->a:Landroidx/core/graphics/drawable/IconCompat;

    .line 15
    .line 16
    iget-object v1, v0, Landroidx/core/app/RemoteActionCompat;->b:Ljava/lang/CharSequence;

    .line 17
    .line 18
    const/4 v2, 0x2

    .line 19
    invoke-virtual {p0, v2, v1}, Landroidx/versionedparcelable/b;->k(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    iput-object v1, v0, Landroidx/core/app/RemoteActionCompat;->b:Ljava/lang/CharSequence;

    .line 24
    .line 25
    iget-object v1, v0, Landroidx/core/app/RemoteActionCompat;->c:Ljava/lang/CharSequence;

    .line 26
    .line 27
    const/4 v2, 0x3

    .line 28
    invoke-virtual {p0, v2, v1}, Landroidx/versionedparcelable/b;->k(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    iput-object v1, v0, Landroidx/core/app/RemoteActionCompat;->c:Ljava/lang/CharSequence;

    .line 33
    .line 34
    iget-object v1, v0, Landroidx/core/app/RemoteActionCompat;->d:Landroid/app/PendingIntent;

    .line 35
    .line 36
    const/4 v2, 0x4

    .line 37
    invoke-virtual {p0, v1, v2}, Landroidx/versionedparcelable/b;->p(Landroid/os/Parcelable;I)Landroid/os/Parcelable;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    check-cast v1, Landroid/app/PendingIntent;

    .line 42
    .line 43
    iput-object v1, v0, Landroidx/core/app/RemoteActionCompat;->d:Landroid/app/PendingIntent;

    .line 44
    .line 45
    iget-boolean v1, v0, Landroidx/core/app/RemoteActionCompat;->e:Z

    .line 46
    .line 47
    const/4 v2, 0x5

    .line 48
    invoke-virtual {p0, v2, v1}, Landroidx/versionedparcelable/b;->g(IZ)Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    iput-boolean v1, v0, Landroidx/core/app/RemoteActionCompat;->e:Z

    .line 53
    .line 54
    iget-boolean v1, v0, Landroidx/core/app/RemoteActionCompat;->f:Z

    .line 55
    .line 56
    const/4 v2, 0x6

    .line 57
    invoke-virtual {p0, v2, v1}, Landroidx/versionedparcelable/b;->g(IZ)Z

    .line 58
    .line 59
    .line 60
    move-result p0

    .line 61
    iput-boolean p0, v0, Landroidx/core/app/RemoteActionCompat;->f:Z

    .line 62
    .line 63
    return-object v0
.end method

.method public static write(Landroidx/core/app/RemoteActionCompat;Landroidx/versionedparcelable/b;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/core/app/RemoteActionCompat;->a:Landroidx/core/graphics/drawable/IconCompat;

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroidx/versionedparcelable/b;->I(Landroidx/core/graphics/drawable/IconCompat;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Landroidx/core/app/RemoteActionCompat;->b:Ljava/lang/CharSequence;

    .line 10
    .line 11
    const/4 v1, 0x2

    .line 12
    invoke-virtual {p1, v1, v0}, Landroidx/versionedparcelable/b;->z(ILjava/lang/CharSequence;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Landroidx/core/app/RemoteActionCompat;->c:Ljava/lang/CharSequence;

    .line 16
    .line 17
    const/4 v1, 0x3

    .line 18
    invoke-virtual {p1, v1, v0}, Landroidx/versionedparcelable/b;->z(ILjava/lang/CharSequence;)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Landroidx/core/app/RemoteActionCompat;->d:Landroid/app/PendingIntent;

    .line 22
    .line 23
    const/4 v1, 0x4

    .line 24
    invoke-virtual {p1, v0, v1}, Landroidx/versionedparcelable/b;->E(Landroid/os/Parcelable;I)V

    .line 25
    .line 26
    .line 27
    iget-boolean v0, p0, Landroidx/core/app/RemoteActionCompat;->e:Z

    .line 28
    .line 29
    const/4 v1, 0x5

    .line 30
    invoke-virtual {p1, v1, v0}, Landroidx/versionedparcelable/b;->v(IZ)V

    .line 31
    .line 32
    .line 33
    iget-boolean p0, p0, Landroidx/core/app/RemoteActionCompat;->f:Z

    .line 34
    .line 35
    const/4 v0, 0x6

    .line 36
    invoke-virtual {p1, v0, p0}, Landroidx/versionedparcelable/b;->v(IZ)V

    .line 37
    .line 38
    .line 39
    return-void
.end method
