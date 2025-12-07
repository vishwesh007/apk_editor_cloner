.class public final Lj0/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld0/b;


# static fields
.field private static final a:Lj0/b;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lj0/b;

    .line 2
    .line 3
    invoke-direct {v0}, Lj0/b;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lj0/d;->a:Lj0/b;

    .line 7
    .line 8
    return-void
.end method

.method static synthetic a()Lj0/b;
    .locals 1

    .line 1
    sget-object v0, Lj0/d;->a:Lj0/b;

    .line 2
    .line 3
    return-object v0
.end method

.method public static b()Lj0/d;
    .locals 1

    .line 1
    invoke-static {}, Lj0/c;->a()Lj0/d;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Lj0/e;

    .line 2
    .line 3
    invoke-direct {v0}, Lj0/e;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method
