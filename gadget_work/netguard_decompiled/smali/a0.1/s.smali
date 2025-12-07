.class final La0/s;
.super La0/x;
.source "SourceFile"


# instance fields
.field private a:La0/C;

.field private b:La0/B;


# virtual methods
.method public final e()La0/D;
    .locals 3

    .line 1
    new-instance v0, La0/t;

    .line 2
    .line 3
    iget-object v1, p0, La0/s;->a:La0/C;

    .line 4
    .line 5
    iget-object v2, p0, La0/s;->b:La0/B;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, La0/t;-><init>(La0/C;La0/B;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public final w(La0/B;)La0/x;
    .locals 0

    .line 1
    iput-object p1, p0, La0/s;->b:La0/B;

    .line 2
    .line 3
    return-object p0
.end method

.method public final z(La0/C;)La0/x;
    .locals 0

    .line 1
    iput-object p1, p0, La0/s;->a:La0/C;

    .line 2
    .line 3
    return-object p0
.end method
