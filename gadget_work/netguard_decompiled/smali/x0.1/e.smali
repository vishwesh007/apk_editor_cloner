.class public final Lx0/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ln0/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lx0/b;

    .line 2
    .line 3
    invoke-direct {v0}, Lx0/b;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lx0/e;->a:Ln0/a;

    .line 7
    .line 8
    new-instance v0, Lx0/c;

    .line 9
    .line 10
    invoke-direct {v0}, Lx0/c;-><init>()V

    .line 11
    .line 12
    .line 13
    new-instance v0, Lcom/google/android/gms/common/api/Scope;

    .line 14
    .line 15
    const-string v1, "profile"

    .line 16
    .line 17
    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    new-instance v0, Lcom/google/android/gms/common/api/Scope;

    .line 21
    .line 22
    const-string v1, "email"

    .line 23
    .line 24
    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method
