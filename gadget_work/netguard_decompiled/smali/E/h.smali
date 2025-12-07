.class public final LE/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final e:LE/g;


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:LE/g;

.field private final c:Ljava/lang/String;

.field private volatile d:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, LE/f;

    .line 2
    .line 3
    invoke-direct {v0}, LE/f;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, LE/h;->e:LE/g;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/Object;LE/g;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iput-object p1, p0, LE/h;->c:Ljava/lang/String;

    .line 11
    .line 12
    iput-object p2, p0, LE/h;->a:Ljava/lang/Object;

    .line 13
    .line 14
    iput-object p3, p0, LE/h;->b:LE/g;

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 18
    .line 19
    const-string p2, "Must not be null or empty"

    .line 20
    .line 21
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    throw p1
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Number;LE/g;)LE/h;
    .locals 1

    .line 1
    new-instance v0, LE/h;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, LE/h;-><init>(Ljava/lang/String;Ljava/lang/Object;LE/g;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static c(Ljava/lang/Object;Ljava/lang/String;)LE/h;
    .locals 2

    .line 1
    new-instance v0, LE/h;

    .line 2
    .line 3
    sget-object v1, LE/h;->e:LE/g;

    .line 4
    .line 5
    invoke-direct {v0, p1, p0, v1}, LE/h;-><init>(Ljava/lang/String;Ljava/lang/Object;LE/g;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public static d(Ljava/lang/String;)LE/h;
    .locals 3

    .line 1
    new-instance v0, LE/h;

    .line 2
    .line 3
    sget-object v1, LE/h;->e:LE/g;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, p0, v2, v1}, LE/h;-><init>(Ljava/lang/String;Ljava/lang/Object;LE/g;)V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final b()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, LE/h;->a:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method

.method public final e(Ljava/lang/Object;Ljava/security/MessageDigest;)V
    .locals 3

    .line 1
    iget-object v0, p0, LE/h;->b:LE/g;

    .line 2
    .line 3
    iget-object v1, p0, LE/h;->d:[B

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    iget-object v1, p0, LE/h;->c:Ljava/lang/String;

    .line 8
    .line 9
    sget-object v2, LE/e;->a:Ljava/nio/charset/Charset;

    .line 10
    .line 11
    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    iput-object v1, p0, LE/h;->d:[B

    .line 16
    .line 17
    :cond_0
    iget-object v1, p0, LE/h;->d:[B

    .line 18
    .line 19
    invoke-interface {v0, v1, p1, p2}, LE/g;->a([BLjava/lang/Object;Ljava/security/MessageDigest;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, LE/h;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, LE/h;

    .line 6
    .line 7
    iget-object v0, p0, LE/h;->c:Ljava/lang/String;

    .line 8
    .line 9
    iget-object p1, p1, LE/h;->c:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    return p1

    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
    return p1
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, LE/h;->c:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Option{key=\'"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, LE/h;->c:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, "\'}"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    return-object v0
.end method
