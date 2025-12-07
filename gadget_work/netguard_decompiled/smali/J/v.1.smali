.class public interface abstract LJ/v;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LJ/z;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, LJ/x;

    .line 2
    .line 3
    invoke-direct {v0}, LJ/x;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, LJ/x;->a()LJ/z;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sput-object v0, LJ/v;->a:LJ/z;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public abstract a()Ljava/util/Map;
.end method
