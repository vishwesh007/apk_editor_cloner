.class public final LY/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LY/c;


# static fields
.field private static final a:LY/f;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, LY/a;

    .line 2
    .line 3
    invoke-direct {v0}, LY/a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, LY/g;->a:LY/f;

    .line 7
    .line 8
    return-void
.end method

.method public static b(ILY/c;)Landroidx/core/util/f;
    .locals 2

    .line 1
    new-instance v0, Landroidx/core/util/h;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroidx/core/util/h;-><init>(I)V

    .line 4
    .line 5
    .line 6
    sget-object p0, LY/g;->a:LY/f;

    .line 7
    .line 8
    new-instance v1, LY/d;

    .line 9
    .line 10
    invoke-direct {v1, v0, p1, p0}, LY/d;-><init>(Landroidx/core/util/h;LY/c;LY/f;)V

    .line 11
    .line 12
    .line 13
    return-object v1
.end method

.method public static c()Landroidx/core/util/f;
    .locals 4

    .line 1
    new-instance v0, Landroidx/core/util/h;

    .line 2
    .line 3
    const/16 v1, 0x14

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroidx/core/util/h;-><init>(I)V

    .line 6
    .line 7
    .line 8
    new-instance v1, LY/g;

    .line 9
    .line 10
    invoke-direct {v1}, LY/g;-><init>()V

    .line 11
    .line 12
    .line 13
    new-instance v2, LY/b;

    .line 14
    .line 15
    invoke-direct {v2}, LY/b;-><init>()V

    .line 16
    .line 17
    .line 18
    new-instance v3, LY/d;

    .line 19
    .line 20
    invoke-direct {v3, v0, v1, v2}, LY/d;-><init>(Landroidx/core/util/h;LY/c;LY/f;)V

    .line 21
    .line 22
    .line 23
    return-object v3
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method
