.class public final synthetic Landroidx/core/content/res/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:Landroidx/core/content/res/r;

.field public final synthetic e:I


# direct methods
.method public synthetic constructor <init>(Landroidx/core/content/res/r;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/content/res/q;->d:Landroidx/core/content/res/r;

    iput p2, p0, Landroidx/core/content/res/q;->e:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/core/content/res/q;->d:Landroidx/core/content/res/r;

    iget v1, p0, Landroidx/core/content/res/q;->e:I

    invoke-static {v0, v1}, Landroidx/core/content/res/r;->a(Landroidx/core/content/res/r;I)V

    return-void
.end method
