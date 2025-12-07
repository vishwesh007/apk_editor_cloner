.class final LM/K;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LM/u;


# instance fields
.field private final a:LM/I;

.field private final b:LX/f;


# direct methods
.method constructor <init>(LM/I;LX/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LM/K;->a:LM/I;

    .line 5
    .line 6
    iput-object p2, p0, LM/K;->b:LX/f;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final b(Landroid/graphics/Bitmap;LG/g;)V
    .locals 1

    .line 1
    iget-object v0, p0, LM/K;->b:LX/f;

    .line 2
    .line 3
    invoke-virtual {v0}, LX/f;->a()Ljava/io/IOException;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    invoke-interface {p2, p1}, LG/g;->c(Landroid/graphics/Bitmap;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    throw v0

    .line 15
    :cond_1
    return-void
.end method

.method public final c()V
    .locals 1

    .line 1
    iget-object v0, p0, LM/K;->a:LM/I;

    .line 2
    .line 3
    invoke-virtual {v0}, LM/I;->b()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
