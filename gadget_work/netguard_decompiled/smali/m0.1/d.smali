.class public final Lm0/d;
.super Lm0/e;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/errorprone/annotations/RestrictedInheritance;
    allowedOnPath = ".*java.*/com/google/android/gms.*"
    allowlistAnnotations = {
        Lv0/d;,
        Lv0/e;
    }
    explanation = "Sub classing of GMS Core\'s APIs are restricted to GMS Core client libs and testing fakes."
    link = "go/gmscore-restrictedinheritance"
.end annotation


# static fields
.field private static final b:Ljava/lang/Object;

.field private static final c:Lm0/d;


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
    sput-object v0, Lm0/d;->b:Ljava/lang/Object;

    .line 7
    .line 8
    new-instance v0, Lm0/d;

    .line 9
    .line 10
    invoke-direct {v0}, Lm0/d;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lm0/d;->c:Lm0/d;

    .line 14
    .line 15
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lm0/e;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static d()Lm0/d;
    .locals 1

    .line 1
    sget-object v0, Lm0/d;->c:Lm0/d;

    return-object v0
.end method

.method static g(Landroid/content/Context;ILp0/A;Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog;
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    new-instance v1, Landroid/util/TypedValue;

    .line 6
    .line 7
    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    const v3, 0x1010309

    .line 15
    .line 16
    .line 17
    const/4 v4, 0x1

    .line 18
    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    iget v1, v1, Landroid/util/TypedValue;->resourceId:I

    .line 26
    .line 27
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    const-string v2, "Theme.Dialog.Alert"

    .line 32
    .line 33
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_1

    .line 38
    .line 39
    new-instance v0, Landroid/app/AlertDialog$Builder;

    .line 40
    .line 41
    const/4 v1, 0x5

    .line 42
    invoke-direct {v0, p0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 43
    .line 44
    .line 45
    :cond_1
    if-nez v0, :cond_2

    .line 46
    .line 47
    new-instance v0, Landroid/app/AlertDialog$Builder;

    .line 48
    .line 49
    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 50
    .line 51
    .line 52
    :cond_2
    invoke-static {p0, p1}, Lp0/y;->b(Landroid/content/Context;I)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 57
    .line 58
    .line 59
    if-eqz p3, :cond_3

    .line 60
    .line 61
    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 62
    .line 63
    .line 64
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 65
    .line 66
    .line 67
    move-result-object p3

    .line 68
    if-eq p1, v4, :cond_6

    .line 69
    .line 70
    const/4 v1, 0x2

    .line 71
    if-eq p1, v1, :cond_5

    .line 72
    .line 73
    const/4 v1, 0x3

    .line 74
    if-eq p1, v1, :cond_4

    .line 75
    .line 76
    const v1, 0x104000a

    .line 77
    .line 78
    .line 79
    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p3

    .line 83
    goto :goto_0

    .line 84
    :cond_4
    const v1, 0x7f10002b

    .line 85
    .line 86
    .line 87
    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p3

    .line 91
    goto :goto_0

    .line 92
    :cond_5
    const v1, 0x7f100035

    .line 93
    .line 94
    .line 95
    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p3

    .line 99
    goto :goto_0

    .line 100
    :cond_6
    const v1, 0x7f10002e

    .line 101
    .line 102
    .line 103
    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p3

    .line 107
    :goto_0
    if-eqz p3, :cond_7

    .line 108
    .line 109
    invoke-virtual {v0, p3, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 110
    .line 111
    .line 112
    :cond_7
    invoke-static {p0, p1}, Lp0/y;->e(Landroid/content/Context;I)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p0

    .line 116
    if-eqz p0, :cond_8

    .line 117
    .line 118
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 119
    .line 120
    .line 121
    :cond_8
    new-array p0, v4, [Ljava/lang/Object;

    .line 122
    .line 123
    const/4 p2, 0x0

    .line 124
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    aput-object p1, p0, p2

    .line 129
    .line 130
    const-string p1, "Creating dialog for Google Play services availability issue. ConnectionResult=%s"

    .line 131
    .line 132
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object p0

    .line 136
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 137
    .line 138
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 139
    .line 140
    .line 141
    const-string p2, "GoogleApiAvailability"

    .line 142
    .line 143
    invoke-static {p2, p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 144
    .line 145
    .line 146
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 147
    .line 148
    .line 149
    move-result-object p0

    .line 150
    return-object p0
.end method

.method static h(Landroid/app/Activity;Landroid/app/AlertDialog;Ljava/lang/String;Landroid/content/DialogInterface$OnCancelListener;)V
    .locals 1

    .line 1
    :try_start_0
    instance-of v0, p0, Landroidx/fragment/app/y;
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p0, Landroidx/fragment/app/y;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/y;->getSupportFragmentManager()Landroidx/fragment/app/T;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-static {p1, p3}, Lm0/i;->l0(Landroid/app/AlertDialog;Landroid/content/DialogInterface$OnCancelListener;)Lm0/i;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1, p0, p2}, Lm0/i;->k0(Landroidx/fragment/app/T;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :catch_0
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-static {p1, p3}, Lm0/b;->a(Landroid/app/AlertDialog;Landroid/content/DialogInterface$OnCancelListener;)Lm0/b;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p1, p0, p2}, Lm0/b;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method


# virtual methods
.method public final a(ILandroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lm0/e;->a(ILandroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public final b(Landroid/content/Context;I)I
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lm0/e;->b(Landroid/content/Context;I)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public final c(I)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lm0/g;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-static {p1}, Lm0/a;->g(I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public final e(Landroid/content/Context;)I
    .locals 1
    .annotation runtime Lcom/google/errorprone/annotations/ResultIgnorabilityUnspecified;
    .end annotation

    .line 1
    sget v0, Lm0/e;->a:I

    .line 2
    .line 3
    invoke-super {p0, p1, v0}, Lm0/e;->b(Landroid/content/Context;I)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final f(Landroid/app/Activity;ILandroid/content/DialogInterface$OnCancelListener;)V
    .locals 1
    .annotation runtime Lcom/google/errorprone/annotations/ResultIgnorabilityUnspecified;
    .end annotation

    .line 1
    const-string v0, "d"

    .line 2
    .line 3
    invoke-super {p0, p2, p1, v0}, Lm0/e;->a(ILandroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {p1, v0}, Lp0/A;->b(Landroid/app/Activity;Landroid/content/Intent;)Lp0/A;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {p1, p2, v0, p3}, Lm0/d;->g(Landroid/content/Context;ILp0/A;Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    if-nez p2, :cond_0

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    const-string v0, "GooglePlayServicesErrorDialog"

    .line 19
    .line 20
    invoke-static {p1, p2, v0, p3}, Lm0/d;->h(Landroid/app/Activity;Landroid/app/AlertDialog;Ljava/lang/String;Landroid/content/DialogInterface$OnCancelListener;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method final i(Landroid/content/Context;ILandroid/app/PendingIntent;)V
    .locals 11

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 5
    .line 6
    .line 7
    move-result-object v2

    .line 8
    const/4 v3, 0x0

    .line 9
    aput-object v2, v1, v3

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    const/4 v4, 0x0

    .line 13
    aput-object v4, v1, v2

    .line 14
    .line 15
    const-string v5, "GMS core API Availability. ConnectionResult=%s, tag=%s"

    .line 16
    .line 17
    invoke-static {v5, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    new-instance v5, Ljava/lang/IllegalArgumentException;

    .line 22
    .line 23
    invoke-direct {v5}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 24
    .line 25
    .line 26
    const-string v6, "GoogleApiAvailability"

    .line 27
    .line 28
    invoke-static {v6, v1, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 29
    .line 30
    .line 31
    const/16 v1, 0x12

    .line 32
    .line 33
    if-ne p2, v1, :cond_0

    .line 34
    .line 35
    new-instance p2, Lm0/j;

    .line 36
    .line 37
    invoke-direct {p2, p0, p1}, Lm0/j;-><init>(Lm0/d;Landroid/content/Context;)V

    .line 38
    .line 39
    .line 40
    const-wide/32 v0, 0x1d4c0

    .line 41
    .line 42
    .line 43
    invoke-virtual {p2, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :cond_0
    if-nez p3, :cond_2

    .line 48
    .line 49
    const/4 p1, 0x6

    .line 50
    if-ne p2, p1, :cond_1

    .line 51
    .line 52
    const-string p1, "GoogleApiAvailability"

    .line 53
    .line 54
    const-string p2, "Missing resolution for ConnectionResult.RESOLUTION_REQUIRED. Call GoogleApiAvailability#showErrorNotification(Context, ConnectionResult) instead."

    .line 55
    .line 56
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    :cond_1
    return-void

    .line 60
    :cond_2
    invoke-static {p1, p2}, Lp0/y;->d(Landroid/content/Context;I)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-static {p1, p2}, Lp0/y;->c(Landroid/content/Context;I)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v5

    .line 68
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 69
    .line 70
    .line 71
    move-result-object v6

    .line 72
    const-string v7, "notification"

    .line 73
    .line 74
    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v7

    .line 78
    invoke-static {v7}, Lp0/s;->b(Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    check-cast v7, Landroid/app/NotificationManager;

    .line 82
    .line 83
    new-instance v8, Landroidx/core/app/w;

    .line 84
    .line 85
    invoke-direct {v8, p1, v4}, Landroidx/core/app/w;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v8}, Landroidx/core/app/w;->m()V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v8, v2}, Landroidx/core/app/w;->d(Z)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v8, v1}, Landroidx/core/app/w;->k(Ljava/lang/CharSequence;)V

    .line 95
    .line 96
    .line 97
    new-instance v1, Landroidx/core/app/v;

    .line 98
    .line 99
    invoke-direct {v1}, Landroidx/core/app/v;-><init>()V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v1, v5}, Landroidx/core/app/v;->f(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v8, v1}, Landroidx/core/app/w;->r(Landroidx/core/app/y;)V

    .line 106
    .line 107
    .line 108
    invoke-static {p1}, Lt0/a;->D(Landroid/content/Context;)Z

    .line 109
    .line 110
    .line 111
    move-result v1

    .line 112
    if-eqz v1, :cond_4

    .line 113
    .line 114
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->icon:I

    .line 119
    .line 120
    invoke-virtual {v8, v1}, Landroidx/core/app/w;->q(I)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v8, v0}, Landroidx/core/app/w;->o(I)V

    .line 124
    .line 125
    .line 126
    invoke-static {p1}, Lt0/a;->E(Landroid/content/Context;)Z

    .line 127
    .line 128
    .line 129
    move-result v1

    .line 130
    if-eqz v1, :cond_3

    .line 131
    .line 132
    const v1, 0x7f10003a

    .line 133
    .line 134
    .line 135
    invoke-virtual {v6, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    invoke-virtual {v8, v1, p3}, Landroidx/core/app/w;->a(Ljava/lang/String;Landroid/app/PendingIntent;)V

    .line 140
    .line 141
    .line 142
    goto :goto_0

    .line 143
    :cond_3
    invoke-virtual {v8, p3}, Landroidx/core/app/w;->i(Landroid/app/PendingIntent;)V

    .line 144
    .line 145
    .line 146
    goto :goto_0

    .line 147
    :cond_4
    const v1, 0x108008a

    .line 148
    .line 149
    .line 150
    invoke-virtual {v8, v1}, Landroidx/core/app/w;->q(I)V

    .line 151
    .line 152
    .line 153
    const v1, 0x7f100032

    .line 154
    .line 155
    .line 156
    invoke-virtual {v6, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v1

    .line 160
    invoke-virtual {v8, v1}, Landroidx/core/app/w;->s(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 164
    .line 165
    .line 166
    move-result-wide v9

    .line 167
    invoke-virtual {v8, v9, v10}, Landroidx/core/app/w;->u(J)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v8, p3}, Landroidx/core/app/w;->i(Landroid/app/PendingIntent;)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v8, v5}, Landroidx/core/app/w;->j(Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    :goto_0
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 177
    .line 178
    const/16 v1, 0x1a

    .line 179
    .line 180
    if-lt p3, v1, :cond_5

    .line 181
    .line 182
    const/4 v4, 0x1

    .line 183
    goto :goto_1

    .line 184
    :cond_5
    const/4 v4, 0x0

    .line 185
    :goto_1
    if-nez v4, :cond_6

    .line 186
    .line 187
    goto :goto_4

    .line 188
    :cond_6
    if-lt p3, v1, :cond_7

    .line 189
    .line 190
    const/4 p3, 0x1

    .line 191
    goto :goto_2

    .line 192
    :cond_7
    const/4 p3, 0x0

    .line 193
    :goto_2
    if-eqz p3, :cond_b

    .line 194
    .line 195
    sget-object p3, Lm0/d;->b:Ljava/lang/Object;

    .line 196
    .line 197
    monitor-enter p3

    .line 198
    :try_start_0
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    invoke-static {v7}, LB/x;->d(Landroid/app/NotificationManager;)Landroid/app/NotificationChannel;

    .line 200
    .line 201
    .line 202
    move-result-object p3

    .line 203
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 204
    .line 205
    .line 206
    move-result-object p1

    .line 207
    const v1, 0x7f100031

    .line 208
    .line 209
    .line 210
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object p1

    .line 214
    if-nez p3, :cond_8

    .line 215
    .line 216
    invoke-static {p1}, LC/a;->m(Ljava/lang/String;)Landroid/app/NotificationChannel;

    .line 217
    .line 218
    .line 219
    move-result-object p1

    .line 220
    invoke-static {v7, p1}, LC/a;->h(Landroid/app/NotificationManager;Landroid/app/NotificationChannel;)V

    .line 221
    .line 222
    .line 223
    goto :goto_3

    .line 224
    :cond_8
    invoke-static {p3}, LB/w;->g(Landroid/app/NotificationChannel;)Ljava/lang/CharSequence;

    .line 225
    .line 226
    .line 227
    move-result-object v1

    .line 228
    invoke-virtual {p1, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    .line 229
    .line 230
    .line 231
    move-result v1

    .line 232
    if-nez v1, :cond_9

    .line 233
    .line 234
    invoke-static {p3, p1}, LB/x;->k(Landroid/app/NotificationChannel;Ljava/lang/String;)V

    .line 235
    .line 236
    .line 237
    invoke-static {v7, p3}, LC/a;->h(Landroid/app/NotificationManager;Landroid/app/NotificationChannel;)V

    .line 238
    .line 239
    .line 240
    :cond_9
    :goto_3
    invoke-virtual {v8}, Landroidx/core/app/w;->f()V

    .line 241
    .line 242
    .line 243
    :goto_4
    invoke-virtual {v8}, Landroidx/core/app/w;->b()Landroid/app/Notification;

    .line 244
    .line 245
    .line 246
    move-result-object p1

    .line 247
    if-eq p2, v2, :cond_a

    .line 248
    .line 249
    if-eq p2, v0, :cond_a

    .line 250
    .line 251
    const/4 p3, 0x3

    .line 252
    if-eq p2, p3, :cond_a

    .line 253
    .line 254
    const p2, 0x9b6d

    .line 255
    .line 256
    .line 257
    goto :goto_5

    .line 258
    :cond_a
    sget-object p2, Lm0/g;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 259
    .line 260
    invoke-virtual {p2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 261
    .line 262
    .line 263
    const/16 p2, 0x28c4

    .line 264
    .line 265
    :goto_5
    invoke-virtual {v7, p2, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 266
    .line 267
    .line 268
    return-void

    .line 269
    :catchall_0
    move-exception p1

    .line 270
    :try_start_1
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 271
    throw p1

    .line 272
    :cond_b
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 273
    .line 274
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 275
    .line 276
    .line 277
    throw p1
.end method

.method public final j(Landroid/content/Context;Lm0/a;I)Z
    .locals 5

    .line 1
    invoke-static {p1}, Lt0/a;->z(Landroid/content/Context;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    goto :goto_1

    .line 9
    :cond_0
    invoke-virtual {p2}, Lm0/a;->e()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/high16 v2, 0x8000000

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-virtual {p2}, Lm0/a;->d()Landroid/app/PendingIntent;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    goto :goto_0

    .line 22
    :cond_1
    invoke-virtual {p2}, Lm0/a;->b()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    const/4 v3, 0x0

    .line 27
    invoke-virtual {p0, v0, p1, v3}, Lm0/d;->a(ILandroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    if-nez v0, :cond_2

    .line 32
    .line 33
    move-object v0, v3

    .line 34
    goto :goto_0

    .line 35
    :cond_2
    sget v3, Lw0/d;->a:I

    .line 36
    .line 37
    or-int/2addr v3, v2

    .line 38
    invoke-static {p1, v1, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    :goto_0
    if-eqz v0, :cond_3

    .line 43
    .line 44
    invoke-virtual {p2}, Lm0/a;->b()I

    .line 45
    .line 46
    .line 47
    move-result p2

    .line 48
    sget v3, Lcom/google/android/gms/common/api/GoogleApiActivity;->b:I

    .line 49
    .line 50
    new-instance v3, Landroid/content/Intent;

    .line 51
    .line 52
    const-class v4, Lcom/google/android/gms/common/api/GoogleApiActivity;

    .line 53
    .line 54
    invoke-direct {v3, p1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 55
    .line 56
    .line 57
    const-string v4, "pending_intent"

    .line 58
    .line 59
    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 60
    .line 61
    .line 62
    const-string v0, "failing_client_id"

    .line 63
    .line 64
    invoke-virtual {v3, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 65
    .line 66
    .line 67
    const-string p3, "notify_manager"

    .line 68
    .line 69
    const/4 v0, 0x1

    .line 70
    invoke-virtual {v3, p3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 71
    .line 72
    .line 73
    sget p3, Lv0/g;->a:I

    .line 74
    .line 75
    or-int/2addr p3, v2

    .line 76
    invoke-static {p1, v1, v3, p3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 77
    .line 78
    .line 79
    move-result-object p3

    .line 80
    invoke-virtual {p0, p1, p2, p3}, Lm0/d;->i(Landroid/content/Context;ILandroid/app/PendingIntent;)V

    .line 81
    .line 82
    .line 83
    return v0

    .line 84
    :cond_3
    :goto_1
    return v1
.end method
