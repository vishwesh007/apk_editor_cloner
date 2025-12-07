.class final Lo0/y;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lo0/a;

.field private final b:Lm0/c;


# direct methods
.method synthetic constructor <init>(Lo0/a;Lm0/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo0/y;->a:Lo0/a;

    iput-object p2, p0, Lo0/y;->b:Lm0/c;

    return-void
.end method

.method static bridge synthetic a(Lo0/y;)Lm0/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lo0/y;->b:Lm0/c;

    return-object p0
.end method

.method static bridge synthetic b(Lo0/y;)Lo0/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lo0/y;->a:Lo0/a;

    return-object p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    instance-of v1, p1, Lo0/y;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    check-cast p1, Lo0/y;

    .line 9
    .line 10
    iget-object v1, p0, Lo0/y;->a:Lo0/a;

    .line 11
    .line 12
    iget-object v2, p1, Lo0/y;->a:Lo0/a;

    .line 13
    .line 14
    invoke-static {v1, v2}, Lp0/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    iget-object v1, p0, Lo0/y;->b:Lm0/c;

    .line 21
    .line 22
    iget-object p1, p1, Lo0/y;->b:Lm0/c;

    .line 23
    .line 24
    invoke-static {v1, p1}, Lp0/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    if-eqz p1, :cond_0

    .line 29
    .line 30
    const/4 p1, 0x1

    .line 31
    return p1

    .line 32
    :cond_0
    return v0
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    iget-object v2, p0, Lo0/y;->a:Lo0/a;

    .line 6
    .line 7
    aput-object v2, v0, v1

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    iget-object v2, p0, Lo0/y;->b:Lm0/c;

    .line 11
    .line 12
    aput-object v2, v0, v1

    .line 13
    .line 14
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p0}, Lp0/r;->b(Ljava/lang/Object;)Lp0/q;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "key"

    .line 6
    .line 7
    iget-object v2, p0, Lo0/y;->a:Lo0/a;

    .line 8
    .line 9
    invoke-virtual {v0, v2, v1}, Lp0/q;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string v1, "feature"

    .line 13
    .line 14
    iget-object v2, p0, Lo0/y;->b:Lm0/c;

    .line 15
    .line 16
    invoke-virtual {v0, v2, v1}, Lp0/q;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Lp0/q;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    return-object v0
.end method
