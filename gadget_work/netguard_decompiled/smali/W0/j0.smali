.class public final LW0/j0;
.super LI0/a;
.source "SourceFile"


# static fields
.field public static final d:LW0/H;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, LW0/H;

    invoke-direct {v0}, LW0/H;-><init>()V

    sput-object v0, LW0/j0;->d:LW0/H;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, LW0/j0;->d:LW0/H;

    .line 2
    .line 3
    invoke-direct {p0, v0}, LI0/a;-><init>(LI0/j;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
