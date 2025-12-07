.class public Leu/faircode/netguard/Allowed;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public raddr:Ljava/lang/String;

.field public rport:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Leu/faircode/netguard/Allowed;->raddr:Ljava/lang/String;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Leu/faircode/netguard/Allowed;->rport:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Leu/faircode/netguard/Allowed;->raddr:Ljava/lang/String;

    .line 6
    iput p2, p0, Leu/faircode/netguard/Allowed;->rport:I

    return-void
.end method
