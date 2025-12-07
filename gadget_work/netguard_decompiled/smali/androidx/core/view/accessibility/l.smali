.class public final Landroidx/core/view/accessibility/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LJ/H;


# instance fields
.field public final synthetic a:I

.field private b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    iput p1, p0, Landroidx/core/view/accessibility/l;->a:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Landroidx/core/view/accessibility/l;->b:Ljava/lang/Object;

    return-void

    .line 4
    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance p1, LJ/E;

    invoke-direct {p1}, LJ/E;-><init>()V

    iput-object p1, p0, Landroidx/core/view/accessibility/l;->b:Ljava/lang/Object;

    return-void

    .line 6
    :cond_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/core/view/accessibility/l;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/core/view/accessibility/l;->a:I

    iput-object p2, p0, Landroidx/core/view/accessibility/l;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(LP0/c;LO0/l;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/core/view/accessibility/l;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/List;

    .line 4
    .line 5
    new-instance v1, Lq/f;

    .line 6
    .line 7
    invoke-interface {p1}, LP0/b;->a()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const-string v2, "null cannot be cast to non-null type java.lang.Class<T of kotlin.jvm.JvmClassMappingKt.<get-java>>"

    .line 12
    .line 13
    invoke-static {p1, v2}, LP0/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {v1, p1, p2}, Lq/f;-><init>(Ljava/lang/Class;LO0/l;)V

    .line 17
    .line 18
    .line 19
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final b()Lq/d;
    .locals 3

    .line 1
    new-instance v0, Lq/d;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/core/view/accessibility/l;->b:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Ljava/util/List;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    new-array v2, v2, [Lq/f;

    .line 9
    .line 10
    invoke-interface {v1, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    check-cast v1, [Lq/f;

    .line 17
    .line 18
    array-length v2, v1

    .line 19
    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, [Lq/f;

    .line 24
    .line 25
    invoke-direct {v0, v1}, Lq/d;-><init>([Lq/f;)V

    .line 26
    .line 27
    .line 28
    return-object v0

    .line 29
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    .line 30
    .line 31
    const-string v1, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>"

    .line 32
    .line 33
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    throw v0
.end method

.method public final c(LJ/P;)LJ/G;
    .locals 1

    .line 1
    iget p1, p0, Landroidx/core/view/accessibility/l;->a:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :pswitch_0
    new-instance p1, LK/a;

    .line 8
    .line 9
    iget-object v0, p0, Landroidx/core/view/accessibility/l;->b:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v0, LJ/E;

    .line 12
    .line 13
    invoke-direct {p1, v0}, LK/a;-><init>(LJ/E;)V

    .line 14
    .line 15
    .line 16
    return-object p1

    .line 17
    :goto_0
    new-instance p1, LK/c;

    .line 18
    .line 19
    iget-object v0, p0, Landroidx/core/view/accessibility/l;->b:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v0, Landroid/content/Context;

    .line 22
    .line 23
    invoke-direct {p1, v0}, LK/c;-><init>(Landroid/content/Context;)V

    .line 24
    .line 25
    .line 26
    return-object p1

    .line 27
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public final d()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/view/accessibility/l;->b:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method
