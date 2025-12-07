.class Leu/faircode/netguard/ServiceSinkhole$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Leu/faircode/netguard/ServiceSinkhole;

.field final synthetic val$rcode:I

.field final synthetic val$vpn:Landroid/os/ParcelFileDescriptor;


# direct methods
.method constructor <init>(Leu/faircode/netguard/ServiceSinkhole;Landroid/os/ParcelFileDescriptor;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Leu/faircode/netguard/ServiceSinkhole$1;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 2
    .line 3
    iput-object p2, p0, Leu/faircode/netguard/ServiceSinkhole$1;->val$vpn:Landroid/os/ParcelFileDescriptor;

    .line 4
    .line 5
    iput p3, p0, Leu/faircode/netguard/ServiceSinkhole$1;->val$rcode:I

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Running tunnel context="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Leu/faircode/netguard/ServiceSinkhole;->access$3700()J

    .line 9
    .line 10
    .line 11
    move-result-wide v1

    .line 12
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v1, "NetGuard.Service"

    .line 20
    .line 21
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    iget-object v2, p0, Leu/faircode/netguard/ServiceSinkhole$1;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 25
    .line 26
    invoke-static {}, Leu/faircode/netguard/ServiceSinkhole;->access$3700()J

    .line 27
    .line 28
    .line 29
    move-result-wide v3

    .line 30
    iget-object v0, p0, Leu/faircode/netguard/ServiceSinkhole$1;->val$vpn:Landroid/os/ParcelFileDescriptor;

    .line 31
    .line 32
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFd()I

    .line 33
    .line 34
    .line 35
    move-result v5

    .line 36
    iget-object v0, p0, Leu/faircode/netguard/ServiceSinkhole$1;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 37
    .line 38
    invoke-static {v0}, Leu/faircode/netguard/ServiceSinkhole;->access$3800(Leu/faircode/netguard/ServiceSinkhole;)Ljava/util/Map;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    const/16 v6, 0x35

    .line 43
    .line 44
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 45
    .line 46
    .line 47
    move-result-object v6

    .line 48
    invoke-interface {v0, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v6

    .line 52
    iget v7, p0, Leu/faircode/netguard/ServiceSinkhole$1;->val$rcode:I

    .line 53
    .line 54
    invoke-static/range {v2 .. v7}, Leu/faircode/netguard/ServiceSinkhole;->access$3900(Leu/faircode/netguard/ServiceSinkhole;JIZI)V

    .line 55
    .line 56
    .line 57
    const-string v0, "Tunnel exited"

    .line 58
    .line 59
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    iget-object v0, p0, Leu/faircode/netguard/ServiceSinkhole$1;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 63
    .line 64
    const/4 v1, 0x0

    .line 65
    invoke-static {v0, v1}, Leu/faircode/netguard/ServiceSinkhole;->access$4002(Leu/faircode/netguard/ServiceSinkhole;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 66
    .line 67
    .line 68
    return-void
.end method
