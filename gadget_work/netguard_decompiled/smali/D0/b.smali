.class public final LD0/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I


# virtual methods
.method public final a()LD0/f;
    .locals 2

    .line 1
    new-instance v0, LD0/a;

    .line 2
    .line 3
    iget v1, p0, LD0/b;->a:I

    .line 4
    .line 5
    invoke-direct {v0, v1}, LD0/a;-><init>(I)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public final b(I)V
    .locals 0

    .line 1
    iput p1, p0, LD0/b;->a:I

    .line 2
    .line 3
    return-void
.end method
