.class public final LK/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LJ/G;


# static fields
.field public static final b:LE/h;


# instance fields
.field private final a:LJ/E;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const/16 v0, 0x9c4

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "com.bumptech.glide.load.model.stream.HttpGlideUrlLoader.Timeout"

    .line 8
    .line 9
    invoke-static {v0, v1}, LE/h;->c(Ljava/lang/Object;Ljava/lang/String;)LE/h;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    sput-object v0, LK/a;->b:LE/h;

    .line 14
    .line 15
    return-void
.end method

.method public constructor <init>(LJ/E;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LK/a;->a:LJ/E;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;IILE/i;)LJ/F;
    .locals 0

    .line 1
    check-cast p1, LJ/u;

    .line 2
    .line 3
    iget-object p2, p0, LK/a;->a:LJ/E;

    .line 4
    .line 5
    if-eqz p2, :cond_1

    .line 6
    .line 7
    invoke-virtual {p2, p1}, LJ/E;->f(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p3

    .line 11
    check-cast p3, LJ/u;

    .line 12
    .line 13
    if-nez p3, :cond_0

    .line 14
    .line 15
    invoke-virtual {p2, p1, p1}, LJ/E;->g(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move-object p1, p3

    .line 20
    :cond_1
    :goto_0
    sget-object p2, LK/a;->b:LE/h;

    .line 21
    .line 22
    invoke-virtual {p4, p2}, LE/i;->c(LE/h;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    check-cast p2, Ljava/lang/Integer;

    .line 27
    .line 28
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 29
    .line 30
    .line 31
    move-result p2

    .line 32
    new-instance p3, LJ/F;

    .line 33
    .line 34
    new-instance p4, Lcom/bumptech/glide/load/data/o;

    .line 35
    .line 36
    invoke-direct {p4, p1, p2}, Lcom/bumptech/glide/load/data/o;-><init>(LJ/u;I)V

    .line 37
    .line 38
    .line 39
    invoke-direct {p3, p1, p4}, LJ/F;-><init>(LE/e;Lcom/bumptech/glide/load/data/e;)V

    .line 40
    .line 41
    .line 42
    return-object p3
.end method

.method public final bridge synthetic b(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, LJ/u;

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    return p1
.end method
