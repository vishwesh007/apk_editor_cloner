.class public final LJ/V;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LJ/G;


# static fields
.field private static final a:LJ/V;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, LJ/V;

    .line 2
    .line 3
    invoke-direct {v0}, LJ/V;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, LJ/V;->a:LJ/V;

    .line 7
    .line 8
    return-void
.end method

.method public static c()LJ/V;
    .locals 1

    .line 1
    sget-object v0, LJ/V;->a:LJ/V;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;IILE/i;)LJ/F;
    .locals 0

    .line 1
    new-instance p2, LJ/F;

    .line 2
    .line 3
    new-instance p3, LW/b;

    .line 4
    .line 5
    invoke-direct {p3, p1}, LW/b;-><init>(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    new-instance p4, LJ/U;

    .line 9
    .line 10
    invoke-direct {p4, p1}, LJ/U;-><init>(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p2, p3, p4}, LJ/F;-><init>(LE/e;Lcom/bumptech/glide/load/data/e;)V

    .line 14
    .line 15
    .line 16
    return-object p2
.end method

.method public final b(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    const/4 p1, 0x1

    return p1
.end method
