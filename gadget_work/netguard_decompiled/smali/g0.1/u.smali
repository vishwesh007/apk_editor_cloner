.class public final Lg0/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld0/b;


# instance fields
.field private final a:LF0/a;

.field private final b:LF0/a;

.field private final c:LF0/a;

.field private final d:LF0/a;


# direct methods
.method public constructor <init>(LF0/a;LF0/a;LF0/a;LF0/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lg0/u;->a:LF0/a;

    .line 5
    .line 6
    iput-object p2, p0, Lg0/u;->b:LF0/a;

    .line 7
    .line 8
    iput-object p3, p0, Lg0/u;->c:LF0/a;

    .line 9
    .line 10
    iput-object p4, p0, Lg0/u;->d:LF0/a;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object v0, p0, Lg0/u;->a:LF0/a;

    .line 2
    .line 3
    invoke-interface {v0}, LF0/a;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/util/concurrent/Executor;

    .line 8
    .line 9
    iget-object v1, p0, Lg0/u;->b:LF0/a;

    .line 10
    .line 11
    invoke-interface {v1}, LF0/a;->get()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Lh0/e;

    .line 16
    .line 17
    iget-object v2, p0, Lg0/u;->c:LF0/a;

    .line 18
    .line 19
    invoke-interface {v2}, LF0/a;->get()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    check-cast v2, Lg0/v;

    .line 24
    .line 25
    iget-object v3, p0, Lg0/u;->d:LF0/a;

    .line 26
    .line 27
    invoke-interface {v3}, LF0/a;->get()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    check-cast v3, Li0/c;

    .line 32
    .line 33
    new-instance v4, Lg0/t;

    .line 34
    .line 35
    invoke-direct {v4, v0, v1, v2, v3}, Lg0/t;-><init>(Ljava/util/concurrent/Executor;Lh0/e;Lg0/v;Li0/c;)V

    .line 36
    .line 37
    .line 38
    return-object v4
.end method
