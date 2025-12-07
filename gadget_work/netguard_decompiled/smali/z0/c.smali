.class public final Lz0/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lz0/j;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lz0/j;

    invoke-direct {v0}, Lz0/j;-><init>()V

    iput-object v0, p0, Lz0/c;->a:Lz0/j;

    return-void
.end method


# virtual methods
.method public final a()Landroidx/core/view/accessibility/n;
    .locals 1

    .line 1
    iget-object v0, p0, Lz0/c;->a:Lz0/j;

    return-object v0
.end method

.method public final b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lz0/c;->a:Lz0/j;

    .line 2
    .line 3
    invoke-virtual {v0}, Lz0/j;->t()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final c(Ljava/lang/Exception;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lz0/c;->a:Lz0/j;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lz0/j;->u(Ljava/lang/Exception;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final d(Ljava/lang/Boolean;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lz0/c;->a:Lz0/j;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lz0/j;->v(Ljava/lang/Boolean;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method
