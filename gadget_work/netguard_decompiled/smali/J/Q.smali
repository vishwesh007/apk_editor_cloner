.class public final LJ/Q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LJ/H;


# instance fields
.field public final synthetic a:I

.field private final b:Landroid/content/res/Resources;


# direct methods
.method public synthetic constructor <init>(Landroid/content/res/Resources;I)V
    .locals 0

    .line 1
    iput p2, p0, LJ/Q;->a:I

    .line 2
    .line 3
    iput-object p1, p0, LJ/Q;->b:Landroid/content/res/Resources;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final c(LJ/P;)LJ/G;
    .locals 4

    .line 1
    iget v0, p0, LJ/Q;->a:I

    .line 2
    .line 3
    iget-object v1, p0, LJ/Q;->b:Landroid/content/res/Resources;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :pswitch_0
    new-instance v0, LJ/S;

    .line 10
    .line 11
    const-class v2, Landroid/net/Uri;

    .line 12
    .line 13
    const-class v3, Landroid/content/res/AssetFileDescriptor;

    .line 14
    .line 15
    invoke-virtual {p1, v2, v3}, LJ/P;->b(Ljava/lang/Class;Ljava/lang/Class;)LJ/G;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-direct {v0, v1, p1}, LJ/S;-><init>(Landroid/content/res/Resources;LJ/G;)V

    .line 20
    .line 21
    .line 22
    return-object v0

    .line 23
    :goto_0
    new-instance p1, LJ/S;

    .line 24
    .line 25
    invoke-static {}, LJ/V;->c()LJ/V;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-direct {p1, v1, v0}, LJ/S;-><init>(Landroid/content/res/Resources;LJ/G;)V

    .line 30
    .line 31
    .line 32
    return-object p1

    .line 33
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
