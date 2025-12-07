.class public Leu/faircode/netguard/ActivityForwarding;
.super Landroidx/appcompat/app/q;
.source "SourceFile"


# instance fields
.field private adapter:Leu/faircode/netguard/AdapterForwarding;

.field private dialog:Landroidx/appcompat/app/n;

.field private listener:Leu/faircode/netguard/DatabaseHelper$ForwardChangedListener;

.field private lvForwarding:Landroid/widget/ListView;

.field private running:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/q;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Leu/faircode/netguard/ActivityForwarding;->dialog:Landroidx/appcompat/app/n;

    .line 6
    .line 7
    new-instance v0, Leu/faircode/netguard/ActivityForwarding$1;

    .line 8
    .line 9
    invoke-direct {v0, p0}, Leu/faircode/netguard/ActivityForwarding$1;-><init>(Leu/faircode/netguard/ActivityForwarding;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Leu/faircode/netguard/ActivityForwarding;->listener:Leu/faircode/netguard/DatabaseHelper$ForwardChangedListener;

    .line 13
    .line 14
    return-void
.end method

.method static synthetic access$000(Leu/faircode/netguard/ActivityForwarding;)Leu/faircode/netguard/AdapterForwarding;
    .locals 0

    .line 1
    iget-object p0, p0, Leu/faircode/netguard/ActivityForwarding;->adapter:Leu/faircode/netguard/AdapterForwarding;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$002(Leu/faircode/netguard/ActivityForwarding;Leu/faircode/netguard/AdapterForwarding;)Leu/faircode/netguard/AdapterForwarding;
    .locals 0

    .line 1
    iput-object p1, p0, Leu/faircode/netguard/ActivityForwarding;->adapter:Leu/faircode/netguard/AdapterForwarding;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$100(Leu/faircode/netguard/ActivityForwarding;)Landroid/widget/ListView;
    .locals 0

    .line 1
    iget-object p0, p0, Leu/faircode/netguard/ActivityForwarding;->lvForwarding:Landroid/widget/ListView;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$202(Leu/faircode/netguard/ActivityForwarding;Landroidx/appcompat/app/n;)Landroidx/appcompat/app/n;
    .locals 0

    .line 1
    iput-object p1, p0, Leu/faircode/netguard/ActivityForwarding;->dialog:Landroidx/appcompat/app/n;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$300(Leu/faircode/netguard/ActivityForwarding;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Leu/faircode/netguard/ActivityForwarding;->running:Z

    .line 2
    .line 3
    return p0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-static {p0}, Leu/faircode/netguard/Util;->setTheme(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    invoke-super {p0, p1}, Landroidx/fragment/app/y;->onCreate(Landroid/os/Bundle;)V

    .line 5
    .line 6
    .line 7
    const p1, 0x7f0c002d

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/q;->setContentView(I)V

    .line 11
    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    iput-boolean p1, p0, Leu/faircode/netguard/ActivityForwarding;->running:Z

    .line 15
    .line 16
    invoke-virtual {p0}, Landroidx/appcompat/app/q;->getSupportActionBar()Landroidx/appcompat/app/d;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const v1, 0x7f1000ad

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/d;->e(I)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Landroidx/appcompat/app/q;->getSupportActionBar()Landroidx/appcompat/app/d;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/d;->c(Z)V

    .line 31
    .line 32
    .line 33
    const p1, 0x7f0900c0

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/q;->findViewById(I)Landroid/view/View;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    check-cast p1, Landroid/widget/ListView;

    .line 41
    .line 42
    iput-object p1, p0, Leu/faircode/netguard/ActivityForwarding;->lvForwarding:Landroid/widget/ListView;

    .line 43
    .line 44
    new-instance p1, Leu/faircode/netguard/AdapterForwarding;

    .line 45
    .line 46
    invoke-static {p0}, Leu/faircode/netguard/DatabaseHelper;->getInstance(Landroid/content/Context;)Leu/faircode/netguard/DatabaseHelper;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {v0}, Leu/faircode/netguard/DatabaseHelper;->getForwarding()Landroid/database/Cursor;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-direct {p1, p0, v0}, Leu/faircode/netguard/AdapterForwarding;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 55
    .line 56
    .line 57
    iput-object p1, p0, Leu/faircode/netguard/ActivityForwarding;->adapter:Leu/faircode/netguard/AdapterForwarding;

    .line 58
    .line 59
    iget-object v0, p0, Leu/faircode/netguard/ActivityForwarding;->lvForwarding:Landroid/widget/ListView;

    .line 60
    .line 61
    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 62
    .line 63
    .line 64
    iget-object p1, p0, Leu/faircode/netguard/ActivityForwarding;->lvForwarding:Landroid/widget/ListView;

    .line 65
    .line 66
    new-instance v0, Leu/faircode/netguard/ActivityForwarding$2;

    .line 67
    .line 68
    invoke-direct {v0, p0}, Leu/faircode/netguard/ActivityForwarding$2;-><init>(Leu/faircode/netguard/ActivityForwarding;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1, v0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 72
    .line 73
    .line 74
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/q;->getMenuInflater()Landroid/view/MenuInflater;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const v1, 0x7f0d0003

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 9
    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    return p1
.end method

.method protected onDestroy()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Leu/faircode/netguard/ActivityForwarding;->running:Z

    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Leu/faircode/netguard/ActivityForwarding;->adapter:Leu/faircode/netguard/AdapterForwarding;

    .line 6
    .line 7
    iget-object v1, p0, Leu/faircode/netguard/ActivityForwarding;->dialog:Landroidx/appcompat/app/n;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {v1}, Landroidx/appcompat/app/n;->dismiss()V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Leu/faircode/netguard/ActivityForwarding;->dialog:Landroidx/appcompat/app/n;

    .line 15
    .line 16
    :cond_0
    invoke-super {p0}, Landroidx/appcompat/app/q;->onDestroy()V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 10

    .line 1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const v1, 0x7f0900c3

    .line 6
    .line 7
    .line 8
    if-eq v0, v1, :cond_0

    .line 9
    .line 10
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    return p1

    .line 15
    :cond_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    const v0, 0x7f0c002b

    .line 20
    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    const/4 v2, 0x0

    .line 24
    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    const v0, 0x7f090124

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    move-object v5, v0

    .line 36
    check-cast v5, Landroid/widget/Spinner;

    .line 37
    .line 38
    const v0, 0x7f090075

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    move-object v6, v0

    .line 46
    check-cast v6, Landroid/widget/EditText;

    .line 47
    .line 48
    const v0, 0x7f090076

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    move-object v7, v0

    .line 56
    check-cast v7, Landroid/widget/EditText;

    .line 57
    .line 58
    const v0, 0x7f090077

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    move-object v8, v0

    .line 66
    check-cast v8, Landroid/widget/EditText;

    .line 67
    .line 68
    const v0, 0x7f0900ff

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    check-cast v0, Landroid/widget/ProgressBar;

    .line 76
    .line 77
    const v1, 0x7f090125

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    move-object v9, v1

    .line 85
    check-cast v9, Landroid/widget/Spinner;

    .line 86
    .line 87
    new-instance v1, Leu/faircode/netguard/ActivityForwarding$3;

    .line 88
    .line 89
    invoke-direct {v1, p0, v0, v9}, Leu/faircode/netguard/ActivityForwarding$3;-><init>(Leu/faircode/netguard/ActivityForwarding;Landroid/widget/ProgressBar;Landroid/widget/Spinner;)V

    .line 90
    .line 91
    .line 92
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 93
    .line 94
    new-array v2, v2, [Ljava/lang/Object;

    .line 95
    .line 96
    invoke-virtual {v1, v0, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 97
    .line 98
    .line 99
    new-instance v0, Landroidx/appcompat/app/m;

    .line 100
    .line 101
    invoke-direct {v0, p0}, Landroidx/appcompat/app/m;-><init>(Landroid/content/Context;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/m;->m(Landroid/view/View;)V

    .line 105
    .line 106
    .line 107
    const/4 p1, 0x1

    .line 108
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/m;->d(Z)V

    .line 109
    .line 110
    .line 111
    new-instance v2, Leu/faircode/netguard/ActivityForwarding$6;

    .line 112
    .line 113
    move-object v3, v2

    .line 114
    move-object v4, p0

    .line 115
    invoke-direct/range {v3 .. v9}, Leu/faircode/netguard/ActivityForwarding$6;-><init>(Leu/faircode/netguard/ActivityForwarding;Landroid/widget/Spinner;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/Spinner;)V

    .line 116
    .line 117
    .line 118
    const v3, 0x1040013

    .line 119
    .line 120
    .line 121
    invoke-virtual {v0, v3, v2}, Landroidx/appcompat/app/m;->j(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 122
    .line 123
    .line 124
    new-instance v2, Leu/faircode/netguard/ActivityForwarding$5;

    .line 125
    .line 126
    invoke-direct {v2, p0, v1}, Leu/faircode/netguard/ActivityForwarding$5;-><init>(Leu/faircode/netguard/ActivityForwarding;Landroid/os/AsyncTask;)V

    .line 127
    .line 128
    .line 129
    const v1, 0x1040009

    .line 130
    .line 131
    .line 132
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/m;->g(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 133
    .line 134
    .line 135
    new-instance v1, Leu/faircode/netguard/ActivityForwarding$4;

    .line 136
    .line 137
    invoke-direct {v1, p0}, Leu/faircode/netguard/ActivityForwarding$4;-><init>(Leu/faircode/netguard/ActivityForwarding;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/m;->h(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v0}, Landroidx/appcompat/app/m;->a()Landroidx/appcompat/app/n;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    iput-object v0, p0, Leu/faircode/netguard/ActivityForwarding;->dialog:Landroidx/appcompat/app/n;

    .line 148
    .line 149
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 150
    .line 151
    .line 152
    return p1
.end method

.method protected onPause()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/y;->onPause()V

    .line 2
    .line 3
    .line 4
    invoke-static {p0}, Leu/faircode/netguard/DatabaseHelper;->getInstance(Landroid/content/Context;)Leu/faircode/netguard/DatabaseHelper;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget-object v1, p0, Leu/faircode/netguard/ActivityForwarding;->listener:Leu/faircode/netguard/DatabaseHelper$ForwardChangedListener;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Leu/faircode/netguard/DatabaseHelper;->removeForwardChangedListener(Leu/faircode/netguard/DatabaseHelper$ForwardChangedListener;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/y;->onResume()V

    .line 2
    .line 3
    .line 4
    invoke-static {p0}, Leu/faircode/netguard/DatabaseHelper;->getInstance(Landroid/content/Context;)Leu/faircode/netguard/DatabaseHelper;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget-object v1, p0, Leu/faircode/netguard/ActivityForwarding;->listener:Leu/faircode/netguard/DatabaseHelper$ForwardChangedListener;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Leu/faircode/netguard/DatabaseHelper;->addForwardChangedListener(Leu/faircode/netguard/DatabaseHelper$ForwardChangedListener;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Leu/faircode/netguard/ActivityForwarding;->adapter:Leu/faircode/netguard/AdapterForwarding;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-static {p0}, Leu/faircode/netguard/DatabaseHelper;->getInstance(Landroid/content/Context;)Leu/faircode/netguard/DatabaseHelper;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v1}, Leu/faircode/netguard/DatabaseHelper;->getForwarding()Landroid/database/Cursor;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v0, v1}, Landroid/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    return-void
.end method
