.class final LH/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LY/e;


# instance fields
.field final d:Ljava/security/MessageDigest;

.field private final e:LY/i;


# direct methods
.method constructor <init>(Ljava/security/MessageDigest;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, LY/i;->a()LY/i;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, LH/q;->e:LY/i;

    .line 9
    .line 10
    iput-object p1, p0, LH/q;->d:Ljava/security/MessageDigest;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final i()LY/i;
    .locals 1

    .line 1
    iget-object v0, p0, LH/q;->e:LY/i;

    .line 2
    .line 3
    return-object v0
.end method
