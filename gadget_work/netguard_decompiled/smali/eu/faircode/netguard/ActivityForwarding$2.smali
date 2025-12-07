.class Leu/faircode/netguard/ActivityForwarding$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic this$0:Leu/faircode/netguard/ActivityForwarding;


# direct methods
.method constructor <init>(Leu/faircode/netguard/ActivityForwarding;)V
    .locals 0

    .line 1
    iput-object p1, p0, Leu/faircode/netguard/ActivityForwarding$2;->this$0:Leu/faircode/netguard/ActivityForwarding;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3

    .line 1
    iget-object p1, p0, Leu/faircode/netguard/ActivityForwarding$2;->this$0:Leu/faircode/netguard/ActivityForwarding;

    .line 2
    .line 3
    invoke-static {p1}, Leu/faircode/netguard/ActivityForwarding;->access$000(Leu/faircode/netguard/ActivityForwarding;)Leu/faircode/netguard/AdapterForwarding;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-interface {p1, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Landroid/database/Cursor;

    .line 12
    .line 13
    const-string p3, "protocol"

    .line 14
    .line 15
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    move-result p3

    .line 19
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getInt(I)I

    .line 20
    .line 21
    .line 22
    move-result p3

    .line 23
    const-string p4, "dport"

    .line 24
    .line 25
    invoke-interface {p1, p4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    move-result p4

    .line 29
    invoke-interface {p1, p4}, Landroid/database/Cursor;->getInt(I)I

    .line 30
    .line 31
    .line 32
    move-result p4

    .line 33
    const-string p5, "raddr"

    .line 34
    .line 35
    invoke-interface {p1, p5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    move-result p5

    .line 39
    invoke-interface {p1, p5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p5

    .line 43
    const-string v0, "rport"

    .line 44
    .line 45
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    new-instance v0, Landroid/widget/PopupMenu;

    .line 54
    .line 55
    iget-object v1, p0, Leu/faircode/netguard/ActivityForwarding$2;->this$0:Leu/faircode/netguard/ActivityForwarding;

    .line 56
    .line 57
    invoke-direct {v0, v1, p2}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 58
    .line 59
    .line 60
    const p2, 0x7f0d0002

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, p2}, Landroid/widget/PopupMenu;->inflate(I)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    .line 67
    .line 68
    .line 69
    move-result-object p2

    .line 70
    const v1, 0x7f0900e0

    .line 71
    .line 72
    .line 73
    invoke-interface {p2, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 74
    .line 75
    .line 76
    move-result-object p2

    .line 77
    new-instance v1, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 80
    .line 81
    .line 82
    const/4 v2, 0x0

    .line 83
    invoke-static {p3, v2, v2}, Leu/faircode/netguard/Util;->getProtocolName(IIZ)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    const-string v2, " "

    .line 91
    .line 92
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    const-string v2, " > "

    .line 99
    .line 100
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    const-string p5, "/"

    .line 107
    .line 108
    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    invoke-interface {p2, p1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 119
    .line 120
    .line 121
    new-instance p1, Leu/faircode/netguard/ActivityForwarding$2$1;

    .line 122
    .line 123
    invoke-direct {p1, p0, p3, p4}, Leu/faircode/netguard/ActivityForwarding$2$1;-><init>(Leu/faircode/netguard/ActivityForwarding$2;II)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0, p1}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    .line 130
    .line 131
    .line 132
    return-void
.end method
