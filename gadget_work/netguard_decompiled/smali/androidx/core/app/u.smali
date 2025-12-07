.class public final Landroidx/core/app/u;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Landroid/os/Bundle;

.field private b:Landroidx/core/graphics/drawable/IconCompat;

.field private final c:[Landroidx/core/app/M;

.field private d:Z

.field e:Z

.field private final f:I

.field private final g:Z

.field public h:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public i:Ljava/lang/CharSequence;

.field public j:Landroid/app/PendingIntent;

.field private k:Z


# direct methods
.method constructor <init>(Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroidx/core/app/M;[Landroidx/core/app/M;ZIZZZ)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p6, 0x1

    .line 2
    iput-boolean p6, p0, Landroidx/core/app/u;->e:Z

    .line 3
    iput-object p1, p0, Landroidx/core/app/u;->b:Landroidx/core/graphics/drawable/IconCompat;

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1}, Landroidx/core/graphics/drawable/IconCompat;->e()I

    move-result p6

    const/4 v0, 0x2

    if-ne p6, v0, :cond_0

    .line 5
    invoke-virtual {p1}, Landroidx/core/graphics/drawable/IconCompat;->d()I

    move-result p1

    iput p1, p0, Landroidx/core/app/u;->h:I

    .line 6
    :cond_0
    invoke-static {p2}, Landroidx/core/app/w;->c(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Landroidx/core/app/u;->i:Ljava/lang/CharSequence;

    .line 7
    iput-object p3, p0, Landroidx/core/app/u;->j:Landroid/app/PendingIntent;

    if-eqz p4, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    new-instance p4, Landroid/os/Bundle;

    invoke-direct {p4}, Landroid/os/Bundle;-><init>()V

    :goto_0
    iput-object p4, p0, Landroidx/core/app/u;->a:Landroid/os/Bundle;

    .line 9
    iput-object p5, p0, Landroidx/core/app/u;->c:[Landroidx/core/app/M;

    .line 10
    iput-boolean p7, p0, Landroidx/core/app/u;->d:Z

    .line 11
    iput p8, p0, Landroidx/core/app/u;->f:I

    .line 12
    iput-boolean p9, p0, Landroidx/core/app/u;->e:Z

    .line 13
    iput-boolean p10, p0, Landroidx/core/app/u;->g:Z

    .line 14
    iput-boolean p11, p0, Landroidx/core/app/u;->k:Z

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/core/app/u;->d:Z

    .line 2
    .line 3
    return v0
.end method

.method public final b()Landroidx/core/graphics/drawable/IconCompat;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/core/app/u;->b:Landroidx/core/graphics/drawable/IconCompat;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Landroidx/core/app/u;->h:I

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-string v1, ""

    .line 10
    .line 11
    invoke-static {v1, v0}, Landroidx/core/graphics/drawable/IconCompat;->c(Ljava/lang/String;I)Landroidx/core/graphics/drawable/IconCompat;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Landroidx/core/app/u;->b:Landroidx/core/graphics/drawable/IconCompat;

    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Landroidx/core/app/u;->b:Landroidx/core/graphics/drawable/IconCompat;

    .line 18
    .line 19
    return-object v0
.end method

.method public final c()[Landroidx/core/app/M;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/app/u;->c:[Landroidx/core/app/M;

    .line 2
    .line 3
    return-object v0
.end method

.method public final d()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/core/app/u;->f:I

    .line 2
    .line 3
    return v0
.end method

.method public final e()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/core/app/u;->k:Z

    .line 2
    .line 3
    return v0
.end method

.method public final f()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/core/app/u;->g:Z

    .line 2
    .line 3
    return v0
.end method
