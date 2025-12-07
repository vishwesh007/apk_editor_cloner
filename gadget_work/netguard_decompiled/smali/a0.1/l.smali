.class final La0/l;
.super La0/x;
.source "SourceFile"


# instance fields
.field private a:La0/v;

.field private b:La0/a;


# virtual methods
.method public final b()La0/w;
    .locals 3

    .line 1
    new-instance v0, La0/m;

    .line 2
    .line 3
    iget-object v1, p0, La0/l;->a:La0/v;

    .line 4
    .line 5
    iget-object v2, p0, La0/l;->b:La0/a;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, La0/m;-><init>(La0/v;La0/a;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public final f(La0/a;)La0/x;
    .locals 0

    .line 1
    iput-object p1, p0, La0/l;->b:La0/a;

    .line 2
    .line 3
    return-object p0
.end method

.method public final i()La0/x;
    .locals 1

    .line 1
    sget-object v0, La0/v;->d:La0/v;

    .line 2
    .line 3
    iput-object v0, p0, La0/l;->a:La0/v;

    .line 4
    .line 5
    return-object p0
.end method
