.class public final Lo0/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:I

.field private final b:Ln0/f;

.field private final c:Ln0/d;

.field private final d:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ln0/f;Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Lp0/w;->b:Lp0/w;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lo0/a;->b:Ln0/f;

    .line 7
    .line 8
    iput-object v0, p0, Lo0/a;->c:Ln0/d;

    .line 9
    .line 10
    iput-object p2, p0, Lo0/a;->d:Ljava/lang/String;

    .line 11
    .line 12
    const/4 v1, 0x3

    .line 13
    new-array v1, v1, [Ljava/lang/Object;

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    aput-object p1, v1, v2

    .line 17
    .line 18
    const/4 p1, 0x1

    .line 19
    aput-object v0, v1, p1

    .line 20
    .line 21
    const/4 p1, 0x2

    .line 22
    aput-object p2, v1, p1

    .line 23
    .line 24
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    iput p1, p0, Lo0/a;->a:I

    .line 29
    .line 30
    return-void
.end method

.method public static a(Ln0/f;Ljava/lang/String;)Lo0/a;
    .locals 1

    .line 1
    new-instance v0, Lo0/a;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lo0/a;-><init>(Ln0/f;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public final b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lo0/a;->b:Ln0/f;

    .line 2
    .line 3
    invoke-virtual {v0}, Ln0/f;->b()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x1

    .line 6
    if-ne p1, p0, :cond_1

    .line 7
    .line 8
    return v1

    .line 9
    :cond_1
    instance-of v2, p1, Lo0/a;

    .line 10
    .line 11
    if-nez v2, :cond_2

    .line 12
    .line 13
    return v0

    .line 14
    :cond_2
    check-cast p1, Lo0/a;

    .line 15
    .line 16
    iget-object v2, p0, Lo0/a;->b:Ln0/f;

    .line 17
    .line 18
    iget-object v3, p1, Lo0/a;->b:Ln0/f;

    .line 19
    .line 20
    invoke-static {v2, v3}, Lp0/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_3

    .line 25
    .line 26
    iget-object v2, p0, Lo0/a;->c:Ln0/d;

    .line 27
    .line 28
    iget-object v3, p1, Lo0/a;->c:Ln0/d;

    .line 29
    .line 30
    invoke-static {v2, v3}, Lp0/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-eqz v2, :cond_3

    .line 35
    .line 36
    iget-object v2, p0, Lo0/a;->d:Ljava/lang/String;

    .line 37
    .line 38
    iget-object p1, p1, Lo0/a;->d:Ljava/lang/String;

    .line 39
    .line 40
    invoke-static {v2, p1}, Lp0/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    if-eqz p1, :cond_3

    .line 45
    .line 46
    return v1

    .line 47
    :cond_3
    return v0
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    iget v0, p0, Lo0/a;->a:I

    return v0
.end method
