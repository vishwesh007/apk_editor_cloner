.class public final Lb0/E;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld0/b;


# instance fields
.field private final a:LF0/a;

.field private final b:LF0/a;

.field private final c:LF0/a;

.field private final d:LF0/a;

.field private final e:LF0/a;


# direct methods
.method public constructor <init>(Lj0/b;Lj0/d;LF0/a;LF0/a;LF0/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lb0/E;->a:LF0/a;

    .line 5
    .line 6
    iput-object p2, p0, Lb0/E;->b:LF0/a;

    .line 7
    .line 8
    iput-object p3, p0, Lb0/E;->c:LF0/a;

    .line 9
    .line 10
    iput-object p4, p0, Lb0/E;->d:LF0/a;

    .line 11
    .line 12
    iput-object p5, p0, Lb0/E;->e:LF0/a;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 7

    .line 1
    iget-object v0, p0, Lb0/E;->a:LF0/a;

    .line 2
    .line 3
    invoke-interface {v0}, LF0/a;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    move-object v2, v0

    .line 8
    check-cast v2, Lj0/a;

    .line 9
    .line 10
    iget-object v0, p0, Lb0/E;->b:LF0/a;

    .line 11
    .line 12
    invoke-interface {v0}, LF0/a;->get()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    move-object v3, v0

    .line 17
    check-cast v3, Lj0/a;

    .line 18
    .line 19
    iget-object v0, p0, Lb0/E;->c:LF0/a;

    .line 20
    .line 21
    invoke-interface {v0}, LF0/a;->get()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    move-object v4, v0

    .line 26
    check-cast v4, Lf0/e;

    .line 27
    .line 28
    iget-object v0, p0, Lb0/E;->d:LF0/a;

    .line 29
    .line 30
    invoke-interface {v0}, LF0/a;->get()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    move-object v5, v0

    .line 35
    check-cast v5, Lg0/q;

    .line 36
    .line 37
    iget-object v0, p0, Lb0/E;->e:LF0/a;

    .line 38
    .line 39
    invoke-interface {v0}, LF0/a;->get()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    move-object v6, v0

    .line 44
    check-cast v6, Lg0/t;

    .line 45
    .line 46
    new-instance v0, Lb0/D;

    .line 47
    .line 48
    move-object v1, v0

    .line 49
    invoke-direct/range {v1 .. v6}, Lb0/D;-><init>(Lj0/a;Lj0/a;Lf0/e;Lg0/q;Lg0/t;)V

    .line 50
    .line 51
    .line 52
    return-object v0
.end method
