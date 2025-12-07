.class public final LH/m;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final e:I


# instance fields
.field final a:Landroid/content/Context;

.field b:Landroid/app/ActivityManager;

.field c:LH/n;

.field d:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1a

    .line 4
    .line 5
    if-ge v0, v1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x4

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x1

    .line 10
    :goto_0
    sput v0, LH/m;->e:I

    .line 11
    .line 12
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget v0, LH/m;->e:I

    .line 5
    .line 6
    int-to-float v0, v0

    .line 7
    iput v0, p0, LH/m;->d:F

    .line 8
    .line 9
    iput-object p1, p0, LH/m;->a:Landroid/content/Context;

    .line 10
    .line 11
    const-string v0, "activity"

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Landroid/app/ActivityManager;

    .line 18
    .line 19
    iput-object v0, p0, LH/m;->b:Landroid/app/ActivityManager;

    .line 20
    .line 21
    new-instance v0, LH/n;

    .line 22
    .line 23
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-direct {v0, p1}, LH/n;-><init>(Landroid/util/DisplayMetrics;)V

    .line 32
    .line 33
    .line 34
    iput-object v0, p0, LH/m;->c:LH/n;

    .line 35
    .line 36
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 37
    .line 38
    const/16 v0, 0x1a

    .line 39
    .line 40
    if-lt p1, v0, :cond_0

    .line 41
    .line 42
    iget-object p1, p0, LH/m;->b:Landroid/app/ActivityManager;

    .line 43
    .line 44
    invoke-virtual {p1}, Landroid/app/ActivityManager;->isLowRamDevice()Z

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    if-eqz p1, :cond_0

    .line 49
    .line 50
    const/4 p1, 0x0

    .line 51
    iput p1, p0, LH/m;->d:F

    .line 52
    .line 53
    :cond_0
    return-void
.end method


# virtual methods
.method public final a()LH/o;
    .locals 1

    .line 1
    new-instance v0, LH/o;

    .line 2
    .line 3
    invoke-direct {v0, p0}, LH/o;-><init>(LH/m;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method
