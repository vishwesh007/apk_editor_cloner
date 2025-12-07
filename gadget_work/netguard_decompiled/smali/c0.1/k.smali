.class public final Lc0/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld0/b;


# instance fields
.field private final a:LF0/a;

.field private final b:LF0/a;

.field private final c:LF0/a;


# direct methods
.method public constructor <init>(Lc/a;Lj0/b;Lj0/d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lc0/k;->a:LF0/a;

    .line 5
    .line 6
    iput-object p2, p0, Lc0/k;->b:LF0/a;

    .line 7
    .line 8
    iput-object p3, p0, Lc0/k;->c:LF0/a;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lc0/k;->a:LF0/a;

    .line 2
    .line 3
    invoke-interface {v0}, LF0/a;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/content/Context;

    .line 8
    .line 9
    iget-object v1, p0, Lc0/k;->b:LF0/a;

    .line 10
    .line 11
    invoke-interface {v1}, LF0/a;->get()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Lj0/a;

    .line 16
    .line 17
    iget-object v2, p0, Lc0/k;->c:LF0/a;

    .line 18
    .line 19
    invoke-interface {v2}, LF0/a;->get()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    check-cast v2, Lj0/a;

    .line 24
    .line 25
    new-instance v3, Lc0/j;

    .line 26
    .line 27
    invoke-direct {v3, v0, v1, v2}, Lc0/j;-><init>(Landroid/content/Context;Lj0/a;Lj0/a;)V

    .line 28
    .line 29
    .line 30
    return-object v3
.end method
