.class public final LJ/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LJ/H;
.implements LJ/W;


# instance fields
.field public final synthetic a:I

.field private final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, LJ/o;->a:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, LJ/n;

    invoke-direct {v0}, LJ/n;-><init>()V

    iput-object v0, p0, LJ/o;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, LJ/o;->a:I

    iput-object p2, p0, LJ/o;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Landroid/net/Uri;)Lcom/bumptech/glide/load/data/e;
    .locals 2

    .line 1
    new-instance v0, Lcom/bumptech/glide/load/data/u;

    .line 2
    .line 3
    iget-object v1, p0, LJ/o;->b:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Landroid/content/ContentResolver;

    .line 6
    .line 7
    invoke-direct {v0, v1, p1}, Lcom/bumptech/glide/load/data/u;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public final c(LJ/P;)LJ/G;
    .locals 4

    .line 1
    iget v0, p0, LJ/o;->a:I

    .line 2
    .line 3
    iget-object v1, p0, LJ/o;->b:Ljava/lang/Object;

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
    check-cast v1, Landroid/content/res/Resources;

    .line 12
    .line 13
    const-class v2, Landroid/net/Uri;

    .line 14
    .line 15
    const-class v3, Landroid/os/ParcelFileDescriptor;

    .line 16
    .line 17
    invoke-virtual {p1, v2, v3}, LJ/P;->b(Ljava/lang/Class;Ljava/lang/Class;)LJ/G;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-direct {v0, v1, p1}, LJ/S;-><init>(Landroid/content/res/Resources;LJ/G;)V

    .line 22
    .line 23
    .line 24
    return-object v0

    .line 25
    :pswitch_1
    new-instance p1, LJ/p;

    .line 26
    .line 27
    check-cast v1, LJ/l;

    .line 28
    .line 29
    invoke-direct {p1, v1}, LJ/p;-><init>(LJ/l;)V

    .line 30
    .line 31
    .line 32
    return-object p1

    .line 33
    :goto_0
    new-instance p1, LJ/X;

    .line 34
    .line 35
    invoke-direct {p1, p0}, LJ/X;-><init>(LJ/W;)V

    .line 36
    .line 37
    .line 38
    return-object p1

    .line 39
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
