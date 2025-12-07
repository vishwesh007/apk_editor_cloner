.class final Landroidx/appcompat/graphics/drawable/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic d:Landroidx/appcompat/graphics/drawable/k;


# direct methods
.method constructor <init>(Landroidx/appcompat/graphics/drawable/n;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/appcompat/graphics/drawable/h;->d:Landroidx/appcompat/graphics/drawable/k;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iget-object v1, p0, Landroidx/appcompat/graphics/drawable/h;->d:Landroidx/appcompat/graphics/drawable/k;

    .line 3
    .line 4
    invoke-virtual {v1, v0}, Landroidx/appcompat/graphics/drawable/k;->a(Z)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 8
    .line 9
    .line 10
    return-void
.end method
