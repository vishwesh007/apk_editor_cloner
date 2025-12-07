.class public final LL/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LE/l;


# static fields
.field private static final b:LL/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, LL/g;

    .line 2
    .line 3
    invoke-direct {v0}, LL/g;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, LL/g;->b:LL/g;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static c()LL/g;
    .locals 1

    .line 1
    sget-object v0, LL/g;->b:LL/g;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public final a(Ljava/security/MessageDigest;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final b(Lcom/bumptech/glide/k;Lcom/bumptech/glide/load/engine/V;II)Lcom/bumptech/glide/load/engine/V;
    .locals 0

    .line 1
    return-object p2
.end method
