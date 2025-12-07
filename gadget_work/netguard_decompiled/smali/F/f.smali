.class final LF/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final f:LF/a;


# instance fields
.field private final a:LF/a;

.field private final b:LF/e;

.field private final c:LG/b;

.field private final d:Landroid/content/ContentResolver;

.field private final e:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, LF/a;

    .line 2
    .line 3
    invoke-direct {v0}, LF/a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, LF/f;->f:LF/a;

    .line 7
    .line 8
    return-void
.end method

.method constructor <init>(Ljava/util/List;LF/e;LG/b;Landroid/content/ContentResolver;)V
    .locals 1

    .line 1
    sget-object v0, LF/f;->f:LF/a;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, LF/f;->a:LF/a;

    .line 7
    .line 8
    iput-object p2, p0, LF/f;->b:LF/e;

    .line 9
    .line 10
    iput-object p3, p0, LF/f;->c:LG/b;

    .line 11
    .line 12
    iput-object p4, p0, LF/f;->d:Landroid/content/ContentResolver;

    .line 13
    .line 14
    iput-object p1, p0, LF/f;->e:Ljava/util/List;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method final a(Landroid/net/Uri;)I
    .locals 5

    .line 1
    const-string v0, "ThumbStreamOpener"

    .line 2
    .line 3
    const-string v1, "Failed to open uri: "

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    :try_start_0
    iget-object v3, p0, LF/f;->d:Landroid/content/ContentResolver;

    .line 7
    .line 8
    invoke-virtual {v3, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    iget-object v3, p0, LF/f;->e:Ljava/util/List;

    .line 13
    .line 14
    iget-object v4, p0, LF/f;->c:LG/b;

    .line 15
    .line 16
    invoke-static {v4, v2, v3}, LE/d;->h(LG/b;Ljava/io/InputStream;Ljava/util/List;)I

    .line 17
    .line 18
    .line 19
    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 23
    .line 24
    .line 25
    :catch_0
    :cond_0
    return p1

    .line 26
    :catchall_0
    move-exception p1

    .line 27
    goto :goto_1

    .line 28
    :catch_1
    move-exception v3

    .line 29
    goto :goto_0

    .line 30
    :catch_2
    move-exception v3

    .line 31
    :goto_0
    const/4 v4, 0x3

    .line 32
    :try_start_2
    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    if-eqz v4, :cond_1

    .line 37
    .line 38
    new-instance v4, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-static {v0, p1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 51
    .line 52
    .line 53
    :cond_1
    if-eqz v2, :cond_2

    .line 54
    .line 55
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 56
    .line 57
    .line 58
    :catch_3
    :cond_2
    const/4 p1, -0x1

    .line 59
    return p1

    .line 60
    :goto_1
    if-eqz v2, :cond_3

    .line 61
    .line 62
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 63
    .line 64
    .line 65
    :catch_4
    :cond_3
    throw p1
.end method

.method public final b(Landroid/net/Uri;)Ljava/io/InputStream;
    .locals 8

    .line 1
    const-string v0, "ThumbStreamOpener"

    .line 2
    .line 3
    const-string v1, "Failed to query for thumbnail for Uri: "

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x0

    .line 7
    :try_start_0
    iget-object v4, p0, LF/f;->b:LF/e;

    .line 8
    .line 9
    invoke-interface {v4, p1}, LF/e;->a(Landroid/net/Uri;)Landroid/database/Cursor;

    .line 10
    .line 11
    .line 12
    move-result-object v4
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 13
    if-eqz v4, :cond_0

    .line 14
    .line 15
    :try_start_1
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    .line 16
    .line 17
    .line 18
    move-result v5

    .line 19
    if-eqz v5, :cond_0

    .line 20
    .line 21
    invoke-interface {v4, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 26
    .line 27
    .line 28
    goto :goto_2

    .line 29
    :catchall_0
    move-exception p1

    .line 30
    move-object v3, v4

    .line 31
    goto/16 :goto_3

    .line 32
    .line 33
    :catch_0
    move-exception v5

    .line 34
    goto :goto_1

    .line 35
    :cond_0
    if-eqz v4, :cond_1

    .line 36
    .line 37
    :goto_0
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 38
    .line 39
    .line 40
    :cond_1
    move-object v0, v3

    .line 41
    goto :goto_2

    .line 42
    :catchall_1
    move-exception p1

    .line 43
    goto/16 :goto_3

    .line 44
    .line 45
    :catch_1
    move-exception v4

    .line 46
    move-object v5, v4

    .line 47
    move-object v4, v3

    .line 48
    :goto_1
    const/4 v6, 0x3

    .line 49
    :try_start_2
    invoke-static {v0, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 50
    .line 51
    .line 52
    move-result v6

    .line 53
    if-eqz v6, :cond_2

    .line 54
    .line 55
    new-instance v6, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-static {v0, v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 68
    .line 69
    .line 70
    :cond_2
    if-eqz v4, :cond_1

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :goto_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    if-eqz v1, :cond_3

    .line 78
    .line 79
    return-object v3

    .line 80
    :cond_3
    iget-object v1, p0, LF/f;->a:LF/a;

    .line 81
    .line 82
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 83
    .line 84
    .line 85
    new-instance v4, Ljava/io/File;

    .line 86
    .line 87
    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    if-eqz v0, :cond_4

    .line 98
    .line 99
    invoke-virtual {v4}, Ljava/io/File;->length()J

    .line 100
    .line 101
    .line 102
    move-result-wide v0

    .line 103
    const-wide/16 v5, 0x0

    .line 104
    .line 105
    cmp-long v7, v5, v0

    .line 106
    .line 107
    if-gez v7, :cond_4

    .line 108
    .line 109
    const/4 v2, 0x1

    .line 110
    :cond_4
    if-nez v2, :cond_5

    .line 111
    .line 112
    return-object v3

    .line 113
    :cond_5
    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    :try_start_3
    iget-object v1, p0, LF/f;->d:Landroid/content/ContentResolver;

    .line 118
    .line 119
    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    .line 120
    .line 121
    .line 122
    move-result-object p1
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_2

    .line 123
    return-object p1

    .line 124
    :catch_2
    move-exception v1

    .line 125
    new-instance v2, Ljava/io/FileNotFoundException;

    .line 126
    .line 127
    new-instance v3, Ljava/lang/StringBuilder;

    .line 128
    .line 129
    const-string v4, "NPE opening uri: "

    .line 130
    .line 131
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    const-string p1, " -> "

    .line 138
    .line 139
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    invoke-direct {v2, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    check-cast p1, Ljava/io/FileNotFoundException;

    .line 157
    .line 158
    throw p1

    .line 159
    :goto_3
    if-eqz v3, :cond_6

    .line 160
    .line 161
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 162
    .line 163
    .line 164
    :cond_6
    throw p1
.end method
