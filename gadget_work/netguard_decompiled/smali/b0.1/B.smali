.class final Lb0/B;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LZ/e;


# instance fields
.field private final a:Lb0/z;

.field private final b:Ljava/lang/String;

.field private final c:LZ/b;

.field private final d:Lm/d;

.field private final e:Lb0/C;


# direct methods
.method constructor <init>(Lb0/z;LZ/b;Lm/d;Lb0/C;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lb0/B;->a:Lb0/z;

    .line 5
    .line 6
    const-string p1, "PLAY_BILLING_LIBRARY"

    .line 7
    .line 8
    iput-object p1, p0, Lb0/B;->b:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p2, p0, Lb0/B;->c:LZ/b;

    .line 11
    .line 12
    iput-object p3, p0, Lb0/B;->d:Lm/d;

    .line 13
    .line 14
    iput-object p4, p0, Lb0/B;->e:Lb0/C;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final a(LZ/c;)V
    .locals 3

    .line 1
    new-instance v0, LB/g;

    .line 2
    .line 3
    invoke-direct {v0}, LB/g;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lb0/j;

    .line 7
    .line 8
    invoke-direct {v1}, Lb0/j;-><init>()V

    .line 9
    .line 10
    .line 11
    iget-object v2, p0, Lb0/B;->a:Lb0/z;

    .line 12
    .line 13
    invoke-virtual {v1, v2}, Lb0/j;->s(Lb0/z;)Lb0/r;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, p1}, Lb0/j;->q(LZ/c;)Lb0/r;

    .line 17
    .line 18
    .line 19
    iget-object p1, p0, Lb0/B;->b:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {v1, p1}, Lb0/j;->t(Ljava/lang/String;)Lb0/r;

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Lb0/B;->d:Lm/d;

    .line 25
    .line 26
    invoke-virtual {v1, p1}, Lb0/j;->r(Lm/d;)Lb0/r;

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lb0/B;->c:LZ/b;

    .line 30
    .line 31
    invoke-virtual {v1, p1}, Lb0/j;->p(LZ/b;)Lb0/r;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Lb0/j;->o()Lb0/k;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    iget-object v1, p0, Lb0/B;->e:Lb0/C;

    .line 39
    .line 40
    check-cast v1, Lb0/D;

    .line 41
    .line 42
    invoke-virtual {v1, p1, v0}, Lb0/D;->e(Lb0/y;LB/g;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method
