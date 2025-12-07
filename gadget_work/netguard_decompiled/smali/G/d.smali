.class final LG/d;
.super LG/f;
.source "SourceFile"


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, LG/d;->b:I

    .line 2
    .line 3
    invoke-direct {p0}, LG/f;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method protected final a()LG/p;
    .locals 1

    .line 1
    iget v0, p0, LG/d;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :pswitch_0
    new-instance v0, LG/c;

    .line 8
    .line 9
    invoke-direct {v0, p0}, LG/c;-><init>(LG/d;)V

    .line 10
    .line 11
    .line 12
    return-object v0

    .line 13
    :goto_0
    new-instance v0, LG/k;

    .line 14
    .line 15
    invoke-direct {v0, p0}, LG/k;-><init>(LG/d;)V

    .line 16
    .line 17
    .line 18
    return-object v0

    .line 19
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
