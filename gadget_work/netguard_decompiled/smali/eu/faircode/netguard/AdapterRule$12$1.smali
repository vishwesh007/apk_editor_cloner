.class Leu/faircode/netguard/AdapterRule$12$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Leu/faircode/netguard/Util$DoubtListener;


# instance fields
.field final synthetic this$1:Leu/faircode/netguard/AdapterRule$12;


# direct methods
.method constructor <init>(Leu/faircode/netguard/AdapterRule$12;)V
    .locals 0

    .line 1
    iput-object p1, p0, Leu/faircode/netguard/AdapterRule$12$1;->this$1:Leu/faircode/netguard/AdapterRule$12;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onSure()V
    .locals 2

    .line 1
    iget-object v0, p0, Leu/faircode/netguard/AdapterRule$12$1;->this$1:Leu/faircode/netguard/AdapterRule$12;

    .line 2
    .line 3
    iget-object v0, v0, Leu/faircode/netguard/AdapterRule$12;->val$holder:Leu/faircode/netguard/AdapterRule$ViewHolder;

    .line 4
    .line 5
    iget-object v0, v0, Leu/faircode/netguard/AdapterRule$ViewHolder;->cbApply:Landroid/widget/CheckBox;

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Leu/faircode/netguard/AdapterRule$12$1;->this$1:Leu/faircode/netguard/AdapterRule$12;

    .line 12
    .line 13
    iget-object v1, v0, Leu/faircode/netguard/AdapterRule$12;->val$holder:Leu/faircode/netguard/AdapterRule$ViewHolder;

    .line 14
    .line 15
    iget-object v1, v1, Leu/faircode/netguard/AdapterRule$ViewHolder;->cbWifi:Landroid/widget/CheckBox;

    .line 16
    .line 17
    iget-object v0, v0, Leu/faircode/netguard/AdapterRule$12;->val$rule:Leu/faircode/netguard/Rule;

    .line 18
    .line 19
    iget-boolean v0, v0, Leu/faircode/netguard/Rule;->wifi_default:Z

    .line 20
    .line 21
    invoke-virtual {v1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Leu/faircode/netguard/AdapterRule$12$1;->this$1:Leu/faircode/netguard/AdapterRule$12;

    .line 25
    .line 26
    iget-object v1, v0, Leu/faircode/netguard/AdapterRule$12;->val$holder:Leu/faircode/netguard/AdapterRule$ViewHolder;

    .line 27
    .line 28
    iget-object v1, v1, Leu/faircode/netguard/AdapterRule$ViewHolder;->cbOther:Landroid/widget/CheckBox;

    .line 29
    .line 30
    iget-object v0, v0, Leu/faircode/netguard/AdapterRule$12;->val$rule:Leu/faircode/netguard/Rule;

    .line 31
    .line 32
    iget-boolean v0, v0, Leu/faircode/netguard/Rule;->other_default:Z

    .line 33
    .line 34
    invoke-virtual {v1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Leu/faircode/netguard/AdapterRule$12$1;->this$1:Leu/faircode/netguard/AdapterRule$12;

    .line 38
    .line 39
    iget-object v1, v0, Leu/faircode/netguard/AdapterRule$12;->val$holder:Leu/faircode/netguard/AdapterRule$ViewHolder;

    .line 40
    .line 41
    iget-object v1, v1, Leu/faircode/netguard/AdapterRule$ViewHolder;->cbScreenWifi:Landroid/widget/CheckBox;

    .line 42
    .line 43
    iget-object v0, v0, Leu/faircode/netguard/AdapterRule$12;->val$rule:Leu/faircode/netguard/Rule;

    .line 44
    .line 45
    iget-boolean v0, v0, Leu/faircode/netguard/Rule;->screen_wifi_default:Z

    .line 46
    .line 47
    invoke-virtual {v1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 48
    .line 49
    .line 50
    iget-object v0, p0, Leu/faircode/netguard/AdapterRule$12$1;->this$1:Leu/faircode/netguard/AdapterRule$12;

    .line 51
    .line 52
    iget-object v1, v0, Leu/faircode/netguard/AdapterRule$12;->val$holder:Leu/faircode/netguard/AdapterRule$ViewHolder;

    .line 53
    .line 54
    iget-object v1, v1, Leu/faircode/netguard/AdapterRule$ViewHolder;->cbScreenOther:Landroid/widget/CheckBox;

    .line 55
    .line 56
    iget-object v0, v0, Leu/faircode/netguard/AdapterRule$12;->val$rule:Leu/faircode/netguard/Rule;

    .line 57
    .line 58
    iget-boolean v0, v0, Leu/faircode/netguard/Rule;->screen_other_default:Z

    .line 59
    .line 60
    invoke-virtual {v1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 61
    .line 62
    .line 63
    iget-object v0, p0, Leu/faircode/netguard/AdapterRule$12$1;->this$1:Leu/faircode/netguard/AdapterRule$12;

    .line 64
    .line 65
    iget-object v1, v0, Leu/faircode/netguard/AdapterRule$12;->val$holder:Leu/faircode/netguard/AdapterRule$ViewHolder;

    .line 66
    .line 67
    iget-object v1, v1, Leu/faircode/netguard/AdapterRule$ViewHolder;->cbRoaming:Landroid/widget/CheckBox;

    .line 68
    .line 69
    iget-object v0, v0, Leu/faircode/netguard/AdapterRule$12;->val$rule:Leu/faircode/netguard/Rule;

    .line 70
    .line 71
    iget-boolean v0, v0, Leu/faircode/netguard/Rule;->roaming_default:Z

    .line 72
    .line 73
    invoke-virtual {v1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 74
    .line 75
    .line 76
    iget-object v0, p0, Leu/faircode/netguard/AdapterRule$12$1;->this$1:Leu/faircode/netguard/AdapterRule$12;

    .line 77
    .line 78
    iget-object v0, v0, Leu/faircode/netguard/AdapterRule$12;->val$holder:Leu/faircode/netguard/AdapterRule$ViewHolder;

    .line 79
    .line 80
    iget-object v0, v0, Leu/faircode/netguard/AdapterRule$ViewHolder;->cbLockdown:Landroid/widget/CheckBox;

    .line 81
    .line 82
    const/4 v1, 0x0

    .line 83
    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 84
    .line 85
    .line 86
    return-void
.end method
