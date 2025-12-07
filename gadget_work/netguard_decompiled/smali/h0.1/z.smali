.class public final Lh0/z;
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
.method public constructor <init>(Lj0/b;Lj0/d;Lh0/h;LF0/a;LF0/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lh0/z;->a:LF0/a;

    .line 5
    .line 6
    iput-object p2, p0, Lh0/z;->b:LF0/a;

    .line 7
    .line 8
    iput-object p3, p0, Lh0/z;->c:LF0/a;

    .line 9
    .line 10
    iput-object p4, p0, Lh0/z;->d:LF0/a;

    .line 11
    .line 12
    iput-object p5, p0, Lh0/z;->e:LF0/a;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 8

    .line 1
    iget-object v0, p0, Lh0/z;->a:LF0/a;

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
    iget-object v0, p0, Lh0/z;->b:LF0/a;

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
    iget-object v0, p0, Lh0/z;->c:LF0/a;

    .line 20
    .line 21
    invoke-interface {v0}, LF0/a;->get()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iget-object v1, p0, Lh0/z;->d:LF0/a;

    .line 26
    .line 27
    invoke-interface {v1}, LF0/a;->get()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget-object v6, p0, Lh0/z;->e:LF0/a;

    .line 32
    .line 33
    new-instance v7, Lh0/y;

    .line 34
    .line 35
    move-object v4, v0

    .line 36
    check-cast v4, Lh0/f;

    .line 37
    .line 38
    move-object v5, v1

    .line 39
    check-cast v5, Lh0/E;

    .line 40
    .line 41
    move-object v1, v7

    .line 42
    invoke-direct/range {v1 .. v6}, Lh0/y;-><init>(Lj0/a;Lj0/a;Lh0/f;Lh0/E;LF0/a;)V

    .line 43
    .line 44
    .line 45
    return-object v7
.end method
