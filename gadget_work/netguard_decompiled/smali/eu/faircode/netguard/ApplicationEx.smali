.class public Leu/faircode/netguard/ApplicationEx;
.super Landroid/app/Application;
.source "SourceFile"


# instance fields
.field private mPrevHandler:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$000(Leu/faircode/netguard/ApplicationEx;)Ljava/lang/Thread$UncaughtExceptionHandler;
    .locals 0

    .line 1
    iget-object p0, p0, Leu/faircode/netguard/ApplicationEx;->mPrevHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 2
    .line 3
    return-object p0
.end method

.method private createNotificationChannels()V
    .locals 3

    .line 1
    const-string v0, "notification"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/app/NotificationManager;

    .line 8
    .line 9
    invoke-static {}, LB/w;->h()V

    .line 10
    .line 11
    .line 12
    const v1, 0x7f100029

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-static {v1}, LC/a;->b(Ljava/lang/String;)Landroid/app/NotificationChannel;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    sget-object v2, Landroid/app/Notification;->AUDIO_ATTRIBUTES_DEFAULT:Landroid/media/AudioAttributes;

    .line 24
    .line 25
    invoke-static {v1, v2}, LB/w;->i(Landroid/app/NotificationChannel;Landroid/media/AudioAttributes;)V

    .line 26
    .line 27
    .line 28
    invoke-static {v0, v1}, LC/a;->h(Landroid/app/NotificationManager;Landroid/app/NotificationChannel;)V

    .line 29
    .line 30
    .line 31
    invoke-static {}, LB/w;->h()V

    .line 32
    .line 33
    .line 34
    const v1, 0x7f10002a

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-static {v1}, LB/w;->b(Ljava/lang/String;)Landroid/app/NotificationChannel;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    sget-object v2, Landroid/app/Notification;->AUDIO_ATTRIBUTES_DEFAULT:Landroid/media/AudioAttributes;

    .line 46
    .line 47
    invoke-static {v1, v2}, LB/w;->i(Landroid/app/NotificationChannel;Landroid/media/AudioAttributes;)V

    .line 48
    .line 49
    .line 50
    invoke-static {v1}, LB/x;->j(Landroid/app/NotificationChannel;)V

    .line 51
    .line 52
    .line 53
    invoke-static {v0, v1}, LC/a;->h(Landroid/app/NotificationManager;Landroid/app/NotificationChannel;)V

    .line 54
    .line 55
    .line 56
    invoke-static {}, LB/w;->h()V

    .line 57
    .line 58
    .line 59
    const v1, 0x7f100028

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-static {v1}, LB/x;->e(Ljava/lang/String;)Landroid/app/NotificationChannel;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    sget-object v2, Landroid/app/Notification;->AUDIO_ATTRIBUTES_DEFAULT:Landroid/media/AudioAttributes;

    .line 71
    .line 72
    invoke-static {v1, v2}, LB/w;->i(Landroid/app/NotificationChannel;Landroid/media/AudioAttributes;)V

    .line 73
    .line 74
    .line 75
    invoke-static {v1}, LB/x;->j(Landroid/app/NotificationChannel;)V

    .line 76
    .line 77
    .line 78
    invoke-static {v0, v1}, LC/a;->h(Landroid/app/NotificationManager;Landroid/app/NotificationChannel;)V

    .line 79
    .line 80
    .line 81
    invoke-static {}, LB/w;->h()V

    .line 82
    .line 83
    .line 84
    const v1, 0x7f1000bb

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    invoke-static {v1}, LC/a;->l(Ljava/lang/String;)Landroid/app/NotificationChannel;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    sget-object v2, Landroid/app/Notification;->AUDIO_ATTRIBUTES_DEFAULT:Landroid/media/AudioAttributes;

    .line 96
    .line 97
    invoke-static {v1, v2}, LB/w;->i(Landroid/app/NotificationChannel;Landroid/media/AudioAttributes;)V

    .line 98
    .line 99
    .line 100
    invoke-static {v1}, LB/x;->j(Landroid/app/NotificationChannel;)V

    .line 101
    .line 102
    .line 103
    invoke-static {v0, v1}, LC/a;->h(Landroid/app/NotificationManager;Landroid/app/NotificationChannel;)V

    .line 104
    .line 105
    .line 106
    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    # Load Frida Gadget
    const-string v0, "frida-gadget"
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    const-string v1, "Create version="

    .line 7
    .line 8
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {p0}, Leu/faircode/netguard/Util;->getSelfVersionName(Landroid/content/Context;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v1, "/"

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-static {p0}, Leu/faircode/netguard/Util;->getSelfVersionCode(Landroid/content/Context;)I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    const-string v1, "NetGuard.App"

    .line 35
    .line 36
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 40
    .line 41
    const/16 v1, 0x1a

    .line 42
    .line 43
    if-lt v0, v1, :cond_0

    .line 44
    .line 45
    invoke-direct {p0}, Leu/faircode/netguard/ApplicationEx;->createNotificationChannels()V

    .line 46
    .line 47
    .line 48
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    iput-object v0, p0, Leu/faircode/netguard/ApplicationEx;->mPrevHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 53
    .line 54
    new-instance v0, Leu/faircode/netguard/ApplicationEx$1;

    .line 55
    .line 56
    invoke-direct {v0, p0}, Leu/faircode/netguard/ApplicationEx$1;-><init>(Leu/faircode/netguard/ApplicationEx;)V

    .line 57
    .line 58
    .line 59
    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 60
    .line 61
    .line 62
    new-instance v0, Leu/faircode/netguard/ApplicationEx$2;

    .line 63
    .line 64
    invoke-direct {v0, p0}, Leu/faircode/netguard/ApplicationEx$2;-><init>(Leu/faircode/netguard/ApplicationEx;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 68
    .line 69
    .line 70
    return-void
.end method
