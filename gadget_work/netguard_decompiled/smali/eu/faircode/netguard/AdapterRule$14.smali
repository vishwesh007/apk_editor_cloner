.class Leu/faircode/netguard/AdapterRule$14;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Leu/faircode/netguard/AdapterRule;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$filter:Z

.field final synthetic val$log_app:Z

.field final synthetic val$notify_access:Z

.field final synthetic val$prefs:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Leu/faircode/netguard/AdapterRule;Landroid/content/Context;ZZZLandroid/content/SharedPreferences;)V
    .locals 0

    .line 1
    iput-object p1, p0, Leu/faircode/netguard/AdapterRule$14;->this$0:Leu/faircode/netguard/AdapterRule;

    .line 2
    .line 3
    iput-object p2, p0, Leu/faircode/netguard/AdapterRule$14;->val$context:Landroid/content/Context;

    .line 4
    .line 5
    iput-boolean p3, p0, Leu/faircode/netguard/AdapterRule$14;->val$log_app:Z

    .line 6
    .line 7
    iput-boolean p4, p0, Leu/faircode/netguard/AdapterRule$14;->val$filter:Z

    .line 8
    .line 9
    iput-boolean p5, p0, Leu/faircode/netguard/AdapterRule$14;->val$notify_access:Z

    .line 10
    .line 11
    iput-object p6, p0, Leu/faircode/netguard/AdapterRule$14;->val$prefs:Landroid/content/SharedPreferences;

    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 1
    iget-object p1, p0, Leu/faircode/netguard/AdapterRule$14;->val$context:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const/4 v0, 0x0

    .line 8
    const v1, 0x7f0c0026

    .line 9
    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-virtual {p1, v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    const v0, 0x7f09005e

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Landroid/widget/CheckBox;

    .line 24
    .line 25
    const v1, 0x7f09005c

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    check-cast v1, Landroid/widget/CheckBox;

    .line 33
    .line 34
    const v2, 0x7f09005f

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    check-cast v2, Landroid/widget/CheckBox;

    .line 42
    .line 43
    const v3, 0x7f090165

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    check-cast v3, Landroid/widget/TextView;

    .line 51
    .line 52
    iget-boolean v4, p0, Leu/faircode/netguard/AdapterRule$14;->val$log_app:Z

    .line 53
    .line 54
    invoke-virtual {v0, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 55
    .line 56
    .line 57
    iget-boolean v4, p0, Leu/faircode/netguard/AdapterRule$14;->val$filter:Z

    .line 58
    .line 59
    invoke-virtual {v1, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 60
    .line 61
    .line 62
    const/4 v4, 0x1

    .line 63
    invoke-virtual {v1, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 64
    .line 65
    .line 66
    const/16 v5, 0x8

    .line 67
    .line 68
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 69
    .line 70
    .line 71
    iget-boolean v3, p0, Leu/faircode/netguard/AdapterRule$14;->val$notify_access:Z

    .line 72
    .line 73
    invoke-virtual {v2, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 74
    .line 75
    .line 76
    iget-boolean v3, p0, Leu/faircode/netguard/AdapterRule$14;->val$log_app:Z

    .line 77
    .line 78
    invoke-virtual {v2, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 79
    .line 80
    .line 81
    new-instance v3, Leu/faircode/netguard/AdapterRule$14$1;

    .line 82
    .line 83
    invoke-direct {v3, p0, v2}, Leu/faircode/netguard/AdapterRule$14$1;-><init>(Leu/faircode/netguard/AdapterRule$14;Landroid/widget/CheckBox;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0, v3}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 87
    .line 88
    .line 89
    new-instance v3, Leu/faircode/netguard/AdapterRule$14$2;

    .line 90
    .line 91
    invoke-direct {v3, p0, v0}, Leu/faircode/netguard/AdapterRule$14$2;-><init>(Leu/faircode/netguard/AdapterRule$14;Landroid/widget/CheckBox;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v1, v3}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 95
    .line 96
    .line 97
    new-instance v0, Leu/faircode/netguard/AdapterRule$14$3;

    .line 98
    .line 99
    invoke-direct {v0, p0}, Leu/faircode/netguard/AdapterRule$14$3;-><init>(Leu/faircode/netguard/AdapterRule$14;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v2, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 103
    .line 104
    .line 105
    new-instance v0, Landroidx/appcompat/app/m;

    .line 106
    .line 107
    iget-object v1, p0, Leu/faircode/netguard/AdapterRule$14;->val$context:Landroid/content/Context;

    .line 108
    .line 109
    invoke-direct {v0, v1}, Landroidx/appcompat/app/m;-><init>(Landroid/content/Context;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/m;->m(Landroid/view/View;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0, v4}, Landroidx/appcompat/app/m;->d(Z)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0}, Landroidx/appcompat/app/m;->a()Landroidx/appcompat/app/n;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 123
    .line 124
    .line 125
    return-void
.end method
