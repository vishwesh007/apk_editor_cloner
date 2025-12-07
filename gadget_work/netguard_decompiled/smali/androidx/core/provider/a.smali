.class final Landroidx/core/provider/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic d:Landroidx/core/graphics/h;

.field final synthetic e:Landroid/graphics/Typeface;


# direct methods
.method constructor <init>(Landroidx/core/graphics/h;Landroid/graphics/Typeface;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/core/provider/a;->d:Landroidx/core/graphics/h;

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/core/provider/a;->e:Landroid/graphics/Typeface;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/core/provider/a;->d:Landroidx/core/graphics/h;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/core/provider/a;->e:Landroid/graphics/Typeface;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroidx/core/graphics/h;->i(Landroid/graphics/Typeface;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
