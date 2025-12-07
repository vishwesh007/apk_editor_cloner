.class public final LM/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LE/j;


# instance fields
.field private final a:LM/v;


# direct methods
.method public constructor <init>(LM/v;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LM/f;->a:LM/v;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;IILE/i;)Lcom/bumptech/glide/load/engine/V;
    .locals 1

    .line 1
    check-cast p1, Ljava/nio/ByteBuffer;

    .line 2
    .line 3
    iget-object v0, p0, LM/f;->a:LM/v;

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2, p3, p4}, LM/v;->d(Ljava/nio/ByteBuffer;IILE/i;)LM/d;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public final b(Ljava/lang/Object;LE/i;)Z
    .locals 0

    .line 1
    check-cast p1, Ljava/nio/ByteBuffer;

    .line 2
    .line 3
    iget-object p1, p0, LM/f;->a:LM/v;

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const/4 p1, 0x1

    .line 9
    return p1
.end method
