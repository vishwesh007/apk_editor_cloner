.class final Lm0/j;
.super Lv0/h;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field final synthetic b:Lm0/d;


# direct methods
.method public constructor <init>(Lm0/d;Landroid/content/Context;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lm0/j;->b:Lm0/d;

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    :goto_0
    const/4 v0, 0x0

    .line 19
    invoke-direct {p0, p1, v0}, Lv0/h;-><init>(Landroid/os/Looper;I)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    iput-object p1, p0, Lm0/j;->a:Landroid/content/Context;

    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 6

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p1, v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    const-string v1, "Don\'t know how to handle this message: "

    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    const-string v0, "GoogleApiAvailability"

    .line 21
    .line 22
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    iget-object p1, p0, Lm0/j;->b:Lm0/d;

    .line 27
    .line 28
    iget-object v1, p0, Lm0/j;->a:Landroid/content/Context;

    .line 29
    .line 30
    invoke-virtual {p1, v1}, Lm0/d;->e(Landroid/content/Context;)I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    sget-object v3, Lm0/g;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 35
    .line 36
    const/4 v3, 0x0

    .line 37
    if-eq v2, v0, :cond_1

    .line 38
    .line 39
    const/4 v4, 0x2

    .line 40
    if-eq v2, v4, :cond_1

    .line 41
    .line 42
    const/4 v4, 0x3

    .line 43
    if-eq v2, v4, :cond_1

    .line 44
    .line 45
    const/16 v4, 0x9

    .line 46
    .line 47
    if-eq v2, v4, :cond_1

    .line 48
    .line 49
    const/4 v0, 0x0

    .line 50
    :cond_1
    if-eqz v0, :cond_3

    .line 51
    .line 52
    const-string v0, "n"

    .line 53
    .line 54
    invoke-virtual {p1, v2, v1, v0}, Lm0/d;->a(ILandroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    if-nez v0, :cond_2

    .line 59
    .line 60
    const/4 v0, 0x0

    .line 61
    goto :goto_0

    .line 62
    :cond_2
    sget v4, Lw0/d;->a:I

    .line 63
    .line 64
    const/high16 v5, 0x8000000

    .line 65
    .line 66
    or-int/2addr v4, v5

    .line 67
    invoke-static {v1, v3, v0, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    :goto_0
    invoke-virtual {p1, v1, v2, v0}, Lm0/d;->i(Landroid/content/Context;ILandroid/app/PendingIntent;)V

    .line 72
    .line 73
    .line 74
    :cond_3
    return-void
.end method
