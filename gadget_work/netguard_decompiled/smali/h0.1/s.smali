.class public final synthetic Lh0/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh0/w;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lh0/y;


# direct methods
.method public synthetic constructor <init>(Lh0/y;I)V
    .locals 0

    .line 1
    iput p2, p0, Lh0/s;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lh0/s;->b:Lh0/y;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    iget v0, p0, Lh0/s;->a:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object v2, p0, Lh0/s;->b:Lh0/y;

    .line 5
    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :pswitch_0
    check-cast p1, Landroid/database/sqlite/SQLiteDatabase;

    .line 11
    .line 12
    invoke-static {v2, p1}, Lh0/y;->n(Lh0/y;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 13
    .line 14
    .line 15
    return-object v1

    .line 16
    :goto_0
    check-cast p1, Landroid/database/Cursor;

    .line 17
    .line 18
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    const/4 v0, 0x0

    .line 28
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    const/4 v3, 0x1

    .line 33
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    int-to-long v4, v0

    .line 38
    sget-object v0, Le0/f;->f:Le0/f;

    .line 39
    .line 40
    invoke-virtual {v2, v4, v5, v0, v3}, Lh0/y;->a(JLe0/f;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_0
    return-object v1

    .line 45
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
