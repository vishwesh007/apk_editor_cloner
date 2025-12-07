.class final LC0/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LA0/a;


# instance fields
.field final synthetic a:LC0/f;


# direct methods
.method constructor <init>(LC0/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, LC0/d;->a:LC0/f;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(La0/u;Ljava/io/BufferedWriter;)V
    .locals 7

    .line 1
    new-instance v6, LC0/g;

    .line 2
    .line 3
    iget-object v0, p0, LC0/d;->a:LC0/f;

    .line 4
    .line 5
    invoke-static {v0}, LC0/f;->b(LC0/f;)Ljava/util/HashMap;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-static {v0}, LC0/f;->c(LC0/f;)Ljava/util/HashMap;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    invoke-static {v0}, LC0/f;->d(LC0/f;)LC0/a;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    invoke-static {v0}, LC0/f;->e(LC0/f;)Z

    .line 18
    .line 19
    .line 20
    move-result v5

    .line 21
    move-object v0, v6

    .line 22
    move-object v1, p2

    .line 23
    invoke-direct/range {v0 .. v5}, LC0/g;-><init>(Ljava/io/BufferedWriter;Ljava/util/HashMap;Ljava/util/HashMap;LC0/a;Z)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v6, p1}, LC0/g;->e(Ljava/lang/Object;)LC0/g;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v6}, LC0/g;->g()V

    .line 30
    .line 31
    .line 32
    return-void
.end method
