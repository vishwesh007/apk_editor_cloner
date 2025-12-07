.class final Lb0/A;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LZ/f;


# instance fields
.field private final a:Ljava/util/Set;

.field private final b:Lb0/z;

.field private final c:Lb0/C;


# direct methods
.method constructor <init>(Ljava/util/Set;Lb0/z;Lb0/C;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lb0/A;->a:Ljava/util/Set;

    .line 5
    .line 6
    iput-object p2, p0, Lb0/A;->b:Lb0/z;

    .line 7
    .line 8
    iput-object p3, p0, Lb0/A;->c:Lb0/C;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a(LZ/b;Lm/d;)LZ/e;
    .locals 3

    .line 1
    iget-object v0, p0, Lb0/A;->a:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    new-instance v0, Lb0/B;

    .line 10
    .line 11
    iget-object v1, p0, Lb0/A;->b:Lb0/z;

    .line 12
    .line 13
    iget-object v2, p0, Lb0/A;->c:Lb0/C;

    .line 14
    .line 15
    invoke-direct {v0, v1, p1, p2, v2}, Lb0/B;-><init>(Lb0/z;LZ/b;Lm/d;Lb0/C;)V

    .line 16
    .line 17
    .line 18
    return-object v0

    .line 19
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 20
    .line 21
    const/4 v1, 0x2

    .line 22
    new-array v1, v1, [Ljava/lang/Object;

    .line 23
    .line 24
    const/4 v2, 0x0

    .line 25
    aput-object p1, v1, v2

    .line 26
    .line 27
    const/4 p1, 0x1

    .line 28
    aput-object v0, v1, p1

    .line 29
    .line 30
    const-string p1, "%s is not supported byt this factory. Supported encodings are: %s."

    .line 31
    .line 32
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    throw p2
.end method
