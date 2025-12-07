.class public Leu/faircode/netguard/ServiceSinkhole;
.super Landroid/net/VpnService;
.source "SourceFile"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# static fields
.field private static jni_context:J

.field private static jni_lock:Ljava/lang/Object;

.field private static volatile wlInstance:Landroid/os/PowerManager$WakeLock;


# instance fields
.field private callStateListener:Landroid/telephony/PhoneStateListener;

.field private volatile commandHandler:Leu/faircode/netguard/ServiceSinkhole$CommandHandler;

.field private volatile commandLooper:Landroid/os/Looper;

.field private connectivityChangedReceiver:Landroid/content/BroadcastReceiver;

.field private executor:Ljava/util/concurrent/ExecutorService;

.field private idleStateReceiver:Landroid/content/BroadcastReceiver;

.field private interactiveStateReceiver:Landroid/content/BroadcastReceiver;

.field private last_allowed:I

.field private last_blocked:I

.field private last_builder:Leu/faircode/netguard/ServiceSinkhole$Builder;

.field private last_connected:Z

.field private last_hosts:I

.field private last_hosts_modified:J

.field private last_interactive:Z

.field private last_malware_modified:J

.field private last_metered:Z

.field private lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private volatile logHandler:Leu/faircode/netguard/ServiceSinkhole$LogHandler;

.field private volatile logLooper:Landroid/os/Looper;

.field private mapForward:Ljava/util/Map;

.field private mapHostsBlocked:Ljava/util/Map;

.field private mapMalware:Ljava/util/Map;

.field private mapNotify:Ljava/util/Map;

.field private mapUidAllowed:Ljava/util/Map;

.field private final mapUidIPFilters:Ljava/util/Map;

.field private mapUidKnown:Ljava/util/Map;

.field private networkCallback:Ljava/lang/Object;

.field networkMonitorCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private packageChangedReceiver:Landroid/content/BroadcastReceiver;

.field private phoneStateListener:Landroid/telephony/PhoneStateListener;

.field private phone_state:Z

.field private registeredConnectivityChanged:Z

.field private registeredIdleState:Z

.field private registeredInteractiveState:Z

.field private registeredPackageChanged:Z

.field private registeredUser:Z

.field private state:Leu/faircode/netguard/ServiceSinkhole$State;

.field private volatile statsHandler:Leu/faircode/netguard/ServiceSinkhole$StatsHandler;

.field private volatile statsLooper:Landroid/os/Looper;

.field private temporarilyStopped:Z

.field private tunnelThread:Ljava/lang/Thread;

.field private userReceiver:Landroid/content/BroadcastReceiver;

.field private user_foreground:Z

.field private vpn:Landroid/os/ParcelFileDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Leu/faircode/netguard/ServiceSinkhole;->jni_lock:Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Landroid/net/VpnService;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Leu/faircode/netguard/ServiceSinkhole;->registeredUser:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Leu/faircode/netguard/ServiceSinkhole;->registeredIdleState:Z

    .line 8
    .line 9
    iput-boolean v0, p0, Leu/faircode/netguard/ServiceSinkhole;->registeredConnectivityChanged:Z

    .line 10
    .line 11
    iput-boolean v0, p0, Leu/faircode/netguard/ServiceSinkhole;->registeredPackageChanged:Z

    .line 12
    .line 13
    iput-boolean v0, p0, Leu/faircode/netguard/ServiceSinkhole;->phone_state:Z

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    iput-object v1, p0, Leu/faircode/netguard/ServiceSinkhole;->networkCallback:Ljava/lang/Object;

    .line 17
    .line 18
    iput-boolean v0, p0, Leu/faircode/netguard/ServiceSinkhole;->registeredInteractiveState:Z

    .line 19
    .line 20
    iput-object v1, p0, Leu/faircode/netguard/ServiceSinkhole;->callStateListener:Landroid/telephony/PhoneStateListener;

    .line 21
    .line 22
    sget-object v2, Leu/faircode/netguard/ServiceSinkhole$State;->none:Leu/faircode/netguard/ServiceSinkhole$State;

    .line 23
    .line 24
    iput-object v2, p0, Leu/faircode/netguard/ServiceSinkhole;->state:Leu/faircode/netguard/ServiceSinkhole$State;

    .line 25
    .line 26
    const/4 v2, 0x1

    .line 27
    iput-boolean v2, p0, Leu/faircode/netguard/ServiceSinkhole;->user_foreground:Z

    .line 28
    .line 29
    iput-boolean v0, p0, Leu/faircode/netguard/ServiceSinkhole;->last_connected:Z

    .line 30
    .line 31
    iput-boolean v2, p0, Leu/faircode/netguard/ServiceSinkhole;->last_metered:Z

    .line 32
    .line 33
    iput-boolean v0, p0, Leu/faircode/netguard/ServiceSinkhole;->last_interactive:Z

    .line 34
    .line 35
    const/4 v3, -0x1

    .line 36
    iput v3, p0, Leu/faircode/netguard/ServiceSinkhole;->last_allowed:I

    .line 37
    .line 38
    iput v3, p0, Leu/faircode/netguard/ServiceSinkhole;->last_blocked:I

    .line 39
    .line 40
    iput v3, p0, Leu/faircode/netguard/ServiceSinkhole;->last_hosts:I

    .line 41
    .line 42
    iput-object v1, p0, Leu/faircode/netguard/ServiceSinkhole;->tunnelThread:Ljava/lang/Thread;

    .line 43
    .line 44
    iput-object v1, p0, Leu/faircode/netguard/ServiceSinkhole;->last_builder:Leu/faircode/netguard/ServiceSinkhole$Builder;

    .line 45
    .line 46
    iput-object v1, p0, Leu/faircode/netguard/ServiceSinkhole;->vpn:Landroid/os/ParcelFileDescriptor;

    .line 47
    .line 48
    iput-boolean v0, p0, Leu/faircode/netguard/ServiceSinkhole;->temporarilyStopped:Z

    .line 49
    .line 50
    const-wide/16 v0, 0x0

    .line 51
    .line 52
    iput-wide v0, p0, Leu/faircode/netguard/ServiceSinkhole;->last_hosts_modified:J

    .line 53
    .line 54
    iput-wide v0, p0, Leu/faircode/netguard/ServiceSinkhole;->last_malware_modified:J

    .line 55
    .line 56
    new-instance v0, Ljava/util/HashMap;

    .line 57
    .line 58
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 59
    .line 60
    .line 61
    iput-object v0, p0, Leu/faircode/netguard/ServiceSinkhole;->mapHostsBlocked:Ljava/util/Map;

    .line 62
    .line 63
    new-instance v0, Ljava/util/HashMap;

    .line 64
    .line 65
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 66
    .line 67
    .line 68
    iput-object v0, p0, Leu/faircode/netguard/ServiceSinkhole;->mapMalware:Ljava/util/Map;

    .line 69
    .line 70
    new-instance v0, Ljava/util/HashMap;

    .line 71
    .line 72
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 73
    .line 74
    .line 75
    iput-object v0, p0, Leu/faircode/netguard/ServiceSinkhole;->mapUidAllowed:Ljava/util/Map;

    .line 76
    .line 77
    new-instance v0, Ljava/util/HashMap;

    .line 78
    .line 79
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 80
    .line 81
    .line 82
    iput-object v0, p0, Leu/faircode/netguard/ServiceSinkhole;->mapUidKnown:Ljava/util/Map;

    .line 83
    .line 84
    new-instance v0, Ljava/util/HashMap;

    .line 85
    .line 86
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 87
    .line 88
    .line 89
    iput-object v0, p0, Leu/faircode/netguard/ServiceSinkhole;->mapUidIPFilters:Ljava/util/Map;

    .line 90
    .line 91
    new-instance v0, Ljava/util/HashMap;

    .line 92
    .line 93
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 94
    .line 95
    .line 96
    iput-object v0, p0, Leu/faircode/netguard/ServiceSinkhole;->mapForward:Ljava/util/Map;

    .line 97
    .line 98
    new-instance v0, Ljava/util/HashMap;

    .line 99
    .line 100
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 101
    .line 102
    .line 103
    iput-object v0, p0, Leu/faircode/netguard/ServiceSinkhole;->mapNotify:Ljava/util/Map;

    .line 104
    .line 105
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 106
    .line 107
    invoke-direct {v0, v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>(Z)V

    .line 108
    .line 109
    .line 110
    iput-object v0, p0, Leu/faircode/netguard/ServiceSinkhole;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 111
    .line 112
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    iput-object v0, p0, Leu/faircode/netguard/ServiceSinkhole;->executor:Ljava/util/concurrent/ExecutorService;

    .line 117
    .line 118
    new-instance v0, Leu/faircode/netguard/ServiceSinkhole$2;

    .line 119
    .line 120
    invoke-direct {v0, p0}, Leu/faircode/netguard/ServiceSinkhole$2;-><init>(Leu/faircode/netguard/ServiceSinkhole;)V

    .line 121
    .line 122
    .line 123
    iput-object v0, p0, Leu/faircode/netguard/ServiceSinkhole;->interactiveStateReceiver:Landroid/content/BroadcastReceiver;

    .line 124
    .line 125
    new-instance v0, Leu/faircode/netguard/ServiceSinkhole$3;

    .line 126
    .line 127
    invoke-direct {v0, p0}, Leu/faircode/netguard/ServiceSinkhole$3;-><init>(Leu/faircode/netguard/ServiceSinkhole;)V

    .line 128
    .line 129
    .line 130
    iput-object v0, p0, Leu/faircode/netguard/ServiceSinkhole;->userReceiver:Landroid/content/BroadcastReceiver;

    .line 131
    .line 132
    new-instance v0, Leu/faircode/netguard/ServiceSinkhole$4;

    .line 133
    .line 134
    invoke-direct {v0, p0}, Leu/faircode/netguard/ServiceSinkhole$4;-><init>(Leu/faircode/netguard/ServiceSinkhole;)V

    .line 135
    .line 136
    .line 137
    iput-object v0, p0, Leu/faircode/netguard/ServiceSinkhole;->idleStateReceiver:Landroid/content/BroadcastReceiver;

    .line 138
    .line 139
    new-instance v0, Leu/faircode/netguard/ServiceSinkhole$5;

    .line 140
    .line 141
    invoke-direct {v0, p0}, Leu/faircode/netguard/ServiceSinkhole$5;-><init>(Leu/faircode/netguard/ServiceSinkhole;)V

    .line 142
    .line 143
    .line 144
    iput-object v0, p0, Leu/faircode/netguard/ServiceSinkhole;->connectivityChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 145
    .line 146
    new-instance v0, Leu/faircode/netguard/ServiceSinkhole$6;

    .line 147
    .line 148
    invoke-direct {v0, p0}, Leu/faircode/netguard/ServiceSinkhole$6;-><init>(Leu/faircode/netguard/ServiceSinkhole;)V

    .line 149
    .line 150
    .line 151
    iput-object v0, p0, Leu/faircode/netguard/ServiceSinkhole;->networkMonitorCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 152
    .line 153
    new-instance v0, Leu/faircode/netguard/ServiceSinkhole$7;

    .line 154
    .line 155
    invoke-direct {v0, p0}, Leu/faircode/netguard/ServiceSinkhole$7;-><init>(Leu/faircode/netguard/ServiceSinkhole;)V

    .line 156
    .line 157
    .line 158
    iput-object v0, p0, Leu/faircode/netguard/ServiceSinkhole;->phoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 159
    .line 160
    new-instance v0, Leu/faircode/netguard/ServiceSinkhole$8;

    .line 161
    .line 162
    invoke-direct {v0, p0}, Leu/faircode/netguard/ServiceSinkhole$8;-><init>(Leu/faircode/netguard/ServiceSinkhole;)V

    .line 163
    .line 164
    .line 165
    iput-object v0, p0, Leu/faircode/netguard/ServiceSinkhole;->packageChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 166
    .line 167
    return-void
.end method

.method static synthetic access$000(Leu/faircode/netguard/ServiceSinkhole;)Leu/faircode/netguard/ServiceSinkhole$CommandHandler;
    .locals 0

    .line 1
    iget-object p0, p0, Leu/faircode/netguard/ServiceSinkhole;->commandHandler:Leu/faircode/netguard/ServiceSinkhole$CommandHandler;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$100(Landroid/content/Context;)Landroid/os/PowerManager$WakeLock;
    .locals 0

    .line 1
    invoke-static {p0}, Leu/faircode/netguard/ServiceSinkhole;->getLock(Landroid/content/Context;)Landroid/os/PowerManager$WakeLock;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic access$1000(Leu/faircode/netguard/ServiceSinkhole;)Leu/faircode/netguard/ServiceSinkhole$StatsHandler;
    .locals 0

    .line 1
    iget-object p0, p0, Leu/faircode/netguard/ServiceSinkhole;->statsHandler:Leu/faircode/netguard/ServiceSinkhole$StatsHandler;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$1100(Leu/faircode/netguard/ServiceSinkhole;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Leu/faircode/netguard/ServiceSinkhole;->showLockdownNotification()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1200(Leu/faircode/netguard/ServiceSinkhole;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Leu/faircode/netguard/ServiceSinkhole;->removeLockdownNotification()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1300(Leu/faircode/netguard/ServiceSinkhole;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Leu/faircode/netguard/ServiceSinkhole;->last_connected:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$1400(Leu/faircode/netguard/ServiceSinkhole;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Leu/faircode/netguard/ServiceSinkhole;->last_metered:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$1500(Leu/faircode/netguard/ServiceSinkhole;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Leu/faircode/netguard/ServiceSinkhole;->showErrorNotification(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1600(Leu/faircode/netguard/ServiceSinkhole;)Leu/faircode/netguard/ServiceSinkhole$State;
    .locals 0

    .line 1
    iget-object p0, p0, Leu/faircode/netguard/ServiceSinkhole;->state:Leu/faircode/netguard/ServiceSinkhole$State;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$1602(Leu/faircode/netguard/ServiceSinkhole;Leu/faircode/netguard/ServiceSinkhole$State;)Leu/faircode/netguard/ServiceSinkhole$State;
    .locals 0

    .line 1
    iput-object p1, p0, Leu/faircode/netguard/ServiceSinkhole;->state:Leu/faircode/netguard/ServiceSinkhole$State;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$1700(Leu/faircode/netguard/ServiceSinkhole;III)Landroid/app/Notification;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Leu/faircode/netguard/ServiceSinkhole;->getEnforcingNotification(III)Landroid/app/Notification;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic access$1800(Leu/faircode/netguard/ServiceSinkhole;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Leu/faircode/netguard/ServiceSinkhole;->getAllowedRules(Ljava/util/List;)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic access$1900(Leu/faircode/netguard/ServiceSinkhole;)Leu/faircode/netguard/ServiceSinkhole$Builder;
    .locals 0

    .line 1
    iget-object p0, p0, Leu/faircode/netguard/ServiceSinkhole;->last_builder:Leu/faircode/netguard/ServiceSinkhole$Builder;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$1902(Leu/faircode/netguard/ServiceSinkhole;Leu/faircode/netguard/ServiceSinkhole$Builder;)Leu/faircode/netguard/ServiceSinkhole$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Leu/faircode/netguard/ServiceSinkhole;->last_builder:Leu/faircode/netguard/ServiceSinkhole$Builder;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$200()Landroid/os/PowerManager$WakeLock;
    .locals 1

    .line 1
    sget-object v0, Leu/faircode/netguard/ServiceSinkhole;->wlInstance:Landroid/os/PowerManager$WakeLock;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$2000(Leu/faircode/netguard/ServiceSinkhole;Ljava/util/List;Ljava/util/List;)Leu/faircode/netguard/ServiceSinkhole$Builder;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Leu/faircode/netguard/ServiceSinkhole;->getBuilder(Ljava/util/List;Ljava/util/List;)Leu/faircode/netguard/ServiceSinkhole$Builder;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic access$2100(Leu/faircode/netguard/ServiceSinkhole;Leu/faircode/netguard/ServiceSinkhole$Builder;)Landroid/os/ParcelFileDescriptor;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Leu/faircode/netguard/ServiceSinkhole;->startVPN(Leu/faircode/netguard/ServiceSinkhole$Builder;)Landroid/os/ParcelFileDescriptor;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic access$2200(Leu/faircode/netguard/ServiceSinkhole;Landroid/os/ParcelFileDescriptor;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Leu/faircode/netguard/ServiceSinkhole;->startNative(Landroid/os/ParcelFileDescriptor;Ljava/util/List;Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$2300(Leu/faircode/netguard/ServiceSinkhole;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Leu/faircode/netguard/ServiceSinkhole;->removeWarningNotifications()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$2400(Leu/faircode/netguard/ServiceSinkhole;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Leu/faircode/netguard/ServiceSinkhole;->updateEnforcingNotification(II)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$2500(Leu/faircode/netguard/ServiceSinkhole;Landroid/os/ParcelFileDescriptor;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Leu/faircode/netguard/ServiceSinkhole;->stopNative(Landroid/os/ParcelFileDescriptor;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$2600(Leu/faircode/netguard/ServiceSinkhole;Landroid/os/ParcelFileDescriptor;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Leu/faircode/netguard/ServiceSinkhole;->stopVPN(Landroid/os/ParcelFileDescriptor;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$2700(Leu/faircode/netguard/ServiceSinkhole;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Leu/faircode/netguard/ServiceSinkhole;->unprepare()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$2802(Leu/faircode/netguard/ServiceSinkhole;I)I
    .locals 0

    .line 1
    iput p1, p0, Leu/faircode/netguard/ServiceSinkhole;->last_allowed:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$2902(Leu/faircode/netguard/ServiceSinkhole;I)I
    .locals 0

    .line 1
    iput p1, p0, Leu/faircode/netguard/ServiceSinkhole;->last_blocked:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$300(Leu/faircode/netguard/ServiceSinkhole;)Landroid/os/ParcelFileDescriptor;
    .locals 0

    .line 1
    iget-object p0, p0, Leu/faircode/netguard/ServiceSinkhole;->vpn:Landroid/os/ParcelFileDescriptor;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$3002(Leu/faircode/netguard/ServiceSinkhole;I)I
    .locals 0

    .line 1
    iput p1, p0, Leu/faircode/netguard/ServiceSinkhole;->last_hosts:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$302(Leu/faircode/netguard/ServiceSinkhole;Landroid/os/ParcelFileDescriptor;)Landroid/os/ParcelFileDescriptor;
    .locals 0

    .line 1
    iput-object p1, p0, Leu/faircode/netguard/ServiceSinkhole;->vpn:Landroid/os/ParcelFileDescriptor;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$3100(Leu/faircode/netguard/ServiceSinkhole;)Landroid/app/Notification;
    .locals 0

    .line 1
    invoke-direct {p0}, Leu/faircode/netguard/ServiceSinkhole;->getWaitingNotification()Landroid/app/Notification;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic access$3200(Leu/faircode/netguard/ServiceSinkhole;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Leu/faircode/netguard/ServiceSinkhole;->showUpdateNotification(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$3300(Leu/faircode/netguard/ServiceSinkhole;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;
    .locals 0

    .line 1
    iget-object p0, p0, Leu/faircode/netguard/ServiceSinkhole;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$3400(Leu/faircode/netguard/ServiceSinkhole;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Leu/faircode/netguard/ServiceSinkhole;->mapNotify:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$3500(Leu/faircode/netguard/ServiceSinkhole;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Leu/faircode/netguard/ServiceSinkhole;->showAccessNotification(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$3700()J
    .locals 2

    .line 1
    sget-wide v0, Leu/faircode/netguard/ServiceSinkhole;->jni_context:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static synthetic access$3800(Leu/faircode/netguard/ServiceSinkhole;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Leu/faircode/netguard/ServiceSinkhole;->mapForward:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$3900(Leu/faircode/netguard/ServiceSinkhole;JIZI)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Leu/faircode/netguard/ServiceSinkhole;->jni_run(JIZI)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$400(Leu/faircode/netguard/ServiceSinkhole;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Leu/faircode/netguard/ServiceSinkhole;->user_foreground:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$4002(Leu/faircode/netguard/ServiceSinkhole;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0

    .line 1
    iput-object p1, p0, Leu/faircode/netguard/ServiceSinkhole;->tunnelThread:Ljava/lang/Thread;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$402(Leu/faircode/netguard/ServiceSinkhole;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Leu/faircode/netguard/ServiceSinkhole;->user_foreground:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$4100(Leu/faircode/netguard/ServiceSinkhole;)Ljava/util/concurrent/ExecutorService;
    .locals 0

    .line 1
    iget-object p0, p0, Leu/faircode/netguard/ServiceSinkhole;->executor:Ljava/util/concurrent/ExecutorService;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$4200(Leu/faircode/netguard/ServiceSinkhole;Landroid/net/Network;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Leu/faircode/netguard/ServiceSinkhole;->isActiveNetwork(Landroid/net/Network;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic access$500(Leu/faircode/netguard/ServiceSinkhole;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Leu/faircode/netguard/ServiceSinkhole;->temporarilyStopped:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$502(Leu/faircode/netguard/ServiceSinkhole;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Leu/faircode/netguard/ServiceSinkhole;->temporarilyStopped:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$600(Leu/faircode/netguard/ServiceSinkhole;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Leu/faircode/netguard/ServiceSinkhole;->registeredInteractiveState:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$602(Leu/faircode/netguard/ServiceSinkhole;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Leu/faircode/netguard/ServiceSinkhole;->registeredInteractiveState:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$700(Leu/faircode/netguard/ServiceSinkhole;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Leu/faircode/netguard/ServiceSinkhole;->last_interactive:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$702(Leu/faircode/netguard/ServiceSinkhole;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Leu/faircode/netguard/ServiceSinkhole;->last_interactive:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$800(Leu/faircode/netguard/ServiceSinkhole;)Landroid/content/BroadcastReceiver;
    .locals 0

    .line 1
    iget-object p0, p0, Leu/faircode/netguard/ServiceSinkhole;->interactiveStateReceiver:Landroid/content/BroadcastReceiver;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$900(Leu/faircode/netguard/ServiceSinkhole;)Landroid/telephony/PhoneStateListener;
    .locals 0

    .line 1
    iget-object p0, p0, Leu/faircode/netguard/ServiceSinkhole;->callStateListener:Landroid/telephony/PhoneStateListener;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$902(Leu/faircode/netguard/ServiceSinkhole;Landroid/telephony/PhoneStateListener;)Landroid/telephony/PhoneStateListener;
    .locals 0

    .line 1
    iput-object p1, p0, Leu/faircode/netguard/ServiceSinkhole;->callStateListener:Landroid/telephony/PhoneStateListener;

    .line 2
    .line 3
    return-object p1
.end method

.method private accountUsage(Leu/faircode/netguard/Usage;)V
    .locals 1

    .line 1
    iget-object v0, p0, Leu/faircode/netguard/ServiceSinkhole;->logHandler:Leu/faircode/netguard/ServiceSinkhole$LogHandler;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Leu/faircode/netguard/ServiceSinkhole$LogHandler;->account(Leu/faircode/netguard/Usage;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private dnsResolved(Leu/faircode/netguard/ResourceRecord;)V
    .locals 6

    .line 1
    invoke-static {p0}, Leu/faircode/netguard/DatabaseHelper;->getInstance(Landroid/content/Context;)Leu/faircode/netguard/DatabaseHelper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Leu/faircode/netguard/DatabaseHelper;->insertDns(Leu/faircode/netguard/ResourceRecord;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v1, "New IP "

    .line 14
    .line 15
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const-string v1, "NetGuard.Service"

    .line 26
    .line 27
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    iget-object v0, p1, Leu/faircode/netguard/ResourceRecord;->QName:Ljava/lang/String;

    .line 31
    .line 32
    invoke-direct {p0, v0}, Leu/faircode/netguard/ServiceSinkhole;->prepareUidIPFilters(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    :cond_0
    iget v0, p1, Leu/faircode/netguard/ResourceRecord;->uid:I

    .line 36
    .line 37
    if-lez v0, :cond_2

    .line 38
    .line 39
    iget-object v0, p1, Leu/faircode/netguard/ResourceRecord;->AName:Ljava/lang/String;

    .line 40
    .line 41
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-nez v0, :cond_2

    .line 46
    .line 47
    iget-object v0, p0, Leu/faircode/netguard/ServiceSinkhole;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Leu/faircode/netguard/ServiceSinkhole;->mapMalware:Ljava/util/Map;

    .line 57
    .line 58
    iget-object v1, p1, Leu/faircode/netguard/ResourceRecord;->AName:Ljava/lang/String;

    .line 59
    .line 60
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    const/4 v1, 0x0

    .line 65
    const/4 v2, 0x1

    .line 66
    if-eqz v0, :cond_1

    .line 67
    .line 68
    iget-object v0, p0, Leu/faircode/netguard/ServiceSinkhole;->mapMalware:Ljava/util/Map;

    .line 69
    .line 70
    iget-object v3, p1, Leu/faircode/netguard/ResourceRecord;->AName:Ljava/lang/String;

    .line 71
    .line 72
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    check-cast v0, Ljava/lang/Boolean;

    .line 77
    .line 78
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    if-eqz v0, :cond_1

    .line 83
    .line 84
    const/4 v0, 0x1

    .line 85
    goto :goto_0

    .line 86
    :cond_1
    const/4 v0, 0x0

    .line 87
    :goto_0
    iget-object v3, p0, Leu/faircode/netguard/ServiceSinkhole;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 88
    .line 89
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 94
    .line 95
    .line 96
    if-eqz v0, :cond_2

    .line 97
    .line 98
    invoke-static {p0}, Lt0/a;->s(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    new-instance v3, Ljava/lang/StringBuilder;

    .line 103
    .line 104
    const-string v4, "malware."

    .line 105
    .line 106
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    iget v5, p1, Leu/faircode/netguard/ResourceRecord;->uid:I

    .line 110
    .line 111
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v3

    .line 118
    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 119
    .line 120
    .line 121
    move-result v1

    .line 122
    if-nez v1, :cond_2

    .line 123
    .line 124
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    new-instance v1, Ljava/lang/StringBuilder;

    .line 129
    .line 130
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    iget v3, p1, Leu/faircode/netguard/ResourceRecord;->uid:I

    .line 134
    .line 135
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 147
    .line 148
    .line 149
    iget p1, p1, Leu/faircode/netguard/ResourceRecord;->uid:I

    .line 150
    .line 151
    invoke-virtual {p0, p1, v2}, Leu/faircode/netguard/ServiceSinkhole;->notifyNewApplication(IZ)V

    .line 152
    .line 153
    .line 154
    :cond_2
    return-void
.end method

.method private getActiveNetwork()Landroid/net/Network;
    .locals 12

    .line 1
    const-string v0, "connectivity"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    return-object v1

    .line 13
    :cond_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 14
    .line 15
    const/16 v3, 0x17

    .line 16
    .line 17
    const/16 v4, 0xf

    .line 18
    .line 19
    const-string v5, "NetGuard.Service"

    .line 20
    .line 21
    if-lt v2, v3, :cond_3

    .line 22
    .line 23
    invoke-static {v0}, LE0/c;->c(Landroid/net/ConnectivityManager;)Landroid/net/Network;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    if-nez v2, :cond_1

    .line 28
    .line 29
    const-string v0, "getActiveNetwork: no active network"

    .line 30
    .line 31
    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    return-object v1

    .line 35
    :cond_1
    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    if-eqz v3, :cond_2

    .line 40
    .line 41
    invoke-virtual {v3, v4}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    if-eqz v3, :cond_2

    .line 46
    .line 47
    return-object v2

    .line 48
    :cond_2
    const-string v2, "getActiveNetwork: active network is VPN"

    .line 49
    .line 50
    invoke-static {v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    :cond_3
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    if-nez v2, :cond_4

    .line 58
    .line 59
    return-object v1

    .line 60
    :cond_4
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworks()[Landroid/net/Network;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    array-length v6, v3

    .line 65
    const/4 v7, 0x0

    .line 66
    :goto_0
    if-ge v7, v6, :cond_8

    .line 67
    .line 68
    aget-object v8, v3, v7

    .line 69
    .line 70
    invoke-virtual {v0, v8}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    .line 71
    .line 72
    .line 73
    move-result-object v9

    .line 74
    new-instance v10, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    const-string v11, "getActiveNetwork: network="

    .line 77
    .line 78
    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    const-string v11, " caps="

    .line 85
    .line 86
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v10

    .line 96
    invoke-static {v5, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    .line 98
    .line 99
    if-eqz v9, :cond_7

    .line 100
    .line 101
    invoke-virtual {v9, v4}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    .line 102
    .line 103
    .line 104
    move-result v9

    .line 105
    if-nez v9, :cond_5

    .line 106
    .line 107
    goto :goto_1

    .line 108
    :cond_5
    invoke-virtual {v0, v8}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    .line 109
    .line 110
    .line 111
    move-result-object v9

    .line 112
    if-nez v9, :cond_6

    .line 113
    .line 114
    goto :goto_1

    .line 115
    :cond_6
    invoke-virtual {v9}, Landroid/net/NetworkInfo;->getType()I

    .line 116
    .line 117
    .line 118
    move-result v10

    .line 119
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    .line 120
    .line 121
    .line 122
    move-result v11

    .line 123
    if-ne v10, v11, :cond_7

    .line 124
    .line 125
    invoke-virtual {v9}, Landroid/net/NetworkInfo;->getSubtype()I

    .line 126
    .line 127
    .line 128
    move-result v9

    .line 129
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getSubtype()I

    .line 130
    .line 131
    .line 132
    move-result v10

    .line 133
    if-ne v9, v10, :cond_7

    .line 134
    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    .line 136
    .line 137
    const-string v1, "getActiveNetwork: returning network="

    .line 138
    .line 139
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    .line 151
    .line 152
    return-object v8

    .line 153
    :cond_7
    :goto_1
    add-int/lit8 v7, v7, 0x1

    .line 154
    .line 155
    goto :goto_0

    .line 156
    :cond_8
    const-string v0, "getActiveNetwork: no active network found"

    .line 157
    .line 158
    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    .line 160
    .line 161
    return-object v1
.end method

.method private getAllowedRules(Ljava/util/List;)Ljava/util/List;
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v1, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-static/range {p0 .. p0}, Lt0/a;->s(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-static/range {p0 .. p0}, Leu/faircode/netguard/Util;->isWifiActive(Landroid/content/Context;)Z

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    invoke-static/range {p0 .. p0}, Leu/faircode/netguard/Util;->isMeteredNetwork(Landroid/content/Context;)Z

    .line 17
    .line 18
    .line 19
    move-result v4

    .line 20
    const-string v5, "use_metered"

    .line 21
    .line 22
    const/4 v6, 0x0

    .line 23
    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 24
    .line 25
    .line 26
    move-result v5

    .line 27
    new-instance v7, Ljava/util/HashSet;

    .line 28
    .line 29
    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 30
    .line 31
    .line 32
    const-string v8, "wifi_homes"

    .line 33
    .line 34
    invoke-interface {v2, v8, v7}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    .line 35
    .line 36
    .line 37
    move-result-object v7

    .line 38
    invoke-static/range {p0 .. p0}, Leu/faircode/netguard/Util;->getWifiSSID(Landroid/content/Context;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v8

    .line 42
    invoke-static/range {p0 .. p0}, Leu/faircode/netguard/Util;->getNetworkGeneration(Landroid/content/Context;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v9

    .line 46
    const-string v10, "unmetered_2g"

    .line 47
    .line 48
    invoke-interface {v2, v10, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 49
    .line 50
    .line 51
    move-result v10

    .line 52
    const-string v11, "unmetered_3g"

    .line 53
    .line 54
    invoke-interface {v2, v11, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 55
    .line 56
    .line 57
    move-result v11

    .line 58
    const-string v12, "unmetered_4g"

    .line 59
    .line 60
    invoke-interface {v2, v12, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 61
    .line 62
    .line 63
    move-result v12

    .line 64
    invoke-static/range {p0 .. p0}, Leu/faircode/netguard/Util;->isRoaming(Landroid/content/Context;)Z

    .line 65
    .line 66
    .line 67
    move-result v13

    .line 68
    const-string v14, "national_roaming"

    .line 69
    .line 70
    invoke-interface {v2, v14, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 71
    .line 72
    .line 73
    move-result v14

    .line 74
    const-string v15, "eu_roaming"

    .line 75
    .line 76
    invoke-interface {v2, v15, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 77
    .line 78
    .line 79
    move-result v15

    .line 80
    move-object/from16 v16, v1

    .line 81
    .line 82
    const-string v1, "tethering"

    .line 83
    .line 84
    invoke-interface {v2, v1, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    move/from16 v17, v1

    .line 89
    .line 90
    const-string v1, "filter"

    .line 91
    .line 92
    invoke-interface {v2, v1, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 93
    .line 94
    .line 95
    move-result v1

    .line 96
    invoke-static/range {p0 .. p0}, Leu/faircode/netguard/Util;->isConnected(Landroid/content/Context;)Z

    .line 97
    .line 98
    .line 99
    move-result v2

    .line 100
    iput-boolean v2, v0, Leu/faircode/netguard/ServiceSinkhole;->last_connected:Z

    .line 101
    .line 102
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 103
    .line 104
    const/16 v6, 0x1b

    .line 105
    .line 106
    if-lt v2, v6, :cond_0

    .line 107
    .line 108
    invoke-interface {v7}, Ljava/util/Set;->clear()V

    .line 109
    .line 110
    .line 111
    :cond_0
    if-eqz v3, :cond_1

    .line 112
    .line 113
    if-nez v5, :cond_1

    .line 114
    .line 115
    const/4 v2, 0x0

    .line 116
    goto :goto_0

    .line 117
    :cond_1
    move v2, v4

    .line 118
    :goto_0
    const-string v5, ","

    .line 119
    .line 120
    const-string v6, "NetGuard.Service"

    .line 121
    .line 122
    const/16 v18, 0x1

    .line 123
    .line 124
    if-eqz v3, :cond_2

    .line 125
    .line 126
    invoke-interface {v7}, Ljava/util/Set;->size()I

    .line 127
    .line 128
    .line 129
    move-result v19

    .line 130
    if-lez v19, :cond_2

    .line 131
    .line 132
    invoke-interface {v7, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    move-result v19

    .line 136
    if-nez v19, :cond_2

    .line 137
    .line 138
    move/from16 v19, v2

    .line 139
    .line 140
    new-instance v2, Ljava/lang/StringBuilder;

    .line 141
    .line 142
    move/from16 v20, v1

    .line 143
    .line 144
    const-string v1, "\""

    .line 145
    .line 146
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    const/16 v1, 0x22

    .line 153
    .line 154
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v1

    .line 161
    invoke-interface {v7, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 162
    .line 163
    .line 164
    move-result v1

    .line 165
    if-nez v1, :cond_3

    .line 166
    .line 167
    new-instance v1, Ljava/lang/StringBuilder;

    .line 168
    .line 169
    const-string v2, "!@home="

    .line 170
    .line 171
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    const-string v2, " homes="

    .line 178
    .line 179
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    invoke-static {v5, v7}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v2

    .line 186
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v1

    .line 193
    invoke-static {v6, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    .line 195
    .line 196
    const/4 v2, 0x1

    .line 197
    goto :goto_1

    .line 198
    :cond_2
    move/from16 v20, v1

    .line 199
    .line 200
    move/from16 v19, v2

    .line 201
    .line 202
    :cond_3
    move/from16 v2, v19

    .line 203
    .line 204
    :goto_1
    if-eqz v10, :cond_4

    .line 205
    .line 206
    const-string v1, "2G"

    .line 207
    .line 208
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 209
    .line 210
    .line 211
    move-result v1

    .line 212
    if-eqz v1, :cond_4

    .line 213
    .line 214
    const/4 v2, 0x0

    .line 215
    :cond_4
    if-eqz v11, :cond_5

    .line 216
    .line 217
    const-string v1, "3G"

    .line 218
    .line 219
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 220
    .line 221
    .line 222
    move-result v1

    .line 223
    if-eqz v1, :cond_5

    .line 224
    .line 225
    const/4 v2, 0x0

    .line 226
    :cond_5
    if-eqz v12, :cond_6

    .line 227
    .line 228
    const-string v1, "4G"

    .line 229
    .line 230
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 231
    .line 232
    .line 233
    move-result v1

    .line 234
    if-eqz v1, :cond_6

    .line 235
    .line 236
    const/4 v2, 0x0

    .line 237
    :cond_6
    iput-boolean v2, v0, Leu/faircode/netguard/ServiceSinkhole;->last_metered:Z

    .line 238
    .line 239
    invoke-direct {v0, v2}, Leu/faircode/netguard/ServiceSinkhole;->isLockedDown(Z)Z

    .line 240
    .line 241
    .line 242
    move-result v1

    .line 243
    if-eqz v13, :cond_7

    .line 244
    .line 245
    if-eqz v15, :cond_7

    .line 246
    .line 247
    invoke-static/range {p0 .. p0}, Leu/faircode/netguard/Util;->isEU(Landroid/content/Context;)Z

    .line 248
    .line 249
    .line 250
    move-result v10

    .line 251
    xor-int/lit8 v10, v10, 0x1

    .line 252
    .line 253
    goto :goto_2

    .line 254
    :cond_7
    move v10, v13

    .line 255
    :goto_2
    if-eqz v10, :cond_8

    .line 256
    .line 257
    if-eqz v14, :cond_8

    .line 258
    .line 259
    invoke-static/range {p0 .. p0}, Leu/faircode/netguard/Util;->isNational(Landroid/content/Context;)Z

    .line 260
    .line 261
    .line 262
    move-result v10

    .line 263
    xor-int/lit8 v10, v10, 0x1

    .line 264
    .line 265
    :cond_8
    new-instance v11, Ljava/lang/StringBuilder;

    .line 266
    .line 267
    const-string v12, "Get allowed connected="

    .line 268
    .line 269
    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 270
    .line 271
    .line 272
    iget-boolean v12, v0, Leu/faircode/netguard/ServiceSinkhole;->last_connected:Z

    .line 273
    .line 274
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 275
    .line 276
    .line 277
    const-string v12, " wifi="

    .line 278
    .line 279
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    .line 281
    .line 282
    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 283
    .line 284
    .line 285
    const-string v3, " home="

    .line 286
    .line 287
    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    .line 289
    .line 290
    invoke-static {v5, v7}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 291
    .line 292
    .line 293
    move-result-object v3

    .line 294
    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    .line 296
    .line 297
    const-string v3, " network="

    .line 298
    .line 299
    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    .line 301
    .line 302
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    .line 304
    .line 305
    const-string v3, " metered="

    .line 306
    .line 307
    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    .line 309
    .line 310
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 311
    .line 312
    .line 313
    const-string v3, "/"

    .line 314
    .line 315
    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    .line 317
    .line 318
    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 319
    .line 320
    .line 321
    const-string v4, " generation="

    .line 322
    .line 323
    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    .line 325
    .line 326
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    .line 328
    .line 329
    const-string v4, " roaming="

    .line 330
    .line 331
    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    .line 333
    .line 334
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 335
    .line 336
    .line 337
    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    .line 339
    .line 340
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 341
    .line 342
    .line 343
    const-string v3, " interactive="

    .line 344
    .line 345
    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    .line 347
    .line 348
    iget-boolean v3, v0, Leu/faircode/netguard/ServiceSinkhole;->last_interactive:Z

    .line 349
    .line 350
    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 351
    .line 352
    .line 353
    const-string v3, " tethering="

    .line 354
    .line 355
    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    .line 357
    .line 358
    move/from16 v3, v17

    .line 359
    .line 360
    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 361
    .line 362
    .line 363
    const-string v3, " filter="

    .line 364
    .line 365
    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    .line 367
    .line 368
    move/from16 v3, v20

    .line 369
    .line 370
    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 371
    .line 372
    .line 373
    const-string v3, " lockdown="

    .line 374
    .line 375
    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    .line 377
    .line 378
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 379
    .line 380
    .line 381
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 382
    .line 383
    .line 384
    move-result-object v3

    .line 385
    invoke-static {v6, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    .line 387
    .line 388
    iget-boolean v3, v0, Leu/faircode/netguard/ServiceSinkhole;->last_connected:Z

    .line 389
    .line 390
    if-eqz v3, :cond_f

    .line 391
    .line 392
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 393
    .line 394
    .line 395
    move-result-object v3

    .line 396
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 397
    .line 398
    .line 399
    move-result v4

    .line 400
    if-eqz v4, :cond_f

    .line 401
    .line 402
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 403
    .line 404
    .line 405
    move-result-object v4

    .line 406
    check-cast v4, Leu/faircode/netguard/Rule;

    .line 407
    .line 408
    if-eqz v2, :cond_9

    .line 409
    .line 410
    iget-boolean v5, v4, Leu/faircode/netguard/Rule;->other_blocked:Z

    .line 411
    .line 412
    goto :goto_4

    .line 413
    :cond_9
    iget-boolean v5, v4, Leu/faircode/netguard/Rule;->wifi_blocked:Z

    .line 414
    .line 415
    :goto_4
    if-eqz v2, :cond_a

    .line 416
    .line 417
    iget-boolean v7, v4, Leu/faircode/netguard/Rule;->screen_other:Z

    .line 418
    .line 419
    goto :goto_5

    .line 420
    :cond_a
    iget-boolean v7, v4, Leu/faircode/netguard/Rule;->screen_wifi:Z

    .line 421
    .line 422
    :goto_5
    if-eqz v5, :cond_c

    .line 423
    .line 424
    if-eqz v7, :cond_b

    .line 425
    .line 426
    iget-boolean v5, v0, Leu/faircode/netguard/ServiceSinkhole;->last_interactive:Z

    .line 427
    .line 428
    if-eqz v5, :cond_b

    .line 429
    .line 430
    goto :goto_6

    .line 431
    :cond_b
    move-object/from16 v5, v16

    .line 432
    .line 433
    goto :goto_7

    .line 434
    :cond_c
    :goto_6
    if-eqz v2, :cond_d

    .line 435
    .line 436
    iget-boolean v5, v4, Leu/faircode/netguard/Rule;->roaming:Z

    .line 437
    .line 438
    if-eqz v5, :cond_d

    .line 439
    .line 440
    if-nez v10, :cond_b

    .line 441
    .line 442
    :cond_d
    if-eqz v1, :cond_e

    .line 443
    .line 444
    iget-boolean v5, v4, Leu/faircode/netguard/Rule;->lockdown:Z

    .line 445
    .line 446
    if-eqz v5, :cond_b

    .line 447
    .line 448
    :cond_e
    move-object/from16 v5, v16

    .line 449
    .line 450
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 451
    .line 452
    .line 453
    :goto_7
    move-object/from16 v16, v5

    .line 454
    .line 455
    goto :goto_3

    .line 456
    :cond_f
    move-object/from16 v5, v16

    .line 457
    .line 458
    new-instance v1, Ljava/lang/StringBuilder;

    .line 459
    .line 460
    const-string v2, "Allowed "

    .line 461
    .line 462
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 463
    .line 464
    .line 465
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 466
    .line 467
    .line 468
    move-result v2

    .line 469
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 470
    .line 471
    .line 472
    const-string v2, " of "

    .line 473
    .line 474
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 475
    .line 476
    .line 477
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    .line 478
    .line 479
    .line 480
    move-result v2

    .line 481
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 482
    .line 483
    .line 484
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 485
    .line 486
    .line 487
    move-result-object v1

    .line 488
    invoke-static {v6, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    .line 490
    .line 491
    return-object v5
.end method

.method private getBuilder(Ljava/util/List;Ljava/util/List;)Leu/faircode/netguard/ServiceSinkhole$Builder;
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    invoke-static/range {p0 .. p0}, Lt0/a;->s(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v2, "subnet"

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    const-string v4, "tethering"

    .line 15
    .line 16
    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 17
    .line 18
    .line 19
    move-result v4

    .line 20
    const-string v5, "lan"

    .line 21
    .line 22
    invoke-interface {v0, v5, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 23
    .line 24
    .line 25
    move-result v5

    .line 26
    const-string v6, "ip6"

    .line 27
    .line 28
    const/4 v7, 0x1

    .line 29
    invoke-interface {v0, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 30
    .line 31
    .line 32
    move-result v6

    .line 33
    const-string v7, "filter"

    .line 34
    .line 35
    invoke-interface {v0, v7, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 36
    .line 37
    .line 38
    move-result v7

    .line 39
    const-string v8, "manage_system"

    .line 40
    .line 41
    invoke-interface {v0, v8, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    new-instance v8, Leu/faircode/netguard/ServiceSinkhole$Builder;

    .line 46
    .line 47
    const/4 v9, 0x0

    .line 48
    invoke-direct {v8, v1, v9}, Leu/faircode/netguard/ServiceSinkhole$Builder;-><init>(Leu/faircode/netguard/ServiceSinkhole;Leu/faircode/netguard/ServiceSinkhole$1;)V

    .line 49
    .line 50
    .line 51
    const v10, 0x7f100023

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v10

    .line 58
    invoke-virtual {v8, v10}, Landroid/net/VpnService$Builder;->setSession(Ljava/lang/String;)Landroid/net/VpnService$Builder;

    .line 59
    .line 60
    .line 61
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 62
    .line 63
    const/16 v11, 0x1d

    .line 64
    .line 65
    if-lt v10, v11, :cond_0

    .line 66
    .line 67
    invoke-static/range {p0 .. p0}, Leu/faircode/netguard/Util;->isMeteredNetwork(Landroid/content/Context;)Z

    .line 68
    .line 69
    .line 70
    move-result v10

    .line 71
    invoke-static {v8, v10}, LE0/e;->e(Leu/faircode/netguard/ServiceSinkhole$Builder;Z)V

    .line 72
    .line 73
    .line 74
    :cond_0
    const-string v10, "vpn4"

    .line 75
    .line 76
    const-string v11, "10.1.10.1"

    .line 77
    .line 78
    invoke-interface {v0, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v10

    .line 82
    new-instance v11, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    const-string v12, "Using VPN4="

    .line 85
    .line 86
    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v11

    .line 96
    const-string v12, "NetGuard.Service"

    .line 97
    .line 98
    invoke-static {v12, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    .line 100
    .line 101
    const/16 v11, 0x20

    .line 102
    .line 103
    invoke-virtual {v8, v10, v11}, Leu/faircode/netguard/ServiceSinkhole$Builder;->addAddress(Ljava/lang/String;I)Leu/faircode/netguard/ServiceSinkhole$Builder;

    .line 104
    .line 105
    .line 106
    if-eqz v6, :cond_1

    .line 107
    .line 108
    const-string v10, "vpn6"

    .line 109
    .line 110
    const-string v13, "fd00:1:fd00:1:fd00:1:fd00:1"

    .line 111
    .line 112
    invoke-interface {v0, v10, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    new-instance v10, Ljava/lang/StringBuilder;

    .line 117
    .line 118
    const-string v13, "Using VPN6="

    .line 119
    .line 120
    invoke-direct {v10, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v10

    .line 130
    invoke-static {v12, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    .line 132
    .line 133
    const/16 v10, 0x80

    .line 134
    .line 135
    invoke-virtual {v8, v0, v10}, Leu/faircode/netguard/ServiceSinkhole$Builder;->addAddress(Ljava/lang/String;I)Leu/faircode/netguard/ServiceSinkhole$Builder;

    .line 136
    .line 137
    .line 138
    :cond_1
    if-eqz v7, :cond_4

    .line 139
    .line 140
    invoke-static/range {p0 .. p0}, Leu/faircode/netguard/ServiceSinkhole;->getDns(Landroid/content/Context;)Ljava/util/List;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 149
    .line 150
    .line 151
    move-result v10

    .line 152
    if-eqz v10, :cond_4

    .line 153
    .line 154
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v10

    .line 158
    check-cast v10, Ljava/net/InetAddress;

    .line 159
    .line 160
    if-nez v6, :cond_3

    .line 161
    .line 162
    instance-of v13, v10, Ljava/net/Inet4Address;

    .line 163
    .line 164
    if-eqz v13, :cond_2

    .line 165
    .line 166
    :cond_3
    new-instance v13, Ljava/lang/StringBuilder;

    .line 167
    .line 168
    const-string v14, "Using DNS="

    .line 169
    .line 170
    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v13

    .line 180
    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    .line 182
    .line 183
    invoke-virtual {v8, v10}, Leu/faircode/netguard/ServiceSinkhole$Builder;->addDnsServer(Ljava/net/InetAddress;)Leu/faircode/netguard/ServiceSinkhole$Builder;

    .line 184
    .line 185
    .line 186
    goto :goto_0

    .line 187
    :cond_4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 188
    .line 189
    const/16 v10, 0x17

    .line 190
    .line 191
    const-string v13, "\n"

    .line 192
    .line 193
    if-lt v0, v10, :cond_8

    .line 194
    .line 195
    :try_start_0
    const-string v0, "connectivity"

    .line 196
    .line 197
    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    move-result-object v0

    .line 201
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 202
    .line 203
    if-nez v0, :cond_5

    .line 204
    .line 205
    move-object v14, v9

    .line 206
    goto :goto_1

    .line 207
    :cond_5
    invoke-static {v0}, LE0/c;->c(Landroid/net/ConnectivityManager;)Landroid/net/Network;

    .line 208
    .line 209
    .line 210
    move-result-object v14

    .line 211
    :goto_1
    if-nez v14, :cond_6

    .line 212
    .line 213
    move-object v0, v9

    .line 214
    goto :goto_2

    .line 215
    :cond_6
    invoke-virtual {v0, v14}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    .line 216
    .line 217
    .line 218
    move-result-object v0

    .line 219
    :goto_2
    if-nez v0, :cond_7

    .line 220
    .line 221
    goto :goto_3

    .line 222
    :cond_7
    invoke-virtual {v0}, Landroid/net/LinkProperties;->getDomains()Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v9

    .line 226
    :goto_3
    if-eqz v9, :cond_8

    .line 227
    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    .line 229
    .line 230
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 231
    .line 232
    .line 233
    const-string v14, "Using search domain="

    .line 234
    .line 235
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    .line 237
    .line 238
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v0

    .line 245
    invoke-static {v12, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    .line 247
    .line 248
    invoke-virtual {v8, v9}, Landroid/net/VpnService$Builder;->addSearchDomain(Ljava/lang/String;)Landroid/net/VpnService$Builder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 249
    .line 250
    .line 251
    goto :goto_4

    .line 252
    :catchall_0
    move-exception v0

    .line 253
    new-instance v9, Ljava/lang/StringBuilder;

    .line 254
    .line 255
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 256
    .line 257
    .line 258
    invoke-static {v0, v9, v13, v0, v12}, LB/g;->i(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 259
    .line 260
    .line 261
    :cond_8
    :goto_4
    const-string v9, "0.0.0.0"

    .line 262
    .line 263
    if-eqz v2, :cond_1b

    .line 264
    .line 265
    new-instance v2, Ljava/util/ArrayList;

    .line 266
    .line 267
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 268
    .line 269
    .line 270
    new-instance v0, Leu/faircode/netguard/IPUtil$CIDR;

    .line 271
    .line 272
    const-string v14, "127.0.0.0"

    .line 273
    .line 274
    const/16 v15, 0x8

    .line 275
    .line 276
    invoke-direct {v0, v14, v15}, Leu/faircode/netguard/IPUtil$CIDR;-><init>(Ljava/lang/String;I)V

    .line 277
    .line 278
    .line 279
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 280
    .line 281
    .line 282
    const/16 v0, 0x18

    .line 283
    .line 284
    if-eqz v4, :cond_9

    .line 285
    .line 286
    if-nez v5, :cond_9

    .line 287
    .line 288
    new-instance v4, Leu/faircode/netguard/IPUtil$CIDR;

    .line 289
    .line 290
    const-string v14, "192.168.42.0"

    .line 291
    .line 292
    invoke-direct {v4, v14, v10}, Leu/faircode/netguard/IPUtil$CIDR;-><init>(Ljava/lang/String;I)V

    .line 293
    .line 294
    .line 295
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 296
    .line 297
    .line 298
    new-instance v4, Leu/faircode/netguard/IPUtil$CIDR;

    .line 299
    .line 300
    const-string v10, "192.168.44.0"

    .line 301
    .line 302
    invoke-direct {v4, v10, v0}, Leu/faircode/netguard/IPUtil$CIDR;-><init>(Ljava/lang/String;I)V

    .line 303
    .line 304
    .line 305
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 306
    .line 307
    .line 308
    new-instance v4, Leu/faircode/netguard/IPUtil$CIDR;

    .line 309
    .line 310
    const-string v10, "192.168.49.0"

    .line 311
    .line 312
    invoke-direct {v4, v10, v0}, Leu/faircode/netguard/IPUtil$CIDR;-><init>(Ljava/lang/String;I)V

    .line 313
    .line 314
    .line 315
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 316
    .line 317
    .line 318
    :cond_9
    const/16 v0, 0xc

    .line 319
    .line 320
    const/16 v4, 0x10

    .line 321
    .line 322
    if-eqz v5, :cond_a

    .line 323
    .line 324
    new-instance v10, Leu/faircode/netguard/IPUtil$CIDR;

    .line 325
    .line 326
    const-string v14, "10.0.0.0"

    .line 327
    .line 328
    invoke-direct {v10, v14, v15}, Leu/faircode/netguard/IPUtil$CIDR;-><init>(Ljava/lang/String;I)V

    .line 329
    .line 330
    .line 331
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 332
    .line 333
    .line 334
    new-instance v10, Leu/faircode/netguard/IPUtil$CIDR;

    .line 335
    .line 336
    const-string v14, "172.16.0.0"

    .line 337
    .line 338
    invoke-direct {v10, v14, v0}, Leu/faircode/netguard/IPUtil$CIDR;-><init>(Ljava/lang/String;I)V

    .line 339
    .line 340
    .line 341
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 342
    .line 343
    .line 344
    new-instance v0, Leu/faircode/netguard/IPUtil$CIDR;

    .line 345
    .line 346
    const-string v10, "192.168.0.0"

    .line 347
    .line 348
    invoke-direct {v0, v10, v4}, Leu/faircode/netguard/IPUtil$CIDR;-><init>(Ljava/lang/String;I)V

    .line 349
    .line 350
    .line 351
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 352
    .line 353
    .line 354
    :cond_a
    if-nez v7, :cond_e

    .line 355
    .line 356
    invoke-static/range {p0 .. p0}, Leu/faircode/netguard/ServiceSinkhole;->getDns(Landroid/content/Context;)Ljava/util/List;

    .line 357
    .line 358
    .line 359
    move-result-object v0

    .line 360
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 361
    .line 362
    .line 363
    move-result-object v0

    .line 364
    :cond_b
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 365
    .line 366
    .line 367
    move-result v4

    .line 368
    if-eqz v4, :cond_c

    .line 369
    .line 370
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 371
    .line 372
    .line 373
    move-result-object v4

    .line 374
    check-cast v4, Ljava/net/InetAddress;

    .line 375
    .line 376
    instance-of v10, v4, Ljava/net/Inet4Address;

    .line 377
    .line 378
    if-eqz v10, :cond_b

    .line 379
    .line 380
    new-instance v10, Leu/faircode/netguard/IPUtil$CIDR;

    .line 381
    .line 382
    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 383
    .line 384
    .line 385
    move-result-object v4

    .line 386
    invoke-direct {v10, v4, v11}, Leu/faircode/netguard/IPUtil$CIDR;-><init>(Ljava/lang/String;I)V

    .line 387
    .line 388
    .line 389
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 390
    .line 391
    .line 392
    goto :goto_5

    .line 393
    :cond_c
    invoke-static/range {p0 .. p0}, Leu/faircode/netguard/Util;->getPrivateDnsSpecifier(Landroid/content/Context;)Ljava/lang/String;

    .line 394
    .line 395
    .line 396
    move-result-object v0

    .line 397
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 398
    .line 399
    .line 400
    move-result v4

    .line 401
    if-nez v4, :cond_e

    .line 402
    .line 403
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    .line 404
    .line 405
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 406
    .line 407
    .line 408
    const-string v10, "Resolving private dns="

    .line 409
    .line 410
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    .line 412
    .line 413
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    .line 415
    .line 416
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 417
    .line 418
    .line 419
    move-result-object v4

    .line 420
    invoke-static {v12, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    .line 422
    .line 423
    invoke-static {v0}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    .line 424
    .line 425
    .line 426
    move-result-object v0

    .line 427
    array-length v4, v0

    .line 428
    const/4 v10, 0x0

    .line 429
    :goto_6
    if-ge v10, v4, :cond_e

    .line 430
    .line 431
    aget-object v14, v0, v10

    .line 432
    .line 433
    instance-of v15, v14, Ljava/net/Inet4Address;

    .line 434
    .line 435
    if-eqz v15, :cond_d

    .line 436
    .line 437
    new-instance v15, Leu/faircode/netguard/IPUtil$CIDR;

    .line 438
    .line 439
    invoke-virtual {v14}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 440
    .line 441
    .line 442
    move-result-object v14

    .line 443
    invoke-direct {v15, v14, v11}, Leu/faircode/netguard/IPUtil$CIDR;-><init>(Ljava/lang/String;I)V

    .line 444
    .line 445
    .line 446
    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 447
    .line 448
    .line 449
    :cond_d
    add-int/lit8 v10, v10, 0x1

    .line 450
    .line 451
    goto :goto_6

    .line 452
    :catchall_1
    move-exception v0

    .line 453
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    .line 454
    .line 455
    .line 456
    move-result-object v0

    .line 457
    invoke-static {v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    .line 459
    .line 460
    :cond_e
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 461
    .line 462
    .line 463
    move-result-object v0

    .line 464
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 465
    .line 466
    .line 467
    move-result-object v0

    .line 468
    iget v4, v0, Landroid/content/res/Configuration;->mcc:I

    .line 469
    .line 470
    const/16 v10, 0x10e

    .line 471
    .line 472
    const/16 v11, 0x136

    .line 473
    .line 474
    if-ne v4, v11, :cond_10

    .line 475
    .line 476
    iget v4, v0, Landroid/content/res/Configuration;->mnc:I

    .line 477
    .line 478
    const/16 v14, 0xa0

    .line 479
    .line 480
    if-eq v4, v14, :cond_f

    .line 481
    .line 482
    const/16 v14, 0xc8

    .line 483
    .line 484
    if-eq v4, v14, :cond_f

    .line 485
    .line 486
    const/16 v14, 0xd2

    .line 487
    .line 488
    if-eq v4, v14, :cond_f

    .line 489
    .line 490
    const/16 v14, 0xdc

    .line 491
    .line 492
    if-eq v4, v14, :cond_f

    .line 493
    .line 494
    const/16 v14, 0xe6

    .line 495
    .line 496
    if-eq v4, v14, :cond_f

    .line 497
    .line 498
    const/16 v14, 0xf0

    .line 499
    .line 500
    if-eq v4, v14, :cond_f

    .line 501
    .line 502
    const/16 v14, 0xfa

    .line 503
    .line 504
    if-eq v4, v14, :cond_f

    .line 505
    .line 506
    const/16 v14, 0x104

    .line 507
    .line 508
    if-eq v4, v14, :cond_f

    .line 509
    .line 510
    if-eq v4, v10, :cond_f

    .line 511
    .line 512
    if-eq v4, v11, :cond_f

    .line 513
    .line 514
    const/16 v10, 0x1ea

    .line 515
    .line 516
    if-eq v4, v10, :cond_f

    .line 517
    .line 518
    const/16 v10, 0x294

    .line 519
    .line 520
    if-eq v4, v10, :cond_f

    .line 521
    .line 522
    const/16 v10, 0x320

    .line 523
    .line 524
    if-ne v4, v10, :cond_10

    .line 525
    .line 526
    :cond_f
    new-instance v4, Leu/faircode/netguard/IPUtil$CIDR;

    .line 527
    .line 528
    const-string v10, "66.94.2.0"

    .line 529
    .line 530
    const/16 v14, 0x18

    .line 531
    .line 532
    invoke-direct {v4, v10, v14}, Leu/faircode/netguard/IPUtil$CIDR;-><init>(Ljava/lang/String;I)V

    .line 533
    .line 534
    .line 535
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 536
    .line 537
    .line 538
    new-instance v4, Leu/faircode/netguard/IPUtil$CIDR;

    .line 539
    .line 540
    const-string v10, "66.94.6.0"

    .line 541
    .line 542
    const/16 v14, 0x17

    .line 543
    .line 544
    invoke-direct {v4, v10, v14}, Leu/faircode/netguard/IPUtil$CIDR;-><init>(Ljava/lang/String;I)V

    .line 545
    .line 546
    .line 547
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 548
    .line 549
    .line 550
    new-instance v4, Leu/faircode/netguard/IPUtil$CIDR;

    .line 551
    .line 552
    const-string v10, "66.94.8.0"

    .line 553
    .line 554
    const/16 v14, 0x16

    .line 555
    .line 556
    invoke-direct {v4, v10, v14}, Leu/faircode/netguard/IPUtil$CIDR;-><init>(Ljava/lang/String;I)V

    .line 557
    .line 558
    .line 559
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 560
    .line 561
    .line 562
    new-instance v4, Leu/faircode/netguard/IPUtil$CIDR;

    .line 563
    .line 564
    const-string v10, "208.54.0.0"

    .line 565
    .line 566
    const/16 v14, 0x10

    .line 567
    .line 568
    invoke-direct {v4, v10, v14}, Leu/faircode/netguard/IPUtil$CIDR;-><init>(Ljava/lang/String;I)V

    .line 569
    .line 570
    .line 571
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 572
    .line 573
    .line 574
    :cond_10
    iget v4, v0, Landroid/content/res/Configuration;->mcc:I

    .line 575
    .line 576
    const/16 v10, 0xd

    .line 577
    .line 578
    const/16 v14, 0xa

    .line 579
    .line 580
    if-ne v4, v11, :cond_11

    .line 581
    .line 582
    iget v11, v0, Landroid/content/res/Configuration;->mnc:I

    .line 583
    .line 584
    const/4 v15, 0x4

    .line 585
    if-eq v11, v15, :cond_15

    .line 586
    .line 587
    const/4 v15, 0x5

    .line 588
    if-eq v11, v15, :cond_15

    .line 589
    .line 590
    const/4 v15, 0x6

    .line 591
    if-eq v11, v15, :cond_15

    .line 592
    .line 593
    if-eq v11, v14, :cond_15

    .line 594
    .line 595
    const/16 v15, 0xc

    .line 596
    .line 597
    if-eq v11, v15, :cond_15

    .line 598
    .line 599
    if-eq v11, v10, :cond_15

    .line 600
    .line 601
    const/16 v15, 0x15e

    .line 602
    .line 603
    if-eq v11, v15, :cond_15

    .line 604
    .line 605
    const/16 v15, 0x24e

    .line 606
    .line 607
    if-eq v11, v15, :cond_15

    .line 608
    .line 609
    const/16 v15, 0x334

    .line 610
    .line 611
    if-eq v11, v15, :cond_15

    .line 612
    .line 613
    const/16 v15, 0x37a

    .line 614
    .line 615
    if-eq v11, v15, :cond_15

    .line 616
    .line 617
    const/16 v15, 0x38e

    .line 618
    .line 619
    if-eq v11, v15, :cond_15

    .line 620
    .line 621
    :cond_11
    const/16 v11, 0x137

    .line 622
    .line 623
    if-ne v4, v11, :cond_14

    .line 624
    .line 625
    iget v11, v0, Landroid/content/res/Configuration;->mnc:I

    .line 626
    .line 627
    const/16 v15, 0xc

    .line 628
    .line 629
    if-eq v11, v15, :cond_15

    .line 630
    .line 631
    const/16 v15, 0x6e

    .line 632
    .line 633
    if-eq v11, v15, :cond_15

    .line 634
    .line 635
    const/16 v15, 0x10e

    .line 636
    .line 637
    if-lt v11, v15, :cond_12

    .line 638
    .line 639
    const/16 v15, 0x121

    .line 640
    .line 641
    if-le v11, v15, :cond_15

    .line 642
    .line 643
    :cond_12
    const/16 v15, 0x186

    .line 644
    .line 645
    if-eq v11, v15, :cond_15

    .line 646
    .line 647
    const/16 v15, 0x1e0

    .line 648
    .line 649
    if-lt v11, v15, :cond_13

    .line 650
    .line 651
    const/16 v15, 0x1e9

    .line 652
    .line 653
    if-le v11, v15, :cond_15

    .line 654
    .line 655
    :cond_13
    const/16 v15, 0x24e

    .line 656
    .line 657
    if-eq v11, v15, :cond_15

    .line 658
    .line 659
    :cond_14
    const/16 v11, 0x138

    .line 660
    .line 661
    if-ne v4, v11, :cond_16

    .line 662
    .line 663
    iget v4, v0, Landroid/content/res/Configuration;->mnc:I

    .line 664
    .line 665
    const/16 v11, 0x302

    .line 666
    .line 667
    if-ne v4, v11, :cond_16

    .line 668
    .line 669
    :cond_15
    new-instance v4, Leu/faircode/netguard/IPUtil$CIDR;

    .line 670
    .line 671
    const-string v11, "66.174.0.0"

    .line 672
    .line 673
    const/16 v15, 0x10

    .line 674
    .line 675
    invoke-direct {v4, v11, v15}, Leu/faircode/netguard/IPUtil$CIDR;-><init>(Ljava/lang/String;I)V

    .line 676
    .line 677
    .line 678
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 679
    .line 680
    .line 681
    new-instance v4, Leu/faircode/netguard/IPUtil$CIDR;

    .line 682
    .line 683
    const-string v11, "66.82.0.0"

    .line 684
    .line 685
    const/16 v15, 0xf

    .line 686
    .line 687
    invoke-direct {v4, v11, v15}, Leu/faircode/netguard/IPUtil$CIDR;-><init>(Ljava/lang/String;I)V

    .line 688
    .line 689
    .line 690
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 691
    .line 692
    .line 693
    new-instance v4, Leu/faircode/netguard/IPUtil$CIDR;

    .line 694
    .line 695
    const-string v11, "69.96.0.0"

    .line 696
    .line 697
    invoke-direct {v4, v11, v10}, Leu/faircode/netguard/IPUtil$CIDR;-><init>(Ljava/lang/String;I)V

    .line 698
    .line 699
    .line 700
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 701
    .line 702
    .line 703
    new-instance v4, Leu/faircode/netguard/IPUtil$CIDR;

    .line 704
    .line 705
    const-string v10, "70.192.0.0"

    .line 706
    .line 707
    const/16 v11, 0xb

    .line 708
    .line 709
    invoke-direct {v4, v10, v11}, Leu/faircode/netguard/IPUtil$CIDR;-><init>(Ljava/lang/String;I)V

    .line 710
    .line 711
    .line 712
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 713
    .line 714
    .line 715
    new-instance v4, Leu/faircode/netguard/IPUtil$CIDR;

    .line 716
    .line 717
    const-string v10, "97.128.0.0"

    .line 718
    .line 719
    const/16 v11, 0x9

    .line 720
    .line 721
    invoke-direct {v4, v10, v11}, Leu/faircode/netguard/IPUtil$CIDR;-><init>(Ljava/lang/String;I)V

    .line 722
    .line 723
    .line 724
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 725
    .line 726
    .line 727
    new-instance v4, Leu/faircode/netguard/IPUtil$CIDR;

    .line 728
    .line 729
    const-string v10, "174.192.0.0"

    .line 730
    .line 731
    invoke-direct {v4, v10, v11}, Leu/faircode/netguard/IPUtil$CIDR;-><init>(Ljava/lang/String;I)V

    .line 732
    .line 733
    .line 734
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 735
    .line 736
    .line 737
    new-instance v4, Leu/faircode/netguard/IPUtil$CIDR;

    .line 738
    .line 739
    const-string v10, "72.96.0.0"

    .line 740
    .line 741
    invoke-direct {v4, v10, v11}, Leu/faircode/netguard/IPUtil$CIDR;-><init>(Ljava/lang/String;I)V

    .line 742
    .line 743
    .line 744
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 745
    .line 746
    .line 747
    new-instance v4, Leu/faircode/netguard/IPUtil$CIDR;

    .line 748
    .line 749
    const-string v10, "75.192.0.0"

    .line 750
    .line 751
    invoke-direct {v4, v10, v11}, Leu/faircode/netguard/IPUtil$CIDR;-><init>(Ljava/lang/String;I)V

    .line 752
    .line 753
    .line 754
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 755
    .line 756
    .line 757
    new-instance v4, Leu/faircode/netguard/IPUtil$CIDR;

    .line 758
    .line 759
    const-string v10, "97.0.0.0"

    .line 760
    .line 761
    invoke-direct {v4, v10, v14}, Leu/faircode/netguard/IPUtil$CIDR;-><init>(Ljava/lang/String;I)V

    .line 762
    .line 763
    .line 764
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 765
    .line 766
    .line 767
    :cond_16
    iget v4, v0, Landroid/content/res/Configuration;->mnc:I

    .line 768
    .line 769
    if-ne v4, v14, :cond_17

    .line 770
    .line 771
    iget v0, v0, Landroid/content/res/Configuration;->mcc:I

    .line 772
    .line 773
    const/16 v4, 0xd0

    .line 774
    .line 775
    if-ne v0, v4, :cond_17

    .line 776
    .line 777
    new-instance v0, Leu/faircode/netguard/IPUtil$CIDR;

    .line 778
    .line 779
    const-string v4, "10.151.0.0"

    .line 780
    .line 781
    const/16 v10, 0x18

    .line 782
    .line 783
    invoke-direct {v0, v4, v10}, Leu/faircode/netguard/IPUtil$CIDR;-><init>(Ljava/lang/String;I)V

    .line 784
    .line 785
    .line 786
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 787
    .line 788
    .line 789
    :cond_17
    new-instance v0, Leu/faircode/netguard/IPUtil$CIDR;

    .line 790
    .line 791
    const-string v4, "224.0.0.0"

    .line 792
    .line 793
    const/4 v10, 0x3

    .line 794
    invoke-direct {v0, v4, v10}, Leu/faircode/netguard/IPUtil$CIDR;-><init>(Ljava/lang/String;I)V

    .line 795
    .line 796
    .line 797
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 798
    .line 799
    .line 800
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 801
    .line 802
    .line 803
    :try_start_2
    invoke-static {v9}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 804
    .line 805
    .line 806
    move-result-object v0

    .line 807
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 808
    .line 809
    .line 810
    move-result-object v2

    .line 811
    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 812
    .line 813
    .line 814
    move-result v9

    .line 815
    if-eqz v9, :cond_19

    .line 816
    .line 817
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 818
    .line 819
    .line 820
    move-result-object v9

    .line 821
    check-cast v9, Leu/faircode/netguard/IPUtil$CIDR;

    .line 822
    .line 823
    new-instance v10, Ljava/lang/StringBuilder;

    .line 824
    .line 825
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 826
    .line 827
    .line 828
    const-string v11, "Exclude "

    .line 829
    .line 830
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 831
    .line 832
    .line 833
    invoke-virtual {v9}, Leu/faircode/netguard/IPUtil$CIDR;->getStart()Ljava/net/InetAddress;

    .line 834
    .line 835
    .line 836
    move-result-object v11

    .line 837
    invoke-virtual {v11}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 838
    .line 839
    .line 840
    move-result-object v11

    .line 841
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 842
    .line 843
    .line 844
    const-string v11, "..."

    .line 845
    .line 846
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 847
    .line 848
    .line 849
    invoke-virtual {v9}, Leu/faircode/netguard/IPUtil$CIDR;->getEnd()Ljava/net/InetAddress;

    .line 850
    .line 851
    .line 852
    move-result-object v11

    .line 853
    invoke-virtual {v11}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 854
    .line 855
    .line 856
    move-result-object v11

    .line 857
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 858
    .line 859
    .line 860
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 861
    .line 862
    .line 863
    move-result-object v10

    .line 864
    invoke-static {v12, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    .line 866
    .line 867
    invoke-virtual {v9}, Leu/faircode/netguard/IPUtil$CIDR;->getStart()Ljava/net/InetAddress;

    .line 868
    .line 869
    .line 870
    move-result-object v10

    .line 871
    invoke-static {v10}, Leu/faircode/netguard/IPUtil;->minus1(Ljava/net/InetAddress;)Ljava/net/InetAddress;

    .line 872
    .line 873
    .line 874
    move-result-object v10

    .line 875
    invoke-static {v0, v10}, Leu/faircode/netguard/IPUtil;->toCIDR(Ljava/net/InetAddress;Ljava/net/InetAddress;)Ljava/util/List;

    .line 876
    .line 877
    .line 878
    move-result-object v0

    .line 879
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 880
    .line 881
    .line 882
    move-result-object v10

    .line 883
    :goto_8
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 884
    .line 885
    .line 886
    move-result v0

    .line 887
    if-eqz v0, :cond_18

    .line 888
    .line 889
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 890
    .line 891
    .line 892
    move-result-object v0

    .line 893
    check-cast v0, Leu/faircode/netguard/IPUtil$CIDR;
    :try_end_2
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_0

    .line 894
    .line 895
    :try_start_3
    iget-object v11, v0, Leu/faircode/netguard/IPUtil$CIDR;->address:Ljava/net/InetAddress;

    .line 896
    .line 897
    iget v0, v0, Leu/faircode/netguard/IPUtil$CIDR;->prefix:I

    .line 898
    .line 899
    invoke-virtual {v8, v11, v0}, Leu/faircode/netguard/ServiceSinkhole$Builder;->addRoute(Ljava/net/InetAddress;I)Leu/faircode/netguard/ServiceSinkhole$Builder;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 900
    .line 901
    .line 902
    goto :goto_8

    .line 903
    :catchall_2
    move-exception v0

    .line 904
    :try_start_4
    new-instance v11, Ljava/lang/StringBuilder;

    .line 905
    .line 906
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 907
    .line 908
    .line 909
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    .line 910
    .line 911
    .line 912
    move-result-object v14

    .line 913
    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 914
    .line 915
    .line 916
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 917
    .line 918
    .line 919
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 920
    .line 921
    .line 922
    move-result-object v0

    .line 923
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 924
    .line 925
    .line 926
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 927
    .line 928
    .line 929
    move-result-object v0

    .line 930
    invoke-static {v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    .line 932
    .line 933
    goto :goto_8

    .line 934
    :cond_18
    invoke-virtual {v9}, Leu/faircode/netguard/IPUtil$CIDR;->getEnd()Ljava/net/InetAddress;

    .line 935
    .line 936
    .line 937
    move-result-object v0

    .line 938
    invoke-static {v0}, Leu/faircode/netguard/IPUtil;->plus1(Ljava/net/InetAddress;)Ljava/net/InetAddress;

    .line 939
    .line 940
    .line 941
    move-result-object v0

    .line 942
    goto/16 :goto_7

    .line 943
    .line 944
    :cond_19
    if-eqz v5, :cond_1a

    .line 945
    .line 946
    const-string v0, "255.255.255.254"

    .line 947
    .line 948
    goto :goto_9

    .line 949
    :cond_1a
    const-string v0, "255.255.255.255"

    .line 950
    .line 951
    :goto_9
    invoke-static {v4, v0}, Leu/faircode/netguard/IPUtil;->toCIDR(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    .line 952
    .line 953
    .line 954
    move-result-object v0

    .line 955
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 956
    .line 957
    .line 958
    move-result-object v2

    .line 959
    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 960
    .line 961
    .line 962
    move-result v0

    .line 963
    if-eqz v0, :cond_1c

    .line 964
    .line 965
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 966
    .line 967
    .line 968
    move-result-object v0

    .line 969
    check-cast v0, Leu/faircode/netguard/IPUtil$CIDR;
    :try_end_4
    .catch Ljava/net/UnknownHostException; {:try_start_4 .. :try_end_4} :catch_0

    .line 970
    .line 971
    :try_start_5
    iget-object v4, v0, Leu/faircode/netguard/IPUtil$CIDR;->address:Ljava/net/InetAddress;

    .line 972
    .line 973
    iget v0, v0, Leu/faircode/netguard/IPUtil$CIDR;->prefix:I

    .line 974
    .line 975
    invoke-virtual {v8, v4, v0}, Leu/faircode/netguard/ServiceSinkhole$Builder;->addRoute(Ljava/net/InetAddress;I)Leu/faircode/netguard/ServiceSinkhole$Builder;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 976
    .line 977
    .line 978
    goto :goto_a

    .line 979
    :catchall_3
    move-exception v0

    .line 980
    :try_start_6
    new-instance v4, Ljava/lang/StringBuilder;

    .line 981
    .line 982
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 983
    .line 984
    .line 985
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    .line 986
    .line 987
    .line 988
    move-result-object v5

    .line 989
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 990
    .line 991
    .line 992
    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 993
    .line 994
    .line 995
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 996
    .line 997
    .line 998
    move-result-object v0

    .line 999
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1000
    .line 1001
    .line 1002
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1003
    .line 1004
    .line 1005
    move-result-object v0

    .line 1006
    invoke-static {v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/net/UnknownHostException; {:try_start_6 .. :try_end_6} :catch_0

    .line 1007
    .line 1008
    .line 1009
    goto :goto_a

    .line 1010
    :catch_0
    move-exception v0

    .line 1011
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1012
    .line 1013
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1014
    .line 1015
    .line 1016
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 1017
    .line 1018
    .line 1019
    move-result-object v4

    .line 1020
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1021
    .line 1022
    .line 1023
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1024
    .line 1025
    .line 1026
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 1027
    .line 1028
    .line 1029
    move-result-object v0

    .line 1030
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1031
    .line 1032
    .line 1033
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1034
    .line 1035
    .line 1036
    move-result-object v0

    .line 1037
    invoke-static {v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1038
    .line 1039
    .line 1040
    goto :goto_b

    .line 1041
    :cond_1b
    const/4 v0, 0x0

    .line 1042
    invoke-virtual {v8, v9, v0}, Leu/faircode/netguard/ServiceSinkhole$Builder;->addRoute(Ljava/lang/String;I)Leu/faircode/netguard/ServiceSinkhole$Builder;

    .line 1043
    .line 1044
    .line 1045
    :cond_1c
    :goto_b
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1046
    .line 1047
    const-string v2, "IPv6="

    .line 1048
    .line 1049
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1050
    .line 1051
    .line 1052
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1053
    .line 1054
    .line 1055
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1056
    .line 1057
    .line 1058
    move-result-object v0

    .line 1059
    invoke-static {v12, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1060
    .line 1061
    .line 1062
    if-eqz v6, :cond_1d

    .line 1063
    .line 1064
    const-string v0, "2000::"

    .line 1065
    .line 1066
    const/4 v2, 0x3

    .line 1067
    invoke-virtual {v8, v0, v2}, Leu/faircode/netguard/ServiceSinkhole$Builder;->addRoute(Ljava/lang/String;I)Leu/faircode/netguard/ServiceSinkhole$Builder;

    .line 1068
    .line 1069
    .line 1070
    :cond_1d
    invoke-direct/range {p0 .. p0}, Leu/faircode/netguard/ServiceSinkhole;->jni_get_mtu()I

    .line 1071
    .line 1072
    .line 1073
    move-result v0

    .line 1074
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1075
    .line 1076
    const-string v4, "MTU="

    .line 1077
    .line 1078
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1079
    .line 1080
    .line 1081
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1082
    .line 1083
    .line 1084
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1085
    .line 1086
    .line 1087
    move-result-object v2

    .line 1088
    invoke-static {v12, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1089
    .line 1090
    .line 1091
    invoke-virtual {v8, v0}, Leu/faircode/netguard/ServiceSinkhole$Builder;->setMtu(I)Landroid/net/VpnService$Builder;

    .line 1092
    .line 1093
    .line 1094
    iget-boolean v0, v1, Leu/faircode/netguard/ServiceSinkhole;->last_connected:Z

    .line 1095
    .line 1096
    if-eqz v0, :cond_21

    .line 1097
    .line 1098
    if-nez v7, :cond_21

    .line 1099
    .line 1100
    new-instance v2, Ljava/util/HashMap;

    .line 1101
    .line 1102
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1103
    .line 1104
    .line 1105
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1106
    .line 1107
    .line 1108
    move-result-object v0

    .line 1109
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1110
    .line 1111
    .line 1112
    move-result v3

    .line 1113
    if-eqz v3, :cond_1e

    .line 1114
    .line 1115
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1116
    .line 1117
    .line 1118
    move-result-object v3

    .line 1119
    check-cast v3, Leu/faircode/netguard/Rule;

    .line 1120
    .line 1121
    iget-object v4, v3, Leu/faircode/netguard/Rule;->packageName:Ljava/lang/String;

    .line 1122
    .line 1123
    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1124
    .line 1125
    .line 1126
    goto :goto_c

    .line 1127
    :cond_1e
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1128
    .line 1129
    .line 1130
    move-result-object v0

    .line 1131
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1132
    .line 1133
    .line 1134
    move-result v3

    .line 1135
    if-eqz v3, :cond_1f

    .line 1136
    .line 1137
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1138
    .line 1139
    .line 1140
    move-result-object v3

    .line 1141
    check-cast v3, Leu/faircode/netguard/Rule;

    .line 1142
    .line 1143
    iget-object v3, v3, Leu/faircode/netguard/Rule;->packageName:Ljava/lang/String;

    .line 1144
    .line 1145
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1146
    .line 1147
    .line 1148
    goto :goto_d

    .line 1149
    :cond_1f
    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 1150
    .line 1151
    .line 1152
    move-result-object v0

    .line 1153
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 1154
    .line 1155
    .line 1156
    move-result-object v3

    .line 1157
    :goto_e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 1158
    .line 1159
    .line 1160
    move-result v0

    .line 1161
    if-eqz v0, :cond_20

    .line 1162
    .line 1163
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1164
    .line 1165
    .line 1166
    move-result-object v0

    .line 1167
    check-cast v0, Ljava/lang/String;

    .line 1168
    .line 1169
    :try_start_7
    invoke-virtual {v8, v0}, Leu/faircode/netguard/ServiceSinkhole$Builder;->addAllowedApplication(Ljava/lang/String;)Landroid/net/VpnService$Builder;

    .line 1170
    .line 1171
    .line 1172
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1173
    .line 1174
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1175
    .line 1176
    .line 1177
    const-string v5, "Sinkhole "

    .line 1178
    .line 1179
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1180
    .line 1181
    .line 1182
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1183
    .line 1184
    .line 1185
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1186
    .line 1187
    .line 1188
    move-result-object v0

    .line 1189
    invoke-static {v12, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_7} :catch_1

    .line 1190
    .line 1191
    .line 1192
    goto :goto_e

    .line 1193
    :catch_1
    move-exception v0

    .line 1194
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1195
    .line 1196
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1197
    .line 1198
    .line 1199
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 1200
    .line 1201
    .line 1202
    move-result-object v5

    .line 1203
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1204
    .line 1205
    .line 1206
    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1207
    .line 1208
    .line 1209
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 1210
    .line 1211
    .line 1212
    move-result-object v0

    .line 1213
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1214
    .line 1215
    .line 1216
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1217
    .line 1218
    .line 1219
    move-result-object v0

    .line 1220
    invoke-static {v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1221
    .line 1222
    .line 1223
    goto :goto_e

    .line 1224
    :cond_20
    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    .line 1225
    .line 1226
    .line 1227
    move-result v0

    .line 1228
    if-nez v0, :cond_24

    .line 1229
    .line 1230
    :try_start_8
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 1231
    .line 1232
    .line 1233
    move-result-object v0

    .line 1234
    invoke-virtual {v8, v0}, Leu/faircode/netguard/ServiceSinkhole$Builder;->addAllowedApplication(Ljava/lang/String;)Landroid/net/VpnService$Builder;
    :try_end_8
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_8} :catch_2

    .line 1235
    .line 1236
    .line 1237
    goto/16 :goto_11

    .line 1238
    .line 1239
    :catch_2
    move-exception v0

    .line 1240
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1241
    .line 1242
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1243
    .line 1244
    .line 1245
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 1246
    .line 1247
    .line 1248
    move-result-object v3

    .line 1249
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1250
    .line 1251
    .line 1252
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1253
    .line 1254
    .line 1255
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 1256
    .line 1257
    .line 1258
    move-result-object v0

    .line 1259
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1260
    .line 1261
    .line 1262
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1263
    .line 1264
    .line 1265
    move-result-object v0

    .line 1266
    invoke-static {v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1267
    .line 1268
    .line 1269
    goto/16 :goto_11

    .line 1270
    .line 1271
    :cond_21
    if-eqz v7, :cond_24

    .line 1272
    .line 1273
    :try_start_9
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 1274
    .line 1275
    .line 1276
    move-result-object v0

    .line 1277
    invoke-virtual {v8, v0}, Leu/faircode/netguard/ServiceSinkhole$Builder;->addDisallowedApplication(Ljava/lang/String;)Leu/faircode/netguard/ServiceSinkhole$Builder;
    :try_end_9
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_9 .. :try_end_9} :catch_3

    .line 1278
    .line 1279
    .line 1280
    goto :goto_f

    .line 1281
    :catch_3
    move-exception v0

    .line 1282
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1283
    .line 1284
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1285
    .line 1286
    .line 1287
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 1288
    .line 1289
    .line 1290
    move-result-object v4

    .line 1291
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1292
    .line 1293
    .line 1294
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1295
    .line 1296
    .line 1297
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 1298
    .line 1299
    .line 1300
    move-result-object v0

    .line 1301
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1302
    .line 1303
    .line 1304
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1305
    .line 1306
    .line 1307
    move-result-object v0

    .line 1308
    invoke-static {v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1309
    .line 1310
    .line 1311
    :goto_f
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1312
    .line 1313
    .line 1314
    move-result-object v2

    .line 1315
    :cond_22
    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 1316
    .line 1317
    .line 1318
    move-result v0

    .line 1319
    if-eqz v0, :cond_24

    .line 1320
    .line 1321
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1322
    .line 1323
    .line 1324
    move-result-object v0

    .line 1325
    check-cast v0, Leu/faircode/netguard/Rule;

    .line 1326
    .line 1327
    iget-boolean v4, v0, Leu/faircode/netguard/Rule;->apply:Z

    .line 1328
    .line 1329
    if-eqz v4, :cond_23

    .line 1330
    .line 1331
    if-nez v3, :cond_22

    .line 1332
    .line 1333
    iget-boolean v4, v0, Leu/faircode/netguard/Rule;->system:Z

    .line 1334
    .line 1335
    if-eqz v4, :cond_22

    .line 1336
    .line 1337
    :cond_23
    :try_start_a
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1338
    .line 1339
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1340
    .line 1341
    .line 1342
    const-string v5, "Not routing "

    .line 1343
    .line 1344
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1345
    .line 1346
    .line 1347
    iget-object v5, v0, Leu/faircode/netguard/Rule;->packageName:Ljava/lang/String;

    .line 1348
    .line 1349
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1350
    .line 1351
    .line 1352
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1353
    .line 1354
    .line 1355
    move-result-object v4

    .line 1356
    invoke-static {v12, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1357
    .line 1358
    .line 1359
    iget-object v0, v0, Leu/faircode/netguard/Rule;->packageName:Ljava/lang/String;

    .line 1360
    .line 1361
    invoke-virtual {v8, v0}, Leu/faircode/netguard/ServiceSinkhole$Builder;->addDisallowedApplication(Ljava/lang/String;)Leu/faircode/netguard/ServiceSinkhole$Builder;
    :try_end_a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_a .. :try_end_a} :catch_4

    .line 1362
    .line 1363
    .line 1364
    goto :goto_10

    .line 1365
    :catch_4
    move-exception v0

    .line 1366
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1367
    .line 1368
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1369
    .line 1370
    .line 1371
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 1372
    .line 1373
    .line 1374
    move-result-object v5

    .line 1375
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1376
    .line 1377
    .line 1378
    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1379
    .line 1380
    .line 1381
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 1382
    .line 1383
    .line 1384
    move-result-object v0

    .line 1385
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1386
    .line 1387
    .line 1388
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1389
    .line 1390
    .line 1391
    move-result-object v0

    .line 1392
    invoke-static {v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1393
    .line 1394
    .line 1395
    goto :goto_10

    .line 1396
    :cond_24
    :goto_11
    new-instance v0, Landroid/content/Intent;

    .line 1397
    .line 1398
    const-class v2, Leu/faircode/netguard/ActivityMain;

    .line 1399
    .line 1400
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1401
    .line 1402
    .line 1403
    const/high16 v2, 0x8000000

    .line 1404
    .line 1405
    const/4 v3, 0x0

    .line 1406
    invoke-static {v1, v3, v0, v2}, Leu/faircode/netguard/PendingIntentCompat;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 1407
    .line 1408
    .line 1409
    move-result-object v0

    .line 1410
    invoke-virtual {v8, v0}, Landroid/net/VpnService$Builder;->setConfigureIntent(Landroid/app/PendingIntent;)Landroid/net/VpnService$Builder;

    .line 1411
    .line 1412
    .line 1413
    return-object v8
.end method

.method public static getDns(Landroid/content/Context;)Ljava/util/List;
    .locals 15

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Leu/faircode/netguard/Util;->getDefaultDNS(Landroid/content/Context;)Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-static {p0}, Lt0/a;->s(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    const-string v2, "ip6"

    .line 15
    .line 16
    const/4 v3, 0x1

    .line 17
    invoke-interface {p0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    const-string v4, "filter"

    .line 22
    .line 23
    const/4 v5, 0x0

    .line 24
    invoke-interface {p0, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    const-string v6, "dns"

    .line 29
    .line 30
    const/4 v7, 0x0

    .line 31
    invoke-interface {p0, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v6

    .line 35
    const-string v8, "dns2"

    .line 36
    .line 37
    invoke-interface {p0, v8, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v7

    .line 41
    new-instance v8, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    const-string v9, "DNS system="

    .line 44
    .line 45
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    const-string v9, ","

    .line 49
    .line 50
    invoke-static {v9, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v10

    .line 54
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string v10, " config="

    .line 58
    .line 59
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v8

    .line 75
    const-string v10, "NetGuard.Service"

    .line 76
    .line 77
    invoke-static {v10, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    .line 79
    .line 80
    if-eqz v6, :cond_1

    .line 81
    .line 82
    :try_start_0
    invoke-static {v6}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 83
    .line 84
    .line 85
    move-result-object v6

    .line 86
    invoke-virtual {v6}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    .line 87
    .line 88
    .line 89
    move-result v8

    .line 90
    if-nez v8, :cond_1

    .line 91
    .line 92
    invoke-virtual {v6}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    .line 93
    .line 94
    .line 95
    move-result v8

    .line 96
    if-nez v8, :cond_1

    .line 97
    .line 98
    if-nez v2, :cond_0

    .line 99
    .line 100
    instance-of v8, v6, Ljava/net/Inet4Address;

    .line 101
    .line 102
    if-eqz v8, :cond_1

    .line 103
    .line 104
    :cond_0
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    .line 106
    .line 107
    goto :goto_0

    .line 108
    :catchall_0
    nop

    .line 109
    :cond_1
    :goto_0
    const-string v6, "\n"

    .line 110
    .line 111
    if-eqz v7, :cond_3

    .line 112
    .line 113
    :try_start_1
    invoke-static {v7}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 114
    .line 115
    .line 116
    move-result-object v7

    .line 117
    invoke-virtual {v7}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    .line 118
    .line 119
    .line 120
    move-result v8

    .line 121
    if-nez v8, :cond_3

    .line 122
    .line 123
    invoke-virtual {v7}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    .line 124
    .line 125
    .line 126
    move-result v8

    .line 127
    if-nez v8, :cond_3

    .line 128
    .line 129
    if-nez v2, :cond_2

    .line 130
    .line 131
    instance-of v8, v7, Ljava/net/Inet4Address;

    .line 132
    .line 133
    if-eqz v8, :cond_3

    .line 134
    .line 135
    :cond_2
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 136
    .line 137
    .line 138
    goto :goto_1

    .line 139
    :catchall_1
    move-exception v7

    .line 140
    new-instance v8, Ljava/lang/StringBuilder;

    .line 141
    .line 142
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 143
    .line 144
    .line 145
    invoke-static {v7, v8, v6, v7, v10}, LB/g;->i(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    :cond_3
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 149
    .line 150
    .line 151
    move-result v7

    .line 152
    const/4 v8, 0x2

    .line 153
    if-ne v7, v8, :cond_4

    .line 154
    .line 155
    return-object v0

    .line 156
    :cond_4
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 157
    .line 158
    .line 159
    move-result-object v1

    .line 160
    :cond_5
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 161
    .line 162
    .line 163
    move-result v7

    .line 164
    if-eqz v7, :cond_7

    .line 165
    .line 166
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object v7

    .line 170
    check-cast v7, Ljava/lang/String;

    .line 171
    .line 172
    :try_start_2
    invoke-static {v7}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 173
    .line 174
    .line 175
    move-result-object v7

    .line 176
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 177
    .line 178
    .line 179
    move-result v8

    .line 180
    if-nez v8, :cond_5

    .line 181
    .line 182
    invoke-virtual {v7}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    .line 183
    .line 184
    .line 185
    move-result v8

    .line 186
    if-nez v8, :cond_5

    .line 187
    .line 188
    invoke-virtual {v7}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    .line 189
    .line 190
    .line 191
    move-result v8

    .line 192
    if-nez v8, :cond_5

    .line 193
    .line 194
    if-nez v2, :cond_6

    .line 195
    .line 196
    instance-of v8, v7, Ljava/net/Inet4Address;

    .line 197
    .line 198
    if-eqz v8, :cond_5

    .line 199
    .line 200
    :cond_6
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 201
    .line 202
    .line 203
    goto :goto_2

    .line 204
    :catchall_2
    move-exception v7

    .line 205
    new-instance v8, Ljava/lang/StringBuilder;

    .line 206
    .line 207
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 208
    .line 209
    .line 210
    invoke-static {v7, v8, v6, v7, v10}, LB/g;->i(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    goto :goto_2

    .line 214
    :cond_7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 215
    .line 216
    .line 217
    move-result v1

    .line 218
    const-string v7, "lan"

    .line 219
    .line 220
    invoke-interface {p0, v7, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 221
    .line 222
    .line 223
    move-result v7

    .line 224
    const-string v8, "use_hosts"

    .line 225
    .line 226
    invoke-interface {p0, v8, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 227
    .line 228
    .line 229
    move-result p0

    .line 230
    if-eqz v7, :cond_a

    .line 231
    .line 232
    if-eqz p0, :cond_a

    .line 233
    .line 234
    if-eqz v4, :cond_a

    .line 235
    .line 236
    :try_start_3
    new-instance p0, Ljava/util/ArrayList;

    .line 237
    .line 238
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 239
    .line 240
    .line 241
    new-instance v4, Landroid/util/Pair;

    .line 242
    .line 243
    const-string v5, "10.0.0.0"

    .line 244
    .line 245
    invoke-static {v5}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 246
    .line 247
    .line 248
    move-result-object v5

    .line 249
    const/16 v7, 0x8

    .line 250
    .line 251
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 252
    .line 253
    .line 254
    move-result-object v7

    .line 255
    invoke-direct {v4, v5, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 256
    .line 257
    .line 258
    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 259
    .line 260
    .line 261
    new-instance v4, Landroid/util/Pair;

    .line 262
    .line 263
    const-string v5, "172.16.0.0"

    .line 264
    .line 265
    invoke-static {v5}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 266
    .line 267
    .line 268
    move-result-object v5

    .line 269
    const/16 v7, 0xc

    .line 270
    .line 271
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 272
    .line 273
    .line 274
    move-result-object v7

    .line 275
    invoke-direct {v4, v5, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 276
    .line 277
    .line 278
    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 279
    .line 280
    .line 281
    new-instance v4, Landroid/util/Pair;

    .line 282
    .line 283
    const-string v5, "192.168.0.0"

    .line 284
    .line 285
    invoke-static {v5}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 286
    .line 287
    .line 288
    move-result-object v5

    .line 289
    const/16 v7, 0x10

    .line 290
    .line 291
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 292
    .line 293
    .line 294
    move-result-object v7

    .line 295
    invoke-direct {v4, v5, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 296
    .line 297
    .line 298
    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 299
    .line 300
    .line 301
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 302
    .line 303
    .line 304
    move-result-object p0

    .line 305
    :cond_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 306
    .line 307
    .line 308
    move-result v4

    .line 309
    if-eqz v4, :cond_a

    .line 310
    .line 311
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 312
    .line 313
    .line 314
    move-result-object v4

    .line 315
    check-cast v4, Landroid/util/Pair;

    .line 316
    .line 317
    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 318
    .line 319
    check-cast v5, Ljava/net/InetAddress;

    .line 320
    .line 321
    new-instance v7, Ljava/math/BigInteger;

    .line 322
    .line 323
    invoke-virtual {v5}, Ljava/net/InetAddress;->getAddress()[B

    .line 324
    .line 325
    .line 326
    move-result-object v8

    .line 327
    invoke-direct {v7, v3, v8}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 328
    .line 329
    .line 330
    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 331
    .line 332
    check-cast v4, Ljava/lang/Integer;

    .line 333
    .line 334
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 335
    .line 336
    .line 337
    move-result v4

    .line 338
    const-wide/16 v11, -0x1

    .line 339
    .line 340
    invoke-static {v11, v12}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    .line 341
    .line 342
    .line 343
    move-result-object v8

    .line 344
    invoke-virtual {v5}, Ljava/net/InetAddress;->getAddress()[B

    .line 345
    .line 346
    .line 347
    move-result-object v11

    .line 348
    array-length v11, v11

    .line 349
    mul-int/lit8 v11, v11, 0x8

    .line 350
    .line 351
    sub-int/2addr v11, v4

    .line 352
    invoke-virtual {v8, v11}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    .line 353
    .line 354
    .line 355
    move-result-object v8

    .line 356
    new-instance v11, Ljava/util/ArrayList;

    .line 357
    .line 358
    invoke-direct {v11, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 359
    .line 360
    .line 361
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 362
    .line 363
    .line 364
    move-result-object v11

    .line 365
    :cond_9
    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 366
    .line 367
    .line 368
    move-result v12

    .line 369
    if-eqz v12, :cond_8

    .line 370
    .line 371
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 372
    .line 373
    .line 374
    move-result-object v12

    .line 375
    check-cast v12, Ljava/net/InetAddress;

    .line 376
    .line 377
    invoke-virtual {v5}, Ljava/net/InetAddress;->getAddress()[B

    .line 378
    .line 379
    .line 380
    move-result-object v13

    .line 381
    array-length v13, v13

    .line 382
    invoke-virtual {v12}, Ljava/net/InetAddress;->getAddress()[B

    .line 383
    .line 384
    .line 385
    move-result-object v14

    .line 386
    array-length v14, v14

    .line 387
    if-ne v13, v14, :cond_9

    .line 388
    .line 389
    new-instance v13, Ljava/math/BigInteger;

    .line 390
    .line 391
    invoke-virtual {v12}, Ljava/net/InetAddress;->getAddress()[B

    .line 392
    .line 393
    .line 394
    move-result-object v14

    .line 395
    invoke-direct {v13, v3, v14}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 396
    .line 397
    .line 398
    invoke-virtual {v7, v8}, Ljava/math/BigInteger;->and(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 399
    .line 400
    .line 401
    move-result-object v14

    .line 402
    invoke-virtual {v13, v8}, Ljava/math/BigInteger;->and(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 403
    .line 404
    .line 405
    move-result-object v13

    .line 406
    invoke-virtual {v14, v13}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    .line 407
    .line 408
    .line 409
    move-result v13

    .line 410
    if-eqz v13, :cond_9

    .line 411
    .line 412
    new-instance v13, Ljava/lang/StringBuilder;

    .line 413
    .line 414
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 415
    .line 416
    .line 417
    const-string v14, "Local DNS server host="

    .line 418
    .line 419
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 420
    .line 421
    .line 422
    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 423
    .line 424
    .line 425
    const-string v14, "/"

    .line 426
    .line 427
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 428
    .line 429
    .line 430
    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 431
    .line 432
    .line 433
    const-string v14, " dns="

    .line 434
    .line 435
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 436
    .line 437
    .line 438
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 439
    .line 440
    .line 441
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 442
    .line 443
    .line 444
    move-result-object v13

    .line 445
    invoke-static {v10, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    .line 447
    .line 448
    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 449
    .line 450
    .line 451
    goto :goto_3

    .line 452
    :catchall_3
    move-exception p0

    .line 453
    new-instance v3, Ljava/lang/StringBuilder;

    .line 454
    .line 455
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 456
    .line 457
    .line 458
    invoke-static {p0, v3, v6, p0, v10}, LB/g;->i(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 459
    .line 460
    .line 461
    :cond_a
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 462
    .line 463
    .line 464
    move-result p0

    .line 465
    if-eqz p0, :cond_b

    .line 466
    .line 467
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 468
    .line 469
    .line 470
    move-result p0

    .line 471
    if-ge p0, v1, :cond_c

    .line 472
    .line 473
    :cond_b
    :try_start_4
    const-string p0, "8.8.8.8"

    .line 474
    .line 475
    invoke-static {p0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 476
    .line 477
    .line 478
    move-result-object p0

    .line 479
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 480
    .line 481
    .line 482
    const-string p0, "8.8.4.4"

    .line 483
    .line 484
    invoke-static {p0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 485
    .line 486
    .line 487
    move-result-object p0

    .line 488
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 489
    .line 490
    .line 491
    if-eqz v2, :cond_c

    .line 492
    .line 493
    const-string p0, "2001:4860:4860::8888"

    .line 494
    .line 495
    invoke-static {p0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 496
    .line 497
    .line 498
    move-result-object p0

    .line 499
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 500
    .line 501
    .line 502
    const-string p0, "2001:4860:4860::8844"

    .line 503
    .line 504
    invoke-static {p0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 505
    .line 506
    .line 507
    move-result-object p0

    .line 508
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 509
    .line 510
    .line 511
    goto :goto_4

    .line 512
    :catchall_4
    move-exception p0

    .line 513
    new-instance v1, Ljava/lang/StringBuilder;

    .line 514
    .line 515
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 516
    .line 517
    .line 518
    invoke-static {p0, v1, v6, p0, v10}, LB/g;->i(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 519
    .line 520
    .line 521
    :cond_c
    :goto_4
    new-instance p0, Ljava/lang/StringBuilder;

    .line 522
    .line 523
    const-string v1, "Get DNS="

    .line 524
    .line 525
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 526
    .line 527
    .line 528
    invoke-static {v9, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 529
    .line 530
    .line 531
    move-result-object v1

    .line 532
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 533
    .line 534
    .line 535
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 536
    .line 537
    .line 538
    move-result-object p0

    .line 539
    invoke-static {v10, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    .line 541
    .line 542
    return-object v0
.end method

.method private getEnforcingNotification(III)Landroid/app/Notification;
    .locals 10

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-class v1, Leu/faircode/netguard/ActivityMain;

    .line 4
    .line 5
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    const/high16 v2, 0x8000000

    .line 10
    .line 11
    invoke-static {p0, v1, v0, v2}, Leu/faircode/netguard/PendingIntentCompat;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    new-instance v2, Landroid/util/TypedValue;

    .line 16
    .line 17
    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    const v4, 0x7f040065

    .line 25
    .line 26
    .line 27
    const/4 v5, 0x1

    .line 28
    invoke-virtual {v3, v4, v2, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 29
    .line 30
    .line 31
    new-instance v3, Landroidx/core/app/w;

    .line 32
    .line 33
    const-string v4, "foreground"

    .line 34
    .line 35
    invoke-direct {v3, p0, v4}, Landroidx/core/app/w;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    iget-boolean v4, p0, Leu/faircode/netguard/ServiceSinkhole;->last_metered:Z

    .line 39
    .line 40
    invoke-direct {p0, v4}, Leu/faircode/netguard/ServiceSinkhole;->isLockedDown(Z)Z

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    if-eqz v4, :cond_0

    .line 45
    .line 46
    const v4, 0x7f080089

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    const v4, 0x7f080094

    .line 51
    .line 52
    .line 53
    :goto_0
    invoke-virtual {v3, v4}, Landroidx/core/app/w;->q(I)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v3, v0}, Landroidx/core/app/w;->i(Landroid/app/PendingIntent;)V

    .line 57
    .line 58
    .line 59
    iget v0, v2, Landroid/util/TypedValue;->data:I

    .line 60
    .line 61
    invoke-virtual {v3, v0}, Landroidx/core/app/w;->g(I)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v3, v5}, Landroidx/core/app/w;->n(Z)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v3, v1}, Landroidx/core/app/w;->d(Z)V

    .line 68
    .line 69
    .line 70
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 71
    .line 72
    const/16 v2, 0x18

    .line 73
    .line 74
    const v4, 0x7f10008e

    .line 75
    .line 76
    .line 77
    if-lt v0, v2, :cond_1

    .line 78
    .line 79
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v6

    .line 83
    invoke-virtual {v3, v6}, Landroidx/core/app/w;->k(Ljava/lang/CharSequence;)V

    .line 84
    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_1
    const v6, 0x7f100023

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v6

    .line 94
    invoke-virtual {v3, v6}, Landroidx/core/app/w;->k(Ljava/lang/CharSequence;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v6

    .line 101
    invoke-virtual {v3, v6}, Landroidx/core/app/w;->j(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    :goto_1
    invoke-virtual {v3}, Landroidx/core/app/w;->e()V

    .line 105
    .line 106
    .line 107
    const/4 v6, -0x1

    .line 108
    invoke-virtual {v3, v6}, Landroidx/core/app/w;->t(I)V

    .line 109
    .line 110
    .line 111
    const/4 v6, -0x2

    .line 112
    invoke-virtual {v3, v6}, Landroidx/core/app/w;->o(I)V

    .line 113
    .line 114
    .line 115
    if-ltz p1, :cond_2

    .line 116
    .line 117
    iput p1, p0, Leu/faircode/netguard/ServiceSinkhole;->last_allowed:I

    .line 118
    .line 119
    goto :goto_2

    .line 120
    :cond_2
    iget p1, p0, Leu/faircode/netguard/ServiceSinkhole;->last_allowed:I

    .line 121
    .line 122
    :goto_2
    if-ltz p2, :cond_3

    .line 123
    .line 124
    iput p2, p0, Leu/faircode/netguard/ServiceSinkhole;->last_blocked:I

    .line 125
    .line 126
    goto :goto_3

    .line 127
    :cond_3
    iget p2, p0, Leu/faircode/netguard/ServiceSinkhole;->last_blocked:I

    .line 128
    .line 129
    :goto_3
    if-ltz p3, :cond_4

    .line 130
    .line 131
    iput p3, p0, Leu/faircode/netguard/ServiceSinkhole;->last_hosts:I

    .line 132
    .line 133
    goto :goto_4

    .line 134
    :cond_4
    iget p3, p0, Leu/faircode/netguard/ServiceSinkhole;->last_hosts:I

    .line 135
    .line 136
    :goto_4
    if-gez p1, :cond_6

    .line 137
    .line 138
    if-gez p2, :cond_6

    .line 139
    .line 140
    if-ltz p3, :cond_5

    .line 141
    .line 142
    goto :goto_5

    .line 143
    :cond_5
    invoke-virtual {v3}, Landroidx/core/app/w;->b()Landroid/app/Notification;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    return-object p1

    .line 148
    :cond_6
    :goto_5
    const v6, 0x7f100086

    .line 149
    .line 150
    .line 151
    const/4 v7, 0x3

    .line 152
    const v8, 0x7f100076

    .line 153
    .line 154
    .line 155
    const/4 v9, 0x2

    .line 156
    if-lt v0, v2, :cond_8

    .line 157
    .line 158
    invoke-static {p0}, Leu/faircode/netguard/Util;->isPlayStoreInstall(Landroid/content/Context;)Z

    .line 159
    .line 160
    .line 161
    move-result v0

    .line 162
    if-eqz v0, :cond_7

    .line 163
    .line 164
    new-array p3, v9, [Ljava/lang/Object;

    .line 165
    .line 166
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 167
    .line 168
    .line 169
    move-result-object p1

    .line 170
    aput-object p1, p3, v1

    .line 171
    .line 172
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 173
    .line 174
    .line 175
    move-result-object p1

    .line 176
    aput-object p1, p3, v5

    .line 177
    .line 178
    invoke-virtual {p0, v6, p3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object p1

    .line 182
    invoke-virtual {v3, p1}, Landroidx/core/app/w;->j(Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    goto :goto_6

    .line 186
    :cond_7
    new-array v0, v7, [Ljava/lang/Object;

    .line 187
    .line 188
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 189
    .line 190
    .line 191
    move-result-object p1

    .line 192
    aput-object p1, v0, v1

    .line 193
    .line 194
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 195
    .line 196
    .line 197
    move-result-object p1

    .line 198
    aput-object p1, v0, v5

    .line 199
    .line 200
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 201
    .line 202
    .line 203
    move-result-object p1

    .line 204
    aput-object p1, v0, v9

    .line 205
    .line 206
    invoke-virtual {p0, v8, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object p1

    .line 210
    invoke-virtual {v3, p1}, Landroidx/core/app/w;->j(Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    :goto_6
    invoke-virtual {v3}, Landroidx/core/app/w;->b()Landroid/app/Notification;

    .line 214
    .line 215
    .line 216
    move-result-object p1

    .line 217
    return-object p1

    .line 218
    :cond_8
    new-instance v0, Landroidx/core/app/v;

    .line 219
    .line 220
    invoke-direct {v0, v3}, Landroidx/core/app/v;-><init>(Landroidx/core/app/w;)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v2

    .line 227
    invoke-virtual {v0, v2}, Landroidx/core/app/v;->f(Ljava/lang/String;)V

    .line 228
    .line 229
    .line 230
    invoke-static {p0}, Leu/faircode/netguard/Util;->isPlayStoreInstall(Landroid/content/Context;)Z

    .line 231
    .line 232
    .line 233
    move-result v2

    .line 234
    if-eqz v2, :cond_9

    .line 235
    .line 236
    new-array p3, v9, [Ljava/lang/Object;

    .line 237
    .line 238
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 239
    .line 240
    .line 241
    move-result-object p1

    .line 242
    aput-object p1, p3, v1

    .line 243
    .line 244
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 245
    .line 246
    .line 247
    move-result-object p1

    .line 248
    aput-object p1, p3, v5

    .line 249
    .line 250
    invoke-virtual {p0, v6, p3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object p1

    .line 254
    invoke-virtual {v0, p1}, Landroidx/core/app/v;->g(Ljava/lang/CharSequence;)V

    .line 255
    .line 256
    .line 257
    goto :goto_7

    .line 258
    :cond_9
    new-array v2, v7, [Ljava/lang/Object;

    .line 259
    .line 260
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 261
    .line 262
    .line 263
    move-result-object p1

    .line 264
    aput-object p1, v2, v1

    .line 265
    .line 266
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 267
    .line 268
    .line 269
    move-result-object p1

    .line 270
    aput-object p1, v2, v5

    .line 271
    .line 272
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 273
    .line 274
    .line 275
    move-result-object p1

    .line 276
    aput-object p1, v2, v9

    .line 277
    .line 278
    invoke-virtual {p0, v8, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object p1

    .line 282
    invoke-virtual {v0, p1}, Landroidx/core/app/v;->g(Ljava/lang/CharSequence;)V

    .line 283
    .line 284
    .line 285
    :goto_7
    invoke-virtual {v0}, Landroidx/core/app/y;->c()Landroid/app/Notification;

    .line 286
    .line 287
    .line 288
    move-result-object p1

    .line 289
    return-object p1
.end method

.method private static declared-synchronized getLock(Landroid/content/Context;)Landroid/os/PowerManager$WakeLock;
    .locals 4

    .line 1
    const-class v0, Leu/faircode/netguard/ServiceSinkhole;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Leu/faircode/netguard/ServiceSinkhole;->wlInstance:Landroid/os/PowerManager$WakeLock;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    const-string v1, "power"

    .line 9
    .line 10
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    check-cast v1, Landroid/os/PowerManager;

    .line 15
    .line 16
    new-instance v2, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    const v3, 0x7f100023

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string p0, " wakelock"

    .line 32
    .line 33
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    const/4 v2, 0x1

    .line 41
    invoke-virtual {v1, v2, p0}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    sput-object p0, Leu/faircode/netguard/ServiceSinkhole;->wlInstance:Landroid/os/PowerManager$WakeLock;

    .line 46
    .line 47
    sget-object p0, Leu/faircode/netguard/ServiceSinkhole;->wlInstance:Landroid/os/PowerManager$WakeLock;

    .line 48
    .line 49
    invoke-virtual {p0, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 50
    .line 51
    .line 52
    :cond_0
    sget-object p0, Leu/faircode/netguard/ServiceSinkhole;->wlInstance:Landroid/os/PowerManager$WakeLock;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    .line 54
    monitor-exit v0

    .line 55
    return-object p0

    .line 56
    :catchall_0
    move-exception p0

    .line 57
    monitor-exit v0

    .line 58
    throw p0
.end method

.method private getUidQ(IILjava/lang/String;ILjava/lang/String;I)I
    .locals 1

    .line 1
    const/4 p1, 0x6

    .line 2
    const/4 v0, -0x1

    .line 3
    if-eq p2, p1, :cond_0

    .line 4
    .line 5
    const/16 p1, 0x11

    .line 6
    .line 7
    if-eq p2, p1, :cond_0

    .line 8
    .line 9
    return v0

    .line 10
    :cond_0
    const-string p1, "connectivity"

    .line 11
    .line 12
    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Landroid/net/ConnectivityManager;

    .line 17
    .line 18
    if-nez p1, :cond_1

    .line 19
    .line 20
    return v0

    .line 21
    :cond_1
    new-instance v0, Ljava/net/InetSocketAddress;

    .line 22
    .line 23
    invoke-direct {v0, p3, p4}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 24
    .line 25
    .line 26
    new-instance p3, Ljava/net/InetSocketAddress;

    .line 27
    .line 28
    invoke-direct {p3, p5, p6}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 29
    .line 30
    .line 31
    new-instance p4, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    const-string p5, "Get uid local="

    .line 34
    .line 35
    invoke-direct {p4, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string p5, " remote="

    .line 42
    .line 43
    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p4

    .line 53
    const-string p5, "NetGuard.Service"

    .line 54
    .line 55
    invoke-static {p5, p4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    invoke-static {p1, p2, v0, p3}, LE0/e;->b(Landroid/net/ConnectivityManager;ILjava/net/InetSocketAddress;Ljava/net/InetSocketAddress;)I

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    new-instance p2, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    const-string p3, "Get uid="

    .line 65
    .line 66
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p2

    .line 76
    invoke-static {p5, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    .line 78
    .line 79
    return p1
.end method

.method private getWaitingNotification()Landroid/app/Notification;
    .locals 6

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-class v1, Leu/faircode/netguard/ActivityMain;

    .line 4
    .line 5
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    const/high16 v2, 0x8000000

    .line 10
    .line 11
    invoke-static {p0, v1, v0, v2}, Leu/faircode/netguard/PendingIntentCompat;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    new-instance v2, Landroid/util/TypedValue;

    .line 16
    .line 17
    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    const v4, 0x7f040065

    .line 25
    .line 26
    .line 27
    const/4 v5, 0x1

    .line 28
    invoke-virtual {v3, v4, v2, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 29
    .line 30
    .line 31
    new-instance v3, Landroidx/core/app/w;

    .line 32
    .line 33
    const-string v4, "foreground"

    .line 34
    .line 35
    invoke-direct {v3, p0, v4}, Landroidx/core/app/w;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    const v4, 0x7f080094

    .line 39
    .line 40
    .line 41
    invoke-virtual {v3, v4}, Landroidx/core/app/w;->q(I)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v3, v0}, Landroidx/core/app/w;->i(Landroid/app/PendingIntent;)V

    .line 45
    .line 46
    .line 47
    iget v0, v2, Landroid/util/TypedValue;->data:I

    .line 48
    .line 49
    invoke-virtual {v3, v0}, Landroidx/core/app/w;->g(I)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v3, v5}, Landroidx/core/app/w;->n(Z)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v3, v1}, Landroidx/core/app/w;->d(Z)V

    .line 56
    .line 57
    .line 58
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 59
    .line 60
    const/16 v1, 0x18

    .line 61
    .line 62
    const v2, 0x7f100099

    .line 63
    .line 64
    .line 65
    if-lt v0, v1, :cond_0

    .line 66
    .line 67
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-virtual {v3, v0}, Landroidx/core/app/w;->k(Ljava/lang/CharSequence;)V

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_0
    const v0, 0x7f100023

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    invoke-virtual {v3, v0}, Landroidx/core/app/w;->k(Ljava/lang/CharSequence;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-virtual {v3, v0}, Landroidx/core/app/w;->j(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    :goto_0
    invoke-virtual {v3}, Landroidx/core/app/w;->e()V

    .line 93
    .line 94
    .line 95
    const/4 v0, -0x1

    .line 96
    invoke-virtual {v3, v0}, Landroidx/core/app/w;->t(I)V

    .line 97
    .line 98
    .line 99
    const/4 v0, -0x2

    .line 100
    invoke-virtual {v3, v0}, Landroidx/core/app/w;->o(I)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v3}, Landroidx/core/app/w;->b()Landroid/app/Notification;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    return-object v0
.end method

.method private isActiveNetwork(Landroid/net/Network;)Z
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-direct {p0}, Leu/faircode/netguard/ServiceSinkhole;->getActiveNetwork()Landroid/net/Network;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p1, v0}, Landroid/net/Network;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p1, 0x0

    .line 16
    :goto_0
    return p1
.end method

.method private isAddressAllowed(Leu/faircode/netguard/Packet;)Leu/faircode/netguard/Allowed;
    .locals 14

    .line 1
    const-string v0, "Filtering "

    .line 2
    .line 3
    const-string v1, "DNS expired "

    .line 4
    .line 5
    invoke-static {p0}, Lt0/a;->s(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    iget-object v3, p0, Leu/faircode/netguard/ServiceSinkhole;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 10
    .line 11
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 16
    .line 17
    .line 18
    const/4 v3, 0x0

    .line 19
    iput-boolean v3, p1, Leu/faircode/netguard/Packet;->allowed:Z

    .line 20
    .line 21
    const-string v4, "filter"

    .line 22
    .line 23
    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    if-eqz v4, :cond_8

    .line 28
    .line 29
    iget v4, p1, Leu/faircode/netguard/Packet;->protocol:I

    .line 30
    .line 31
    const/16 v5, 0x11

    .line 32
    .line 33
    const/4 v6, 0x1

    .line 34
    const-string v7, "NetGuard.Service"

    .line 35
    .line 36
    if-ne v4, v5, :cond_0

    .line 37
    .line 38
    const-string v4, "filter_udp"

    .line 39
    .line 40
    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    if-nez v4, :cond_0

    .line 45
    .line 46
    iput-boolean v6, p1, Leu/faircode/netguard/Packet;->allowed:Z

    .line 47
    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    const-string v1, "Allowing UDP "

    .line 51
    .line 52
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    goto/16 :goto_4

    .line 66
    .line 67
    :cond_0
    iget v4, p1, Leu/faircode/netguard/Packet;->uid:I

    .line 68
    .line 69
    const/16 v5, 0x7d0

    .line 70
    .line 71
    if-ge v4, v5, :cond_1

    .line 72
    .line 73
    iget-boolean v4, p0, Leu/faircode/netguard/ServiceSinkhole;->last_connected:Z

    .line 74
    .line 75
    if-nez v4, :cond_1

    .line 76
    .line 77
    iget v4, p1, Leu/faircode/netguard/Packet;->protocol:I

    .line 78
    .line 79
    invoke-direct {p0, v4}, Leu/faircode/netguard/ServiceSinkhole;->isSupported(I)Z

    .line 80
    .line 81
    .line 82
    :cond_1
    iget v4, p1, Leu/faircode/netguard/Packet;->uid:I

    .line 83
    .line 84
    iget-object v5, p0, Leu/faircode/netguard/ServiceSinkhole;->mapUidKnown:Ljava/util/Map;

    .line 85
    .line 86
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 87
    .line 88
    .line 89
    move-result-object v4

    .line 90
    invoke-interface {v5, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v4

    .line 94
    if-nez v4, :cond_2

    .line 95
    .line 96
    iget v4, p1, Leu/faircode/netguard/Packet;->protocol:I

    .line 97
    .line 98
    invoke-direct {p0, v4}, Leu/faircode/netguard/ServiceSinkhole;->isSupported(I)Z

    .line 99
    .line 100
    .line 101
    move-result v4

    .line 102
    if-eqz v4, :cond_2

    .line 103
    .line 104
    iput-boolean v6, p1, Leu/faircode/netguard/Packet;->allowed:Z

    .line 105
    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    .line 107
    .line 108
    const-string v1, "Allowing unknown system "

    .line 109
    .line 110
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    invoke-static {v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    .line 122
    .line 123
    goto/16 :goto_4

    .line 124
    .line 125
    :cond_2
    iget v4, p1, Leu/faircode/netguard/Packet;->uid:I

    .line 126
    .line 127
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 128
    .line 129
    .line 130
    move-result v5

    .line 131
    if-ne v4, v5, :cond_3

    .line 132
    .line 133
    iput-boolean v6, p1, Leu/faircode/netguard/Packet;->allowed:Z

    .line 134
    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    .line 136
    .line 137
    const-string v1, "Allowing self "

    .line 138
    .line 139
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    invoke-static {v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    .line 151
    .line 152
    goto/16 :goto_4

    .line 153
    .line 154
    :cond_3
    new-instance v4, Leu/faircode/netguard/ServiceSinkhole$IPKey;

    .line 155
    .line 156
    iget v10, p1, Leu/faircode/netguard/Packet;->version:I

    .line 157
    .line 158
    iget v11, p1, Leu/faircode/netguard/Packet;->protocol:I

    .line 159
    .line 160
    iget v12, p1, Leu/faircode/netguard/Packet;->dport:I

    .line 161
    .line 162
    iget v13, p1, Leu/faircode/netguard/Packet;->uid:I

    .line 163
    .line 164
    move-object v8, v4

    .line 165
    move-object v9, p0

    .line 166
    invoke-direct/range {v8 .. v13}, Leu/faircode/netguard/ServiceSinkhole$IPKey;-><init>(Leu/faircode/netguard/ServiceSinkhole;IIII)V

    .line 167
    .line 168
    .line 169
    iget-object v5, p0, Leu/faircode/netguard/ServiceSinkhole;->mapUidIPFilters:Ljava/util/Map;

    .line 170
    .line 171
    invoke-interface {v5, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 172
    .line 173
    .line 174
    move-result v5

    .line 175
    if-eqz v5, :cond_6

    .line 176
    .line 177
    :try_start_0
    iget-object v5, p1, Leu/faircode/netguard/Packet;->daddr:Ljava/lang/String;

    .line 178
    .line 179
    invoke-static {v5}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 180
    .line 181
    .line 182
    move-result-object v5

    .line 183
    iget-object v8, p0, Leu/faircode/netguard/ServiceSinkhole;->mapUidIPFilters:Ljava/util/Map;

    .line 184
    .line 185
    invoke-interface {v8, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    move-result-object v4

    .line 189
    check-cast v4, Ljava/util/Map;

    .line 190
    .line 191
    if-eqz v4, :cond_6

    .line 192
    .line 193
    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 194
    .line 195
    .line 196
    move-result v8

    .line 197
    if-eqz v8, :cond_6

    .line 198
    .line 199
    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    move-result-object v4

    .line 203
    check-cast v4, Leu/faircode/netguard/ServiceSinkhole$IPRule;

    .line 204
    .line 205
    invoke-virtual {v4}, Leu/faircode/netguard/ServiceSinkhole$IPRule;->isExpired()Z

    .line 206
    .line 207
    .line 208
    move-result v5
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_1

    .line 209
    const-string v8, " rule "

    .line 210
    .line 211
    if-eqz v5, :cond_4

    .line 212
    .line 213
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 214
    .line 215
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v0

    .line 231
    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_1

    .line 232
    .line 233
    .line 234
    goto :goto_2

    .line 235
    :cond_4
    :try_start_2
    invoke-virtual {v4}, Leu/faircode/netguard/ServiceSinkhole$IPRule;->isBlocked()Z

    .line 236
    .line 237
    .line 238
    move-result v1

    .line 239
    if-nez v1, :cond_5

    .line 240
    .line 241
    const/4 v1, 0x1

    .line 242
    goto :goto_0

    .line 243
    :cond_5
    const/4 v1, 0x0

    .line 244
    :goto_0
    iput-boolean v1, p1, Leu/faircode/netguard/Packet;->allowed:Z

    .line 245
    .line 246
    new-instance v1, Ljava/lang/StringBuilder;

    .line 247
    .line 248
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 249
    .line 250
    .line 251
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    const-string v0, " allowed="

    .line 255
    .line 256
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    .line 258
    .line 259
    iget-boolean v0, p1, Leu/faircode/netguard/Packet;->allowed:Z

    .line 260
    .line 261
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 262
    .line 263
    .line 264
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    .line 266
    .line 267
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 268
    .line 269
    .line 270
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object v0

    .line 274
    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_0

    .line 275
    .line 276
    .line 277
    goto :goto_3

    .line 278
    :catch_0
    move-exception v0

    .line 279
    goto :goto_1

    .line 280
    :catch_1
    move-exception v0

    .line 281
    const/4 v6, 0x0

    .line 282
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 283
    .line 284
    const-string v4, "Allowed "

    .line 285
    .line 286
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 287
    .line 288
    .line 289
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object v4

    .line 293
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    .line 295
    .line 296
    const-string v4, "\n"

    .line 297
    .line 298
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    .line 300
    .line 301
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object v0

    .line 305
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    .line 307
    .line 308
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    move-result-object v0

    .line 312
    invoke-static {v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    .line 314
    .line 315
    goto :goto_3

    .line 316
    :cond_6
    :goto_2
    const/4 v6, 0x0

    .line 317
    :goto_3
    if-nez v6, :cond_8

    .line 318
    .line 319
    iget-object v0, p0, Leu/faircode/netguard/ServiceSinkhole;->mapUidAllowed:Ljava/util/Map;

    .line 320
    .line 321
    iget v1, p1, Leu/faircode/netguard/Packet;->uid:I

    .line 322
    .line 323
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 324
    .line 325
    .line 326
    move-result-object v1

    .line 327
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 328
    .line 329
    .line 330
    move-result v0

    .line 331
    if-eqz v0, :cond_7

    .line 332
    .line 333
    iget-object v0, p0, Leu/faircode/netguard/ServiceSinkhole;->mapUidAllowed:Ljava/util/Map;

    .line 334
    .line 335
    iget v1, p1, Leu/faircode/netguard/Packet;->uid:I

    .line 336
    .line 337
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 338
    .line 339
    .line 340
    move-result-object v1

    .line 341
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    .line 343
    .line 344
    move-result-object v0

    .line 345
    check-cast v0, Ljava/lang/Boolean;

    .line 346
    .line 347
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 348
    .line 349
    .line 350
    move-result v0

    .line 351
    iput-boolean v0, p1, Leu/faircode/netguard/Packet;->allowed:Z

    .line 352
    .line 353
    goto :goto_4

    .line 354
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 355
    .line 356
    const-string v1, "No rules for "

    .line 357
    .line 358
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 359
    .line 360
    .line 361
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 362
    .line 363
    .line 364
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 365
    .line 366
    .line 367
    move-result-object v0

    .line 368
    invoke-static {v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    .line 370
    .line 371
    :cond_8
    :goto_4
    iget-boolean v0, p1, Leu/faircode/netguard/Packet;->allowed:Z

    .line 372
    .line 373
    if-eqz v0, :cond_b

    .line 374
    .line 375
    iget-object v0, p0, Leu/faircode/netguard/ServiceSinkhole;->mapForward:Ljava/util/Map;

    .line 376
    .line 377
    iget v1, p1, Leu/faircode/netguard/Packet;->dport:I

    .line 378
    .line 379
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 380
    .line 381
    .line 382
    move-result-object v1

    .line 383
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 384
    .line 385
    .line 386
    move-result v0

    .line 387
    if-eqz v0, :cond_a

    .line 388
    .line 389
    iget-object v0, p0, Leu/faircode/netguard/ServiceSinkhole;->mapForward:Ljava/util/Map;

    .line 390
    .line 391
    iget v1, p1, Leu/faircode/netguard/Packet;->dport:I

    .line 392
    .line 393
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 394
    .line 395
    .line 396
    move-result-object v1

    .line 397
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    .line 399
    .line 400
    move-result-object v0

    .line 401
    check-cast v0, Leu/faircode/netguard/Forward;

    .line 402
    .line 403
    iget v1, v0, Leu/faircode/netguard/Forward;->ruid:I

    .line 404
    .line 405
    iget v4, p1, Leu/faircode/netguard/Packet;->uid:I

    .line 406
    .line 407
    if-ne v1, v4, :cond_9

    .line 408
    .line 409
    new-instance v0, Leu/faircode/netguard/Allowed;

    .line 410
    .line 411
    invoke-direct {v0}, Leu/faircode/netguard/Allowed;-><init>()V

    .line 412
    .line 413
    .line 414
    goto :goto_5

    .line 415
    :cond_9
    new-instance v1, Leu/faircode/netguard/Allowed;

    .line 416
    .line 417
    iget-object v4, v0, Leu/faircode/netguard/Forward;->raddr:Ljava/lang/String;

    .line 418
    .line 419
    iget v5, v0, Leu/faircode/netguard/Forward;->rport:I

    .line 420
    .line 421
    invoke-direct {v1, v4, v5}, Leu/faircode/netguard/Allowed;-><init>(Ljava/lang/String;I)V

    .line 422
    .line 423
    .line 424
    new-instance v4, Ljava/lang/StringBuilder;

    .line 425
    .line 426
    const-string v5, "> "

    .line 427
    .line 428
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 429
    .line 430
    .line 431
    iget-object v5, v0, Leu/faircode/netguard/Forward;->raddr:Ljava/lang/String;

    .line 432
    .line 433
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    .line 435
    .line 436
    const-string v5, "/"

    .line 437
    .line 438
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 439
    .line 440
    .line 441
    iget v0, v0, Leu/faircode/netguard/Forward;->rport:I

    .line 442
    .line 443
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 444
    .line 445
    .line 446
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 447
    .line 448
    .line 449
    move-result-object v0

    .line 450
    iput-object v0, p1, Leu/faircode/netguard/Packet;->data:Ljava/lang/String;

    .line 451
    .line 452
    move-object v0, v1

    .line 453
    goto :goto_5

    .line 454
    :cond_a
    new-instance v0, Leu/faircode/netguard/Allowed;

    .line 455
    .line 456
    invoke-direct {v0}, Leu/faircode/netguard/Allowed;-><init>()V

    .line 457
    .line 458
    .line 459
    goto :goto_5

    .line 460
    :cond_b
    const/4 v0, 0x0

    .line 461
    :goto_5
    iget-object v1, p0, Leu/faircode/netguard/ServiceSinkhole;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 462
    .line 463
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 464
    .line 465
    .line 466
    move-result-object v1

    .line 467
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 468
    .line 469
    .line 470
    const-string v1, "log"

    .line 471
    .line 472
    invoke-interface {v2, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 473
    .line 474
    .line 475
    move-result v1

    .line 476
    if-nez v1, :cond_c

    .line 477
    .line 478
    const-string v1, "log_app"

    .line 479
    .line 480
    invoke-interface {v2, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 481
    .line 482
    .line 483
    move-result v1

    .line 484
    if-eqz v1, :cond_e

    .line 485
    .line 486
    :cond_c
    iget v1, p1, Leu/faircode/netguard/Packet;->protocol:I

    .line 487
    .line 488
    const/4 v2, 0x6

    .line 489
    if-ne v1, v2, :cond_d

    .line 490
    .line 491
    const-string v1, ""

    .line 492
    .line 493
    iget-object v2, p1, Leu/faircode/netguard/Packet;->flags:Ljava/lang/String;

    .line 494
    .line 495
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 496
    .line 497
    .line 498
    move-result v1

    .line 499
    if-nez v1, :cond_e

    .line 500
    .line 501
    :cond_d
    iget v1, p1, Leu/faircode/netguard/Packet;->uid:I

    .line 502
    .line 503
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 504
    .line 505
    .line 506
    move-result v2

    .line 507
    if-eq v1, v2, :cond_e

    .line 508
    .line 509
    invoke-direct {p0, p1}, Leu/faircode/netguard/ServiceSinkhole;->logPacket(Leu/faircode/netguard/Packet;)V

    .line 510
    .line 511
    .line 512
    :cond_e
    return-object v0
.end method

.method private isDomainBlocked(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Leu/faircode/netguard/ServiceSinkhole;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Leu/faircode/netguard/ServiceSinkhole;->mapHostsBlocked:Ljava/util/Map;

    .line 11
    .line 12
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Leu/faircode/netguard/ServiceSinkhole;->mapHostsBlocked:Ljava/util/Map;

    .line 19
    .line 20
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    check-cast p1, Ljava/lang/Boolean;

    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-eqz p1, :cond_0

    .line 31
    .line 32
    const/4 p1, 0x1

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const/4 p1, 0x0

    .line 35
    :goto_0
    iget-object v0, p0, Leu/faircode/netguard/ServiceSinkhole;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 42
    .line 43
    .line 44
    return p1
.end method

.method private isLockedDown(Z)Z
    .locals 6

    .line 1
    invoke-static {p0}, Lt0/a;->s(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "lockdown"

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const-string v3, "lockdown_wifi"

    .line 13
    .line 14
    const/4 v4, 0x1

    .line 15
    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    const-string v5, "lockdown_other"

    .line 20
    .line 21
    invoke-interface {v0, v5, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz p1, :cond_0

    .line 26
    .line 27
    if-nez v0, :cond_1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    if-nez v3, :cond_1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    move v2, v1

    .line 34
    :goto_0
    return v2
.end method

.method private isSupported(I)Z
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/16 v1, 0x3a

    if-eq p1, v1, :cond_1

    const/4 v1, 0x6

    if-eq p1, v1, :cond_1

    const/16 v1, 0x11

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method private native jni_clear(J)V
.end method

.method private native jni_done(J)V
.end method

.method private native jni_get_mtu()I
.end method

.method private native jni_init(I)J
.end method

.method private static native jni_pcap(Ljava/lang/String;II)V
.end method

.method private native jni_run(JIZI)V
.end method

.method private native jni_socks5(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
.end method

.method private native jni_start(JI)V
.end method

.method private native jni_stop(J)V
.end method

.method private listenConnectivityChanges()V
    .locals 4

    .line 1
    const-string v0, "NetGuard.Service"

    .line 2
    .line 3
    const-string v1, "Starting listening to connectivity changes"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    new-instance v1, Landroid/content/IntentFilter;

    .line 9
    .line 10
    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-object v2, p0, Leu/faircode/netguard/ServiceSinkhole;->connectivityChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 19
    .line 20
    invoke-static {p0, v2, v1}, Landroidx/core/content/f;->e(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 21
    .line 22
    .line 23
    const/4 v1, 0x1

    .line 24
    iput-boolean v1, p0, Leu/faircode/netguard/ServiceSinkhole;->registeredConnectivityChanged:Z

    .line 25
    .line 26
    const-string v2, "Starting listening to service state changes"

    .line 27
    .line 28
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    const-string v0, "phone"

    .line 32
    .line 33
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 38
    .line 39
    if-eqz v0, :cond_0

    .line 40
    .line 41
    iget-object v2, p0, Leu/faircode/netguard/ServiceSinkhole;->phoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 42
    .line 43
    const/16 v3, 0x40

    .line 44
    .line 45
    invoke-virtual {v0, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 46
    .line 47
    .line 48
    iput-boolean v1, p0, Leu/faircode/netguard/ServiceSinkhole;->phone_state:Z

    .line 49
    .line 50
    :cond_0
    return-void
.end method

.method private listenNetworkChanges()V
    .locals 3

    .line 1
    const-string v0, "NetGuard.Service"

    .line 2
    .line 3
    const-string v1, "Starting listening to network changes"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    const-string v0, "connectivity"

    .line 9
    .line 10
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 15
    .line 16
    new-instance v1, Landroid/net/NetworkRequest$Builder;

    .line 17
    .line 18
    invoke-direct {v1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 19
    .line 20
    .line 21
    const/16 v2, 0xc

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    .line 24
    .line 25
    .line 26
    const/16 v2, 0x10

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    .line 29
    .line 30
    .line 31
    new-instance v2, Leu/faircode/netguard/ServiceSinkhole$9;

    .line 32
    .line 33
    invoke-direct {v2, p0}, Leu/faircode/netguard/ServiceSinkhole$9;-><init>(Leu/faircode/netguard/ServiceSinkhole;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v0, v1, v2}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 41
    .line 42
    .line 43
    iput-object v2, p0, Leu/faircode/netguard/ServiceSinkhole;->networkCallback:Ljava/lang/Object;

    .line 44
    .line 45
    return-void
.end method

.method private logPacket(Leu/faircode/netguard/Packet;)V
    .locals 1

    .line 1
    iget-object v0, p0, Leu/faircode/netguard/ServiceSinkhole;->logHandler:Leu/faircode/netguard/ServiceSinkhole$LogHandler;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Leu/faircode/netguard/ServiceSinkhole$LogHandler;->queue(Leu/faircode/netguard/Packet;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private nativeError(ILjava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Native error "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string p1, ": "

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    const-string v0, "NetGuard.Service"

    .line 24
    .line 25
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    invoke-direct {p0, p2}, Leu/faircode/netguard/ServiceSinkhole;->showErrorNotification(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method private nativeExit(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Native exit reason="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "NetGuard.Service"

    .line 16
    .line 17
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    invoke-direct {p0, p1}, Leu/faircode/netguard/ServiceSinkhole;->showErrorNotification(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-static {p0}, Lt0/a;->s(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    const-string v0, "enabled"

    .line 34
    .line 35
    const/4 v1, 0x0

    .line 36
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 41
    .line 42
    .line 43
    invoke-static {p0}, Leu/faircode/netguard/WidgetMain;->updateWidgets(Landroid/content/Context;)V

    .line 44
    .line 45
    .line 46
    :cond_0
    return-void
.end method

.method private prepareForwarding()V
    .locals 10

    .line 1
    iget-object v0, p0, Leu/faircode/netguard/ServiceSinkhole;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Leu/faircode/netguard/ServiceSinkhole;->mapForward:Ljava/util/Map;

    .line 11
    .line 12
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 13
    .line 14
    .line 15
    invoke-static {p0}, Lt0/a;->s(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v1, "filter"

    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    invoke-static {p0}, Leu/faircode/netguard/DatabaseHelper;->getInstance(Landroid/content/Context;)Leu/faircode/netguard/DatabaseHelper;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v0}, Leu/faircode/netguard/DatabaseHelper;->getForwarding()Landroid/database/Cursor;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    :try_start_0
    const-string v1, "protocol"

    .line 37
    .line 38
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    const-string v2, "dport"

    .line 43
    .line 44
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    const-string v3, "raddr"

    .line 49
    .line 50
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    const-string v4, "rport"

    .line 55
    .line 56
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    const-string v5, "ruid"

    .line 61
    .line 62
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    move-result v5

    .line 66
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 67
    .line 68
    .line 69
    move-result v6

    .line 70
    if-eqz v6, :cond_0

    .line 71
    .line 72
    new-instance v6, Leu/faircode/netguard/Forward;

    .line 73
    .line 74
    invoke-direct {v6}, Leu/faircode/netguard/Forward;-><init>()V

    .line 75
    .line 76
    .line 77
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    .line 78
    .line 79
    .line 80
    move-result v7

    .line 81
    iput v7, v6, Leu/faircode/netguard/Forward;->protocol:I

    .line 82
    .line 83
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    .line 84
    .line 85
    .line 86
    move-result v7

    .line 87
    iput v7, v6, Leu/faircode/netguard/Forward;->dport:I

    .line 88
    .line 89
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v7

    .line 93
    iput-object v7, v6, Leu/faircode/netguard/Forward;->raddr:Ljava/lang/String;

    .line 94
    .line 95
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    .line 96
    .line 97
    .line 98
    move-result v7

    .line 99
    iput v7, v6, Leu/faircode/netguard/Forward;->rport:I

    .line 100
    .line 101
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    .line 102
    .line 103
    .line 104
    move-result v7

    .line 105
    iput v7, v6, Leu/faircode/netguard/Forward;->ruid:I

    .line 106
    .line 107
    iget-object v7, p0, Leu/faircode/netguard/ServiceSinkhole;->mapForward:Ljava/util/Map;

    .line 108
    .line 109
    iget v8, v6, Leu/faircode/netguard/Forward;->dport:I

    .line 110
    .line 111
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 112
    .line 113
    .line 114
    move-result-object v8

    .line 115
    invoke-interface {v7, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    const-string v7, "NetGuard.Service"

    .line 119
    .line 120
    new-instance v8, Ljava/lang/StringBuilder;

    .line 121
    .line 122
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 123
    .line 124
    .line 125
    const-string v9, "Forward "

    .line 126
    .line 127
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v6

    .line 137
    invoke-static {v7, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    .line 139
    .line 140
    goto :goto_0

    .line 141
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 142
    .line 143
    .line 144
    goto :goto_2

    .line 145
    :catchall_0
    move-exception v1

    .line 146
    if-eqz v0, :cond_1

    .line 147
    .line 148
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 149
    .line 150
    .line 151
    goto :goto_1

    .line 152
    :catchall_1
    move-exception v0

    .line 153
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 154
    .line 155
    .line 156
    :cond_1
    :goto_1
    throw v1

    .line 157
    :cond_2
    :goto_2
    iget-object v0, p0, Leu/faircode/netguard/ServiceSinkhole;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 158
    .line 159
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 164
    .line 165
    .line 166
    return-void
.end method

.method private prepareHostsBlocked()V
    .locals 10

    .line 1
    const-string v0, "\n"

    .line 2
    .line 3
    invoke-static {p0}, Lt0/a;->s(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-string v2, "filter"

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    const/4 v4, 0x1

    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    const-string v2, "use_hosts"

    .line 18
    .line 19
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    const/4 v1, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 v1, 0x0

    .line 28
    :goto_0
    new-instance v2, Ljava/io/File;

    .line 29
    .line 30
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 31
    .line 32
    .line 33
    move-result-object v5

    .line 34
    const-string v6, "hosts.txt"

    .line 35
    .line 36
    invoke-direct {v2, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    const-string v5, "NetGuard.Service"

    .line 40
    .line 41
    if-eqz v1, :cond_a

    .line 42
    .line 43
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 44
    .line 45
    .line 46
    move-result v6

    .line 47
    if-eqz v6, :cond_a

    .line 48
    .line 49
    invoke-virtual {v2}, Ljava/io/File;->canRead()Z

    .line 50
    .line 51
    .line 52
    move-result v6

    .line 53
    if-nez v6, :cond_1

    .line 54
    .line 55
    goto/16 :goto_8

    .line 56
    .line 57
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    .line 58
    .line 59
    .line 60
    move-result-wide v6

    .line 61
    iget-wide v8, p0, Leu/faircode/netguard/ServiceSinkhole;->last_hosts_modified:J

    .line 62
    .line 63
    cmp-long v1, v6, v8

    .line 64
    .line 65
    if-eqz v1, :cond_2

    .line 66
    .line 67
    const/4 v1, 0x1

    .line 68
    goto :goto_1

    .line 69
    :cond_2
    const/4 v1, 0x0

    .line 70
    :goto_1
    if-nez v1, :cond_3

    .line 71
    .line 72
    iget-object v1, p0, Leu/faircode/netguard/ServiceSinkhole;->mapHostsBlocked:Ljava/util/Map;

    .line 73
    .line 74
    invoke-interface {v1}, Ljava/util/Map;->size()I

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    if-lez v1, :cond_3

    .line 79
    .line 80
    const-string v0, "Hosts file unchanged"

    .line 81
    .line 82
    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    .line 84
    .line 85
    return-void

    .line 86
    :cond_3
    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    .line 87
    .line 88
    .line 89
    move-result-wide v6

    .line 90
    iput-wide v6, p0, Leu/faircode/netguard/ServiceSinkhole;->last_hosts_modified:J

    .line 91
    .line 92
    iget-object v1, p0, Leu/faircode/netguard/ServiceSinkhole;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 93
    .line 94
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 99
    .line 100
    .line 101
    iget-object v1, p0, Leu/faircode/netguard/ServiceSinkhole;->mapHostsBlocked:Ljava/util/Map;

    .line 102
    .line 103
    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 104
    .line 105
    .line 106
    const/4 v1, 0x0

    .line 107
    :try_start_0
    new-instance v6, Ljava/io/BufferedReader;

    .line 108
    .line 109
    new-instance v7, Ljava/io/FileReader;

    .line 110
    .line 111
    invoke-direct {v7, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 112
    .line 113
    .line 114
    invoke-direct {v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    .line 116
    .line 117
    const/4 v1, 0x0

    .line 118
    :cond_4
    :goto_2
    :try_start_1
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v2

    .line 122
    if-eqz v2, :cond_7

    .line 123
    .line 124
    const/16 v7, 0x23

    .line 125
    .line 126
    invoke-virtual {v2, v7}, Ljava/lang/String;->indexOf(I)I

    .line 127
    .line 128
    .line 129
    move-result v7

    .line 130
    if-ltz v7, :cond_5

    .line 131
    .line 132
    invoke-virtual {v2, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v2

    .line 136
    :cond_5
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v2

    .line 140
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 141
    .line 142
    .line 143
    move-result v7

    .line 144
    if-lez v7, :cond_4

    .line 145
    .line 146
    const-string v7, "\\s+"

    .line 147
    .line 148
    invoke-virtual {v2, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v7

    .line 152
    array-length v8, v7

    .line 153
    const/4 v9, 0x2

    .line 154
    if-ne v8, v9, :cond_6

    .line 155
    .line 156
    add-int/lit8 v1, v1, 0x1

    .line 157
    .line 158
    iget-object v2, p0, Leu/faircode/netguard/ServiceSinkhole;->mapHostsBlocked:Ljava/util/Map;

    .line 159
    .line 160
    aget-object v7, v7, v4

    .line 161
    .line 162
    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 163
    .line 164
    invoke-interface {v2, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    goto :goto_2

    .line 168
    :cond_6
    new-instance v7, Ljava/lang/StringBuilder;

    .line 169
    .line 170
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 171
    .line 172
    .line 173
    const-string v8, "Invalid hosts file line: "

    .line 174
    .line 175
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v2

    .line 185
    invoke-static {v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    .line 187
    .line 188
    goto :goto_2

    .line 189
    :cond_7
    iget-object v2, p0, Leu/faircode/netguard/ServiceSinkhole;->mapHostsBlocked:Ljava/util/Map;

    .line 190
    .line 191
    const-string v3, "test.netguard.me"

    .line 192
    .line 193
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 194
    .line 195
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    new-instance v2, Ljava/lang/StringBuilder;

    .line 199
    .line 200
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 201
    .line 202
    .line 203
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    const-string v1, " hosts read"

    .line 207
    .line 208
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v1

    .line 215
    invoke-static {v5, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 216
    .line 217
    .line 218
    :try_start_2
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 219
    .line 220
    .line 221
    goto :goto_5

    .line 222
    :catch_0
    move-exception v1

    .line 223
    new-instance v2, Ljava/lang/StringBuilder;

    .line 224
    .line 225
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 226
    .line 227
    .line 228
    goto :goto_4

    .line 229
    :catch_1
    move-exception v1

    .line 230
    goto :goto_3

    .line 231
    :catchall_0
    move-exception v2

    .line 232
    goto :goto_6

    .line 233
    :catch_2
    move-exception v2

    .line 234
    move-object v6, v1

    .line 235
    move-object v1, v2

    .line 236
    :goto_3
    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    .line 237
    .line 238
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 239
    .line 240
    .line 241
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v3

    .line 245
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    .line 247
    .line 248
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    .line 250
    .line 251
    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object v1

    .line 255
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v1

    .line 262
    invoke-static {v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 263
    .line 264
    .line 265
    if-eqz v6, :cond_8

    .line 266
    .line 267
    :try_start_4
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 268
    .line 269
    .line 270
    goto :goto_5

    .line 271
    :catch_3
    move-exception v1

    .line 272
    new-instance v2, Ljava/lang/StringBuilder;

    .line 273
    .line 274
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 275
    .line 276
    .line 277
    :goto_4
    invoke-static {v1, v2, v0, v1, v5}, LB/i;->f(Ljava/io/IOException;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/IOException;Ljava/lang/String;)V

    .line 278
    .line 279
    .line 280
    :cond_8
    :goto_5
    iget-object v0, p0, Leu/faircode/netguard/ServiceSinkhole;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 281
    .line 282
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 283
    .line 284
    .line 285
    move-result-object v0

    .line 286
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 287
    .line 288
    .line 289
    return-void

    .line 290
    :catchall_1
    move-exception v1

    .line 291
    move-object v2, v1

    .line 292
    move-object v1, v6

    .line 293
    :goto_6
    if-eqz v1, :cond_9

    .line 294
    .line 295
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 296
    .line 297
    .line 298
    goto :goto_7

    .line 299
    :catch_4
    move-exception v1

    .line 300
    new-instance v3, Ljava/lang/StringBuilder;

    .line 301
    .line 302
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 303
    .line 304
    .line 305
    invoke-static {v1, v3, v0, v1, v5}, LB/i;->f(Ljava/io/IOException;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/IOException;Ljava/lang/String;)V

    .line 306
    .line 307
    .line 308
    :cond_9
    :goto_7
    throw v2

    .line 309
    :cond_a
    :goto_8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 310
    .line 311
    const-string v3, "Hosts file use="

    .line 312
    .line 313
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 314
    .line 315
    .line 316
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 317
    .line 318
    .line 319
    const-string v1, " exists="

    .line 320
    .line 321
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    .line 323
    .line 324
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 325
    .line 326
    .line 327
    move-result v1

    .line 328
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 329
    .line 330
    .line 331
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 332
    .line 333
    .line 334
    move-result-object v0

    .line 335
    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    .line 337
    .line 338
    iget-object v0, p0, Leu/faircode/netguard/ServiceSinkhole;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 339
    .line 340
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 341
    .line 342
    .line 343
    move-result-object v0

    .line 344
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 345
    .line 346
    .line 347
    iget-object v0, p0, Leu/faircode/netguard/ServiceSinkhole;->mapHostsBlocked:Ljava/util/Map;

    .line 348
    .line 349
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 350
    .line 351
    .line 352
    iget-object v0, p0, Leu/faircode/netguard/ServiceSinkhole;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 353
    .line 354
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 355
    .line 356
    .line 357
    move-result-object v0

    .line 358
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 359
    .line 360
    .line 361
    return-void
.end method

.method private prepareMalwareList()V
    .locals 10

    .line 1
    const-string v0, "\n"

    .line 2
    .line 3
    invoke-static {p0}, Lt0/a;->s(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-string v2, "filter"

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    const/4 v4, 0x1

    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    const-string v2, "malware"

    .line 18
    .line 19
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    const/4 v1, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 v1, 0x0

    .line 28
    :goto_0
    new-instance v2, Ljava/io/File;

    .line 29
    .line 30
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 31
    .line 32
    .line 33
    move-result-object v5

    .line 34
    const-string v6, "malware.txt"

    .line 35
    .line 36
    invoke-direct {v2, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    const-string v5, "NetGuard.Service"

    .line 40
    .line 41
    if-eqz v1, :cond_a

    .line 42
    .line 43
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 44
    .line 45
    .line 46
    move-result v6

    .line 47
    if-eqz v6, :cond_a

    .line 48
    .line 49
    invoke-virtual {v2}, Ljava/io/File;->canRead()Z

    .line 50
    .line 51
    .line 52
    move-result v6

    .line 53
    if-nez v6, :cond_1

    .line 54
    .line 55
    goto/16 :goto_8

    .line 56
    .line 57
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    .line 58
    .line 59
    .line 60
    move-result-wide v6

    .line 61
    iget-wide v8, p0, Leu/faircode/netguard/ServiceSinkhole;->last_malware_modified:J

    .line 62
    .line 63
    cmp-long v1, v6, v8

    .line 64
    .line 65
    if-eqz v1, :cond_2

    .line 66
    .line 67
    const/4 v1, 0x1

    .line 68
    goto :goto_1

    .line 69
    :cond_2
    const/4 v1, 0x0

    .line 70
    :goto_1
    if-nez v1, :cond_3

    .line 71
    .line 72
    iget-object v1, p0, Leu/faircode/netguard/ServiceSinkhole;->mapMalware:Ljava/util/Map;

    .line 73
    .line 74
    invoke-interface {v1}, Ljava/util/Map;->size()I

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    if-lez v1, :cond_3

    .line 79
    .line 80
    const-string v0, "Malware unchanged"

    .line 81
    .line 82
    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    .line 84
    .line 85
    return-void

    .line 86
    :cond_3
    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    .line 87
    .line 88
    .line 89
    move-result-wide v6

    .line 90
    iput-wide v6, p0, Leu/faircode/netguard/ServiceSinkhole;->last_malware_modified:J

    .line 91
    .line 92
    iget-object v1, p0, Leu/faircode/netguard/ServiceSinkhole;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 93
    .line 94
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 99
    .line 100
    .line 101
    iget-object v1, p0, Leu/faircode/netguard/ServiceSinkhole;->mapMalware:Ljava/util/Map;

    .line 102
    .line 103
    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 104
    .line 105
    .line 106
    const/4 v1, 0x0

    .line 107
    :try_start_0
    new-instance v6, Ljava/io/BufferedReader;

    .line 108
    .line 109
    new-instance v7, Ljava/io/FileReader;

    .line 110
    .line 111
    invoke-direct {v7, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 112
    .line 113
    .line 114
    invoke-direct {v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    .line 116
    .line 117
    const/4 v1, 0x0

    .line 118
    :cond_4
    :goto_2
    :try_start_1
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v2

    .line 122
    if-eqz v2, :cond_7

    .line 123
    .line 124
    const/16 v7, 0x23

    .line 125
    .line 126
    invoke-virtual {v2, v7}, Ljava/lang/String;->indexOf(I)I

    .line 127
    .line 128
    .line 129
    move-result v7

    .line 130
    if-ltz v7, :cond_5

    .line 131
    .line 132
    invoke-virtual {v2, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v2

    .line 136
    :cond_5
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v2

    .line 140
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 141
    .line 142
    .line 143
    move-result v7

    .line 144
    if-lez v7, :cond_4

    .line 145
    .line 146
    const-string v7, "\\s+"

    .line 147
    .line 148
    invoke-virtual {v2, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v7

    .line 152
    array-length v8, v7

    .line 153
    if-le v8, v4, :cond_6

    .line 154
    .line 155
    add-int/lit8 v1, v1, 0x1

    .line 156
    .line 157
    iget-object v2, p0, Leu/faircode/netguard/ServiceSinkhole;->mapMalware:Ljava/util/Map;

    .line 158
    .line 159
    aget-object v7, v7, v4

    .line 160
    .line 161
    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 162
    .line 163
    invoke-interface {v2, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    goto :goto_2

    .line 167
    :cond_6
    new-instance v7, Ljava/lang/StringBuilder;

    .line 168
    .line 169
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 170
    .line 171
    .line 172
    const-string v8, "Invalid malware file line: "

    .line 173
    .line 174
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v2

    .line 184
    invoke-static {v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    .line 186
    .line 187
    goto :goto_2

    .line 188
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    .line 189
    .line 190
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 191
    .line 192
    .line 193
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    const-string v1, " malware read"

    .line 197
    .line 198
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v1

    .line 205
    invoke-static {v5, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 206
    .line 207
    .line 208
    :try_start_2
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 209
    .line 210
    .line 211
    goto :goto_5

    .line 212
    :catch_0
    move-exception v1

    .line 213
    new-instance v2, Ljava/lang/StringBuilder;

    .line 214
    .line 215
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 216
    .line 217
    .line 218
    goto :goto_4

    .line 219
    :catch_1
    move-exception v1

    .line 220
    goto :goto_3

    .line 221
    :catchall_0
    move-exception v2

    .line 222
    goto :goto_6

    .line 223
    :catch_2
    move-exception v2

    .line 224
    move-object v6, v1

    .line 225
    move-object v1, v2

    .line 226
    :goto_3
    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    .line 227
    .line 228
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 229
    .line 230
    .line 231
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v3

    .line 235
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    .line 237
    .line 238
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v1

    .line 245
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    .line 247
    .line 248
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v1

    .line 252
    invoke-static {v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 253
    .line 254
    .line 255
    if-eqz v6, :cond_8

    .line 256
    .line 257
    :try_start_4
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 258
    .line 259
    .line 260
    goto :goto_5

    .line 261
    :catch_3
    move-exception v1

    .line 262
    new-instance v2, Ljava/lang/StringBuilder;

    .line 263
    .line 264
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 265
    .line 266
    .line 267
    :goto_4
    invoke-static {v1, v2, v0, v1, v5}, LB/i;->f(Ljava/io/IOException;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/IOException;Ljava/lang/String;)V

    .line 268
    .line 269
    .line 270
    :cond_8
    :goto_5
    iget-object v0, p0, Leu/faircode/netguard/ServiceSinkhole;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 271
    .line 272
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 273
    .line 274
    .line 275
    move-result-object v0

    .line 276
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 277
    .line 278
    .line 279
    return-void

    .line 280
    :catchall_1
    move-exception v1

    .line 281
    move-object v2, v1

    .line 282
    move-object v1, v6

    .line 283
    :goto_6
    if-eqz v1, :cond_9

    .line 284
    .line 285
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 286
    .line 287
    .line 288
    goto :goto_7

    .line 289
    :catch_4
    move-exception v1

    .line 290
    new-instance v3, Ljava/lang/StringBuilder;

    .line 291
    .line 292
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 293
    .line 294
    .line 295
    invoke-static {v1, v3, v0, v1, v5}, LB/i;->f(Ljava/io/IOException;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/IOException;Ljava/lang/String;)V

    .line 296
    .line 297
    .line 298
    :cond_9
    :goto_7
    throw v2

    .line 299
    :cond_a
    :goto_8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 300
    .line 301
    const-string v3, "Malware use="

    .line 302
    .line 303
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 304
    .line 305
    .line 306
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 307
    .line 308
    .line 309
    const-string v1, " exists="

    .line 310
    .line 311
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    .line 313
    .line 314
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 315
    .line 316
    .line 317
    move-result v1

    .line 318
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 319
    .line 320
    .line 321
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 322
    .line 323
    .line 324
    move-result-object v0

    .line 325
    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    .line 327
    .line 328
    iget-object v0, p0, Leu/faircode/netguard/ServiceSinkhole;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 329
    .line 330
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 331
    .line 332
    .line 333
    move-result-object v0

    .line 334
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 335
    .line 336
    .line 337
    iget-object v0, p0, Leu/faircode/netguard/ServiceSinkhole;->mapMalware:Ljava/util/Map;

    .line 338
    .line 339
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 340
    .line 341
    .line 342
    iget-object v0, p0, Leu/faircode/netguard/ServiceSinkhole;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 343
    .line 344
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 345
    .line 346
    .line 347
    move-result-object v0

    .line 348
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 349
    .line 350
    .line 351
    return-void
.end method

.method private prepareNotify(Ljava/util/List;)V
    .locals 7

    .line 1
    invoke-static {p0}, Lt0/a;->s(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "notify_access"

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const-string v3, "manage_system"

    .line 13
    .line 14
    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    iget-object v3, p0, Leu/faircode/netguard/ServiceSinkhole;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 19
    .line 20
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 25
    .line 26
    .line 27
    iget-object v3, p0, Leu/faircode/netguard/ServiceSinkhole;->mapNotify:Ljava/util/Map;

    .line 28
    .line 29
    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 30
    .line 31
    .line 32
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    if-eqz v3, :cond_2

    .line 41
    .line 42
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    check-cast v3, Leu/faircode/netguard/Rule;

    .line 47
    .line 48
    iget-object v4, p0, Leu/faircode/netguard/ServiceSinkhole;->mapNotify:Ljava/util/Map;

    .line 49
    .line 50
    iget v5, v3, Leu/faircode/netguard/Rule;->uid:I

    .line 51
    .line 52
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 53
    .line 54
    .line 55
    move-result-object v5

    .line 56
    if-eqz v1, :cond_1

    .line 57
    .line 58
    iget-boolean v6, v3, Leu/faircode/netguard/Rule;->notify:Z

    .line 59
    .line 60
    if-eqz v6, :cond_1

    .line 61
    .line 62
    if-nez v0, :cond_0

    .line 63
    .line 64
    iget-boolean v3, v3, Leu/faircode/netguard/Rule;->system:Z

    .line 65
    .line 66
    if-nez v3, :cond_1

    .line 67
    .line 68
    :cond_0
    const/4 v3, 0x1

    .line 69
    goto :goto_1

    .line 70
    :cond_1
    const/4 v3, 0x0

    .line 71
    :goto_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_2
    iget-object p1, p0, Leu/faircode/netguard/ServiceSinkhole;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 80
    .line 81
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 86
    .line 87
    .line 88
    return-void
.end method

.method private prepareUidAllowed(Ljava/util/List;Ljava/util/List;)V
    .locals 3

    .line 1
    iget-object v0, p0, Leu/faircode/netguard/ServiceSinkhole;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Leu/faircode/netguard/ServiceSinkhole;->mapUidAllowed:Ljava/util/Map;

    .line 11
    .line 12
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 13
    .line 14
    .line 15
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Leu/faircode/netguard/Rule;

    .line 30
    .line 31
    iget-object v1, p0, Leu/faircode/netguard/ServiceSinkhole;->mapUidAllowed:Ljava/util/Map;

    .line 32
    .line 33
    iget v0, v0, Leu/faircode/netguard/Rule;->uid:I

    .line 34
    .line 35
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 40
    .line 41
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    iget-object p1, p0, Leu/faircode/netguard/ServiceSinkhole;->mapUidKnown:Ljava/util/Map;

    .line 46
    .line 47
    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 48
    .line 49
    .line 50
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 55
    .line 56
    .line 57
    move-result p2

    .line 58
    if-eqz p2, :cond_1

    .line 59
    .line 60
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object p2

    .line 64
    check-cast p2, Leu/faircode/netguard/Rule;

    .line 65
    .line 66
    iget-object v0, p0, Leu/faircode/netguard/ServiceSinkhole;->mapUidKnown:Ljava/util/Map;

    .line 67
    .line 68
    iget v1, p2, Leu/faircode/netguard/Rule;->uid:I

    .line 69
    .line 70
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    iget p2, p2, Leu/faircode/netguard/Rule;->uid:I

    .line 75
    .line 76
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 77
    .line 78
    .line 79
    move-result-object p2

    .line 80
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_1
    iget-object p1, p0, Leu/faircode/netguard/ServiceSinkhole;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 85
    .line 86
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 91
    .line 92
    .line 93
    return-void
.end method

.method private prepareUidIPFilters(Ljava/lang/String;)V
    .locals 31

    .line 1
    move-object/from16 v10, p0

    .line 2
    .line 3
    move-object/from16 v11, p1

    .line 4
    .line 5
    const-string v0, "lockdown"

    .line 6
    .line 7
    const/4 v12, 0x0

    .line 8
    invoke-virtual {v10, v0, v12}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 9
    .line 10
    .line 11
    move-result-object v13

    .line 12
    iget-object v0, v10, Leu/faircode/netguard/ServiceSinkhole;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 19
    .line 20
    .line 21
    if-nez v11, :cond_0

    .line 22
    .line 23
    iget-object v0, v10, Leu/faircode/netguard/ServiceSinkhole;->mapUidIPFilters:Ljava/util/Map;

    .line 24
    .line 25
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 26
    .line 27
    .line 28
    const-string v0, "filter"

    .line 29
    .line 30
    invoke-static {v0, v10}, Leu/faircode/netguard/IAB;->isPurchased(Ljava/lang/String;Landroid/content/Context;)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-nez v0, :cond_0

    .line 35
    .line 36
    iget-object v0, v10, Leu/faircode/netguard/ServiceSinkhole;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :cond_0
    invoke-static/range {p0 .. p0}, Leu/faircode/netguard/DatabaseHelper;->getInstance(Landroid/content/Context;)Leu/faircode/netguard/DatabaseHelper;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {v0, v11}, Leu/faircode/netguard/DatabaseHelper;->getAccessDns(Ljava/lang/String;)Landroid/database/Cursor;

    .line 51
    .line 52
    .line 53
    move-result-object v14

    .line 54
    :try_start_0
    const-string v0, "uid"

    .line 55
    .line 56
    invoke-interface {v14, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    move-result v15

    .line 60
    const-string v0, "version"

    .line 61
    .line 62
    invoke-interface {v14, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    move-result v8

    .line 66
    const-string v0, "protocol"

    .line 67
    .line 68
    invoke-interface {v14, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 69
    .line 70
    .line 71
    move-result v9

    .line 72
    const-string v0, "daddr"

    .line 73
    .line 74
    invoke-interface {v14, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 75
    .line 76
    .line 77
    move-result v7

    .line 78
    const-string v0, "resource"

    .line 79
    .line 80
    invoke-interface {v14, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 81
    .line 82
    .line 83
    move-result v6

    .line 84
    const-string v0, "dport"

    .line 85
    .line 86
    invoke-interface {v14, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 87
    .line 88
    .line 89
    move-result v5

    .line 90
    const-string v0, "block"

    .line 91
    .line 92
    invoke-interface {v14, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 93
    .line 94
    .line 95
    move-result v4

    .line 96
    const-string v0, "time"

    .line 97
    .line 98
    invoke-interface {v14, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 99
    .line 100
    .line 101
    move-result v3

    .line 102
    const-string v0, "ttl"

    .line 103
    .line 104
    invoke-interface {v14, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 105
    .line 106
    .line 107
    move-result v2

    .line 108
    :goto_0
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    if-eqz v0, :cond_12

    .line 113
    .line 114
    invoke-interface {v14, v15}, Landroid/database/Cursor;->getInt(I)I

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    invoke-interface {v14, v8}, Landroid/database/Cursor;->getInt(I)I

    .line 119
    .line 120
    .line 121
    move-result v1

    .line 122
    invoke-interface {v14, v9}, Landroid/database/Cursor;->getInt(I)I

    .line 123
    .line 124
    .line 125
    move-result v16

    .line 126
    invoke-interface {v14, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v12

    .line 130
    invoke-interface {v14, v6}, Landroid/database/Cursor;->isNull(I)Z

    .line 131
    .line 132
    .line 133
    move-result v18

    .line 134
    if-eqz v18, :cond_1

    .line 135
    .line 136
    const/16 v18, 0x0

    .line 137
    .line 138
    goto :goto_1

    .line 139
    :cond_1
    invoke-interface {v14, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v18

    .line 143
    :goto_1
    move/from16 v19, v15

    .line 144
    .line 145
    move-object/from16 v15, v18

    .line 146
    .line 147
    invoke-interface {v14, v5}, Landroid/database/Cursor;->getInt(I)I

    .line 148
    .line 149
    .line 150
    move-result v18

    .line 151
    invoke-interface {v14, v4}, Landroid/database/Cursor;->getInt(I)I

    .line 152
    .line 153
    .line 154
    move-result v20

    .line 155
    if-lez v20, :cond_2

    .line 156
    .line 157
    const/16 v20, 0x1

    .line 158
    .line 159
    move/from16 v20, v7

    .line 160
    .line 161
    const/4 v7, 0x1

    .line 162
    goto :goto_2

    .line 163
    :cond_2
    move/from16 v20, v7

    .line 164
    .line 165
    const/4 v7, 0x0

    .line 166
    :goto_2
    invoke-interface {v14, v3}, Landroid/database/Cursor;->isNull(I)Z

    .line 167
    .line 168
    .line 169
    move-result v21
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 170
    if-eqz v21, :cond_3

    .line 171
    .line 172
    :try_start_1
    new-instance v21, Ljava/util/Date;

    .line 173
    .line 174
    invoke-direct/range {v21 .. v21}, Ljava/util/Date;-><init>()V

    .line 175
    .line 176
    .line 177
    invoke-virtual/range {v21 .. v21}, Ljava/util/Date;->getTime()J

    .line 178
    .line 179
    .line 180
    move-result-wide v21
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 181
    goto :goto_3

    .line 182
    :catchall_0
    move-exception v0

    .line 183
    move-object v1, v0

    .line 184
    move-object/from16 v25, v14

    .line 185
    .line 186
    goto/16 :goto_f

    .line 187
    .line 188
    :cond_3
    :try_start_2
    invoke-interface {v14, v3}, Landroid/database/Cursor;->getLong(I)J

    .line 189
    .line 190
    .line 191
    move-result-wide v21

    .line 192
    :goto_3
    move/from16 v23, v8

    .line 193
    .line 194
    move/from16 v24, v9

    .line 195
    .line 196
    move-wide/from16 v8, v21

    .line 197
    .line 198
    invoke-interface {v14, v2}, Landroid/database/Cursor;->isNull(I)Z

    .line 199
    .line 200
    .line 201
    move-result v21

    .line 202
    if-eqz v21, :cond_4

    .line 203
    .line 204
    const-wide/32 v21, 0x240c8400

    .line 205
    .line 206
    .line 207
    goto :goto_4

    .line 208
    :cond_4
    invoke-interface {v14, v2}, Landroid/database/Cursor;->getLong(I)J

    .line 209
    .line 210
    .line 211
    move-result-wide v21

    .line 212
    :goto_4
    move-object/from16 v25, v12

    .line 213
    .line 214
    move-wide/from16 v11, v21

    .line 215
    .line 216
    move/from16 v21, v1

    .line 217
    .line 218
    iget-boolean v1, v10, Leu/faircode/netguard/ServiceSinkhole;->last_metered:Z

    .line 219
    .line 220
    invoke-direct {v10, v1}, Leu/faircode/netguard/ServiceSinkhole;->isLockedDown(Z)Z

    .line 221
    .line 222
    .line 223
    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 224
    if-eqz v1, :cond_5

    .line 225
    .line 226
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 227
    .line 228
    .line 229
    move-result-object v1

    .line 230
    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v1

    .line 234
    if-eqz v1, :cond_5

    .line 235
    .line 236
    move/from16 v22, v2

    .line 237
    .line 238
    array-length v2, v1

    .line 239
    if-lez v2, :cond_6

    .line 240
    .line 241
    const/4 v2, 0x0

    .line 242
    aget-object v1, v1, v2

    .line 243
    .line 244
    invoke-interface {v13, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 245
    .line 246
    .line 247
    move-result v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 248
    if-nez v1, :cond_7

    .line 249
    .line 250
    move-object/from16 v11, p1

    .line 251
    .line 252
    move/from16 v15, v19

    .line 253
    .line 254
    move/from16 v7, v20

    .line 255
    .line 256
    move/from16 v2, v22

    .line 257
    .line 258
    move/from16 v8, v23

    .line 259
    .line 260
    move/from16 v9, v24

    .line 261
    .line 262
    :goto_5
    const/4 v12, 0x0

    .line 263
    goto/16 :goto_0

    .line 264
    .line 265
    :cond_5
    move/from16 v22, v2

    .line 266
    .line 267
    :cond_6
    const/4 v2, 0x0

    .line 268
    :cond_7
    :try_start_4
    new-instance v1, Leu/faircode/netguard/ServiceSinkhole$IPKey;

    .line 269
    .line 270
    move/from16 v17, v21

    .line 271
    .line 272
    move-object/from16 v21, v1

    .line 273
    .line 274
    move-object/from16 v1, v21

    .line 275
    .line 276
    const/16 v26, 0x0

    .line 277
    .line 278
    move-object/from16 v2, p0

    .line 279
    .line 280
    move/from16 v27, v3

    .line 281
    .line 282
    move/from16 v3, v17

    .line 283
    .line 284
    move/from16 v28, v4

    .line 285
    .line 286
    move/from16 v4, v16

    .line 287
    .line 288
    move/from16 v16, v5

    .line 289
    .line 290
    move/from16 v5, v18

    .line 291
    .line 292
    move/from16 v18, v6

    .line 293
    .line 294
    move v6, v0

    .line 295
    invoke-direct/range {v1 .. v6}, Leu/faircode/netguard/ServiceSinkhole$IPKey;-><init>(Leu/faircode/netguard/ServiceSinkhole;IIII)V

    .line 296
    .line 297
    .line 298
    iget-object v6, v10, Leu/faircode/netguard/ServiceSinkhole;->mapUidIPFilters:Ljava/util/Map;

    .line 299
    .line 300
    monitor-enter v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 301
    :try_start_5
    iget-object v0, v10, Leu/faircode/netguard/ServiceSinkhole;->mapUidIPFilters:Ljava/util/Map;

    .line 302
    .line 303
    move-object/from16 v5, v21

    .line 304
    .line 305
    invoke-interface {v0, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 306
    .line 307
    .line 308
    move-result v0

    .line 309
    if-nez v0, :cond_8

    .line 310
    .line 311
    iget-object v0, v10, Leu/faircode/netguard/ServiceSinkhole;->mapUidIPFilters:Ljava/util/Map;

    .line 312
    .line 313
    new-instance v1, Ljava/util/HashMap;

    .line 314
    .line 315
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 316
    .line 317
    .line 318
    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 319
    .line 320
    .line 321
    :cond_8
    if-nez v15, :cond_9

    .line 322
    .line 323
    move-object/from16 v0, v25

    .line 324
    .line 325
    goto :goto_6

    .line 326
    :cond_9
    move-object v0, v15

    .line 327
    :goto_6
    :try_start_6
    invoke-static {v0}, Leu/faircode/netguard/Util;->isNumericAddress(Ljava/lang/String;)Z

    .line 328
    .line 329
    .line 330
    move-result v1

    .line 331
    if-eqz v1, :cond_10

    .line 332
    .line 333
    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 334
    .line 335
    .line 336
    move-result-object v4

    .line 337
    const/4 v1, 0x4

    .line 338
    move/from16 v2, v17

    .line 339
    .line 340
    if-ne v2, v1, :cond_a

    .line 341
    .line 342
    instance-of v1, v4, Ljava/net/Inet4Address;
    :try_end_6
    .catch Ljava/net/UnknownHostException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 343
    .line 344
    if-nez v1, :cond_a

    .line 345
    .line 346
    :try_start_7
    monitor-exit v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 347
    :goto_7
    move-object/from16 v11, p1

    .line 348
    .line 349
    move/from16 v5, v16

    .line 350
    .line 351
    move/from16 v6, v18

    .line 352
    .line 353
    move/from16 v15, v19

    .line 354
    .line 355
    move/from16 v7, v20

    .line 356
    .line 357
    move/from16 v2, v22

    .line 358
    .line 359
    move/from16 v8, v23

    .line 360
    .line 361
    move/from16 v9, v24

    .line 362
    .line 363
    :goto_8
    move/from16 v3, v27

    .line 364
    .line 365
    move/from16 v4, v28

    .line 366
    .line 367
    goto :goto_5

    .line 368
    :cond_a
    const/4 v1, 0x6

    .line 369
    if-ne v2, v1, :cond_b

    .line 370
    .line 371
    :try_start_8
    instance-of v1, v4, Ljava/net/Inet6Address;
    :try_end_8
    .catch Ljava/net/UnknownHostException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 372
    .line 373
    if-nez v1, :cond_b

    .line 374
    .line 375
    :try_start_9
    monitor-exit v6
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 376
    goto :goto_7

    .line 377
    :cond_b
    :try_start_a
    iget-object v1, v10, Leu/faircode/netguard/ServiceSinkhole;->mapUidIPFilters:Ljava/util/Map;

    .line 378
    .line 379
    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    .line 381
    .line 382
    move-result-object v1

    .line 383
    check-cast v1, Ljava/util/Map;

    .line 384
    .line 385
    invoke-interface {v1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 386
    .line 387
    .line 388
    move-result v17

    .line 389
    if-eqz v17, :cond_f

    .line 390
    .line 391
    iget-object v1, v10, Leu/faircode/netguard/ServiceSinkhole;->mapUidIPFilters:Ljava/util/Map;

    .line 392
    .line 393
    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    .line 395
    .line 396
    move-result-object v1

    .line 397
    check-cast v1, Ljava/util/Map;

    .line 398
    .line 399
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    .line 401
    .line 402
    move-result-object v1

    .line 403
    check-cast v1, Leu/faircode/netguard/ServiceSinkhole$IPRule;

    .line 404
    .line 405
    invoke-virtual {v1}, Leu/faircode/netguard/ServiceSinkhole$IPRule;->isBlocked()Z

    .line 406
    .line 407
    .line 408
    move-result v1

    .line 409
    if-nez v1, :cond_c

    .line 410
    .line 411
    goto/16 :goto_a

    .line 412
    .line 413
    :cond_c
    if-eqz v17, :cond_d

    .line 414
    .line 415
    iget-object v0, v10, Leu/faircode/netguard/ServiceSinkhole;->mapUidIPFilters:Ljava/util/Map;

    .line 416
    .line 417
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    .line 419
    .line 420
    move-result-object v0

    .line 421
    check-cast v0, Ljava/util/Map;

    .line 422
    .line 423
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    .line 425
    .line 426
    move-result-object v0

    .line 427
    check-cast v0, Leu/faircode/netguard/ServiceSinkhole$IPRule;

    .line 428
    .line 429
    invoke-virtual {v0, v8, v9, v11, v12}, Leu/faircode/netguard/ServiceSinkhole$IPRule;->updateExpires(JJ)V

    .line 430
    .line 431
    .line 432
    if-eqz p1, :cond_e

    .line 433
    .line 434
    const-wide/32 v0, 0xea60

    .line 435
    .line 436
    .line 437
    cmp-long v2, v11, v0

    .line 438
    .line 439
    if-lez v2, :cond_e

    .line 440
    .line 441
    const-string v0, "NetGuard.Service"

    .line 442
    .line 443
    new-instance v1, Ljava/lang/StringBuilder;

    .line 444
    .line 445
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 446
    .line 447
    .line 448
    const-string v2, "Address updated "

    .line 449
    .line 450
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 451
    .line 452
    .line 453
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 454
    .line 455
    .line 456
    const-string v2, " "

    .line 457
    .line 458
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 459
    .line 460
    .line 461
    move-object/from16 v3, v25

    .line 462
    .line 463
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 464
    .line 465
    .line 466
    const-string v2, "/"

    .line 467
    .line 468
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 469
    .line 470
    .line 471
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 472
    .line 473
    .line 474
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 475
    .line 476
    .line 477
    move-result-object v1

    .line 478
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    .line 480
    .line 481
    goto :goto_9

    .line 482
    :cond_d
    move-object/from16 v3, v25

    .line 483
    .line 484
    if-eqz p1, :cond_e

    .line 485
    .line 486
    const-string v0, "NetGuard.Service"

    .line 487
    .line 488
    new-instance v1, Ljava/lang/StringBuilder;

    .line 489
    .line 490
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 491
    .line 492
    .line 493
    const-string v2, "Ignored "

    .line 494
    .line 495
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 496
    .line 497
    .line 498
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 499
    .line 500
    .line 501
    const-string v2, " "

    .line 502
    .line 503
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 504
    .line 505
    .line 506
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 507
    .line 508
    .line 509
    const-string v2, "/"

    .line 510
    .line 511
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 512
    .line 513
    .line 514
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 515
    .line 516
    .line 517
    const-string v2, "="

    .line 518
    .line 519
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 520
    .line 521
    .line 522
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 523
    .line 524
    .line 525
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 526
    .line 527
    .line 528
    move-result-object v1

    .line 529
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    .line 531
    .line 532
    :cond_e
    :goto_9
    move-object/from16 v30, v6

    .line 533
    .line 534
    move-object/from16 v21, v13

    .line 535
    .line 536
    move-object/from16 v25, v14

    .line 537
    .line 538
    goto/16 :goto_c

    .line 539
    .line 540
    :cond_f
    :goto_a
    move-object/from16 v3, v25

    .line 541
    .line 542
    new-instance v2, Leu/faircode/netguard/ServiceSinkhole$IPRule;

    .line 543
    .line 544
    new-instance v1, Ljava/lang/StringBuilder;

    .line 545
    .line 546
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 547
    .line 548
    .line 549
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 550
    .line 551
    .line 552
    const-string v0, "/"

    .line 553
    .line 554
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 555
    .line 556
    .line 557
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 558
    .line 559
    .line 560
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 561
    .line 562
    .line 563
    move-result-object v0
    :try_end_a
    .catch Ljava/net/UnknownHostException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 564
    move-object v1, v2

    .line 565
    move-object/from16 v21, v13

    .line 566
    .line 567
    move-object v13, v2

    .line 568
    move-object/from16 v2, p0

    .line 569
    .line 570
    move-object/from16 v25, v14

    .line 571
    .line 572
    move-object v14, v3

    .line 573
    move-object v3, v5

    .line 574
    move-object/from16 v29, v15

    .line 575
    .line 576
    move-object v15, v4

    .line 577
    move-object v4, v0

    .line 578
    move-object v0, v5

    .line 579
    move v5, v7

    .line 580
    move-object/from16 v30, v6

    .line 581
    .line 582
    move-wide v6, v8

    .line 583
    move-wide v8, v11

    .line 584
    :try_start_b
    invoke-direct/range {v1 .. v9}, Leu/faircode/netguard/ServiceSinkhole$IPRule;-><init>(Leu/faircode/netguard/ServiceSinkhole;Leu/faircode/netguard/ServiceSinkhole$IPKey;Ljava/lang/String;ZJJ)V

    .line 585
    .line 586
    .line 587
    iget-object v1, v10, Leu/faircode/netguard/ServiceSinkhole;->mapUidIPFilters:Ljava/util/Map;

    .line 588
    .line 589
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 590
    .line 591
    .line 592
    move-result-object v1

    .line 593
    check-cast v1, Ljava/util/Map;

    .line 594
    .line 595
    invoke-interface {v1, v15, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 596
    .line 597
    .line 598
    if-eqz v17, :cond_11

    .line 599
    .line 600
    const-string v1, "NetGuard.Service"

    .line 601
    .line 602
    new-instance v2, Ljava/lang/StringBuilder;

    .line 603
    .line 604
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 605
    .line 606
    .line 607
    const-string v3, "Address conflict "

    .line 608
    .line 609
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 610
    .line 611
    .line 612
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 613
    .line 614
    .line 615
    const-string v0, " "

    .line 616
    .line 617
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 618
    .line 619
    .line 620
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 621
    .line 622
    .line 623
    const-string v0, "/"

    .line 624
    .line 625
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 626
    .line 627
    .line 628
    move-object/from16 v0, v29

    .line 629
    .line 630
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 631
    .line 632
    .line 633
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 634
    .line 635
    .line 636
    move-result-object v0

    .line 637
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    .line 639
    .line 640
    goto :goto_c

    .line 641
    :cond_10
    move-object/from16 v30, v6

    .line 642
    .line 643
    move-object/from16 v21, v13

    .line 644
    .line 645
    move-object/from16 v25, v14

    .line 646
    .line 647
    const-string v1, "NetGuard.Service"

    .line 648
    .line 649
    new-instance v2, Ljava/lang/StringBuilder;

    .line 650
    .line 651
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 652
    .line 653
    .line 654
    const-string v3, "Address not numeric "

    .line 655
    .line 656
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 657
    .line 658
    .line 659
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 660
    .line 661
    .line 662
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 663
    .line 664
    .line 665
    move-result-object v0

    .line 666
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/net/UnknownHostException; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 667
    .line 668
    .line 669
    goto :goto_c

    .line 670
    :catch_0
    move-exception v0

    .line 671
    goto :goto_b

    .line 672
    :catch_1
    move-exception v0

    .line 673
    move-object/from16 v30, v6

    .line 674
    .line 675
    move-object/from16 v21, v13

    .line 676
    .line 677
    move-object/from16 v25, v14

    .line 678
    .line 679
    :goto_b
    :try_start_c
    const-string v1, "NetGuard.Service"

    .line 680
    .line 681
    new-instance v2, Ljava/lang/StringBuilder;

    .line 682
    .line 683
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 684
    .line 685
    .line 686
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 687
    .line 688
    .line 689
    move-result-object v3

    .line 690
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 691
    .line 692
    .line 693
    const-string v3, "\n"

    .line 694
    .line 695
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 696
    .line 697
    .line 698
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 699
    .line 700
    .line 701
    move-result-object v0

    .line 702
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 703
    .line 704
    .line 705
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 706
    .line 707
    .line 708
    move-result-object v0

    .line 709
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    .line 711
    .line 712
    :cond_11
    :goto_c
    monitor-exit v30

    .line 713
    move-object/from16 v11, p1

    .line 714
    .line 715
    move/from16 v5, v16

    .line 716
    .line 717
    move/from16 v6, v18

    .line 718
    .line 719
    move/from16 v15, v19

    .line 720
    .line 721
    move/from16 v7, v20

    .line 722
    .line 723
    move-object/from16 v13, v21

    .line 724
    .line 725
    move/from16 v2, v22

    .line 726
    .line 727
    move/from16 v8, v23

    .line 728
    .line 729
    move/from16 v9, v24

    .line 730
    .line 731
    move-object/from16 v14, v25

    .line 732
    .line 733
    goto/16 :goto_8

    .line 734
    .line 735
    :catchall_1
    move-exception v0

    .line 736
    move-object/from16 v30, v6

    .line 737
    .line 738
    move-object/from16 v25, v14

    .line 739
    .line 740
    :goto_d
    monitor-exit v30
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 741
    :try_start_d
    throw v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 742
    :catchall_2
    move-exception v0

    .line 743
    goto :goto_e

    .line 744
    :catchall_3
    move-exception v0

    .line 745
    goto :goto_d

    .line 746
    :cond_12
    move-object/from16 v25, v14

    .line 747
    .line 748
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->close()V

    .line 749
    .line 750
    .line 751
    iget-object v0, v10, Leu/faircode/netguard/ServiceSinkhole;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 752
    .line 753
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 754
    .line 755
    .line 756
    move-result-object v0

    .line 757
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 758
    .line 759
    .line 760
    return-void

    .line 761
    :catchall_4
    move-exception v0

    .line 762
    move-object/from16 v25, v14

    .line 763
    .line 764
    :goto_e
    move-object v1, v0

    .line 765
    :goto_f
    if-eqz v25, :cond_13

    .line 766
    .line 767
    :try_start_e
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    .line 768
    .line 769
    .line 770
    goto :goto_10

    .line 771
    :catchall_5
    move-exception v0

    .line 772
    move-object v2, v0

    .line 773
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 774
    .line 775
    .line 776
    :cond_13
    :goto_10
    throw v1
.end method

.method private static declared-synchronized releaseLock(Landroid/content/Context;)V
    .locals 1

    .line 1
    const-class p0, Leu/faircode/netguard/ServiceSinkhole;

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    sget-object v0, Leu/faircode/netguard/ServiceSinkhole;->wlInstance:Landroid/os/PowerManager$WakeLock;

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    :goto_0
    sget-object v0, Leu/faircode/netguard/ServiceSinkhole;->wlInstance:Landroid/os/PowerManager$WakeLock;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    sget-object v0, Leu/faircode/netguard/ServiceSinkhole;->wlInstance:Landroid/os/PowerManager$WakeLock;

    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    sput-object v0, Leu/faircode/netguard/ServiceSinkhole;->wlInstance:Landroid/os/PowerManager$WakeLock;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    .line 25
    :cond_1
    monitor-exit p0

    .line 26
    return-void

    .line 27
    :catchall_0
    move-exception v0

    .line 28
    monitor-exit p0

    .line 29
    throw v0
.end method

.method public static reload(Ljava/lang/String;Landroid/content/Context;Z)V
    .locals 3

    .line 1
    invoke-static {p1}, Lt0/a;->s(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "enabled"

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    new-instance v0, Landroid/content/Intent;

    .line 15
    .line 16
    const-class v1, Leu/faircode/netguard/ServiceSinkhole;

    .line 17
    .line 18
    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 19
    .line 20
    .line 21
    const-string v1, "Command"

    .line 22
    .line 23
    sget-object v2, Leu/faircode/netguard/ServiceSinkhole$Command;->reload:Leu/faircode/netguard/ServiceSinkhole$Command;

    .line 24
    .line 25
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 26
    .line 27
    .line 28
    const-string v1, "Reason"

    .line 29
    .line 30
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 31
    .line 32
    .line 33
    const-string p0, "Interactive"

    .line 34
    .line 35
    invoke-virtual {v0, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 36
    .line 37
    .line 38
    :try_start_0
    invoke-static {p1, v0}, Landroidx/core/content/f;->g(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :catchall_0
    move-exception p0

    .line 43
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 44
    .line 45
    const/16 v1, 0x1f

    .line 46
    .line 47
    if-lt p2, v1, :cond_0

    .line 48
    .line 49
    invoke-static {p0}, LE0/d;->d(Ljava/lang/Throwable;)Z

    .line 50
    .line 51
    .line 52
    move-result p0

    .line 53
    if-eqz p0, :cond_0

    .line 54
    .line 55
    :try_start_1
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :catchall_1
    move-exception p0

    .line 60
    new-instance p1, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    const-string p2, "\n"

    .line 69
    .line 70
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    const-string p1, "NetGuard.Service"

    .line 85
    .line 86
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    .line 88
    .line 89
    :cond_0
    :goto_0
    return-void
.end method

.method public static reloadStats(Ljava/lang/String;Landroid/content/Context;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-class v1, Leu/faircode/netguard/ServiceSinkhole;

    .line 4
    .line 5
    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 6
    .line 7
    .line 8
    const-string v1, "Command"

    .line 9
    .line 10
    sget-object v2, Leu/faircode/netguard/ServiceSinkhole$Command;->stats:Leu/faircode/netguard/ServiceSinkhole$Command;

    .line 11
    .line 12
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 13
    .line 14
    .line 15
    const-string v1, "Reason"

    .line 16
    .line 17
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 18
    .line 19
    .line 20
    :try_start_0
    invoke-static {p1, v0}, Landroidx/core/content/f;->g(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 26
    .line 27
    const/16 v2, 0x1f

    .line 28
    .line 29
    if-lt v1, v2, :cond_0

    .line 30
    .line 31
    invoke-static {p0}, LE0/d;->d(Ljava/lang/Throwable;)Z

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    if-eqz p0, :cond_0

    .line 36
    .line 37
    :try_start_1
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :catchall_1
    move-exception p0

    .line 42
    new-instance p1, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string v0, "\n"

    .line 51
    .line 52
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    const-string p1, "NetGuard.Service"

    .line 67
    .line 68
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    .line 70
    .line 71
    :cond_0
    :goto_0
    return-void
.end method

.method private removeLockdownNotification()V
    .locals 2

    .line 1
    invoke-static {p0}, Landroidx/core/app/H;->c(Landroid/content/Context;)Landroidx/core/app/H;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x4

    .line 6
    invoke-virtual {v0, v1}, Landroidx/core/app/H;->b(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private removeWarningNotifications()V
    .locals 2

    .line 1
    invoke-static {p0}, Landroidx/core/app/H;->c(Landroid/content/Context;)Landroidx/core/app/H;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x3

    .line 6
    invoke-virtual {v0, v1}, Landroidx/core/app/H;->b(I)V

    .line 7
    .line 8
    .line 9
    invoke-static {p0}, Landroidx/core/app/H;->c(Landroid/content/Context;)Landroidx/core/app/H;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const/4 v1, 0x5

    .line 14
    invoke-virtual {v0, v1}, Landroidx/core/app/H;->b(I)V

    .line 15
    .line 16
    .line 17
    invoke-static {p0}, Landroidx/core/app/H;->c(Landroid/content/Context;)Landroidx/core/app/H;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const/4 v1, 0x6

    .line 22
    invoke-virtual {v0, v1}, Landroidx/core/app/H;->b(I)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public static run(Ljava/lang/String;Landroid/content/Context;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-class v1, Leu/faircode/netguard/ServiceSinkhole;

    .line 4
    .line 5
    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 6
    .line 7
    .line 8
    const-string v1, "Command"

    .line 9
    .line 10
    sget-object v2, Leu/faircode/netguard/ServiceSinkhole$Command;->run:Leu/faircode/netguard/ServiceSinkhole$Command;

    .line 11
    .line 12
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 13
    .line 14
    .line 15
    const-string v1, "Reason"

    .line 16
    .line 17
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 18
    .line 19
    .line 20
    :try_start_0
    invoke-static {p1, v0}, Landroidx/core/content/f;->g(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 26
    .line 27
    const/16 v2, 0x1f

    .line 28
    .line 29
    if-lt v1, v2, :cond_0

    .line 30
    .line 31
    invoke-static {p0}, LE0/d;->d(Ljava/lang/Throwable;)Z

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    if-eqz p0, :cond_0

    .line 36
    .line 37
    :try_start_1
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :catchall_1
    move-exception p0

    .line 42
    new-instance p1, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string v0, "\n"

    .line 51
    .line 52
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    const-string p1, "NetGuard.Service"

    .line 67
    .line 68
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    .line 70
    .line 71
    :cond_0
    :goto_0
    return-void
.end method

.method private set(Landroid/content/Intent;)V
    .locals 8

    .line 1
    const-string v0, "UID"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const-string v2, "Network"

    .line 9
    .line 10
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    const-string v3, "Package"

    .line 15
    .line 16
    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    const-string v4, "Blocked"

    .line 21
    .line 22
    invoke-virtual {p1, v4, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    new-instance v4, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    const-string v5, "Set "

    .line 29
    .line 30
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v5, " "

    .line 37
    .line 38
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v5, "="

    .line 45
    .line 46
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    const-string v5, "NetGuard.Service"

    .line 57
    .line 58
    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    invoke-static {p0}, Lt0/a;->s(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    const-string v5, "whitelist_wifi"

    .line 66
    .line 67
    const/4 v6, 0x1

    .line 68
    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 69
    .line 70
    .line 71
    move-result v5

    .line 72
    const-string v7, "whitelist_other"

    .line 73
    .line 74
    invoke-interface {v4, v7, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 75
    .line 76
    .line 77
    move-result v4

    .line 78
    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 79
    .line 80
    .line 81
    move-result-object v6

    .line 82
    const-string v7, "wifi"

    .line 83
    .line 84
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v2

    .line 88
    if-eqz v2, :cond_0

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_0
    move v5, v4

    .line 92
    :goto_0
    if-ne p1, v5, :cond_1

    .line 93
    .line 94
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    invoke-interface {p1, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 103
    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_1
    invoke-static {v6, v3, p1}, LE0/a;->c(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    .line 107
    .line 108
    .line 109
    :goto_1
    const-string p1, "notification"

    .line 110
    .line 111
    invoke-static {p1, p0, v1}, Leu/faircode/netguard/ServiceSinkhole;->reload(Ljava/lang/String;Landroid/content/Context;Z)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p0, v0, v1}, Leu/faircode/netguard/ServiceSinkhole;->notifyNewApplication(IZ)V

    .line 115
    .line 116
    .line 117
    new-instance p1, Landroid/content/Intent;

    .line 118
    .line 119
    const-string v0, "eu.faircode.netguard.ACTION_RULES_CHANGED"

    .line 120
    .line 121
    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    invoke-static {p0}, Lr/d;->b(Landroid/content/Context;)Lr/d;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    invoke-virtual {v0, p1}, Lr/d;->d(Landroid/content/Intent;)V

    .line 129
    .line 130
    .line 131
    return-void
.end method

.method public static setPcap(ZLandroid/content/Context;)V
    .locals 6

    .line 1
    const-string v0, "\n"

    .line 2
    .line 3
    const-string v1, "NetGuard.Service"

    .line 4
    .line 5
    invoke-static {p1}, Lt0/a;->s(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    const/4 v3, 0x0

    .line 10
    :try_start_0
    const-string v4, "pcap_record_size"

    .line 11
    .line 12
    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v4

    .line 16
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 17
    .line 18
    .line 19
    move-result v5

    .line 20
    if-eqz v5, :cond_0

    .line 21
    .line 22
    const-string v4, "64"

    .line 23
    .line 24
    :cond_0
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    goto :goto_0

    .line 29
    :catchall_0
    move-exception v4

    .line 30
    new-instance v5, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    .line 35
    invoke-static {v4, v5, v0, v4, v1}, LB/g;->i(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    const/16 v4, 0x40

    .line 39
    .line 40
    :goto_0
    :try_start_1
    const-string v5, "pcap_file_size"

    .line 41
    .line 42
    invoke-interface {v2, v5, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 47
    .line 48
    .line 49
    move-result v5

    .line 50
    if-eqz v5, :cond_1

    .line 51
    .line 52
    const-string v2, "2"

    .line 53
    .line 54
    :cond_1
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 58
    mul-int/lit16 v0, v0, 0x400

    .line 59
    .line 60
    mul-int/lit16 v0, v0, 0x400

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :catchall_1
    move-exception v2

    .line 64
    new-instance v5, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    .line 68
    .line 69
    invoke-static {v2, v5, v0, v2, v1}, LB/g;->i(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    const/high16 v0, 0x200000

    .line 73
    .line 74
    :goto_1
    if-eqz p0, :cond_2

    .line 75
    .line 76
    new-instance p0, Ljava/io/File;

    .line 77
    .line 78
    const-string v1, "data"

    .line 79
    .line 80
    const/4 v2, 0x0

    .line 81
    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    const-string v1, "netguard.pcap"

    .line 86
    .line 87
    invoke-direct {p0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    goto :goto_2

    .line 91
    :cond_2
    move-object p0, v3

    .line 92
    :goto_2
    if-nez p0, :cond_3

    .line 93
    .line 94
    goto :goto_3

    .line 95
    :cond_3
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    :goto_3
    invoke-static {v3, v4, v0}, Leu/faircode/netguard/ServiceSinkhole;->jni_pcap(Ljava/lang/String;II)V

    .line 100
    .line 101
    .line 102
    return-void
.end method

.method private showAccessNotification(I)V
    .locals 14

    .line 1
    invoke-static {p1, p0}, Leu/faircode/netguard/Util;->getApplicationNames(ILandroid/content/Context;)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    const-string v1, ", "

    .line 13
    .line 14
    invoke-static {v1, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    new-instance v1, Landroid/content/Intent;

    .line 19
    .line 20
    const-class v2, Leu/faircode/netguard/ActivityMain;

    .line 21
    .line 22
    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 23
    .line 24
    .line 25
    const-string v2, "Search"

    .line 26
    .line 27
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 32
    .line 33
    .line 34
    add-int/lit16 v2, p1, 0x2710

    .line 35
    .line 36
    const/high16 v3, 0x8000000

    .line 37
    .line 38
    invoke-static {p0, v2, v1, v3}, Leu/faircode/netguard/PendingIntentCompat;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    new-instance v3, Landroid/util/TypedValue;

    .line 43
    .line 44
    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    const v5, 0x7f040064

    .line 52
    .line 53
    .line 54
    const/4 v6, 0x1

    .line 55
    invoke-virtual {v4, v5, v3, v6}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 56
    .line 57
    .line 58
    iget v4, v3, Landroid/util/TypedValue;->data:I

    .line 59
    .line 60
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 61
    .line 62
    .line 63
    move-result-object v5

    .line 64
    const v7, 0x7f040063

    .line 65
    .line 66
    .line 67
    invoke-virtual {v5, v7, v3, v6}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 68
    .line 69
    .line 70
    iget v3, v3, Landroid/util/TypedValue;->data:I

    .line 71
    .line 72
    new-instance v5, Landroidx/core/app/w;

    .line 73
    .line 74
    const-string v7, "access"

    .line 75
    .line 76
    invoke-direct {v5, p0, v7}, Landroidx/core/app/w;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    const v7, 0x7f080077

    .line 80
    .line 81
    .line 82
    invoke-virtual {v5, v7}, Landroidx/core/app/w;->q(I)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v5}, Landroidx/core/app/w;->l()V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v5, v1}, Landroidx/core/app/w;->i(Landroid/app/PendingIntent;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v5, v3}, Landroidx/core/app/w;->g(I)V

    .line 92
    .line 93
    .line 94
    const/4 v1, 0x0

    .line 95
    invoke-virtual {v5, v1}, Landroidx/core/app/w;->n(Z)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v5, v6}, Landroidx/core/app/w;->d(Z)V

    .line 99
    .line 100
    .line 101
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 102
    .line 103
    const v8, 0x7f100063

    .line 104
    .line 105
    .line 106
    const v9, 0x7f100062

    .line 107
    .line 108
    .line 109
    const/16 v10, 0x18

    .line 110
    .line 111
    if-lt v7, v10, :cond_1

    .line 112
    .line 113
    invoke-virtual {v5, v0}, Landroidx/core/app/w;->k(Ljava/lang/CharSequence;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v11

    .line 120
    invoke-virtual {v5, v11}, Landroidx/core/app/w;->j(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    goto :goto_0

    .line 124
    :cond_1
    const v11, 0x7f100023

    .line 125
    .line 126
    .line 127
    invoke-virtual {p0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v11

    .line 131
    invoke-virtual {v5, v11}, Landroidx/core/app/w;->k(Ljava/lang/CharSequence;)V

    .line 132
    .line 133
    .line 134
    new-array v11, v6, [Ljava/lang/Object;

    .line 135
    .line 136
    aput-object v0, v11, v1

    .line 137
    .line 138
    invoke-virtual {p0, v9, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v11

    .line 142
    invoke-virtual {v5, v11}, Landroidx/core/app/w;->j(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    :goto_0
    invoke-virtual {v5}, Landroidx/core/app/w;->e()V

    .line 146
    .line 147
    .line 148
    const/4 v11, -0x1

    .line 149
    invoke-virtual {v5, v11}, Landroidx/core/app/w;->t(I)V

    .line 150
    .line 151
    .line 152
    new-instance v11, Ljava/text/SimpleDateFormat;

    .line 153
    .line 154
    const-string v12, "dd HH:mm"

    .line 155
    .line 156
    invoke-direct {v11, v12}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    new-instance v12, Landroidx/core/app/x;

    .line 160
    .line 161
    invoke-direct {v12, v5}, Landroidx/core/app/x;-><init>(Landroidx/core/app/w;)V

    .line 162
    .line 163
    .line 164
    const/16 v5, 0x21

    .line 165
    .line 166
    if-lt v7, v10, :cond_2

    .line 167
    .line 168
    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    invoke-virtual {v12, v0}, Landroidx/core/app/x;->f(Ljava/lang/CharSequence;)V

    .line 173
    .line 174
    .line 175
    goto :goto_1

    .line 176
    :cond_2
    new-array v7, v6, [Ljava/lang/Object;

    .line 177
    .line 178
    aput-object v0, v7, v1

    .line 179
    .line 180
    invoke-virtual {p0, v9, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v7

    .line 184
    invoke-virtual {v7, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 185
    .line 186
    .line 187
    move-result v8

    .line 188
    new-instance v9, Landroid/text/SpannableString;

    .line 189
    .line 190
    invoke-direct {v9, v7}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 191
    .line 192
    .line 193
    new-instance v7, Landroid/text/style/StyleSpan;

    .line 194
    .line 195
    invoke-direct {v7, v6}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 199
    .line 200
    .line 201
    move-result v0

    .line 202
    add-int/2addr v0, v8

    .line 203
    invoke-virtual {v9, v7, v8, v0, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {v12, v9}, Landroidx/core/app/x;->f(Ljava/lang/CharSequence;)V

    .line 207
    .line 208
    .line 209
    :goto_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 210
    .line 211
    .line 212
    move-result-object v0

    .line 213
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v6

    .line 217
    if-eqz v6, :cond_3

    .line 218
    .line 219
    array-length v7, v6

    .line 220
    if-lez v7, :cond_3

    .line 221
    .line 222
    :try_start_0
    aget-object v6, v6, v1

    .line 223
    .line 224
    invoke-virtual {v0, v6, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 225
    .line 226
    .line 227
    move-result-object v0

    .line 228
    iget-wide v0, v0, Landroid/content/pm/PackageInfo;->firstInstallTime:J
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    .line 230
    goto :goto_2

    .line 231
    :catch_0
    :cond_3
    const-wide/16 v0, 0x0

    .line 232
    .line 233
    :goto_2
    invoke-static {p0}, Leu/faircode/netguard/DatabaseHelper;->getInstance(Landroid/content/Context;)Leu/faircode/netguard/DatabaseHelper;

    .line 234
    .line 235
    .line 236
    move-result-object v6

    .line 237
    const/4 v7, 0x7

    .line 238
    invoke-virtual {v6, p1, v7, v0, v1}, Leu/faircode/netguard/DatabaseHelper;->getAccessUnset(IIJ)Landroid/database/Cursor;

    .line 239
    .line 240
    .line 241
    move-result-object p1

    .line 242
    :try_start_1
    const-string v0, "daddr"

    .line 243
    .line 244
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 245
    .line 246
    .line 247
    move-result v0

    .line 248
    const-string v1, "time"

    .line 249
    .line 250
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 251
    .line 252
    .line 253
    move-result v1

    .line 254
    const-string v6, "allowed"

    .line 255
    .line 256
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 257
    .line 258
    .line 259
    move-result v6

    .line 260
    :goto_3
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 261
    .line 262
    .line 263
    move-result v7

    .line 264
    if-eqz v7, :cond_7

    .line 265
    .line 266
    new-instance v7, Ljava/lang/StringBuilder;

    .line 267
    .line 268
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 269
    .line 270
    .line 271
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    .line 272
    .line 273
    .line 274
    move-result-wide v8

    .line 275
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 276
    .line 277
    .line 278
    move-result-object v8

    .line 279
    invoke-virtual {v11, v8}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object v8

    .line 283
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    .line 285
    .line 286
    const/16 v8, 0x20

    .line 287
    .line 288
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 289
    .line 290
    .line 291
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object v8

    .line 295
    invoke-static {v8}, Leu/faircode/netguard/Util;->isNumericAddress(Ljava/lang/String;)Z

    .line 296
    .line 297
    .line 298
    move-result v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 299
    if-eqz v9, :cond_4

    .line 300
    .line 301
    :try_start_2
    invoke-static {v8}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 302
    .line 303
    .line 304
    move-result-object v9

    .line 305
    invoke-virtual {v9}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    .line 306
    .line 307
    .line 308
    move-result-object v8
    :try_end_2
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 309
    :catch_1
    :cond_4
    :try_start_3
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    .line 311
    .line 312
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    .line 313
    .line 314
    .line 315
    move-result v9

    .line 316
    if-ltz v9, :cond_6

    .line 317
    .line 318
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    .line 319
    .line 320
    .line 321
    move-result v10

    .line 322
    new-instance v13, Landroid/text/SpannableString;

    .line 323
    .line 324
    invoke-direct {v13, v7}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 325
    .line 326
    .line 327
    new-instance v7, Landroid/text/style/ForegroundColorSpan;

    .line 328
    .line 329
    if-lez v9, :cond_5

    .line 330
    .line 331
    move v9, v4

    .line 332
    goto :goto_4

    .line 333
    :cond_5
    move v9, v3

    .line 334
    :goto_4
    invoke-direct {v7, v9}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 335
    .line 336
    .line 337
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    .line 338
    .line 339
    .line 340
    move-result v8

    .line 341
    add-int/2addr v8, v10

    .line 342
    invoke-virtual {v13, v7, v10, v8, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 343
    .line 344
    .line 345
    invoke-virtual {v12, v13}, Landroidx/core/app/x;->f(Ljava/lang/CharSequence;)V

    .line 346
    .line 347
    .line 348
    goto :goto_3

    .line 349
    :cond_6
    invoke-virtual {v12, v7}, Landroidx/core/app/x;->f(Ljava/lang/CharSequence;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 350
    .line 351
    .line 352
    goto :goto_3

    .line 353
    :cond_7
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 354
    .line 355
    .line 356
    invoke-static {p0}, Leu/faircode/netguard/Util;->canNotify(Landroid/content/Context;)Z

    .line 357
    .line 358
    .line 359
    move-result p1

    .line 360
    if-eqz p1, :cond_8

    .line 361
    .line 362
    invoke-static {p0}, Landroidx/core/app/H;->c(Landroid/content/Context;)Landroidx/core/app/H;

    .line 363
    .line 364
    .line 365
    move-result-object p1

    .line 366
    invoke-virtual {v12}, Landroidx/core/app/y;->c()Landroid/app/Notification;

    .line 367
    .line 368
    .line 369
    move-result-object v0

    .line 370
    invoke-virtual {p1, v2, v0}, Landroidx/core/app/H;->e(ILandroid/app/Notification;)V

    .line 371
    .line 372
    .line 373
    :cond_8
    return-void

    .line 374
    :catchall_0
    move-exception v0

    .line 375
    if-eqz p1, :cond_9

    .line 376
    .line 377
    :try_start_4
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 378
    .line 379
    .line 380
    goto :goto_5

    .line 381
    :catchall_1
    move-exception p1

    .line 382
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 383
    .line 384
    .line 385
    :cond_9
    :goto_5
    throw v0
.end method

.method private showDisabledNotification()V
    .locals 7

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-class v1, Leu/faircode/netguard/ActivityMain;

    .line 4
    .line 5
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    const/high16 v2, 0x8000000

    .line 10
    .line 11
    invoke-static {p0, v1, v0, v2}, Leu/faircode/netguard/PendingIntentCompat;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    new-instance v2, Landroid/util/TypedValue;

    .line 16
    .line 17
    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    const v4, 0x7f040063

    .line 25
    .line 26
    .line 27
    const/4 v5, 0x1

    .line 28
    invoke-virtual {v3, v4, v2, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 29
    .line 30
    .line 31
    new-instance v3, Landroidx/core/app/w;

    .line 32
    .line 33
    const-string v4, "notify"

    .line 34
    .line 35
    invoke-direct {v3, p0, v4}, Landroidx/core/app/w;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    const v4, 0x7f08007c

    .line 39
    .line 40
    .line 41
    invoke-virtual {v3, v4}, Landroidx/core/app/w;->q(I)V

    .line 42
    .line 43
    .line 44
    const v4, 0x7f100023

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    invoke-virtual {v3, v4}, Landroidx/core/app/w;->k(Ljava/lang/CharSequence;)V

    .line 52
    .line 53
    .line 54
    const v4, 0x7f10008b

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v6

    .line 61
    invoke-virtual {v3, v6}, Landroidx/core/app/w;->j(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v3, v0}, Landroidx/core/app/w;->i(Landroid/app/PendingIntent;)V

    .line 65
    .line 66
    .line 67
    iget v0, v2, Landroid/util/TypedValue;->data:I

    .line 68
    .line 69
    invoke-virtual {v3, v0}, Landroidx/core/app/w;->g(I)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v3, v1}, Landroidx/core/app/w;->n(Z)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v3, v5}, Landroidx/core/app/w;->d(Z)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v3}, Landroidx/core/app/w;->e()V

    .line 79
    .line 80
    .line 81
    const/4 v0, -0x1

    .line 82
    invoke-virtual {v3, v0}, Landroidx/core/app/w;->t(I)V

    .line 83
    .line 84
    .line 85
    new-instance v0, Landroidx/core/app/v;

    .line 86
    .line 87
    invoke-direct {v0, v3}, Landroidx/core/app/v;-><init>(Landroidx/core/app/w;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    invoke-virtual {v0, v1}, Landroidx/core/app/v;->f(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    invoke-static {p0}, Leu/faircode/netguard/Util;->canNotify(Landroid/content/Context;)Z

    .line 98
    .line 99
    .line 100
    move-result v1

    .line 101
    if-eqz v1, :cond_0

    .line 102
    .line 103
    invoke-static {p0}, Landroidx/core/app/H;->c(Landroid/content/Context;)Landroidx/core/app/H;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    const/4 v2, 0x3

    .line 108
    invoke-virtual {v0}, Landroidx/core/app/y;->c()Landroid/app/Notification;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    invoke-virtual {v1, v2, v0}, Landroidx/core/app/H;->e(ILandroid/app/Notification;)V

    .line 113
    .line 114
    .line 115
    :cond_0
    return-void
.end method

.method private showErrorNotification(Ljava/lang/String;)V
    .locals 7

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-class v1, Leu/faircode/netguard/ActivityMain;

    .line 4
    .line 5
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    const/high16 v2, 0x8000000

    .line 10
    .line 11
    invoke-static {p0, v1, v0, v2}, Leu/faircode/netguard/PendingIntentCompat;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    new-instance v2, Landroid/util/TypedValue;

    .line 16
    .line 17
    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    const v4, 0x7f040063

    .line 25
    .line 26
    .line 27
    const/4 v5, 0x1

    .line 28
    invoke-virtual {v3, v4, v2, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 29
    .line 30
    .line 31
    new-instance v3, Landroidx/core/app/w;

    .line 32
    .line 33
    const-string v4, "notify"

    .line 34
    .line 35
    invoke-direct {v3, p0, v4}, Landroidx/core/app/w;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    const v4, 0x7f08007c

    .line 39
    .line 40
    .line 41
    invoke-virtual {v3, v4}, Landroidx/core/app/w;->q(I)V

    .line 42
    .line 43
    .line 44
    const v4, 0x7f100023

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    invoke-virtual {v3, v4}, Landroidx/core/app/w;->k(Ljava/lang/CharSequence;)V

    .line 52
    .line 53
    .line 54
    new-array v4, v5, [Ljava/lang/Object;

    .line 55
    .line 56
    aput-object p1, v4, v1

    .line 57
    .line 58
    const v6, 0x7f100071

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0, v6, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    invoke-virtual {v3, v4}, Landroidx/core/app/w;->j(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v3, v0}, Landroidx/core/app/w;->i(Landroid/app/PendingIntent;)V

    .line 69
    .line 70
    .line 71
    iget v0, v2, Landroid/util/TypedValue;->data:I

    .line 72
    .line 73
    invoke-virtual {v3, v0}, Landroidx/core/app/w;->g(I)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v3, v1}, Landroidx/core/app/w;->n(Z)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v3, v5}, Landroidx/core/app/w;->d(Z)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v3}, Landroidx/core/app/w;->e()V

    .line 83
    .line 84
    .line 85
    const/4 v0, -0x1

    .line 86
    invoke-virtual {v3, v0}, Landroidx/core/app/w;->t(I)V

    .line 87
    .line 88
    .line 89
    new-instance v0, Landroidx/core/app/v;

    .line 90
    .line 91
    invoke-direct {v0, v3}, Landroidx/core/app/v;-><init>(Landroidx/core/app/w;)V

    .line 92
    .line 93
    .line 94
    new-array v2, v5, [Ljava/lang/Object;

    .line 95
    .line 96
    aput-object p1, v2, v1

    .line 97
    .line 98
    invoke-virtual {p0, v6, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    invoke-virtual {v0, v1}, Landroidx/core/app/v;->f(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0, p1}, Landroidx/core/app/v;->g(Ljava/lang/CharSequence;)V

    .line 106
    .line 107
    .line 108
    invoke-static {p0}, Leu/faircode/netguard/Util;->canNotify(Landroid/content/Context;)Z

    .line 109
    .line 110
    .line 111
    move-result p1

    .line 112
    if-eqz p1, :cond_0

    .line 113
    .line 114
    invoke-static {p0}, Landroidx/core/app/H;->c(Landroid/content/Context;)Landroidx/core/app/H;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    const/4 v1, 0x6

    .line 119
    invoke-virtual {v0}, Landroidx/core/app/y;->c()Landroid/app/Notification;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    invoke-virtual {p1, v1, v0}, Landroidx/core/app/H;->e(ILandroid/app/Notification;)V

    .line 124
    .line 125
    .line 126
    :cond_0
    return-void
.end method

.method private showLockdownNotification()V
    .locals 7

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-string v1, "android.settings.VPN_SETTINGS"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x4

    .line 9
    const/high16 v2, 0x8000000

    .line 10
    .line 11
    invoke-static {p0, v1, v0, v2}, Leu/faircode/netguard/PendingIntentCompat;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    new-instance v2, Landroid/util/TypedValue;

    .line 16
    .line 17
    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    const v4, 0x7f040063

    .line 25
    .line 26
    .line 27
    const/4 v5, 0x1

    .line 28
    invoke-virtual {v3, v4, v2, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 29
    .line 30
    .line 31
    new-instance v3, Landroidx/core/app/w;

    .line 32
    .line 33
    const-string v4, "notify"

    .line 34
    .line 35
    invoke-direct {v3, p0, v4}, Landroidx/core/app/w;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    const v4, 0x7f08007c

    .line 39
    .line 40
    .line 41
    invoke-virtual {v3, v4}, Landroidx/core/app/w;->q(I)V

    .line 42
    .line 43
    .line 44
    const v4, 0x7f100023

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    invoke-virtual {v3, v4}, Landroidx/core/app/w;->k(Ljava/lang/CharSequence;)V

    .line 52
    .line 53
    .line 54
    const v4, 0x7f100065

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v6

    .line 61
    invoke-virtual {v3, v6}, Landroidx/core/app/w;->j(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v3, v0}, Landroidx/core/app/w;->i(Landroid/app/PendingIntent;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v3, v5}, Landroidx/core/app/w;->o(I)V

    .line 68
    .line 69
    .line 70
    iget v0, v2, Landroid/util/TypedValue;->data:I

    .line 71
    .line 72
    invoke-virtual {v3, v0}, Landroidx/core/app/w;->g(I)V

    .line 73
    .line 74
    .line 75
    const/4 v0, 0x0

    .line 76
    invoke-virtual {v3, v0}, Landroidx/core/app/w;->n(Z)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v3, v5}, Landroidx/core/app/w;->d(Z)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v3}, Landroidx/core/app/w;->e()V

    .line 83
    .line 84
    .line 85
    const/4 v0, -0x1

    .line 86
    invoke-virtual {v3, v0}, Landroidx/core/app/w;->t(I)V

    .line 87
    .line 88
    .line 89
    new-instance v0, Landroidx/core/app/v;

    .line 90
    .line 91
    invoke-direct {v0, v3}, Landroidx/core/app/v;-><init>(Landroidx/core/app/w;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    invoke-virtual {v0, v2}, Landroidx/core/app/v;->f(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    invoke-static {p0}, Leu/faircode/netguard/Util;->canNotify(Landroid/content/Context;)Z

    .line 102
    .line 103
    .line 104
    move-result v2

    .line 105
    if-eqz v2, :cond_0

    .line 106
    .line 107
    invoke-static {p0}, Landroidx/core/app/H;->c(Landroid/content/Context;)Landroidx/core/app/H;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    invoke-virtual {v0}, Landroidx/core/app/y;->c()Landroid/app/Notification;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    invoke-virtual {v2, v1, v0}, Landroidx/core/app/H;->e(ILandroid/app/Notification;)V

    .line 116
    .line 117
    .line 118
    :cond_0
    return-void
.end method

.method private showUpdateNotification(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-string v1, "android.intent.action.VIEW"

    .line 4
    .line 5
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    invoke-direct {v0, v1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 10
    .line 11
    .line 12
    const/4 p2, 0x0

    .line 13
    const/high16 v1, 0x8000000

    .line 14
    .line 15
    invoke-static {p0, p2, v0, v1}, Leu/faircode/netguard/PendingIntentCompat;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    new-instance v1, Landroid/util/TypedValue;

    .line 20
    .line 21
    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    const v3, 0x7f040065

    .line 29
    .line 30
    .line 31
    const/4 v4, 0x1

    .line 32
    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 33
    .line 34
    .line 35
    new-instance v2, Landroidx/core/app/w;

    .line 36
    .line 37
    const-string v3, "notify"

    .line 38
    .line 39
    invoke-direct {v2, p0, v3}, Landroidx/core/app/w;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    const v3, 0x7f080094

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2, v3}, Landroidx/core/app/w;->q(I)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2, p1}, Landroidx/core/app/w;->k(Ljava/lang/CharSequence;)V

    .line 49
    .line 50
    .line 51
    const p1, 0x7f100095

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-virtual {v2, p1}, Landroidx/core/app/w;->j(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2, v0}, Landroidx/core/app/w;->i(Landroid/app/PendingIntent;)V

    .line 62
    .line 63
    .line 64
    iget p1, v1, Landroid/util/TypedValue;->data:I

    .line 65
    .line 66
    invoke-virtual {v2, p1}, Landroidx/core/app/w;->g(I)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v2, p2}, Landroidx/core/app/w;->n(Z)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v2, v4}, Landroidx/core/app/w;->d(Z)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v2}, Landroidx/core/app/w;->e()V

    .line 76
    .line 77
    .line 78
    const/4 p1, -0x1

    .line 79
    invoke-virtual {v2, p1}, Landroidx/core/app/w;->t(I)V

    .line 80
    .line 81
    .line 82
    invoke-static {p0}, Leu/faircode/netguard/Util;->canNotify(Landroid/content/Context;)Z

    .line 83
    .line 84
    .line 85
    move-result p1

    .line 86
    if-eqz p1, :cond_0

    .line 87
    .line 88
    invoke-static {p0}, Landroidx/core/app/H;->c(Landroid/content/Context;)Landroidx/core/app/H;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    const/16 p2, 0x8

    .line 93
    .line 94
    invoke-virtual {v2}, Landroidx/core/app/w;->b()Landroid/app/Notification;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    invoke-virtual {p1, p2, v0}, Landroidx/core/app/H;->e(ILandroid/app/Notification;)V

    .line 99
    .line 100
    .line 101
    :cond_0
    return-void
.end method

.method public static start(Ljava/lang/String;Landroid/content/Context;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-class v1, Leu/faircode/netguard/ServiceSinkhole;

    .line 4
    .line 5
    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 6
    .line 7
    .line 8
    const-string v1, "Command"

    .line 9
    .line 10
    sget-object v2, Leu/faircode/netguard/ServiceSinkhole$Command;->start:Leu/faircode/netguard/ServiceSinkhole$Command;

    .line 11
    .line 12
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 13
    .line 14
    .line 15
    const-string v1, "Reason"

    .line 16
    .line 17
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 18
    .line 19
    .line 20
    :try_start_0
    invoke-static {p1, v0}, Landroidx/core/content/f;->g(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 26
    .line 27
    const/16 v2, 0x1f

    .line 28
    .line 29
    if-lt v1, v2, :cond_0

    .line 30
    .line 31
    invoke-static {p0}, LE0/d;->d(Ljava/lang/Throwable;)Z

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    if-eqz p0, :cond_0

    .line 36
    .line 37
    :try_start_1
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :catchall_1
    move-exception p0

    .line 42
    new-instance p1, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string v0, "\n"

    .line 51
    .line 52
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    const-string p1, "NetGuard.Service"

    .line 67
    .line 68
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    .line 70
    .line 71
    :cond_0
    :goto_0
    return-void
.end method

.method private startNative(Landroid/os/ParcelFileDescriptor;Ljava/util/List;Ljava/util/List;)V
    .locals 7

    .line 1
    invoke-static {p0}, Lt0/a;->s(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "log"

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const-string v3, "log_app"

    .line 13
    .line 14
    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    const-string v4, "filter"

    .line 19
    .line 20
    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    new-instance v5, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    const-string v6, "Start native log="

    .line 27
    .line 28
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v6, "/"

    .line 35
    .line 36
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string v6, " filter="

    .line 43
    .line 44
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v5

    .line 54
    const-string v6, "NetGuard.Service"

    .line 55
    .line 56
    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    if-eqz v4, :cond_0

    .line 60
    .line 61
    invoke-direct {p0, p2, p3}, Leu/faircode/netguard/ServiceSinkhole;->prepareUidAllowed(Ljava/util/List;Ljava/util/List;)V

    .line 62
    .line 63
    .line 64
    invoke-direct {p0}, Leu/faircode/netguard/ServiceSinkhole;->prepareHostsBlocked()V

    .line 65
    .line 66
    .line 67
    invoke-direct {p0}, Leu/faircode/netguard/ServiceSinkhole;->prepareMalwareList()V

    .line 68
    .line 69
    .line 70
    const/4 p2, 0x0

    .line 71
    invoke-direct {p0, p2}, Leu/faircode/netguard/ServiceSinkhole;->prepareUidIPFilters(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-direct {p0}, Leu/faircode/netguard/ServiceSinkhole;->prepareForwarding()V

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_0
    iget-object p2, p0, Leu/faircode/netguard/ServiceSinkhole;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 79
    .line 80
    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 81
    .line 82
    .line 83
    move-result-object p2

    .line 84
    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 85
    .line 86
    .line 87
    iget-object p2, p0, Leu/faircode/netguard/ServiceSinkhole;->mapUidAllowed:Ljava/util/Map;

    .line 88
    .line 89
    invoke-interface {p2}, Ljava/util/Map;->clear()V

    .line 90
    .line 91
    .line 92
    iget-object p2, p0, Leu/faircode/netguard/ServiceSinkhole;->mapUidKnown:Ljava/util/Map;

    .line 93
    .line 94
    invoke-interface {p2}, Ljava/util/Map;->clear()V

    .line 95
    .line 96
    .line 97
    iget-object p2, p0, Leu/faircode/netguard/ServiceSinkhole;->mapHostsBlocked:Ljava/util/Map;

    .line 98
    .line 99
    invoke-interface {p2}, Ljava/util/Map;->clear()V

    .line 100
    .line 101
    .line 102
    iget-object p2, p0, Leu/faircode/netguard/ServiceSinkhole;->mapMalware:Ljava/util/Map;

    .line 103
    .line 104
    invoke-interface {p2}, Ljava/util/Map;->clear()V

    .line 105
    .line 106
    .line 107
    iget-object p2, p0, Leu/faircode/netguard/ServiceSinkhole;->mapUidIPFilters:Ljava/util/Map;

    .line 108
    .line 109
    invoke-interface {p2}, Ljava/util/Map;->clear()V

    .line 110
    .line 111
    .line 112
    iget-object p2, p0, Leu/faircode/netguard/ServiceSinkhole;->mapForward:Ljava/util/Map;

    .line 113
    .line 114
    invoke-interface {p2}, Ljava/util/Map;->clear()V

    .line 115
    .line 116
    .line 117
    iget-object p2, p0, Leu/faircode/netguard/ServiceSinkhole;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 118
    .line 119
    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 120
    .line 121
    .line 122
    move-result-object p2

    .line 123
    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 124
    .line 125
    .line 126
    :goto_0
    if-eqz v3, :cond_1

    .line 127
    .line 128
    invoke-direct {p0, p3}, Leu/faircode/netguard/ServiceSinkhole;->prepareNotify(Ljava/util/List;)V

    .line 129
    .line 130
    .line 131
    goto :goto_1

    .line 132
    :cond_1
    iget-object p2, p0, Leu/faircode/netguard/ServiceSinkhole;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 133
    .line 134
    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 135
    .line 136
    .line 137
    move-result-object p2

    .line 138
    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 139
    .line 140
    .line 141
    iget-object p2, p0, Leu/faircode/netguard/ServiceSinkhole;->mapNotify:Ljava/util/Map;

    .line 142
    .line 143
    invoke-interface {p2}, Ljava/util/Map;->clear()V

    .line 144
    .line 145
    .line 146
    iget-object p2, p0, Leu/faircode/netguard/ServiceSinkhole;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 147
    .line 148
    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 149
    .line 150
    .line 151
    move-result-object p2

    .line 152
    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 153
    .line 154
    .line 155
    :goto_1
    if-nez v1, :cond_2

    .line 156
    .line 157
    if-nez v3, :cond_2

    .line 158
    .line 159
    if-eqz v4, :cond_4

    .line 160
    .line 161
    :cond_2
    const/4 p2, 0x5

    .line 162
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object p2

    .line 166
    const-string p3, "loglevel"

    .line 167
    .line 168
    invoke-interface {v0, p3, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object p2

    .line 172
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 173
    .line 174
    .line 175
    move-result p2

    .line 176
    const-string p3, "rcode"

    .line 177
    .line 178
    const-string v1, "3"

    .line 179
    .line 180
    invoke-interface {v0, p3, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object p3

    .line 184
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 185
    .line 186
    .line 187
    move-result p3

    .line 188
    const-string v1, "socks5_enabled"

    .line 189
    .line 190
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 191
    .line 192
    .line 193
    move-result v1

    .line 194
    const-string v3, ""

    .line 195
    .line 196
    if-eqz v1, :cond_3

    .line 197
    .line 198
    const-string v1, "socks5_addr"

    .line 199
    .line 200
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v1

    .line 204
    const-string v2, "socks5_port"

    .line 205
    .line 206
    const-string v4, "0"

    .line 207
    .line 208
    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v2

    .line 212
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 213
    .line 214
    .line 215
    move-result v2

    .line 216
    const-string v4, "socks5_username"

    .line 217
    .line 218
    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v4

    .line 222
    const-string v5, "socks5_password"

    .line 223
    .line 224
    invoke-interface {v0, v5, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v0

    .line 228
    invoke-direct {p0, v1, v2, v4, v0}, Leu/faircode/netguard/ServiceSinkhole;->jni_socks5(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 229
    .line 230
    .line 231
    goto :goto_2

    .line 232
    :cond_3
    invoke-direct {p0, v3, v2, v3, v3}, Leu/faircode/netguard/ServiceSinkhole;->jni_socks5(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    :goto_2
    iget-object v0, p0, Leu/faircode/netguard/ServiceSinkhole;->tunnelThread:Ljava/lang/Thread;

    .line 236
    .line 237
    if-nez v0, :cond_4

    .line 238
    .line 239
    new-instance v0, Ljava/lang/StringBuilder;

    .line 240
    .line 241
    const-string v1, "Starting tunnel thread context="

    .line 242
    .line 243
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 244
    .line 245
    .line 246
    sget-wide v1, Leu/faircode/netguard/ServiceSinkhole;->jni_context:J

    .line 247
    .line 248
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 249
    .line 250
    .line 251
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object v0

    .line 255
    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    .line 257
    .line 258
    sget-wide v0, Leu/faircode/netguard/ServiceSinkhole;->jni_context:J

    .line 259
    .line 260
    invoke-direct {p0, v0, v1, p2}, Leu/faircode/netguard/ServiceSinkhole;->jni_start(JI)V

    .line 261
    .line 262
    .line 263
    new-instance p2, Ljava/lang/Thread;

    .line 264
    .line 265
    new-instance v0, Leu/faircode/netguard/ServiceSinkhole$1;

    .line 266
    .line 267
    invoke-direct {v0, p0, p1, p3}, Leu/faircode/netguard/ServiceSinkhole$1;-><init>(Leu/faircode/netguard/ServiceSinkhole;Landroid/os/ParcelFileDescriptor;I)V

    .line 268
    .line 269
    .line 270
    invoke-direct {p2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 271
    .line 272
    .line 273
    iput-object p2, p0, Leu/faircode/netguard/ServiceSinkhole;->tunnelThread:Ljava/lang/Thread;

    .line 274
    .line 275
    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    .line 276
    .line 277
    .line 278
    const-string p1, "Started tunnel thread"

    .line 279
    .line 280
    invoke-static {v6, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    .line 282
    .line 283
    :cond_4
    return-void
.end method

.method private startVPN(Leu/faircode/netguard/ServiceSinkhole$Builder;)Landroid/os/ParcelFileDescriptor;
    .locals 3

    .line 1
    :try_start_0
    invoke-virtual {p1}, Landroid/net/VpnService$Builder;->establish()Landroid/os/ParcelFileDescriptor;

    .line 2
    .line 3
    .line 4
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    return-object p1

    .line 6
    :catchall_0
    move-exception p1

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v1, "\n"

    .line 13
    .line 14
    const-string v2, "NetGuard.Service"

    .line 15
    .line 16
    invoke-static {p1, v0, v1, p1, v2}, LB/g;->i(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const/4 p1, 0x0

    .line 20
    return-object p1

    .line 21
    :catch_0
    move-exception p1

    .line 22
    throw p1
.end method

.method public static stop(Ljava/lang/String;Landroid/content/Context;Z)V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-class v1, Leu/faircode/netguard/ServiceSinkhole;

    .line 4
    .line 5
    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 6
    .line 7
    .line 8
    const-string v1, "Command"

    .line 9
    .line 10
    sget-object v2, Leu/faircode/netguard/ServiceSinkhole$Command;->stop:Leu/faircode/netguard/ServiceSinkhole$Command;

    .line 11
    .line 12
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 13
    .line 14
    .line 15
    const-string v1, "Reason"

    .line 16
    .line 17
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 18
    .line 19
    .line 20
    const-string p0, "Temporary"

    .line 21
    .line 22
    invoke-virtual {v0, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 23
    .line 24
    .line 25
    :try_start_0
    invoke-static {p1, v0}, Landroidx/core/content/f;->g(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catchall_0
    move-exception p0

    .line 30
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 31
    .line 32
    const/16 v1, 0x1f

    .line 33
    .line 34
    if-lt p2, v1, :cond_0

    .line 35
    .line 36
    invoke-static {p0}, LE0/d;->d(Ljava/lang/Throwable;)Z

    .line 37
    .line 38
    .line 39
    move-result p0

    .line 40
    if-eqz p0, :cond_0

    .line 41
    .line 42
    :try_start_1
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :catchall_1
    move-exception p0

    .line 47
    new-instance p1, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string p2, "\n"

    .line 56
    .line 57
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    const-string p1, "NetGuard.Service"

    .line 72
    .line 73
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    .line 75
    .line 76
    :cond_0
    :goto_0
    return-void
.end method

.method private stopNative(Landroid/os/ParcelFileDescriptor;)V
    .locals 4

    .line 1
    const-string p1, "Stop native"

    .line 2
    .line 3
    const-string v0, "NetGuard.Service"

    .line 4
    .line 5
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Leu/faircode/netguard/ServiceSinkhole;->tunnelThread:Ljava/lang/Thread;

    .line 9
    .line 10
    if-eqz p1, :cond_1

    .line 11
    .line 12
    const-string p1, "Stopping tunnel thread"

    .line 13
    .line 14
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    sget-wide v1, Leu/faircode/netguard/ServiceSinkhole;->jni_context:J

    .line 18
    .line 19
    invoke-direct {p0, v1, v2}, Leu/faircode/netguard/ServiceSinkhole;->jni_stop(J)V

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Leu/faircode/netguard/ServiceSinkhole;->tunnelThread:Ljava/lang/Thread;

    .line 23
    .line 24
    :goto_0
    if-eqz p1, :cond_0

    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/lang/Thread;->isAlive()Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_0

    .line 31
    .line 32
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    .line 36
    .line 37
    const-string v2, "Joining tunnel thread context="

    .line 38
    .line 39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    sget-wide v2, Leu/faircode/netguard/ServiceSinkhole;->jni_context:J

    .line 43
    .line 44
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    .line 56
    .line 57
    goto :goto_1

    .line 58
    :catch_0
    const-string p1, "Joined tunnel interrupted"

    .line 59
    .line 60
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    :goto_1
    iget-object p1, p0, Leu/faircode/netguard/ServiceSinkhole;->tunnelThread:Ljava/lang/Thread;

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_0
    const/4 p1, 0x0

    .line 67
    iput-object p1, p0, Leu/faircode/netguard/ServiceSinkhole;->tunnelThread:Ljava/lang/Thread;

    .line 68
    .line 69
    sget-wide v1, Leu/faircode/netguard/ServiceSinkhole;->jni_context:J

    .line 70
    .line 71
    invoke-direct {p0, v1, v2}, Leu/faircode/netguard/ServiceSinkhole;->jni_clear(J)V

    .line 72
    .line 73
    .line 74
    const-string p1, "Stopped tunnel thread"

    .line 75
    .line 76
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    .line 78
    .line 79
    :cond_1
    return-void
.end method

.method private stopVPN(Landroid/os/ParcelFileDescriptor;)V
    .locals 3

    .line 1
    const-string v0, "Stopping"

    .line 2
    .line 3
    const-string v1, "NetGuard.Service"

    .line 4
    .line 5
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    :try_start_0
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :catch_0
    move-exception p1

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string v2, "\n"

    .line 19
    .line 20
    invoke-static {p1, v0, v2, p1, v1}, LB/i;->f(Ljava/io/IOException;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/IOException;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    :goto_0
    return-void
.end method

.method private unlistenNetworkChanges()V
    .locals 2

    .line 1
    const-string v0, "connectivity"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 8
    .line 9
    iget-object v1, p0, Leu/faircode/netguard/ServiceSinkhole;->networkCallback:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v1, Landroid/net/ConnectivityManager$NetworkCallback;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method private unprepare()V
    .locals 1

    .line 1
    iget-object v0, p0, Leu/faircode/netguard/ServiceSinkhole;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Leu/faircode/netguard/ServiceSinkhole;->mapUidAllowed:Ljava/util/Map;

    .line 11
    .line 12
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Leu/faircode/netguard/ServiceSinkhole;->mapUidKnown:Ljava/util/Map;

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Leu/faircode/netguard/ServiceSinkhole;->mapHostsBlocked:Ljava/util/Map;

    .line 21
    .line 22
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Leu/faircode/netguard/ServiceSinkhole;->mapMalware:Ljava/util/Map;

    .line 26
    .line 27
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Leu/faircode/netguard/ServiceSinkhole;->mapUidIPFilters:Ljava/util/Map;

    .line 31
    .line 32
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Leu/faircode/netguard/ServiceSinkhole;->mapForward:Ljava/util/Map;

    .line 36
    .line 37
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Leu/faircode/netguard/ServiceSinkhole;->mapNotify:Ljava/util/Map;

    .line 41
    .line 42
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Leu/faircode/netguard/ServiceSinkhole;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method private updateEnforcingNotification(II)V
    .locals 1

    .line 1
    sub-int/2addr p2, p1

    .line 2
    iget-object v0, p0, Leu/faircode/netguard/ServiceSinkhole;->mapHostsBlocked:Ljava/util/Map;

    .line 3
    .line 4
    invoke-interface {v0}, Ljava/util/Map;->size()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    invoke-direct {p0, p1, p2, v0}, Leu/faircode/netguard/ServiceSinkhole;->getEnforcingNotification(III)Landroid/app/Notification;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    const-string p2, "notification"

    .line 13
    .line 14
    invoke-virtual {p0, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    check-cast p2, Landroid/app/NotificationManager;

    .line 19
    .line 20
    invoke-static {p0}, Leu/faircode/netguard/Util;->canNotify(Landroid/content/Context;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    const/4 v0, 0x1

    .line 27
    invoke-virtual {p2, v0, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void
.end method


# virtual methods
.method public notifyNewApplication(IZ)V
    .locals 20

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move/from16 v0, p1

    .line 4
    .line 5
    const-string v2, "Blocked"

    .line 6
    .line 7
    const-string v3, "Package"

    .line 8
    .line 9
    const-string v4, "UID"

    .line 10
    .line 11
    const-string v5, "Network"

    .line 12
    .line 13
    const-string v6, "Command"

    .line 14
    .line 15
    const-class v7, Leu/faircode/netguard/ServiceSinkhole;

    .line 16
    .line 17
    const-string v8, "other"

    .line 18
    .line 19
    const-string v9, "wifi"

    .line 20
    .line 21
    if-gez v0, :cond_0

    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 25
    .line 26
    .line 27
    move-result v10

    .line 28
    if-ne v0, v10, :cond_1

    .line 29
    .line 30
    return-void

    .line 31
    :cond_1
    invoke-static/range {p0 .. p0}, Lt0/a;->s(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 32
    .line 33
    .line 34
    move-result-object v10

    .line 35
    :try_start_0
    invoke-static {v0, v1}, Leu/faircode/netguard/Util;->getApplicationNames(ILandroid/content/Context;)Ljava/util/List;

    .line 36
    .line 37
    .line 38
    move-result-object v11

    .line 39
    invoke-interface {v11}, Ljava/util/List;->size()I

    .line 40
    .line 41
    .line 42
    move-result v12

    .line 43
    if-nez v12, :cond_2

    .line 44
    .line 45
    return-void

    .line 46
    :cond_2
    const-string v12, ", "

    .line 47
    .line 48
    invoke-static {v12, v11}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v11

    .line 52
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 53
    .line 54
    .line 55
    move-result-object v12

    .line 56
    invoke-virtual {v12, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v12

    .line 60
    if-eqz v12, :cond_e

    .line 61
    .line 62
    array-length v13, v12

    .line 63
    const/4 v14, 0x1

    .line 64
    if-lt v13, v14, :cond_e

    .line 65
    .line 66
    invoke-static {v0, v1}, Leu/faircode/netguard/Util;->hasInternet(ILandroid/content/Context;)Z

    .line 67
    .line 68
    .line 69
    move-result v13

    .line 70
    new-instance v15, Landroid/content/Intent;

    .line 71
    .line 72
    const-class v14, Leu/faircode/netguard/ActivityMain;

    .line 73
    .line 74
    invoke-direct {v15, v1, v14}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 75
    .line 76
    .line 77
    const-string v14, "Refresh"

    .line 78
    .line 79
    move/from16 v16, v13

    .line 80
    .line 81
    const/4 v13, 0x1

    .line 82
    invoke-virtual {v15, v14, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 83
    .line 84
    .line 85
    const-string v13, "Search"

    .line 86
    .line 87
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v14

    .line 91
    invoke-virtual {v15, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 92
    .line 93
    .line 94
    const/high16 v13, 0x8000000

    .line 95
    .line 96
    invoke-static {v1, v0, v15, v13}, Leu/faircode/netguard/PendingIntentCompat;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 97
    .line 98
    .line 99
    move-result-object v14

    .line 100
    new-instance v15, Landroid/util/TypedValue;

    .line 101
    .line 102
    invoke-direct {v15}, Landroid/util/TypedValue;-><init>()V

    .line 103
    .line 104
    .line 105
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 106
    .line 107
    .line 108
    move-result-object v13

    .line 109
    move-object/from16 v17, v2

    .line 110
    .line 111
    const v2, 0x7f040065

    .line 112
    .line 113
    .line 114
    move-object/from16 v18, v3

    .line 115
    .line 116
    const/4 v3, 0x1

    .line 117
    invoke-virtual {v13, v2, v15, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 118
    .line 119
    .line 120
    new-instance v2, Landroidx/core/app/w;

    .line 121
    .line 122
    if-eqz p2, :cond_3

    .line 123
    .line 124
    const-string v3, "malware"

    .line 125
    .line 126
    goto :goto_0

    .line 127
    :cond_3
    const-string v3, "notify"

    .line 128
    .line 129
    :goto_0
    invoke-direct {v2, v1, v3}, Landroidx/core/app/w;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    const v3, 0x7f080094

    .line 133
    .line 134
    .line 135
    invoke-virtual {v2, v3}, Landroidx/core/app/w;->q(I)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v2, v14}, Landroidx/core/app/w;->i(Landroid/app/PendingIntent;)V

    .line 139
    .line 140
    .line 141
    iget v3, v15, Landroid/util/TypedValue;->data:I

    .line 142
    .line 143
    invoke-virtual {v2, v3}, Landroidx/core/app/w;->g(I)V

    .line 144
    .line 145
    .line 146
    const/4 v3, 0x1

    .line 147
    invoke-virtual {v2, v3}, Landroidx/core/app/w;->d(Z)V

    .line 148
    .line 149
    .line 150
    const/16 v15, 0x18

    .line 151
    .line 152
    const/4 v13, 0x0

    .line 153
    if-eqz p2, :cond_4

    .line 154
    .line 155
    invoke-virtual {v2, v11}, Landroidx/core/app/w;->k(Ljava/lang/CharSequence;)V

    .line 156
    .line 157
    .line 158
    new-array v14, v3, [Ljava/lang/Object;

    .line 159
    .line 160
    aput-object v11, v14, v13

    .line 161
    .line 162
    const v3, 0x7f10007f

    .line 163
    .line 164
    .line 165
    invoke-virtual {v1, v3, v14}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v3

    .line 169
    invoke-virtual {v2, v3}, Landroidx/core/app/w;->j(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    goto :goto_1

    .line 173
    :cond_4
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 174
    .line 175
    if-lt v3, v15, :cond_5

    .line 176
    .line 177
    invoke-virtual {v2, v11}, Landroidx/core/app/w;->k(Ljava/lang/CharSequence;)V

    .line 178
    .line 179
    .line 180
    const v3, 0x7f10007a

    .line 181
    .line 182
    .line 183
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v14

    .line 187
    invoke-virtual {v2, v14}, Landroidx/core/app/w;->j(Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    goto :goto_1

    .line 191
    :cond_5
    const v3, 0x7f100023

    .line 192
    .line 193
    .line 194
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v3

    .line 198
    invoke-virtual {v2, v3}, Landroidx/core/app/w;->k(Ljava/lang/CharSequence;)V

    .line 199
    .line 200
    .line 201
    const/4 v3, 0x1

    .line 202
    new-array v14, v3, [Ljava/lang/Object;

    .line 203
    .line 204
    aput-object v11, v14, v13

    .line 205
    .line 206
    const v3, 0x7f100079

    .line 207
    .line 208
    .line 209
    invoke-virtual {v1, v3, v14}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v14

    .line 213
    invoke-virtual {v2, v14}, Landroidx/core/app/w;->j(Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    :goto_1
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 217
    .line 218
    invoke-virtual {v2}, Landroidx/core/app/w;->e()V

    .line 219
    .line 220
    .line 221
    const/4 v14, -0x1

    .line 222
    invoke-virtual {v2, v14}, Landroidx/core/app/w;->t(I)V

    .line 223
    .line 224
    .line 225
    invoke-virtual {v1, v9, v13}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 226
    .line 227
    .line 228
    move-result-object v14

    .line 229
    invoke-virtual {v1, v8, v13}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 230
    .line 231
    .line 232
    move-result-object v15

    .line 233
    move-object/from16 v19, v11

    .line 234
    .line 235
    aget-object v11, v12, v13

    .line 236
    .line 237
    const-string v13, "whitelist_wifi"

    .line 238
    .line 239
    move/from16 p2, v3

    .line 240
    .line 241
    const/4 v3, 0x1

    .line 242
    invoke-interface {v10, v13, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 243
    .line 244
    .line 245
    move-result v13

    .line 246
    invoke-interface {v14, v11, v13}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 247
    .line 248
    .line 249
    move-result v11

    .line 250
    const/4 v13, 0x0

    .line 251
    aget-object v14, v12, v13

    .line 252
    .line 253
    const-string v13, "whitelist_other"

    .line 254
    .line 255
    invoke-interface {v10, v13, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 256
    .line 257
    .line 258
    move-result v10

    .line 259
    invoke-interface {v15, v14, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 260
    .line 261
    .line 262
    move-result v3

    .line 263
    new-instance v10, Landroid/content/Intent;

    .line 264
    .line 265
    invoke-direct {v10, v1, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 266
    .line 267
    .line 268
    sget-object v13, Leu/faircode/netguard/ServiceSinkhole$Command;->set:Leu/faircode/netguard/ServiceSinkhole$Command;

    .line 269
    .line 270
    invoke-virtual {v10, v6, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 271
    .line 272
    .line 273
    invoke-virtual {v10, v5, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 274
    .line 275
    .line 276
    invoke-virtual {v10, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 277
    .line 278
    .line 279
    const/4 v9, 0x0

    .line 280
    aget-object v14, v12, v9

    .line 281
    .line 282
    move-object/from16 v9, v18

    .line 283
    .line 284
    invoke-virtual {v10, v9, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 285
    .line 286
    .line 287
    move-object/from16 v15, v17

    .line 288
    .line 289
    if-nez v11, :cond_6

    .line 290
    .line 291
    const/4 v14, 0x1

    .line 292
    goto :goto_2

    .line 293
    :cond_6
    const/4 v14, 0x0

    .line 294
    :goto_2
    invoke-virtual {v10, v15, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 295
    .line 296
    .line 297
    const/high16 v14, 0x8000000

    .line 298
    .line 299
    invoke-static {v1, v0, v10, v14}, Leu/faircode/netguard/PendingIntentCompat;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 300
    .line 301
    .line 302
    move-result-object v10

    .line 303
    new-instance v14, Landroidx/core/app/t;

    .line 304
    .line 305
    if-eqz v11, :cond_7

    .line 306
    .line 307
    const v17, 0x7f0800c0

    .line 308
    .line 309
    .line 310
    move-object/from16 v18, v15

    .line 311
    .line 312
    const v15, 0x7f0800c0

    .line 313
    .line 314
    .line 315
    goto :goto_3

    .line 316
    :cond_7
    const v17, 0x7f0800be

    .line 317
    .line 318
    .line 319
    move-object/from16 v18, v15

    .line 320
    .line 321
    const v15, 0x7f0800be

    .line 322
    .line 323
    .line 324
    :goto_3
    if-eqz v11, :cond_8

    .line 325
    .line 326
    const v11, 0x7f100109

    .line 327
    .line 328
    .line 329
    goto :goto_4

    .line 330
    :cond_8
    const v11, 0x7f10010d

    .line 331
    .line 332
    .line 333
    :goto_4
    invoke-virtual {v1, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 334
    .line 335
    .line 336
    move-result-object v11

    .line 337
    invoke-direct {v14, v15, v11, v10}, Landroidx/core/app/t;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;)V

    .line 338
    .line 339
    .line 340
    invoke-virtual {v14}, Landroidx/core/app/t;->a()Landroidx/core/app/u;

    .line 341
    .line 342
    .line 343
    move-result-object v10

    .line 344
    iget-object v11, v2, Landroidx/core/app/w;->b:Ljava/util/ArrayList;

    .line 345
    .line 346
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 347
    .line 348
    .line 349
    new-instance v10, Landroid/content/Intent;

    .line 350
    .line 351
    invoke-direct {v10, v1, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 352
    .line 353
    .line 354
    invoke-virtual {v10, v6, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 355
    .line 356
    .line 357
    invoke-virtual {v10, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 358
    .line 359
    .line 360
    invoke-virtual {v10, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 361
    .line 362
    .line 363
    const/4 v4, 0x0

    .line 364
    aget-object v5, v12, v4

    .line 365
    .line 366
    invoke-virtual {v10, v9, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 367
    .line 368
    .line 369
    move-object/from16 v4, v18

    .line 370
    .line 371
    if-nez v3, :cond_9

    .line 372
    .line 373
    const/4 v13, 0x1

    .line 374
    goto :goto_5

    .line 375
    :cond_9
    const/4 v13, 0x0

    .line 376
    :goto_5
    invoke-virtual {v10, v4, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 377
    .line 378
    .line 379
    add-int/lit16 v4, v0, 0x2710

    .line 380
    .line 381
    const/high16 v5, 0x8000000

    .line 382
    .line 383
    invoke-static {v1, v4, v10, v5}, Leu/faircode/netguard/PendingIntentCompat;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 384
    .line 385
    .line 386
    move-result-object v4

    .line 387
    new-instance v5, Landroidx/core/app/t;

    .line 388
    .line 389
    if-eqz v3, :cond_a

    .line 390
    .line 391
    const v6, 0x7f0800b2

    .line 392
    .line 393
    .line 394
    goto :goto_6

    .line 395
    :cond_a
    const v6, 0x7f0800b0

    .line 396
    .line 397
    .line 398
    :goto_6
    if-eqz v3, :cond_b

    .line 399
    .line 400
    const v3, 0x7f100108

    .line 401
    .line 402
    .line 403
    goto :goto_7

    .line 404
    :cond_b
    const v3, 0x7f10010c

    .line 405
    .line 406
    .line 407
    :goto_7
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 408
    .line 409
    .line 410
    move-result-object v3

    .line 411
    invoke-direct {v5, v6, v3, v4}, Landroidx/core/app/t;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;)V

    .line 412
    .line 413
    .line 414
    invoke-virtual {v5}, Landroidx/core/app/t;->a()Landroidx/core/app/u;

    .line 415
    .line 416
    .line 417
    move-result-object v3

    .line 418
    iget-object v4, v2, Landroidx/core/app/w;->b:Ljava/util/ArrayList;

    .line 419
    .line 420
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 421
    .line 422
    .line 423
    if-eqz v16, :cond_c

    .line 424
    .line 425
    invoke-static/range {p0 .. p0}, Leu/faircode/netguard/Util;->canNotify(Landroid/content/Context;)Z

    .line 426
    .line 427
    .line 428
    move-result v3

    .line 429
    if-eqz v3, :cond_f

    .line 430
    .line 431
    invoke-static/range {p0 .. p0}, Landroidx/core/app/H;->c(Landroid/content/Context;)Landroidx/core/app/H;

    .line 432
    .line 433
    .line 434
    move-result-object v3

    .line 435
    invoke-virtual {v2}, Landroidx/core/app/w;->b()Landroid/app/Notification;

    .line 436
    .line 437
    .line 438
    move-result-object v2

    .line 439
    invoke-virtual {v3, v0, v2}, Landroidx/core/app/H;->e(ILandroid/app/Notification;)V

    .line 440
    .line 441
    .line 442
    goto :goto_9

    .line 443
    :cond_c
    new-instance v3, Landroidx/core/app/v;

    .line 444
    .line 445
    invoke-direct {v3, v2}, Landroidx/core/app/v;-><init>(Landroidx/core/app/w;)V

    .line 446
    .line 447
    .line 448
    move/from16 v2, p2

    .line 449
    .line 450
    const/16 v4, 0x18

    .line 451
    .line 452
    if-lt v2, v4, :cond_d

    .line 453
    .line 454
    const v2, 0x7f10007a

    .line 455
    .line 456
    .line 457
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 458
    .line 459
    .line 460
    move-result-object v2

    .line 461
    invoke-virtual {v3, v2}, Landroidx/core/app/v;->f(Ljava/lang/String;)V

    .line 462
    .line 463
    .line 464
    goto :goto_8

    .line 465
    :cond_d
    const/4 v2, 0x1

    .line 466
    new-array v2, v2, [Ljava/lang/Object;

    .line 467
    .line 468
    const/4 v4, 0x0

    .line 469
    aput-object v19, v2, v4

    .line 470
    .line 471
    const v4, 0x7f100079

    .line 472
    .line 473
    .line 474
    invoke-virtual {v1, v4, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 475
    .line 476
    .line 477
    move-result-object v2

    .line 478
    invoke-virtual {v3, v2}, Landroidx/core/app/v;->f(Ljava/lang/String;)V

    .line 479
    .line 480
    .line 481
    :goto_8
    const v2, 0x7f10011f

    .line 482
    .line 483
    .line 484
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 485
    .line 486
    .line 487
    move-result-object v2

    .line 488
    invoke-virtual {v3, v2}, Landroidx/core/app/v;->g(Ljava/lang/CharSequence;)V

    .line 489
    .line 490
    .line 491
    invoke-static/range {p0 .. p0}, Leu/faircode/netguard/Util;->canNotify(Landroid/content/Context;)Z

    .line 492
    .line 493
    .line 494
    move-result v2

    .line 495
    if-eqz v2, :cond_f

    .line 496
    .line 497
    invoke-static/range {p0 .. p0}, Landroidx/core/app/H;->c(Landroid/content/Context;)Landroidx/core/app/H;

    .line 498
    .line 499
    .line 500
    move-result-object v2

    .line 501
    invoke-virtual {v3}, Landroidx/core/app/y;->c()Landroid/app/Notification;

    .line 502
    .line 503
    .line 504
    move-result-object v3

    .line 505
    invoke-virtual {v2, v0, v3}, Landroidx/core/app/H;->e(ILandroid/app/Notification;)V

    .line 506
    .line 507
    .line 508
    goto :goto_9

    .line 509
    :cond_e
    new-instance v2, Landroid/content/pm/PackageManager$NameNotFoundException;

    .line 510
    .line 511
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 512
    .line 513
    .line 514
    move-result-object v0

    .line 515
    invoke-direct {v2, v0}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    .line 516
    .line 517
    .line 518
    throw v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 519
    :catch_0
    move-exception v0

    .line 520
    new-instance v2, Ljava/lang/StringBuilder;

    .line 521
    .line 522
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 523
    .line 524
    .line 525
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 526
    .line 527
    .line 528
    move-result-object v3

    .line 529
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 530
    .line 531
    .line 532
    const-string v3, "\n"

    .line 533
    .line 534
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 535
    .line 536
    .line 537
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 538
    .line 539
    .line 540
    move-result-object v0

    .line 541
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 542
    .line 543
    .line 544
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 545
    .line 546
    .line 547
    move-result-object v0

    .line 548
    const-string v2, "NetGuard.Service"

    .line 549
    .line 550
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    .line 552
    .line 553
    :cond_f
    :goto_9
    return-void
.end method

.method public onCreate()V
    .locals 8

    .line 1
    const-string v0, "NetGuard.Service"

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "Create version="

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-static {p0}, Leu/faircode/netguard/Util;->getSelfVersionName(Landroid/content/Context;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v2, "/"

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-static {p0}, Leu/faircode/netguard/Util;->getSelfVersionCode(Landroid/content/Context;)I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    const/4 v0, 0x2

    .line 37
    invoke-direct {p0}, Leu/faircode/netguard/ServiceSinkhole;->getWaitingNotification()Landroid/app/Notification;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {p0, v0, v1}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    .line 42
    .line 43
    .line 44
    invoke-static {p0}, Lt0/a;->s(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    sget-wide v1, Leu/faircode/netguard/ServiceSinkhole;->jni_context:J

    .line 49
    .line 50
    const-wide/16 v3, 0x0

    .line 51
    .line 52
    cmp-long v5, v1, v3

    .line 53
    .line 54
    if-eqz v5, :cond_0

    .line 55
    .line 56
    const-string v1, "NetGuard.Service"

    .line 57
    .line 58
    new-instance v2, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    const-string v5, "Create with context="

    .line 61
    .line 62
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    sget-wide v5, Leu/faircode/netguard/ServiceSinkhole;->jni_context:J

    .line 66
    .line 67
    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    .line 76
    .line 77
    sget-wide v1, Leu/faircode/netguard/ServiceSinkhole;->jni_context:J

    .line 78
    .line 79
    invoke-direct {p0, v1, v2}, Leu/faircode/netguard/ServiceSinkhole;->jni_stop(J)V

    .line 80
    .line 81
    .line 82
    sget-object v1, Leu/faircode/netguard/ServiceSinkhole;->jni_lock:Ljava/lang/Object;

    .line 83
    .line 84
    monitor-enter v1

    .line 85
    :try_start_0
    sget-wide v5, Leu/faircode/netguard/ServiceSinkhole;->jni_context:J

    .line 86
    .line 87
    invoke-direct {p0, v5, v6}, Leu/faircode/netguard/ServiceSinkhole;->jni_done(J)V

    .line 88
    .line 89
    .line 90
    sput-wide v3, Leu/faircode/netguard/ServiceSinkhole;->jni_context:J

    .line 91
    .line 92
    monitor-exit v1

    .line 93
    goto :goto_0

    .line 94
    :catchall_0
    move-exception v0

    .line 95
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    throw v0

    .line 97
    :cond_0
    :goto_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 98
    .line 99
    invoke-direct {p0, v1}, Leu/faircode/netguard/ServiceSinkhole;->jni_init(I)J

    .line 100
    .line 101
    .line 102
    move-result-wide v2

    .line 103
    sput-wide v2, Leu/faircode/netguard/ServiceSinkhole;->jni_context:J

    .line 104
    .line 105
    const-string v2, "NetGuard.Service"

    .line 106
    .line 107
    new-instance v3, Ljava/lang/StringBuilder;

    .line 108
    .line 109
    const-string v4, "Created context="

    .line 110
    .line 111
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    sget-wide v4, Leu/faircode/netguard/ServiceSinkhole;->jni_context:J

    .line 115
    .line 116
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v3

    .line 123
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    .line 125
    .line 126
    const-string v2, "pcap"

    .line 127
    .line 128
    const/4 v3, 0x0

    .line 129
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 130
    .line 131
    .line 132
    move-result v2

    .line 133
    invoke-static {v2, p0}, Leu/faircode/netguard/ServiceSinkhole;->setPcap(ZLandroid/content/Context;)V

    .line 134
    .line 135
    .line 136
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 137
    .line 138
    .line 139
    invoke-static {p0}, Leu/faircode/netguard/Util;->setTheme(Landroid/content/Context;)V

    .line 140
    .line 141
    .line 142
    invoke-super {p0}, Landroid/net/VpnService;->onCreate()V

    .line 143
    .line 144
    .line 145
    new-instance v0, Landroid/os/HandlerThread;

    .line 146
    .line 147
    new-instance v2, Ljava/lang/StringBuilder;

    .line 148
    .line 149
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 150
    .line 151
    .line 152
    const v4, 0x7f100023

    .line 153
    .line 154
    .line 155
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v5

    .line 159
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    const-string v5, " command"

    .line 163
    .line 164
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v2

    .line 171
    const/4 v5, -0x2

    .line 172
    invoke-direct {v0, v2, v5}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 173
    .line 174
    .line 175
    new-instance v2, Landroid/os/HandlerThread;

    .line 176
    .line 177
    new-instance v5, Ljava/lang/StringBuilder;

    .line 178
    .line 179
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 180
    .line 181
    .line 182
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v6

    .line 186
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    const-string v6, " log"

    .line 190
    .line 191
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v5

    .line 198
    const/16 v6, 0xa

    .line 199
    .line 200
    invoke-direct {v2, v5, v6}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 201
    .line 202
    .line 203
    new-instance v5, Landroid/os/HandlerThread;

    .line 204
    .line 205
    new-instance v7, Ljava/lang/StringBuilder;

    .line 206
    .line 207
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 208
    .line 209
    .line 210
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v4

    .line 214
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    const-string v4, " stats"

    .line 218
    .line 219
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v4

    .line 226
    invoke-direct {v5, v4, v6}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 230
    .line 231
    .line 232
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 233
    .line 234
    .line 235
    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    .line 236
    .line 237
    .line 238
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 239
    .line 240
    .line 241
    move-result-object v0

    .line 242
    iput-object v0, p0, Leu/faircode/netguard/ServiceSinkhole;->commandLooper:Landroid/os/Looper;

    .line 243
    .line 244
    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 245
    .line 246
    .line 247
    move-result-object v0

    .line 248
    iput-object v0, p0, Leu/faircode/netguard/ServiceSinkhole;->logLooper:Landroid/os/Looper;

    .line 249
    .line 250
    invoke-virtual {v5}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 251
    .line 252
    .line 253
    move-result-object v0

    .line 254
    iput-object v0, p0, Leu/faircode/netguard/ServiceSinkhole;->statsLooper:Landroid/os/Looper;

    .line 255
    .line 256
    new-instance v0, Leu/faircode/netguard/ServiceSinkhole$CommandHandler;

    .line 257
    .line 258
    iget-object v2, p0, Leu/faircode/netguard/ServiceSinkhole;->commandLooper:Landroid/os/Looper;

    .line 259
    .line 260
    invoke-direct {v0, p0, v2}, Leu/faircode/netguard/ServiceSinkhole$CommandHandler;-><init>(Leu/faircode/netguard/ServiceSinkhole;Landroid/os/Looper;)V

    .line 261
    .line 262
    .line 263
    iput-object v0, p0, Leu/faircode/netguard/ServiceSinkhole;->commandHandler:Leu/faircode/netguard/ServiceSinkhole$CommandHandler;

    .line 264
    .line 265
    new-instance v0, Leu/faircode/netguard/ServiceSinkhole$LogHandler;

    .line 266
    .line 267
    iget-object v2, p0, Leu/faircode/netguard/ServiceSinkhole;->logLooper:Landroid/os/Looper;

    .line 268
    .line 269
    invoke-direct {v0, p0, v2}, Leu/faircode/netguard/ServiceSinkhole$LogHandler;-><init>(Leu/faircode/netguard/ServiceSinkhole;Landroid/os/Looper;)V

    .line 270
    .line 271
    .line 272
    iput-object v0, p0, Leu/faircode/netguard/ServiceSinkhole;->logHandler:Leu/faircode/netguard/ServiceSinkhole$LogHandler;

    .line 273
    .line 274
    new-instance v0, Leu/faircode/netguard/ServiceSinkhole$StatsHandler;

    .line 275
    .line 276
    iget-object v2, p0, Leu/faircode/netguard/ServiceSinkhole;->statsLooper:Landroid/os/Looper;

    .line 277
    .line 278
    invoke-direct {v0, p0, v2}, Leu/faircode/netguard/ServiceSinkhole$StatsHandler;-><init>(Leu/faircode/netguard/ServiceSinkhole;Landroid/os/Looper;)V

    .line 279
    .line 280
    .line 281
    iput-object v0, p0, Leu/faircode/netguard/ServiceSinkhole;->statsHandler:Leu/faircode/netguard/ServiceSinkhole$StatsHandler;

    .line 282
    .line 283
    new-instance v0, Landroid/content/IntentFilter;

    .line 284
    .line 285
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 286
    .line 287
    .line 288
    const-string v2, "android.intent.action.USER_BACKGROUND"

    .line 289
    .line 290
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 291
    .line 292
    .line 293
    const-string v2, "android.intent.action.USER_FOREGROUND"

    .line 294
    .line 295
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 296
    .line 297
    .line 298
    iget-object v2, p0, Leu/faircode/netguard/ServiceSinkhole;->userReceiver:Landroid/content/BroadcastReceiver;

    .line 299
    .line 300
    invoke-static {p0, v2, v0}, Landroidx/core/content/f;->e(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 301
    .line 302
    .line 303
    const/4 v0, 0x1

    .line 304
    iput-boolean v0, p0, Leu/faircode/netguard/ServiceSinkhole;->registeredUser:Z

    .line 305
    .line 306
    const/16 v2, 0x17

    .line 307
    .line 308
    if-lt v1, v2, :cond_1

    .line 309
    .line 310
    new-instance v4, Landroid/content/IntentFilter;

    .line 311
    .line 312
    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 313
    .line 314
    .line 315
    const-string v5, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    .line 316
    .line 317
    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 318
    .line 319
    .line 320
    iget-object v5, p0, Leu/faircode/netguard/ServiceSinkhole;->idleStateReceiver:Landroid/content/BroadcastReceiver;

    .line 321
    .line 322
    invoke-static {p0, v5, v4}, Landroidx/core/content/f;->e(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 323
    .line 324
    .line 325
    iput-boolean v0, p0, Leu/faircode/netguard/ServiceSinkhole;->registeredIdleState:Z

    .line 326
    .line 327
    :cond_1
    new-instance v4, Landroid/content/IntentFilter;

    .line 328
    .line 329
    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 330
    .line 331
    .line 332
    const-string v5, "android.intent.action.PACKAGE_ADDED"

    .line 333
    .line 334
    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 335
    .line 336
    .line 337
    const-string v5, "android.intent.action.PACKAGE_REMOVED"

    .line 338
    .line 339
    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 340
    .line 341
    .line 342
    const-string v5, "package"

    .line 343
    .line 344
    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 345
    .line 346
    .line 347
    iget-object v5, p0, Leu/faircode/netguard/ServiceSinkhole;->packageChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 348
    .line 349
    invoke-static {p0, v5, v4}, Landroidx/core/content/f;->e(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 350
    .line 351
    .line 352
    iput-boolean v0, p0, Leu/faircode/netguard/ServiceSinkhole;->registeredPackageChanged:Z

    .line 353
    .line 354
    if-lt v1, v2, :cond_2

    .line 355
    .line 356
    :try_start_1
    invoke-direct {p0}, Leu/faircode/netguard/ServiceSinkhole;->listenNetworkChanges()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 357
    .line 358
    .line 359
    goto :goto_1

    .line 360
    :catchall_1
    move-exception v0

    .line 361
    const-string v1, "NetGuard.Service"

    .line 362
    .line 363
    new-instance v2, Ljava/lang/StringBuilder;

    .line 364
    .line 365
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 366
    .line 367
    .line 368
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    .line 369
    .line 370
    .line 371
    move-result-object v4

    .line 372
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    .line 374
    .line 375
    const-string v4, "\n"

    .line 376
    .line 377
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    .line 379
    .line 380
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 381
    .line 382
    .line 383
    move-result-object v0

    .line 384
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    .line 386
    .line 387
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 388
    .line 389
    .line 390
    move-result-object v0

    .line 391
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    .line 393
    .line 394
    invoke-direct {p0}, Leu/faircode/netguard/ServiceSinkhole;->listenConnectivityChanges()V

    .line 395
    .line 396
    .line 397
    goto :goto_1

    .line 398
    :cond_2
    invoke-direct {p0}, Leu/faircode/netguard/ServiceSinkhole;->listenConnectivityChanges()V

    .line 399
    .line 400
    .line 401
    :goto_1
    const-string v0, "connectivity"

    .line 402
    .line 403
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 404
    .line 405
    .line 406
    move-result-object v0

    .line 407
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 408
    .line 409
    new-instance v1, Landroid/net/NetworkRequest$Builder;

    .line 410
    .line 411
    invoke-direct {v1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 412
    .line 413
    .line 414
    const/16 v2, 0xc

    .line 415
    .line 416
    invoke-virtual {v1, v2}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    .line 417
    .line 418
    .line 419
    move-result-object v1

    .line 420
    invoke-virtual {v1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    .line 421
    .line 422
    .line 423
    move-result-object v1

    .line 424
    iget-object v2, p0, Leu/faircode/netguard/ServiceSinkhole;->networkMonitorCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 425
    .line 426
    invoke-virtual {v0, v1, v2}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 427
    .line 428
    .line 429
    new-instance v0, Landroid/content/Intent;

    .line 430
    .line 431
    const-class v1, Leu/faircode/netguard/ServiceSinkhole;

    .line 432
    .line 433
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 434
    .line 435
    .line 436
    const-string v1, "eu.faircode.netguard.HOUSE_HOLDING"

    .line 437
    .line 438
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 439
    .line 440
    .line 441
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 442
    .line 443
    const/16 v2, 0x1a

    .line 444
    .line 445
    const/high16 v4, 0x8000000

    .line 446
    .line 447
    if-lt v1, v2, :cond_3

    .line 448
    .line 449
    invoke-static {p0, v3, v0, v4}, Leu/faircode/netguard/PendingIntentCompat;->getForegroundService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 450
    .line 451
    .line 452
    move-result-object v0

    .line 453
    goto :goto_2

    .line 454
    :cond_3
    invoke-static {p0, v3, v0, v4}, Leu/faircode/netguard/PendingIntentCompat;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 455
    .line 456
    .line 457
    move-result-object v0

    .line 458
    :goto_2
    move-object v7, v0

    .line 459
    const-string v0, "alarm"

    .line 460
    .line 461
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 462
    .line 463
    .line 464
    move-result-object v0

    .line 465
    move-object v1, v0

    .line 466
    check-cast v1, Landroid/app/AlarmManager;

    .line 467
    .line 468
    const/4 v2, 0x1

    .line 469
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 470
    .line 471
    .line 472
    move-result-wide v3

    .line 473
    const-wide/32 v5, 0xea60

    .line 474
    .line 475
    .line 476
    add-long/2addr v3, v5

    .line 477
    const-wide/32 v5, 0x2932e00

    .line 478
    .line 479
    .line 480
    invoke-virtual/range {v1 .. v7}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V

    .line 481
    .line 482
    .line 483
    return-void
.end method

.method public onDestroy()V
    .locals 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    const-string v0, "NetGuard.Service"

    .line 3
    .line 4
    const-string v1, "Destroy"

    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Leu/faircode/netguard/ServiceSinkhole;->commandLooper:Landroid/os/Looper;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Leu/faircode/netguard/ServiceSinkhole;->logLooper:Landroid/os/Looper;

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Leu/faircode/netguard/ServiceSinkhole;->statsLooper:Landroid/os/Looper;

    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 22
    .line 23
    .line 24
    invoke-static {}, Leu/faircode/netguard/ServiceSinkhole$Command;->values()[Leu/faircode/netguard/ServiceSinkhole$Command;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    array-length v1, v0

    .line 29
    const/4 v2, 0x0

    .line 30
    const/4 v3, 0x0

    .line 31
    :goto_0
    if-ge v3, v1, :cond_0

    .line 32
    .line 33
    aget-object v4, v0, v3

    .line 34
    .line 35
    iget-object v5, p0, Leu/faircode/netguard/ServiceSinkhole;->commandHandler:Leu/faircode/netguard/ServiceSinkhole$CommandHandler;

    .line 36
    .line 37
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    invoke-virtual {v5, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 42
    .line 43
    .line 44
    add-int/lit8 v3, v3, 0x1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    invoke-static {p0}, Leu/faircode/netguard/ServiceSinkhole;->releaseLock(Landroid/content/Context;)V

    .line 48
    .line 49
    .line 50
    iget-boolean v0, p0, Leu/faircode/netguard/ServiceSinkhole;->registeredInteractiveState:Z

    .line 51
    .line 52
    if-eqz v0, :cond_1

    .line 53
    .line 54
    iget-object v0, p0, Leu/faircode/netguard/ServiceSinkhole;->interactiveStateReceiver:Landroid/content/BroadcastReceiver;

    .line 55
    .line 56
    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 57
    .line 58
    .line 59
    iput-boolean v2, p0, Leu/faircode/netguard/ServiceSinkhole;->registeredInteractiveState:Z

    .line 60
    .line 61
    :cond_1
    iget-object v0, p0, Leu/faircode/netguard/ServiceSinkhole;->callStateListener:Landroid/telephony/PhoneStateListener;

    .line 62
    .line 63
    const/4 v1, 0x0

    .line 64
    if-eqz v0, :cond_2

    .line 65
    .line 66
    const-string v0, "phone"

    .line 67
    .line 68
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 73
    .line 74
    iget-object v3, p0, Leu/faircode/netguard/ServiceSinkhole;->callStateListener:Landroid/telephony/PhoneStateListener;

    .line 75
    .line 76
    invoke-virtual {v0, v3, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 77
    .line 78
    .line 79
    iput-object v1, p0, Leu/faircode/netguard/ServiceSinkhole;->callStateListener:Landroid/telephony/PhoneStateListener;

    .line 80
    .line 81
    :cond_2
    iget-boolean v0, p0, Leu/faircode/netguard/ServiceSinkhole;->registeredUser:Z

    .line 82
    .line 83
    if-eqz v0, :cond_3

    .line 84
    .line 85
    iget-object v0, p0, Leu/faircode/netguard/ServiceSinkhole;->userReceiver:Landroid/content/BroadcastReceiver;

    .line 86
    .line 87
    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 88
    .line 89
    .line 90
    iput-boolean v2, p0, Leu/faircode/netguard/ServiceSinkhole;->registeredUser:Z

    .line 91
    .line 92
    :cond_3
    iget-boolean v0, p0, Leu/faircode/netguard/ServiceSinkhole;->registeredIdleState:Z

    .line 93
    .line 94
    if-eqz v0, :cond_4

    .line 95
    .line 96
    iget-object v0, p0, Leu/faircode/netguard/ServiceSinkhole;->idleStateReceiver:Landroid/content/BroadcastReceiver;

    .line 97
    .line 98
    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 99
    .line 100
    .line 101
    iput-boolean v2, p0, Leu/faircode/netguard/ServiceSinkhole;->registeredIdleState:Z

    .line 102
    .line 103
    :cond_4
    iget-boolean v0, p0, Leu/faircode/netguard/ServiceSinkhole;->registeredPackageChanged:Z

    .line 104
    .line 105
    if-eqz v0, :cond_5

    .line 106
    .line 107
    iget-object v0, p0, Leu/faircode/netguard/ServiceSinkhole;->packageChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 108
    .line 109
    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 110
    .line 111
    .line 112
    iput-boolean v2, p0, Leu/faircode/netguard/ServiceSinkhole;->registeredPackageChanged:Z

    .line 113
    .line 114
    :cond_5
    iget-object v0, p0, Leu/faircode/netguard/ServiceSinkhole;->networkCallback:Ljava/lang/Object;

    .line 115
    .line 116
    if-eqz v0, :cond_6

    .line 117
    .line 118
    invoke-direct {p0}, Leu/faircode/netguard/ServiceSinkhole;->unlistenNetworkChanges()V

    .line 119
    .line 120
    .line 121
    iput-object v1, p0, Leu/faircode/netguard/ServiceSinkhole;->networkCallback:Ljava/lang/Object;

    .line 122
    .line 123
    :cond_6
    iget-boolean v0, p0, Leu/faircode/netguard/ServiceSinkhole;->registeredConnectivityChanged:Z

    .line 124
    .line 125
    if-eqz v0, :cond_7

    .line 126
    .line 127
    iget-object v0, p0, Leu/faircode/netguard/ServiceSinkhole;->connectivityChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 128
    .line 129
    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 130
    .line 131
    .line 132
    iput-boolean v2, p0, Leu/faircode/netguard/ServiceSinkhole;->registeredConnectivityChanged:Z

    .line 133
    .line 134
    :cond_7
    const-string v0, "connectivity"

    .line 135
    .line 136
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 141
    .line 142
    iget-object v3, p0, Leu/faircode/netguard/ServiceSinkhole;->networkMonitorCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 143
    .line 144
    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 145
    .line 146
    .line 147
    iget-boolean v0, p0, Leu/faircode/netguard/ServiceSinkhole;->phone_state:Z

    .line 148
    .line 149
    if-eqz v0, :cond_8

    .line 150
    .line 151
    const-string v0, "phone"

    .line 152
    .line 153
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 158
    .line 159
    iget-object v3, p0, Leu/faircode/netguard/ServiceSinkhole;->phoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 160
    .line 161
    invoke-virtual {v0, v3, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 162
    .line 163
    .line 164
    iput-boolean v2, p0, Leu/faircode/netguard/ServiceSinkhole;->phone_state:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 165
    .line 166
    :cond_8
    :try_start_1
    iget-object v0, p0, Leu/faircode/netguard/ServiceSinkhole;->vpn:Landroid/os/ParcelFileDescriptor;

    .line 167
    .line 168
    if-eqz v0, :cond_9

    .line 169
    .line 170
    invoke-direct {p0, v0}, Leu/faircode/netguard/ServiceSinkhole;->stopNative(Landroid/os/ParcelFileDescriptor;)V

    .line 171
    .line 172
    .line 173
    iget-object v0, p0, Leu/faircode/netguard/ServiceSinkhole;->vpn:Landroid/os/ParcelFileDescriptor;

    .line 174
    .line 175
    invoke-direct {p0, v0}, Leu/faircode/netguard/ServiceSinkhole;->stopVPN(Landroid/os/ParcelFileDescriptor;)V

    .line 176
    .line 177
    .line 178
    iput-object v1, p0, Leu/faircode/netguard/ServiceSinkhole;->vpn:Landroid/os/ParcelFileDescriptor;

    .line 179
    .line 180
    invoke-direct {p0}, Leu/faircode/netguard/ServiceSinkhole;->unprepare()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 181
    .line 182
    .line 183
    goto :goto_1

    .line 184
    :catchall_0
    move-exception v0

    .line 185
    :try_start_2
    const-string v1, "NetGuard.Service"

    .line 186
    .line 187
    new-instance v2, Ljava/lang/StringBuilder;

    .line 188
    .line 189
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v3

    .line 196
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    const-string v3, "\n"

    .line 200
    .line 201
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v0

    .line 208
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v0

    .line 215
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    .line 217
    .line 218
    :cond_9
    :goto_1
    const-string v0, "NetGuard.Service"

    .line 219
    .line 220
    new-instance v1, Ljava/lang/StringBuilder;

    .line 221
    .line 222
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 223
    .line 224
    .line 225
    const-string v2, "Destroy context="

    .line 226
    .line 227
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    sget-wide v2, Leu/faircode/netguard/ServiceSinkhole;->jni_context:J

    .line 231
    .line 232
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v1

    .line 239
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    .line 241
    .line 242
    sget-object v0, Leu/faircode/netguard/ServiceSinkhole;->jni_lock:Ljava/lang/Object;

    .line 243
    .line 244
    monitor-enter v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 245
    :try_start_3
    sget-wide v1, Leu/faircode/netguard/ServiceSinkhole;->jni_context:J

    .line 246
    .line 247
    invoke-direct {p0, v1, v2}, Leu/faircode/netguard/ServiceSinkhole;->jni_done(J)V

    .line 248
    .line 249
    .line 250
    const-wide/16 v1, 0x0

    .line 251
    .line 252
    sput-wide v1, Leu/faircode/netguard/ServiceSinkhole;->jni_context:J

    .line 253
    .line 254
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 255
    :try_start_4
    invoke-static {p0}, Lt0/a;->s(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 256
    .line 257
    .line 258
    move-result-object v0

    .line 259
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 260
    .line 261
    .line 262
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 263
    invoke-super {p0}, Landroid/net/VpnService;->onDestroy()V

    .line 264
    .line 265
    .line 266
    return-void

    .line 267
    :catchall_1
    move-exception v1

    .line 268
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 269
    :try_start_6
    throw v1

    .line 270
    :catchall_2
    move-exception v0

    .line 271
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 272
    throw v0
.end method

.method public onRevoke()V
    .locals 3

    .line 1
    const-string v0, "NetGuard.Service"

    .line 2
    .line 3
    const-string v1, "Revoke"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-static {p0}, Lt0/a;->s(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-string v1, "enabled"

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 24
    .line 25
    .line 26
    invoke-direct {p0}, Leu/faircode/netguard/ServiceSinkhole;->showDisabledNotification()V

    .line 27
    .line 28
    .line 29
    invoke-static {p0}, Leu/faircode/netguard/WidgetMain;->updateWidgets(Landroid/content/Context;)V

    .line 30
    .line 31
    .line 32
    invoke-super {p0}, Landroid/net/VpnService;->onRevoke()V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string p1, "theme"

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_3

    .line 8
    .line 9
    const-string p1, "Theme changed"

    .line 10
    .line 11
    const-string p2, "NetGuard.Service"

    .line 12
    .line 13
    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    invoke-static {p0}, Leu/faircode/netguard/Util;->setTheme(Landroid/content/Context;)V

    .line 17
    .line 18
    .line 19
    iget-object p1, p0, Leu/faircode/netguard/ServiceSinkhole;->state:Leu/faircode/netguard/ServiceSinkhole$State;

    .line 20
    .line 21
    sget-object v0, Leu/faircode/netguard/ServiceSinkhole$State;->none:Leu/faircode/netguard/ServiceSinkhole$State;

    .line 22
    .line 23
    const/4 v1, 0x1

    .line 24
    if-eq p1, v0, :cond_0

    .line 25
    .line 26
    new-instance p1, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    const-string v2, "Stop foreground state="

    .line 29
    .line 30
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iget-object v2, p0, Leu/faircode/netguard/ServiceSinkhole;->state:Leu/faircode/netguard/ServiceSinkhole$State;

    .line 34
    .line 35
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, v1}, Landroid/app/Service;->stopForeground(Z)V

    .line 50
    .line 51
    .line 52
    :cond_0
    iget-object p1, p0, Leu/faircode/netguard/ServiceSinkhole;->state:Leu/faircode/netguard/ServiceSinkhole$State;

    .line 53
    .line 54
    sget-object v2, Leu/faircode/netguard/ServiceSinkhole$State;->enforcing:Leu/faircode/netguard/ServiceSinkhole$State;

    .line 55
    .line 56
    if-ne p1, v2, :cond_1

    .line 57
    .line 58
    const/4 p1, -0x1

    .line 59
    invoke-direct {p0, p1, p1, p1}, Leu/faircode/netguard/ServiceSinkhole;->getEnforcingNotification(III)Landroid/app/Notification;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-virtual {p0, v1, p1}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_1
    if-eq p1, v0, :cond_2

    .line 68
    .line 69
    const/4 p1, 0x2

    .line 70
    invoke-direct {p0}, Leu/faircode/netguard/ServiceSinkhole;->getWaitingNotification()Landroid/app/Notification;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-virtual {p0, p1, v0}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    .line 75
    .line 76
    .line 77
    :cond_2
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    const-string v0, "Start foreground state="

    .line 80
    .line 81
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    iget-object v0, p0, Leu/faircode/netguard/ServiceSinkhole;->state:Leu/faircode/netguard/ServiceSinkhole$State;

    .line 85
    .line 86
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    .line 99
    .line 100
    :cond_3
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 5

    .line 1
    iget-object p2, p0, Leu/faircode/netguard/ServiceSinkhole;->state:Leu/faircode/netguard/ServiceSinkhole$State;

    .line 2
    .line 3
    sget-object p3, Leu/faircode/netguard/ServiceSinkhole$State;->enforcing:Leu/faircode/netguard/ServiceSinkhole$State;

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    if-ne p2, p3, :cond_0

    .line 7
    .line 8
    const/4 p2, -0x1

    .line 9
    invoke-direct {p0, p2, p2, p2}, Leu/faircode/netguard/ServiceSinkhole;->getEnforcingNotification(III)Landroid/app/Notification;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    invoke-virtual {p0, v0, p2}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p2, 0x2

    .line 18
    invoke-direct {p0}, Leu/faircode/netguard/ServiceSinkhole;->getWaitingNotification()Landroid/app/Notification;

    .line 19
    .line 20
    .line 21
    move-result-object p3

    .line 22
    invoke-virtual {p0, p2, p3}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    const-string p3, "Received "

    .line 28
    .line 29
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    const-string p3, "NetGuard.Service"

    .line 40
    .line 41
    invoke-static {p3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    invoke-static {p1}, Leu/faircode/netguard/Util;->logExtras(Landroid/content/Intent;)V

    .line 45
    .line 46
    .line 47
    const-string p2, "Command"

    .line 48
    .line 49
    if-eqz p1, :cond_1

    .line 50
    .line 51
    invoke-virtual {p1, p2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-eqz v1, :cond_1

    .line 56
    .line 57
    invoke-virtual {p1, p2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    sget-object v2, Leu/faircode/netguard/ServiceSinkhole$Command;->set:Leu/faircode/netguard/ServiceSinkhole$Command;

    .line 62
    .line 63
    if-ne v1, v2, :cond_1

    .line 64
    .line 65
    invoke-direct {p0, p1}, Leu/faircode/netguard/ServiceSinkhole;->set(Landroid/content/Intent;)V

    .line 66
    .line 67
    .line 68
    return v0

    .line 69
    :cond_1
    invoke-static {p0}, Leu/faircode/netguard/ServiceSinkhole;->getLock(Landroid/content/Context;)Landroid/os/PowerManager$WakeLock;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 74
    .line 75
    .line 76
    invoke-static {p0}, Lt0/a;->s(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    const-string v2, "enabled"

    .line 81
    .line 82
    const/4 v3, 0x0

    .line 83
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    if-nez p1, :cond_3

    .line 88
    .line 89
    const-string p1, "Restart"

    .line 90
    .line 91
    invoke-static {p3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    .line 93
    .line 94
    new-instance p1, Landroid/content/Intent;

    .line 95
    .line 96
    const-class v2, Leu/faircode/netguard/ServiceSinkhole;

    .line 97
    .line 98
    invoke-direct {p1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 99
    .line 100
    .line 101
    if-eqz v1, :cond_2

    .line 102
    .line 103
    sget-object v2, Leu/faircode/netguard/ServiceSinkhole$Command;->start:Leu/faircode/netguard/ServiceSinkhole$Command;

    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_2
    sget-object v2, Leu/faircode/netguard/ServiceSinkhole$Command;->stop:Leu/faircode/netguard/ServiceSinkhole$Command;

    .line 107
    .line 108
    :goto_1
    invoke-virtual {p1, p2, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 109
    .line 110
    .line 111
    :cond_3
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    const-string v4, "eu.faircode.netguard.HOUSE_HOLDING"

    .line 116
    .line 117
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    move-result v2

    .line 121
    if-eqz v2, :cond_4

    .line 122
    .line 123
    sget-object v2, Leu/faircode/netguard/ServiceSinkhole$Command;->householding:Leu/faircode/netguard/ServiceSinkhole$Command;

    .line 124
    .line 125
    invoke-virtual {p1, p2, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 126
    .line 127
    .line 128
    :cond_4
    const-string v2, "eu.faircode.netguard.WATCHDOG"

    .line 129
    .line 130
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v4

    .line 134
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 135
    .line 136
    .line 137
    move-result v2

    .line 138
    if-eqz v2, :cond_5

    .line 139
    .line 140
    sget-object v2, Leu/faircode/netguard/ServiceSinkhole$Command;->watchdog:Leu/faircode/netguard/ServiceSinkhole$Command;

    .line 141
    .line 142
    invoke-virtual {p1, p2, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 143
    .line 144
    .line 145
    :cond_5
    invoke-virtual {p1, p2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    .line 146
    .line 147
    .line 148
    move-result-object v2

    .line 149
    check-cast v2, Leu/faircode/netguard/ServiceSinkhole$Command;

    .line 150
    .line 151
    if-nez v2, :cond_7

    .line 152
    .line 153
    if-eqz v1, :cond_6

    .line 154
    .line 155
    sget-object v1, Leu/faircode/netguard/ServiceSinkhole$Command;->start:Leu/faircode/netguard/ServiceSinkhole$Command;

    .line 156
    .line 157
    goto :goto_2

    .line 158
    :cond_6
    sget-object v1, Leu/faircode/netguard/ServiceSinkhole$Command;->stop:Leu/faircode/netguard/ServiceSinkhole$Command;

    .line 159
    .line 160
    :goto_2
    invoke-virtual {p1, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 161
    .line 162
    .line 163
    :cond_7
    const-string p2, "Reason"

    .line 164
    .line 165
    invoke-virtual {p1, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object p2

    .line 169
    new-instance v1, Ljava/lang/StringBuilder;

    .line 170
    .line 171
    const-string v4, "Start intent="

    .line 172
    .line 173
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    const-string v4, " command="

    .line 180
    .line 181
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    const-string v2, " reason="

    .line 188
    .line 189
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    const-string p2, " vpn="

    .line 196
    .line 197
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    iget-object p2, p0, Leu/faircode/netguard/ServiceSinkhole;->vpn:Landroid/os/ParcelFileDescriptor;

    .line 201
    .line 202
    if-eqz p2, :cond_8

    .line 203
    .line 204
    const/4 v3, 0x1

    .line 205
    :cond_8
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    const-string p2, " user="

    .line 209
    .line 210
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 214
    .line 215
    .line 216
    move-result p2

    .line 217
    const v2, 0x186a0

    .line 218
    .line 219
    .line 220
    div-int/2addr p2, v2

    .line 221
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object p2

    .line 228
    invoke-static {p3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    .line 230
    .line 231
    iget-object p2, p0, Leu/faircode/netguard/ServiceSinkhole;->commandHandler:Leu/faircode/netguard/ServiceSinkhole$CommandHandler;

    .line 232
    .line 233
    invoke-virtual {p2, p1}, Leu/faircode/netguard/ServiceSinkhole$CommandHandler;->queue(Landroid/content/Intent;)V

    .line 234
    .line 235
    .line 236
    return v0
.end method
