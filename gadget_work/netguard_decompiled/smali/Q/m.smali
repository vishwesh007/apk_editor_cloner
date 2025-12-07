.class public final LQ/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LE/j;


# instance fields
.field private final a:LG/g;


# direct methods
.method public constructor <init>(LG/g;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LQ/m;->a:LG/g;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;IILE/i;)Lcom/bumptech/glide/load/engine/V;
    .locals 0

    .line 1
    check-cast p1, LD/a;

    .line 2
    .line 3
    invoke-interface {p1}, LD/a;->c()Landroid/graphics/Bitmap;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object p2, p0, LQ/m;->a:LG/g;

    .line 8
    .line 9
    invoke-static {p1, p2}, LM/d;->e(Landroid/graphics/Bitmap;LG/g;)LM/d;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public final bridge synthetic b(Ljava/lang/Object;LE/i;)Z
    .locals 0

    .line 1
    check-cast p1, LD/a;

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    return p1
.end method
