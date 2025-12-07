.class public final synthetic Lh0/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh0/w;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lh0/y;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lh0/y;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p4, p0, Lh0/o;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lh0/o;->b:Lh0/y;

    .line 4
    .line 5
    iput-object p2, p0, Lh0/o;->d:Ljava/lang/Object;

    .line 6
    .line 7
    iput-object p3, p0, Lh0/o;->c:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget v0, p0, Lh0/o;->a:I

    iget-object v1, p0, Lh0/o;->b:Lh0/y;

    iget-object v2, p0, Lh0/o;->c:Ljava/lang/Object;

    iget-object v3, p0, Lh0/o;->d:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast v3, Ljava/util/List;

    check-cast v2, Lb0/z;

    check-cast p1, Landroid/database/Cursor;

    invoke-static {v1, v3, v2, p1}, Lh0/y;->k(Lh0/y;Ljava/util/List;Lb0/z;Landroid/database/Cursor;)V

    const/4 p1, 0x0

    return-object p1

    :pswitch_1
    check-cast v3, Lb0/s;

    check-cast v2, Lb0/z;

    check-cast p1, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v1, v3, v2, p1}, Lh0/y;->q(Lh0/y;Lb0/s;Lb0/z;Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :goto_0
    check-cast v3, Ljava/util/Map;

    check-cast v2, Le0/a;

    check-cast p1, Landroid/database/Cursor;

    invoke-static {v1, v3, v2, p1}, Lh0/y;->r(Lh0/y;Ljava/util/Map;Le0/a;Landroid/database/Cursor;)Le0/b;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
