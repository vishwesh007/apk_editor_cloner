.class public final LV/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:LV/b;

.field private static final b:LV/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, LV/b;

    .line 2
    .line 3
    invoke-direct {v0}, LV/b;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, LV/b;->a:LV/b;

    .line 7
    .line 8
    new-instance v0, LV/a;

    .line 9
    .line 10
    invoke-direct {v0}, LV/a;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, LV/b;->b:LV/a;

    .line 14
    .line 15
    return-void
.end method

.method public static a()LV/a;
    .locals 1

    .line 1
    sget-object v0, LV/b;->b:LV/a;

    .line 2
    .line 3
    return-object v0
.end method
