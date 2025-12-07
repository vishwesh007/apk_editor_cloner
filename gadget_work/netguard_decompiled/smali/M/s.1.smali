.class public abstract LM/s;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LM/s;

.field public static final b:LM/s;

.field public static final c:LM/s;

.field public static final d:LM/s;

.field public static final e:LM/s;

.field public static final f:LE/h;

.field static final g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, LM/p;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, LM/p;-><init>(I)V

    .line 5
    .line 6
    .line 7
    new-instance v0, LM/q;

    .line 8
    .line 9
    invoke-direct {v0, v1}, LM/q;-><init>(I)V

    .line 10
    .line 11
    .line 12
    new-instance v0, LM/q;

    .line 13
    .line 14
    const/4 v2, 0x1

    .line 15
    invoke-direct {v0, v2}, LM/q;-><init>(I)V

    .line 16
    .line 17
    .line 18
    sput-object v0, LM/s;->a:LM/s;

    .line 19
    .line 20
    new-instance v0, LM/r;

    .line 21
    .line 22
    invoke-direct {v0, v1}, LM/r;-><init>(I)V

    .line 23
    .line 24
    .line 25
    sput-object v0, LM/s;->b:LM/s;

    .line 26
    .line 27
    new-instance v0, LM/p;

    .line 28
    .line 29
    invoke-direct {v0, v2}, LM/p;-><init>(I)V

    .line 30
    .line 31
    .line 32
    sput-object v0, LM/s;->c:LM/s;

    .line 33
    .line 34
    new-instance v1, LM/r;

    .line 35
    .line 36
    invoke-direct {v1, v2}, LM/r;-><init>(I)V

    .line 37
    .line 38
    .line 39
    sput-object v1, LM/s;->d:LM/s;

    .line 40
    .line 41
    sput-object v0, LM/s;->e:LM/s;

    .line 42
    .line 43
    const-string v1, "com.bumptech.glide.load.resource.bitmap.Downsampler.DownsampleStrategy"

    .line 44
    .line 45
    invoke-static {v0, v1}, LE/h;->c(Ljava/lang/Object;Ljava/lang/String;)LE/h;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    sput-object v0, LM/s;->f:LE/h;

    .line 50
    .line 51
    sput-boolean v2, LM/s;->g:Z

    .line 52
    .line 53
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(IIII)Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy$SampleSizeRounding;
.end method

.method public abstract b(IIII)F
.end method
