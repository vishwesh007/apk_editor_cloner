.class final Lh0/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lh0/h;

.field private static final b:Lh0/j;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lh0/h;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lh0/h;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lh0/g;->a:Lh0/h;

    .line 8
    .line 9
    new-instance v0, Lh0/j;

    .line 10
    .line 11
    invoke-direct {v0}, Lh0/j;-><init>()V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lh0/g;->b:Lh0/j;

    .line 15
    .line 16
    return-void
.end method

.method static synthetic a()Lh0/h;
    .locals 1

    .line 1
    sget-object v0, Lh0/g;->a:Lh0/h;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic b()Lh0/j;
    .locals 1

    .line 1
    sget-object v0, Lh0/g;->b:Lh0/j;

    .line 2
    .line 3
    return-object v0
.end method
