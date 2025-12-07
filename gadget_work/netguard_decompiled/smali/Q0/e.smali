.class public abstract LQ0/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:LQ0/d;

.field private static final e:LQ0/e;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, LQ0/d;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, LQ0/d;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, LQ0/e;->d:LQ0/d;

    .line 8
    .line 9
    sget-object v0, LL0/c;->a:LL0/b;

    .line 10
    .line 11
    invoke-virtual {v0}, LL0/b;->b()LQ0/e;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, LQ0/e;->e:LQ0/e;

    .line 16
    .line 17
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic a()LQ0/e;
    .locals 1

    .line 1
    sget-object v0, LQ0/e;->e:LQ0/e;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public abstract b()I
.end method
