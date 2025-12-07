.class public final Lh0/F;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld0/b;


# instance fields
.field private final a:LF0/a;

.field private final b:LF0/a;

.field private final c:LF0/a;


# direct methods
.method public constructor <init>(LF0/a;Lh0/h;Lh0/j;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lh0/F;->a:LF0/a;

    .line 5
    .line 6
    iput-object p2, p0, Lh0/F;->b:LF0/a;

    .line 7
    .line 8
    iput-object p3, p0, Lh0/F;->c:LF0/a;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lh0/F;->a:LF0/a;

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
    iget-object v1, p0, Lh0/F;->b:LF0/a;

    .line 10
    .line 11
    invoke-interface {v1}, LF0/a;->get()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Ljava/lang/String;

    .line 16
    .line 17
    iget-object v2, p0, Lh0/F;->c:LF0/a;

    .line 18
    .line 19
    invoke-interface {v2}, LF0/a;->get()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    check-cast v2, Ljava/lang/Integer;

    .line 24
    .line 25
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    new-instance v3, Lh0/E;

    .line 30
    .line 31
    invoke-direct {v3, v2, v0, v1}, Lh0/E;-><init>(ILandroid/content/Context;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    return-object v3
.end method
