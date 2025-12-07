.class Leu/faircode/netguard/AdapterRule$18;
.super Landroid/widget/Filter;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Leu/faircode/netguard/AdapterRule;


# direct methods
.method constructor <init>(Leu/faircode/netguard/AdapterRule;)V
    .locals 0

    .line 1
    iput-object p1, p0, Leu/faircode/netguard/AdapterRule$18;->this$0:Leu/faircode/netguard/AdapterRule;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    iget-object p1, p0, Leu/faircode/netguard/AdapterRule$18;->this$0:Leu/faircode/netguard/AdapterRule;

    .line 9
    .line 10
    invoke-static {p1}, Leu/faircode/netguard/AdapterRule;->access$000(Leu/faircode/netguard/AdapterRule;)Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 15
    .line 16
    .line 17
    goto :goto_2

    .line 18
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    goto :goto_0

    .line 39
    :catch_0
    const/4 v1, -0x1

    .line 40
    :goto_0
    iget-object v2, p0, Leu/faircode/netguard/AdapterRule$18;->this$0:Leu/faircode/netguard/AdapterRule;

    .line 41
    .line 42
    invoke-static {v2}, Leu/faircode/netguard/AdapterRule;->access$000(Leu/faircode/netguard/AdapterRule;)Ljava/util/List;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    if-eqz v3, :cond_3

    .line 55
    .line 56
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    check-cast v3, Leu/faircode/netguard/Rule;

    .line 61
    .line 62
    iget v4, v3, Leu/faircode/netguard/Rule;->uid:I

    .line 63
    .line 64
    if-eq v4, v1, :cond_2

    .line 65
    .line 66
    iget-object v4, v3, Leu/faircode/netguard/Rule;->packageName:Ljava/lang/String;

    .line 67
    .line 68
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    invoke-virtual {v4, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 73
    .line 74
    .line 75
    move-result v4

    .line 76
    if-nez v4, :cond_2

    .line 77
    .line 78
    iget-object v4, v3, Leu/faircode/netguard/Rule;->name:Ljava/lang/String;

    .line 79
    .line 80
    if-eqz v4, :cond_1

    .line 81
    .line 82
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v4

    .line 86
    invoke-virtual {v4, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 87
    .line 88
    .line 89
    move-result v4

    .line 90
    if-eqz v4, :cond_1

    .line 91
    .line 92
    :cond_2
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_3
    :goto_2
    new-instance p1, Landroid/widget/Filter$FilterResults;

    .line 97
    .line 98
    invoke-direct {p1}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 99
    .line 100
    .line 101
    iput-object v0, p1, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 102
    .line 103
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    iput v0, p1, Landroid/widget/Filter$FilterResults;->count:I

    .line 108
    .line 109
    return-object p1
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 1

    .line 1
    iget-object p1, p0, Leu/faircode/netguard/AdapterRule$18;->this$0:Leu/faircode/netguard/AdapterRule;

    .line 2
    .line 3
    invoke-static {p1}, Leu/faircode/netguard/AdapterRule;->access$600(Leu/faircode/netguard/AdapterRule;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 8
    .line 9
    .line 10
    if-nez p2, :cond_0

    .line 11
    .line 12
    iget-object p1, p0, Leu/faircode/netguard/AdapterRule$18;->this$0:Leu/faircode/netguard/AdapterRule;

    .line 13
    .line 14
    invoke-static {p1}, Leu/faircode/netguard/AdapterRule;->access$600(Leu/faircode/netguard/AdapterRule;)Ljava/util/List;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iget-object p2, p0, Leu/faircode/netguard/AdapterRule$18;->this$0:Leu/faircode/netguard/AdapterRule;

    .line 19
    .line 20
    invoke-static {p2}, Leu/faircode/netguard/AdapterRule;->access$000(Leu/faircode/netguard/AdapterRule;)Ljava/util/List;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    iget-object p1, p0, Leu/faircode/netguard/AdapterRule$18;->this$0:Leu/faircode/netguard/AdapterRule;

    .line 29
    .line 30
    invoke-static {p1}, Leu/faircode/netguard/AdapterRule;->access$600(Leu/faircode/netguard/AdapterRule;)Ljava/util/List;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    iget-object p2, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast p2, Ljava/util/List;

    .line 37
    .line 38
    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 39
    .line 40
    .line 41
    iget-object p1, p0, Leu/faircode/netguard/AdapterRule$18;->this$0:Leu/faircode/netguard/AdapterRule;

    .line 42
    .line 43
    invoke-static {p1}, Leu/faircode/netguard/AdapterRule;->access$600(Leu/faircode/netguard/AdapterRule;)Ljava/util/List;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    const/4 p2, 0x1

    .line 52
    if-ne p1, p2, :cond_1

    .line 53
    .line 54
    iget-object p1, p0, Leu/faircode/netguard/AdapterRule$18;->this$0:Leu/faircode/netguard/AdapterRule;

    .line 55
    .line 56
    invoke-static {p1}, Leu/faircode/netguard/AdapterRule;->access$600(Leu/faircode/netguard/AdapterRule;)Ljava/util/List;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    const/4 v0, 0x0

    .line 61
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    check-cast p1, Leu/faircode/netguard/Rule;

    .line 66
    .line 67
    iput-boolean p2, p1, Leu/faircode/netguard/Rule;->expanded:Z

    .line 68
    .line 69
    :cond_1
    :goto_0
    iget-object p1, p0, Leu/faircode/netguard/AdapterRule$18;->this$0:Leu/faircode/netguard/AdapterRule;

    .line 70
    .line 71
    invoke-virtual {p1}, Landroidx/recyclerview/widget/C;->notifyDataSetChanged()V

    .line 72
    .line 73
    .line 74
    return-void
.end method
