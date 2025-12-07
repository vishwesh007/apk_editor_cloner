.class Leu/faircode/netguard/ActivityForwarding$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Leu/faircode/netguard/ActivityForwarding;

.field final synthetic val$etDPort:Landroid/widget/EditText;

.field final synthetic val$etRAddr:Landroid/widget/EditText;

.field final synthetic val$etRPort:Landroid/widget/EditText;

.field final synthetic val$spProtocol:Landroid/widget/Spinner;

.field final synthetic val$spRuid:Landroid/widget/Spinner;


# direct methods
.method constructor <init>(Leu/faircode/netguard/ActivityForwarding;Landroid/widget/Spinner;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/Spinner;)V
    .locals 0

    .line 1
    iput-object p1, p0, Leu/faircode/netguard/ActivityForwarding$6;->this$0:Leu/faircode/netguard/ActivityForwarding;

    .line 2
    .line 3
    iput-object p2, p0, Leu/faircode/netguard/ActivityForwarding$6;->val$spProtocol:Landroid/widget/Spinner;

    .line 4
    .line 5
    iput-object p3, p0, Leu/faircode/netguard/ActivityForwarding$6;->val$etDPort:Landroid/widget/EditText;

    .line 6
    .line 7
    iput-object p4, p0, Leu/faircode/netguard/ActivityForwarding$6;->val$etRAddr:Landroid/widget/EditText;

    .line 8
    .line 9
    iput-object p5, p0, Leu/faircode/netguard/ActivityForwarding$6;->val$etRPort:Landroid/widget/EditText;

    .line 10
    .line 11
    iput-object p6, p0, Leu/faircode/netguard/ActivityForwarding$6;->val$spRuid:Landroid/widget/Spinner;

    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    .line 1
    :try_start_0
    iget-object p1, p0, Leu/faircode/netguard/ActivityForwarding$6;->val$spProtocol:Landroid/widget/Spinner;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    iget-object p2, p0, Leu/faircode/netguard/ActivityForwarding$6;->this$0:Leu/faircode/netguard/ActivityForwarding;

    .line 8
    .line 9
    invoke-virtual {p2}, Landroidx/appcompat/app/q;->getResources()Landroid/content/res/Resources;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    const v0, 0x7f030004

    .line 14
    .line 15
    .line 16
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    aget-object p1, p2, p1

    .line 21
    .line 22
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    iget-object p1, p0, Leu/faircode/netguard/ActivityForwarding$6;->val$etDPort:Landroid/widget/EditText;

    .line 31
    .line 32
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    iget-object p1, p0, Leu/faircode/netguard/ActivityForwarding$6;->val$etRAddr:Landroid/widget/EditText;

    .line 45
    .line 46
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    iget-object p1, p0, Leu/faircode/netguard/ActivityForwarding$6;->val$etRPort:Landroid/widget/EditText;

    .line 55
    .line 56
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 65
    .line 66
    .line 67
    move-result v5

    .line 68
    iget-object p1, p0, Leu/faircode/netguard/ActivityForwarding$6;->val$spRuid:Landroid/widget/Spinner;

    .line 69
    .line 70
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getSelectedItem()Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    check-cast p1, Leu/faircode/netguard/Rule;

    .line 75
    .line 76
    iget v6, p1, Leu/faircode/netguard/Rule;->uid:I

    .line 77
    .line 78
    invoke-static {v4}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    const/16 p2, 0x400

    .line 83
    .line 84
    if-ge v5, p2, :cond_1

    .line 85
    .line 86
    invoke-virtual {p1}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    .line 87
    .line 88
    .line 89
    move-result p2

    .line 90
    if-nez p2, :cond_0

    .line 91
    .line 92
    invoke-virtual {p1}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    .line 93
    .line 94
    .line 95
    move-result p1

    .line 96
    if-nez p1, :cond_0

    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 100
    .line 101
    const-string p2, "Port forwarding to privileged port on local address not possible"

    .line 102
    .line 103
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    throw p1

    .line 107
    :cond_1
    :goto_0
    new-instance p1, Leu/faircode/netguard/ActivityForwarding$6$1;

    .line 108
    .line 109
    move-object v0, p1

    .line 110
    move-object v1, p0

    .line 111
    invoke-direct/range {v0 .. v6}, Leu/faircode/netguard/ActivityForwarding$6$1;-><init>(Leu/faircode/netguard/ActivityForwarding$6;IILjava/lang/String;II)V

    .line 112
    .line 113
    .line 114
    sget-object p2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 115
    .line 116
    const/4 v0, 0x0

    .line 117
    new-array v0, v0, [Ljava/lang/Object;

    .line 118
    .line 119
    invoke-virtual {p1, p2, v0}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    .line 121
    .line 122
    goto :goto_1

    .line 123
    :catchall_0
    move-exception p1

    .line 124
    iget-object p2, p0, Leu/faircode/netguard/ActivityForwarding$6;->this$0:Leu/faircode/netguard/ActivityForwarding;

    .line 125
    .line 126
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    const/4 v0, 0x1

    .line 131
    invoke-static {p2, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 136
    .line 137
    .line 138
    :goto_1
    return-void
.end method
