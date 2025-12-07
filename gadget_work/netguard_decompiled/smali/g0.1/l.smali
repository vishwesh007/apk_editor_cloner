.class public final synthetic Lg0/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li0/b;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lg0/q;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lg0/q;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p3, p0, Lg0/l;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lg0/l;->b:Lg0/q;

    .line 4
    .line 5
    iput-object p2, p0, Lg0/l;->c:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 3

    .line 1
    iget v0, p0, Lg0/l;->a:I

    iget-object v1, p0, Lg0/l;->b:Lg0/q;

    iget-object v2, p0, Lg0/l;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast v2, Lb0/z;

    invoke-static {v1, v2}, Lg0/q;->b(Lg0/q;Lb0/z;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :goto_0
    check-cast v2, Ljava/lang/Iterable;

    invoke-static {v1, v2}, Lg0/q;->g(Lg0/q;Ljava/lang/Iterable;)V

    const/4 v0, 0x0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
