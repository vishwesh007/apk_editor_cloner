.class final LD0/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LA0/h;


# instance fields
.field private a:Z

.field private b:Z

.field private c:LA0/d;

.field private final d:LD0/h;


# direct methods
.method constructor <init>(LD0/h;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, LD0/k;->a:Z

    .line 6
    .line 7
    iput-boolean v0, p0, LD0/k;->b:Z

    .line 8
    .line 9
    iput-object p1, p0, LD0/k;->d:LD0/h;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)LA0/h;
    .locals 3

    .line 1
    iget-boolean v0, p0, LD0/k;->a:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, LD0/k;->a:Z

    .line 7
    .line 8
    iget-object v0, p0, LD0/k;->c:LA0/d;

    .line 9
    .line 10
    iget-boolean v1, p0, LD0/k;->b:Z

    .line 11
    .line 12
    iget-object v2, p0, LD0/k;->d:LD0/h;

    .line 13
    .line 14
    invoke-virtual {v2, v0, p1, v1}, LD0/h;->c(LA0/d;Ljava/lang/Object;Z)LA0/f;

    .line 15
    .line 16
    .line 17
    return-object p0

    .line 18
    :cond_0
    new-instance p1, LA0/b;

    .line 19
    .line 20
    const-string v0, "Cannot encode a second value in the ValueEncoderContext"

    .line 21
    .line 22
    invoke-direct {p1, v0}, LA0/b;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw p1
.end method

.method final b(LA0/d;Z)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, LD0/k;->a:Z

    .line 3
    .line 4
    iput-object p1, p0, LD0/k;->c:LA0/d;

    .line 5
    .line 6
    iput-boolean p2, p0, LD0/k;->b:Z

    .line 7
    .line 8
    return-void
.end method

.method public final c(Z)LA0/h;
    .locals 3

    .line 1
    iget-boolean v0, p0, LD0/k;->a:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, LD0/k;->a:Z

    .line 7
    .line 8
    iget-object v0, p0, LD0/k;->c:LA0/d;

    .line 9
    .line 10
    iget-boolean v1, p0, LD0/k;->b:Z

    .line 11
    .line 12
    iget-object v2, p0, LD0/k;->d:LD0/h;

    .line 13
    .line 14
    invoke-virtual {v2, v0, p1, v1}, LD0/h;->e(LA0/d;IZ)V

    .line 15
    .line 16
    .line 17
    return-object p0

    .line 18
    :cond_0
    new-instance p1, LA0/b;

    .line 19
    .line 20
    const-string v0, "Cannot encode a second value in the ValueEncoderContext"

    .line 21
    .line 22
    invoke-direct {p1, v0}, LA0/b;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw p1
.end method
