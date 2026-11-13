.class public final synthetic LT/H;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/content/ContextWrapper;Landroid/content/SharedPreferences;I)V
    .locals 0

    .line 1
    iput p3, p0, LT/H;->a:I

    iput-object p1, p0, LT/H;->c:Ljava/lang/Object;

    iput-object p2, p0, LT/H;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 0

    .line 2
    iput p2, p0, LT/H;->a:I

    iput-object p1, p0, LT/H;->b:Ljava/lang/Object;

    iput-object p3, p0, LT/H;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a()V
    .locals 12

    iget-object v0, p0, LT/H;->b:Ljava/lang/Object;

    check-cast v0, Landroid/bluetooth/BluetoothSocket;

    iget-object v1, p0, LT/H;->c:Ljava/lang/Object;

    check-cast v1, Lcom/ex/auto/PhoneSyncService;

    sget-boolean v2, Lcom/ex/auto/PhoneSyncService;->v:Z

    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/OutputStreamWriter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    invoke-direct {v4, v6, v5}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    :cond_0
    :goto_0
    iget-boolean v4, v1, Lcom/ex/auto/PhoneSyncService;->a:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_5

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    goto/16 :goto_4

    :cond_1
    invoke-static {v4}, LO0/j;->E0(Ljava/lang/CharSequence;)Z

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v6, :cond_0

    :try_start_1
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v5, v6

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_5

    :catch_0
    :goto_1
    if-nez v5, :cond_2

    :try_start_2
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "ok"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "error"

    const-string v6, "JSON inv\u00e1lido"

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v4

    goto :goto_3

    :cond_2
    sget-object v4, Lcom/ex/auto/CentralWatchdogService;->d2:[I

    sget-object v4, Lcom/ex/auto/CentralWatchdogService;->g2:Lcom/ex/auto/CentralWatchdogService;

    if-nez v4, :cond_3

    goto :goto_2

    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sget-wide v8, Lcom/ex/auto/CentralWatchdogService;->j2:J

    sub-long v8, v6, v8

    const-wide/16 v10, 0x4e20

    cmp-long v8, v8, v10

    if-gez v8, :cond_4

    goto :goto_2

    :cond_4
    sput-wide v6, Lcom/ex/auto/CentralWatchdogService;->j2:J

    iget-object v6, v4, Lcom/ex/auto/CentralWatchdogService;->a:Landroid/os/Handler;

    new-instance v7, LT/z0;

    const/4 v8, 0x2

    invoke-direct {v7, v4, v8}, LT/z0;-><init>(Lcom/ex/auto/CentralWatchdogService;I)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_2
    const-string v4, "op"

    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "optString(...)"

    invoke-static {v4, v6}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "body"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/ex/auto/PhoneSyncService;->f(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v4

    :goto_3
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/BufferedWriter;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :cond_5
    :goto_4
    :try_start_3
    invoke-static {v0, v5}, LA/b;->m(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_7

    :catch_1
    move-exception v0

    goto :goto_6

    :goto_5
    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v2

    :try_start_5
    invoke-static {v0, v1}, LA/b;->m(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    :goto_6
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "cliente BT: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "PhoneSyncService"

    invoke-static {v0, v1, v2}, LM/d0;->n(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_7
    return-void
.end method

.method private final b()V
    .locals 19

    move-object/from16 v1, p0

    const/4 v0, 0x1

    iget-object v2, v1, LT/H;->c:Ljava/lang/Object;

    check-cast v2, Ljava/net/Socket;

    sget-boolean v3, Lcom/ex/auto/PhoneSyncService;->v:Z

    iget-object v3, v1, LT/H;->b:Ljava/lang/Object;

    check-cast v3, Lcom/ex/auto/PhoneSyncService;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v4, "GET"

    const-string v5, "substring(...)"

    const-string v6, "POST"

    const/16 v7, 0x4e20

    :try_start_0
    invoke-virtual {v2, v7}, Ljava/net/Socket;->setSoTimeout(I)V

    new-instance v7, Ljava/io/BufferedInputStream;

    invoke-virtual {v2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v8

    invoke-static {v7}, Lcom/ex/auto/PhoneSyncService;->o(Ljava/io/BufferedInputStream;)Ljava/lang/String;

    move-result-object v9

    const-string v10, " "

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, LO0/j;->O0(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    const/4 v11, 0x2

    const/4 v12, 0x0

    if-ge v10, v11, :cond_0

    invoke-static {v8}, LI0/f;->b(Ljava/lang/Object;)V

    const-string v0, "{\"ok\":false,\"error\":\"linha HTTP inv\u00e1lida\"}"

    const/16 v3, 0x190

    invoke-static {v8, v0, v3}, Lcom/ex/auto/PhoneSyncService;->x(Ljava/io/OutputStream;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {v2, v12}, LA/b;->m(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_8

    :catch_0
    move-exception v0

    goto/16 :goto_7

    :goto_0
    move-object v3, v0

    goto/16 :goto_6

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    const/4 v10, 0x0

    :try_start_2
    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    sget-object v13, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v11, v13}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v11

    const-string v13, "toUpperCase(...)"

    invoke-static {v11, v13}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const-wide/16 v13, 0x0

    :goto_1
    invoke-static {v7}, Lcom/ex/auto/PhoneSyncService;->o(Ljava/io/BufferedInputStream;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v16

    if-nez v16, :cond_a

    invoke-virtual {v11, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v5, "toString(...)"

    const/16 v15, 0xc8

    if-eqz v0, :cond_1

    :try_start_3
    const-string v0, "/sync/carlock"

    invoke-static {v9, v0}, LO0/s;->w0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v8}, LI0/f;->b(Ljava/lang/Object;)V

    invoke-static {v7, v9, v13, v14}, Lcom/ex/auto/PhoneSyncService;->h(Ljava/io/BufferedInputStream;Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v8, v0, v15}, Lcom/ex/auto/PhoneSyncService;->x(Ljava/io/OutputStream;Ljava/lang/String;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {v2, v12}, LA/b;->m(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_8

    :cond_1
    :try_start_5
    invoke-virtual {v11, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "/sync/avas_sound"

    invoke-static {v9, v0}, LO0/s;->w0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {v8}, LI0/f;->b(Ljava/lang/Object;)V

    invoke-static {v7, v9, v13, v14}, Lcom/ex/auto/PhoneSyncService;->g(Ljava/io/BufferedInputStream;Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v8, v0, v15}, Lcom/ex/auto/PhoneSyncService;->x(Ljava/io/OutputStream;Ljava/lang/String;I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    invoke-static {v2, v12}, LA/b;->m(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_8

    :cond_2
    :try_start_7
    invoke-virtual {v11, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    const-string v15, "UTF_8"

    const-wide/16 v17, 0x1

    if-eqz v0, :cond_4

    :try_start_8
    const-string v0, "/sync/logs_zip"

    invoke-static {v9, v0}, LO0/s;->w0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-eqz v0, :cond_4

    cmp-long v0, v17, v13

    if-gtz v0, :cond_3

    const-wide/32 v4, 0x10001

    cmp-long v0, v13, v4

    if-gez v0, :cond_3

    :try_start_9
    new-instance v0, Lorg/json/JSONObject;

    long-to-int v4, v13

    invoke-static {v7, v4}, Lcom/ex/auto/PhoneSyncService;->m(Ljava/io/BufferedInputStream;I)[B

    move-result-object v4

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {v5, v15}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v4, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-direct {v0, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_2

    :catch_1
    :cond_3
    move-object v0, v12

    :goto_2
    :try_start_a
    invoke-static {v8}, LI0/f;->b(Ljava/lang/Object;)V

    invoke-virtual {v3, v0, v8}, Lcom/ex/auto/PhoneSyncService;->s(Lorg/json/JSONObject;Ljava/io/OutputStream;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :try_start_b
    invoke-static {v2, v12}, LA/b;->m(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    goto/16 :goto_8

    :cond_4
    :try_start_c
    invoke-virtual {v11, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    cmp-long v0, v17, v13

    if-gtz v0, :cond_5

    const-wide/32 v17, 0x100000

    cmp-long v0, v13, v17

    if-gtz v0, :cond_5

    long-to-int v0, v13

    invoke-static {v7, v0}, Lcom/ex/auto/PhoneSyncService;->m(Ljava/io/BufferedInputStream;I)[B

    move-result-object v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    :try_start_d
    new-instance v7, Lorg/json/JSONObject;

    sget-object v13, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {v13, v15}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v14, Ljava/lang/String;

    invoke-direct {v14, v0, v13}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-direct {v7, v14}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto :goto_3

    :catch_2
    :cond_5
    move-object v7, v12

    :goto_3
    :try_start_e
    invoke-virtual {v11, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "/sync/ping"

    invoke-static {v9, v0}, LO0/s;->w0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "ping"

    invoke-virtual {v3, v0, v12}, Lcom/ex/auto/PhoneSyncService;->f(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_4

    :cond_6
    invoke-virtual {v11, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "/sync/state"

    invoke-static {v9, v0}, LO0/s;->w0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "state"

    invoke-virtual {v3, v0, v12}, Lcom/ex/auto/PhoneSyncService;->f(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_4

    :cond_7
    invoke-virtual {v11, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "/sync/merge"

    invoke-static {v9, v0}, LO0/s;->w0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "merge"

    invoke-virtual {v3, v0, v7}, Lcom/ex/auto/PhoneSyncService;->f(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_4

    :cond_8
    invoke-virtual {v11, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "/sync/action"

    invoke-static {v9, v0}, LO0/s;->w0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "action"

    invoke-virtual {v3, v0, v7}, Lcom/ex/auto/PhoneSyncService;->f(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_4

    :cond_9
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "ok"

    invoke-virtual {v0, v3, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    const-string v3, "error"

    const-string v4, "endpoint n\u00e3o encontrado"

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    :goto_4
    invoke-static {v8}, LI0/f;->b(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v3, 0xc8

    invoke-static {v8, v0, v3}, Lcom/ex/auto/PhoneSyncService;->x(Ljava/io/OutputStream;Ljava/lang/String;I)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    :try_start_f
    invoke-static {v2, v12}, LA/b;->m(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_0

    goto :goto_8

    :cond_a
    const/4 v12, 0x6

    const/16 v0, 0x3a

    :try_start_10
    invoke-static {v15, v0, v10, v10, v12}, LO0/j;->C0(Ljava/lang/String;CIZI)I

    move-result v0

    if-lez v0, :cond_c

    invoke-virtual {v15, v10, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v5}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v12}, LO0/j;->X0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v10, "content-length"

    invoke-static {v12, v10}, LO0/s;->s0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_c

    const/4 v10, 0x1

    add-int/2addr v0, v10

    invoke-virtual {v15, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, LO0/j;->X0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LO0/r;->q0(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v12
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    move-wide v13, v12

    goto :goto_5

    :cond_b
    const-wide/16 v13, 0x0

    :goto_5
    move v0, v10

    const/4 v10, 0x0

    const/4 v12, 0x0

    goto/16 :goto_1

    :cond_c
    const/4 v10, 0x1

    goto :goto_5

    :goto_6
    :try_start_11
    throw v3
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    :catchall_1
    move-exception v0

    move-object v4, v0

    :try_start_12
    invoke-static {v2, v3}, LA/b;->m(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v4
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_0

    :goto_7
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "handleHttpClient: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "PhoneSyncService"

    invoke-static {v0, v2, v3}, LM/d0;->n(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 30

    move-object/from16 v1, p0

    const-string v0, "trip_start_odometer_km"

    const-string v5, "binding"

    const/16 v6, 0xbb8

    const/16 v7, 0x15b3

    const-string v8, "QuickAccessFloater"

    const-string v9, "getString(...)"

    const/4 v3, 0x0

    const/4 v4, 0x1

    iget v12, v1, LT/H;->a:I

    packed-switch v12, :pswitch_data_0

    sget-object v0, Lcom/ex/auto/QuickAccessFloaterService;->j0:Ljava/util/List;

    iget-object v0, v1, LT/H;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v5

    iget-object v6, v1, LT/H;->c:Ljava/lang/Object;

    check-cast v6, Lcom/ex/auto/QuickAccessFloaterService;

    if-eqz v5, :cond_0

    const v0, 0x7f0f00f5

    invoke-virtual {v6, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_7

    :cond_0
    invoke-static {v6}, LT/Y;->X(Landroid/content/Context;)Ljava/util/List;

    move-result-object v5

    invoke-static {v5}, Lw0/i;->l0(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    new-array v12, v7, [Z

    move v2, v3

    :goto_0
    if-ge v2, v7, :cond_1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v10, v16

    check-cast v10, Lv0/d;

    iget-object v10, v10, Lv0/d;->a:Ljava/lang/Object;

    invoke-interface {v5, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    xor-int/2addr v10, v4

    aput-boolean v10, v12, v2

    add-int/2addr v2, v4

    goto :goto_0

    :cond_1
    new-instance v2, LI0/l;

    invoke-direct {v2, v3}, LI0/l;-><init>(I)V

    new-instance v7, Landroid/widget/LinearLayout;

    invoke-direct {v7, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v10, Landroid/widget/Button;

    invoke-direct {v10, v6}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v11, "\ud83d\udd12 "

    invoke-direct {v13, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const v11, 0x7f0f00f4

    invoke-virtual {v6, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v10, v3}, Landroid/widget/TextView;->setAllCaps(Z)V

    const/high16 v11, 0x41800000    # 16.0f

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTextSize(F)V

    const v11, 0x7f05002e

    invoke-virtual {v6, v11}, Landroid/content/Context;->getColor(I)I

    move-result v11

    invoke-static {v11}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    const v11, 0x7f050038

    invoke-virtual {v6, v11}, Landroid/content/Context;->getColor(I)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v11, LT/a4;

    invoke-direct {v11, v6, v2, v4}, LT/a4;-><init>(Lcom/ex/auto/QuickAccessFloaterService;LI0/l;I)V

    invoke-virtual {v10, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v13, 0x30

    invoke-virtual {v6, v13}, Lcom/ex/auto/QuickAccessFloaterService;->p(I)I

    move-result v13

    const/4 v14, -0x1

    invoke-direct {v11, v14, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v13, 0xe

    invoke-virtual {v6, v13}, Lcom/ex/auto/QuickAccessFloaterService;->p(I)I

    move-result v13

    iput v13, v11, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v7, v10, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v10, Landroid/widget/LinearLayout;

    invoke-direct {v10, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v10, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    move v13, v3

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_6

    add-int/lit8 v16, v13, 0x1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v14, v18

    check-cast v14, Lv0/d;

    iget-object v4, v14, Lv0/d;->a:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v3, v14, Lv0/d;->b:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v14, v14, Lv0/d;->c:Ljava/lang/Object;

    check-cast v14, Landroid/graphics/drawable/Drawable;

    if-nez v13, :cond_2

    const/16 v18, 0x1

    goto :goto_2

    :cond_2
    const/16 v18, 0x0

    :goto_2
    aget-boolean v15, v12, v13

    move-object/from16 v25, v11

    new-instance v11, LT/h4;

    invoke-direct {v11, v12, v13}, LT/h4;-><init>([ZI)V

    invoke-interface {v5, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v13

    move-object/from16 v26, v5

    new-instance v5, LT/J2;

    const/4 v1, 0x2

    invoke-direct {v5, v6, v1, v4}, LT/J2;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v4, 0x10

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setFocusable(Z)V

    const v4, 0x7f070063

    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundResource(I)V

    const v4, 0x7f05003e

    invoke-virtual {v6, v4}, Landroid/content/Context;->getColor(I)I

    move-result v4

    invoke-static {v4}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    move-object/from16 v27, v8

    const/16 v4, 0x10

    invoke-virtual {v6, v4}, Lcom/ex/auto/QuickAccessFloaterService;->p(I)I

    move-result v8

    move-object/from16 v28, v2

    invoke-virtual {v6, v4}, Lcom/ex/auto/QuickAccessFloaterService;->p(I)I

    move-result v2

    move-object/from16 v29, v0

    invoke-virtual {v6, v4}, Lcom/ex/auto/QuickAccessFloaterService;->p(I)I

    move-result v0

    invoke-virtual {v6, v4}, Lcom/ex/auto/QuickAccessFloaterService;->p(I)I

    move-result v4

    invoke-virtual {v1, v8, v2, v0, v4}, Landroid/view/View;->setPadding(IIII)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v4, -0x1

    invoke-direct {v0, v4, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    if-eqz v18, :cond_3

    const/4 v8, 0x0

    goto :goto_3

    :cond_3
    const/16 v8, 0xa

    invoke-virtual {v6, v8}, Lcom/ex/auto/QuickAccessFloaterService;->p(I)I

    move-result v17

    move/from16 v8, v17

    :goto_3
    iput v8, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, v6}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    if-eqz v14, :cond_4

    invoke-virtual {v0, v14}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    :cond_4
    const v8, 0x1080093

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_4
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v14, 0x32

    invoke-virtual {v6, v14}, Lcom/ex/auto/QuickAccessFloaterService;->p(I)I

    move-result v4

    invoke-virtual {v6, v14}, Lcom/ex/auto/QuickAccessFloaterService;->p(I)I

    move-result v14

    invoke-direct {v8, v4, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0x12

    invoke-virtual {v6, v4}, Lcom/ex/auto/QuickAccessFloaterService;->p(I)I

    move-result v4

    invoke-virtual {v8, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    invoke-virtual {v0, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v3, 0x7f050041

    invoke-virtual {v6, v3}, Landroid/content/Context;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v3, 0x41a80000    # 21.0f

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextSize(F)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    invoke-direct {v3, v8, v2, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/CheckBox;

    invoke-direct {v0, v6}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v15}, Landroid/widget/CompoundButton;->setChecked(Z)V

    invoke-virtual {v0, v8}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {v0, v8}, Landroid/view/View;->setFocusable(Z)V

    sget v3, Lcom/ex/auto/QuickAccessFloaterService;->r0:I

    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/CompoundButton;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    const v3, 0x3fa66666    # 1.3f

    invoke-virtual {v0, v3}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setScaleY(F)V

    new-instance v3, LI0/i;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-boolean v13, v3, LI0/i;->a:Z

    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iget-boolean v8, v3, LI0/i;->a:Z

    if-eqz v8, :cond_5

    const-string v8, "\ud83d\udd12"

    goto :goto_5

    :cond_5
    const-string v8, "\ud83d\udd13"

    :goto_5
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v8, 0x41c00000    # 24.0f

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 v8, 0x1

    invoke-virtual {v4, v8}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {v4, v8}, Landroid/view/View;->setFocusable(Z)V

    const/16 v8, 0xc

    invoke-virtual {v6, v8}, Lcom/ex/auto/QuickAccessFloaterService;->p(I)I

    move-result v13

    const/16 v14, 0x8

    invoke-virtual {v6, v14}, Lcom/ex/auto/QuickAccessFloaterService;->p(I)I

    move-result v15

    invoke-virtual {v6, v8}, Lcom/ex/auto/QuickAccessFloaterService;->p(I)I

    move-result v8

    invoke-virtual {v6, v14}, Lcom/ex/auto/QuickAccessFloaterService;->p(I)I

    move-result v2

    invoke-virtual {v4, v13, v15, v8, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    new-instance v2, LT/i4;

    move-object/from16 v19, v2

    move-object/from16 v20, v3

    move-object/from16 v21, v4

    move-object/from16 v22, v5

    move-object/from16 v23, v0

    move-object/from16 v24, v11

    invoke-direct/range {v19 .. v24}, LT/i4;-><init>(LI0/i;Landroid/widget/TextView;LT/J2;Landroid/widget/CheckBox;LT/h4;)V

    invoke-virtual {v4, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v3, 0x6

    invoke-virtual {v6, v3}, Lcom/ex/auto/QuickAccessFloaterService;->p(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    invoke-virtual {v1, v4, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v2, LT/u;

    const/4 v3, 0x5

    invoke-direct {v2, v0, v3, v11}, LT/u;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v10, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    move-object/from16 v1, p0

    move/from16 v13, v16

    move-object/from16 v11, v25

    move-object/from16 v5, v26

    move-object/from16 v8, v27

    move-object/from16 v2, v28

    move-object/from16 v0, v29

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v14, -0x1

    goto/16 :goto_1

    :cond_6
    move-object/from16 v29, v0

    move-object/from16 v28, v2

    move-object/from16 v27, v8

    invoke-virtual {v7, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/ScrollView;

    invoke-direct {v0, v6}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v7}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    const/16 v1, 0x14

    invoke-virtual {v6, v1}, Lcom/ex/auto/QuickAccessFloaterService;->p(I)I

    move-result v2

    const/16 v3, 0xc

    invoke-virtual {v6, v3}, Lcom/ex/auto/QuickAccessFloaterService;->p(I)I

    move-result v3

    invoke-virtual {v6, v1}, Lcom/ex/auto/QuickAccessFloaterService;->p(I)I

    move-result v1

    const/4 v4, 0x4

    invoke-virtual {v6, v4}, Lcom/ex/auto/QuickAccessFloaterService;->p(I)I

    move-result v4

    invoke-virtual {v0, v2, v3, v1, v4}, Landroid/view/View;->setPadding(IIII)V

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0f00f7

    invoke-virtual {v6, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v9}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Lcom/ex/auto/QuickAccessFloaterService;->o(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCustomTitle(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0f00f2

    invoke-virtual {v6, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, LT/h;

    move-object/from16 v3, v29

    const/4 v4, 0x2

    invoke-direct {v2, v3, v6, v12, v4}, LT/h;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0f0032

    invoke-virtual {v6, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    move-object/from16 v1, v28

    iput-object v0, v1, LI0/l;->b:Ljava/lang/Object;

    const-string v2, "dlg"

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_7

    const/16 v3, 0x7f6

    invoke-virtual {v0, v3}, Landroid/view/Window;->setType(I)V

    :cond_7
    iget-object v0, v1, LI0/l;->b:Ljava/lang/Object;

    if-eqz v0, :cond_b

    check-cast v0, Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_8

    const v3, 0x7f070059

    invoke-virtual {v0, v3}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    :cond_8
    :try_start_0
    iget-object v0, v1, LI0/l;->b:Ljava/lang/Object;

    if-eqz v0, :cond_a

    check-cast v0, Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    iget-object v0, v1, LI0/l;->b:Ljava/lang/Object;

    if-eqz v0, :cond_9

    check-cast v0, Landroid/app/AlertDialog;

    invoke-static {v0}, Lcom/ex/auto/QuickAccessFloaterService;->n(Landroid/app/AlertDialog;)V

    goto :goto_7

    :catch_0
    move-exception v0

    goto :goto_6

    :cond_9
    invoke-static {v2}, LI0/f;->h(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_a
    invoke-static {v2}, LI0/f;->h(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_6
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "confirmCloseUserApps: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v2, v27

    invoke-static {v0, v1, v2}, LM/d0;->n(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_7
    return-void

    :cond_b
    invoke-static {v2}, LI0/f;->h(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_c
    const/4 v0, 0x0

    invoke-static {v2}, LI0/f;->h(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    move-object v2, v8

    iget-object v0, v1, LT/H;->b:Ljava/lang/Object;

    check-cast v0, Landroid/car/hardware/property/CarPropertyManager;

    iget-object v3, v1, LT/H;->c:Ljava/lang/Object;

    check-cast v3, Lcom/ex/auto/QuickAccessFloaterService;

    sget-object v4, Lcom/ex/auto/QuickAccessFloaterService;->j0:Ljava/util/List;

    const/4 v4, 0x2

    :try_start_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-class v5, Ljava/lang/Integer;

    const v6, 0x2140a6fb

    const/4 v7, 0x0

    invoke-virtual {v0, v5, v6, v7, v4}, Landroid/car/hardware/property/CarPropertyManager;->setProperty(Ljava/lang/Class;IILjava/lang/Object;)V

    const-string v0, "sendPowerOff: MMI_POWER_ON_OFF_REQ=2 escrito com sucesso"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_8

    :catch_1
    move-exception v0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "sendPowerOff: falhou escrever a property ("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "), tentando broadcast como fallback"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_2
    const-string v0, "am broadcast -a com.flyme.auto.settings.action.CAR_POWER_OFF"

    const/16 v2, 0x1f40

    invoke-virtual {v3, v2, v0}, Lcom/ex/auto/QuickAccessFloaterService;->b(ILjava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :goto_8
    return-void

    :pswitch_1
    sget-boolean v0, Lcom/ex/auto/PhoneSyncService;->v:Z

    iget-object v0, v1, LT/H;->b:Ljava/lang/Object;

    check-cast v0, Landroid/content/SharedPreferences;

    const-string v2, "hvac_digital_temp"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const-string v4, "hvac_digital_batt"

    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    const-string v5, "hvac_digital_ext_temp"

    invoke-interface {v0, v5, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iget-object v3, v1, LT/H;->c:Ljava/lang/Object;

    check-cast v3, Lcom/ex/auto/PhoneSyncService;

    const/4 v5, 0x0

    invoke-static {v3, v2, v4, v0, v5}, LT/m;->x(Landroid/content/Context;ZZZLH0/l;)Z

    return-void

    :pswitch_2
    invoke-direct/range {p0 .. p0}, LT/H;->b()V

    return-void

    :pswitch_3
    invoke-direct/range {p0 .. p0}, LT/H;->a()V

    return-void

    :pswitch_4
    sget-object v0, Lcom/ex/auto/ModoOficinaTriggerService;->f:Lcom/ex/auto/ModoOficinaTriggerService;

    iget-object v0, v1, LT/H;->c:Ljava/lang/Object;

    check-cast v0, LT/I3;

    iget-object v0, v0, LT/I3;->b:Ljava/lang/String;

    iget-object v2, v1, LT/H;->b:Ljava/lang/Object;

    check-cast v2, Landroid/content/Context;

    const/4 v3, 0x1

    invoke-static {v2, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    :pswitch_5
    iget-object v0, v1, LT/H;->b:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    iget-object v2, v1, LT/H;->c:Ljava/lang/Object;

    check-cast v2, Lcom/ex/auto/ModoOficinaTriggerService;

    sget-object v3, Lcom/ex/auto/ModoOficinaTriggerService;->f:Lcom/ex/auto/ModoOficinaTriggerService;

    sget-object v3, LT/J3;->a:Ljava/util/List;

    invoke-static {v0}, LI0/f;->b(Ljava/lang/Object;)V

    const-string v3, "gesto"

    invoke-static {v0, v3}, LT/J3;->h(Landroid/content/Context;Ljava/lang/String;)LT/I3;

    move-result-object v3

    const/4 v4, 0x0

    iput-boolean v4, v2, Lcom/ex/auto/ModoOficinaTriggerService;->e:Z

    new-instance v4, Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v4, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, LT/H;

    const/16 v5, 0x18

    invoke-direct {v2, v0, v5, v3}, LT/H;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {v4, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_6
    iget-object v0, v1, LT/H;->b:Ljava/lang/Object;

    check-cast v0, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;

    if-eqz v0, :cond_d

    iget-object v2, v1, LT/H;->c:Ljava/lang/Object;

    if-eqz v2, :cond_d

    :try_start_3
    invoke-virtual {v0, v2}, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;->unregister(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    :cond_d
    if-eqz v0, :cond_e

    :try_start_4
    invoke-virtual {v0}, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;->destroy()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    :cond_e
    return-void

    :pswitch_7
    iget-object v0, v1, LT/H;->b:Ljava/lang/Object;

    check-cast v0, Lcom/ex/auto/MediaBarFloaterService;

    iget-object v2, v1, LT/H;->c:Ljava/lang/Object;

    check-cast v2, LB/b;

    :try_start_5
    const-string v3, "tela_preta_prefs"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v5, "media_bar_floater_pinned"

    invoke-interface {v3, v5, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_f

    const/4 v3, 0x0

    goto :goto_9

    :cond_f
    iget-object v3, v0, Lcom/ex/auto/MediaBarFloaterService;->k:Landroid/media/session/MediaController;

    if-nez v3, :cond_10

    iget-boolean v3, v0, Lcom/ex/auto/MediaBarFloaterService;->s:Z

    goto :goto_9

    :cond_10
    new-instance v3, LT/I1;

    invoke-direct {v3, v7}, LT/I1;-><init>(I)V

    const-string v4, "dumpsys window windows 2>/dev/null | sed -n \'/Window{.*CarNavigationBar}/,/mWindowRemovalAllowed/p\' | grep -o \'isReadyForDisplay()=[a-z]*\'"

    invoke-virtual {v3, v6, v4}, LT/I1;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, LI0/f;->b(Ljava/lang/Object;)V

    invoke-static {v3}, LO0/j;->E0(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_11

    iget-boolean v3, v0, Lcom/ex/auto/MediaBarFloaterService;->s:Z

    goto :goto_9

    :cond_11
    const-string v4, "=false"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, LO0/j;->x0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_9

    :catchall_2
    iget-boolean v3, v0, Lcom/ex/auto/MediaBarFloaterService;->s:Z

    :goto_9
    iget-object v4, v0, Lcom/ex/auto/MediaBarFloaterService;->c:Landroid/os/Handler;

    new-instance v5, LT/v;

    const/4 v6, 0x5

    invoke-direct {v5, v3, v0, v2, v6}, LT/v;-><init>(ZLandroid/content/ContextWrapper;Ljava/lang/Object;I)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_8
    iget-object v0, v1, LT/H;->b:Ljava/lang/Object;

    check-cast v0, Lcom/ex/auto/MainActivity;

    iget-object v2, v0, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v2, :cond_12

    iget-object v2, v2, LU/a;->Q:Landroid/widget/Button;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {v0}, Lcom/ex/auto/MainActivity;->p1()V

    new-instance v2, LT/j1;

    invoke-direct {v2, v0}, LT/j1;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0f046d

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v2, LT/j1;->b:Ljava/lang/Object;

    check-cast v4, Le/e;

    iput-object v3, v4, Le/e;->d:Ljava/lang/CharSequence;

    iget-object v3, v1, LT/H;->c:Ljava/lang/Object;

    check-cast v3, LT/I3;

    iget-object v3, v3, LT/I3;->b:Ljava/lang/String;

    iput-object v3, v4, Le/e;->f:Ljava/lang/CharSequence;

    const v3, 0x7f0f0034

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, LT/j1;->h(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v2}, LT/j1;->j()Le/i;

    return-void

    :cond_12
    const/4 v3, 0x0

    invoke-static {v5}, LI0/f;->h(Ljava/lang/String;)V

    throw v3

    :pswitch_9
    sget v0, Lcom/ex/auto/MainActivity;->u0:I

    iget-object v0, v1, LT/H;->c:Ljava/lang/Object;

    check-cast v0, LI0/i;

    iget-boolean v0, v0, LI0/i;->a:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-object v2, v1, LT/H;->b:Ljava/lang/Object;

    check-cast v2, LT/W1;

    invoke-virtual {v2, v0}, LT/W1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :pswitch_a
    sget v0, Lcom/ex/auto/MainActivity;->u0:I

    iget-object v0, v1, LT/H;->b:Ljava/lang/Object;

    check-cast v0, LH0/a;

    invoke-interface {v0}, LH0/a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LT/I3;

    new-instance v2, LT/H;

    iget-object v3, v1, LT/H;->c:Ljava/lang/Object;

    check-cast v3, Lcom/ex/auto/MainActivity;

    const/16 v4, 0x14

    invoke-direct {v2, v3, v4, v0}, LT/H;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {v3, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :pswitch_b
    sget v0, Lcom/ex/auto/MainActivity;->u0:I

    iget-object v0, v1, LT/H;->b:Ljava/lang/Object;

    check-cast v0, Lcom/ex/auto/MainActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_13

    new-instance v7, LT/n;

    const/16 v2, 0x1b

    invoke-direct {v7, v2}, LT/n;-><init>(I)V

    iget-object v2, v1, LT/H;->c:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    const/4 v6, 0x0

    const/16 v8, 0x1e

    const-string v4, "\n\n"

    const/4 v5, 0x0

    move-object v3, v2

    invoke-static/range {v3 .. v8}, Lw0/i;->d0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;LH0/l;I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, LT/j1;

    invoke-direct {v4, v0}, LT/j1;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0f014f

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v4, LT/j1;->b:Ljava/lang/Object;

    check-cast v6, Le/e;

    iput-object v5, v6, Le/e;->d:Ljava/lang/CharSequence;

    const v5, 0x7f0f014d

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v5, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v6, Le/e;->f:Ljava/lang/CharSequence;

    const v3, 0x7f0f014c

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v5, LT/F2;

    const/4 v6, 0x2

    invoke-direct {v5, v0, v2, v6}, LT/F2;-><init>(Lcom/ex/auto/MainActivity;Ljava/util/ArrayList;I)V

    invoke-virtual {v4, v3, v5}, LT/j1;->h(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    const v3, 0x7f0f0033

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v5, LT/F2;

    const/4 v6, 0x3

    invoke-direct {v5, v0, v2, v6}, LT/F2;-><init>(Lcom/ex/auto/MainActivity;Ljava/util/ArrayList;I)V

    invoke-virtual {v4, v3, v5}, LT/j1;->f(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v4}, LT/j1;->j()Le/i;

    :cond_13
    return-void

    :pswitch_c
    iget-object v0, v1, LT/H;->b:Ljava/lang/Object;

    check-cast v0, Lcom/ex/auto/MainActivity;

    iget-object v2, v0, Lcom/ex/auto/MainActivity;->x:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, v0, Lcom/ex/auto/MainActivity;->x:Ljava/util/ArrayList;

    iget-object v3, v1, LT/H;->c:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_14

    const v2, 0x7f0f0249

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Le/a;->G(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    goto :goto_b

    :cond_14
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v3}, Lw0/k;->V(Ljava/lang/Iterable;)I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_15

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const/16 v7, 0x2f

    invoke-static {v6, v7}, LO0/j;->S0(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_15
    :goto_b
    new-instance v4, Landroid/widget/ArrayAdapter;

    const v6, 0x1090008

    invoke-direct {v4, v0, v6, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    const v2, 0x1090009

    invoke-virtual {v4, v2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    iget-object v2, v0, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v2, :cond_18

    iget-object v2, v2, LU/a;->E1:Landroid/widget/Spinner;

    invoke-virtual {v2, v4}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v2, v0, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v2, :cond_17

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    const/4 v6, 0x1

    xor-int/2addr v4, v6

    iget-object v2, v2, LU/a;->i:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, v0, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v0, :cond_16

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    xor-int/2addr v2, v6

    iget-object v0, v0, LU/a;->j:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    return-void

    :cond_16
    invoke-static {v5}, LI0/f;->h(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_17
    const/4 v0, 0x0

    invoke-static {v5}, LI0/f;->h(Ljava/lang/String;)V

    throw v0

    :cond_18
    const/4 v0, 0x0

    invoke-static {v5}, LI0/f;->h(Ljava/lang/String;)V

    throw v0

    :pswitch_d
    sget v0, Lcom/ex/auto/MainActivity;->u0:I

    iget-object v0, v1, LT/H;->b:Ljava/lang/Object;

    check-cast v0, Lcom/ex/auto/MainActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_19

    iget-object v0, v1, LT/H;->c:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    :cond_19
    return-void

    :pswitch_e
    iget-object v2, v1, LT/H;->b:Ljava/lang/Object;

    check-cast v2, Lcom/ex/auto/MainActivity;

    iget-object v3, v1, LT/H;->c:Ljava/lang/Object;

    check-cast v3, Le/i;

    sget v4, Lcom/ex/auto/MainActivity;->u0:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/ex/auto/MainActivity;->B0()Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "status_total_km_enabled"

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    invoke-virtual {v2}, Lcom/ex/auto/MainActivity;->B0()Landroid/content/SharedPreferences;

    move-result-object v6

    const-string v8, "status_trip_km_enabled"

    invoke-interface {v6, v8, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    const-string v7, "Total ligado: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "n\u00e3o"

    const-string v8, "sim"

    if-eqz v5, :cond_1a

    move-object v5, v8

    goto :goto_c

    :cond_1a
    move-object v5, v7

    :goto_c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\nViagem ligada: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v6, :cond_1b

    move-object v7, v8

    :cond_1b
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/ex/auto/CentralWatchdogService;->d2:[I

    sget-object v5, Lcom/ex/auto/CentralWatchdogService;->g2:Lcom/ex/auto/CentralWatchdogService;

    if-eqz v5, :cond_1c

    iget-object v5, v5, Lcom/ex/auto/CentralWatchdogService;->i:Landroid/car/hardware/property/CarPropertyManager;

    if-eqz v5, :cond_1c

    goto :goto_e

    :cond_1c
    sget-object v5, Lcom/ex/auto/CentralWatchdogService;->g2:Lcom/ex/auto/CentralWatchdogService;

    if-nez v5, :cond_1d

    :catch_3
    :catchall_3
    const/4 v5, 0x0

    goto :goto_e

    :cond_1d
    :try_start_6
    iget-object v6, v5, Lcom/ex/auto/CentralWatchdogService;->a:Landroid/os/Handler;

    new-instance v7, LT/z0;

    const/4 v8, 0x3

    invoke-direct {v7, v5, v8}, LT/z0;-><init>(Lcom/ex/auto/CentralWatchdogService;I)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x1770

    add-long/2addr v6, v8

    :goto_d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    cmp-long v8, v8, v6

    if-gez v8, :cond_1f

    iget-object v8, v5, Lcom/ex/auto/CentralWatchdogService;->i:Landroid/car/hardware/property/CarPropertyManager;

    if-eqz v8, :cond_1e

    move-object v5, v8

    goto :goto_e

    :cond_1e
    const-wide/16 v8, 0xc8

    :try_start_7
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_d

    :cond_1f
    iget-object v5, v5, Lcom/ex/auto/CentralWatchdogService;->i:Landroid/car/hardware/property/CarPropertyManager;

    :goto_e
    if-nez v5, :cond_20

    const-string v0, "CarPropertyManager: indispon\u00edvel"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_14

    :cond_20
    const v6, 0x11400204

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-instance v7, Lv0/a;

    const-string v8, "0x11400204 (deste IHU)"

    invoke-direct {v7, v8, v6}, Lv0/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v6, 0x11600204

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-instance v8, Lv0/a;

    const-string v9, "0x11600204 (AOSP)"

    invoke-direct {v8, v9, v6}, Lv0/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v6, 0x2140a6ac

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-instance v9, Lv0/a;

    const-string v10, "0x2140a6ac (painel)"

    invoke-direct {v9, v10, v6}, Lv0/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v7, v8, v9}, [Lv0/a;

    move-result-object v6

    invoke-static {v6}, Lw0/j;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_f
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_25

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lv0/a;

    iget-object v8, v7, Lv0/a;->a:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    iget-object v7, v7, Lv0/a;->b:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    const/4 v9, 0x0

    :try_start_8
    invoke-static {v5, v7, v9}, LT/U;->c(Landroid/car/hardware/property/CarPropertyManager;II)Ljava/lang/Integer;

    move-result-object v10
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    goto :goto_10

    :catchall_4
    const/4 v10, 0x0

    :goto_10
    if-nez v10, :cond_21

    :try_start_9
    invoke-static {v5, v7, v9}, LT/U;->b(Landroid/car/hardware/property/CarPropertyManager;II)Ljava/lang/Float;

    move-result-object v7
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    goto :goto_11

    :catchall_5
    :cond_21
    const/4 v7, 0x0

    :goto_11
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ": "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v10, :cond_22

    invoke-virtual {v10}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_24

    :cond_22
    if-eqz v7, :cond_23

    invoke-virtual {v7}, Ljava/lang/Float;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_12

    :cond_23
    const-string v8, "\u2014"

    :cond_24
    :goto_12
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v7, 0xa

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_f

    :cond_25
    invoke-virtual {v2}, Lcom/ex/auto/MainActivity;->B0()Landroid/content/SharedPreferences;

    move-result-object v5

    const/high16 v6, -0x40800000    # -1.0f

    invoke-interface {v5, v0, v6}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    const-string v5, "In\u00edcio da viagem gravado: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    cmpg-float v5, v0, v5

    if-gtz v5, :cond_26

    const-string v0, "n\u00e3o definido"

    goto :goto_13

    :cond_26
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_13
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_14
    iget-object v0, v2, Lcom/ex/auto/MainActivity;->v:Landroid/os/Handler;

    new-instance v5, LT/z;

    const/16 v6, 0x8

    invoke-direct {v5, v2, v3, v4, v6}, LT/z;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_f
    sget-object v0, Lcom/ex/auto/LyricsFloaterService;->v:Ljava/util/Set;

    iget-object v0, v1, LT/H;->b:Ljava/lang/Object;

    check-cast v0, LI0/i;

    const/4 v2, 0x1

    iput-boolean v2, v0, LI0/i;->a:Z

    iget-object v0, v1, LT/H;->c:Ljava/lang/Object;

    check-cast v0, Lcom/ex/auto/LyricsFloaterService;

    invoke-virtual {v0}, Lcom/ex/auto/LyricsFloaterService;->l()V

    return-void

    :pswitch_10
    iget-object v0, v1, LT/H;->b:Ljava/lang/Object;

    check-cast v0, Lcom/ex/auto/LyricsFloaterService;

    iget-object v0, v0, Lcom/ex/auto/LyricsFloaterService;->p:Landroid/widget/ScrollView;

    if-eqz v0, :cond_28

    iget-object v2, v1, LT/H;->c:Ljava/lang/Object;

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    add-int/lit16 v3, v3, -0x104

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/2addr v2, v3

    if-gez v2, :cond_27

    const/4 v2, 0x0

    :cond_27
    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Landroid/widget/ScrollView;->smoothScrollTo(II)V

    :cond_28
    return-void

    :pswitch_11
    sget v0, Lcom/ex/auto/InstallerActivity;->u:I

    iget-object v0, v1, LT/H;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Exception;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    iget-object v2, v1, LT/H;->b:Ljava/lang/Object;

    check-cast v2, Lcom/ex/auto/InstallerActivity;

    if-nez v0, :cond_29

    const v0, 0x7f0f01d7

    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v9}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_29
    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lcom/ex/auto/InstallerActivity;->u(Ljava/lang/String;Z)V

    return-void

    :pswitch_12
    iget-object v0, v1, LT/H;->b:Ljava/lang/Object;

    check-cast v0, Lcom/ex/auto/InstallerActivity;

    iget-object v2, v0, Lcom/ex/auto/InstallerActivity;->t:Landroid/widget/TextView;

    if-eqz v2, :cond_2a

    iget-object v3, v1, LT/H;->c:Ljava/lang/Object;

    check-cast v3, Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const v4, 0x7f0f01d3

    invoke-virtual {v0, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_2a
    const-string v0, "tvStatus"

    invoke-static {v0}, LI0/f;->h(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :pswitch_13
    iget-object v0, v1, LT/H;->c:Ljava/lang/Object;

    check-cast v0, Landroid/net/Uri;

    sget v2, Lcom/ex/auto/InstallerActivity;->u:I

    new-instance v2, LT/T0;

    iget-object v3, v1, LT/H;->b:Ljava/lang/Object;

    check-cast v3, Lcom/ex/auto/InstallerActivity;

    const/4 v4, 0x5

    invoke-direct {v2, v3, v4}, LT/T0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v3, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :try_start_a
    invoke-virtual {v3, v0}, Lcom/ex/auto/InstallerActivity;->t(Landroid/net/Uri;)Ljava/io/File;

    move-result-object v0

    new-instance v2, LT/H;

    const/16 v4, 0xa

    invoke-direct {v2, v3, v4, v0}, LT/H;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {v3, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    invoke-static {v0}, Lcom/ex/auto/InstallerActivity;->s(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Success"

    const/4 v4, 0x1

    invoke-static {v0, v2, v4}, LO0/j;->x0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v2

    new-instance v5, LT/v;

    invoke-direct {v5, v3, v2, v0, v4}, LT/v;-><init>(Ljava/lang/Object;ZLjava/lang/Object;I)V

    invoke-virtual {v3, v5}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    goto :goto_15

    :catch_4
    move-exception v0

    new-instance v2, LT/H;

    const/16 v4, 0xb

    invoke-direct {v2, v3, v4, v0}, LT/H;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {v3, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_15
    return-void

    :pswitch_14
    sget-object v0, Lcom/ex/auto/HomeFloatingWidgetsService;->Q:Ljava/util/List;

    iget-object v0, v1, LT/H;->b:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lcom/ex/auto/HomeFloatingWidgetsService;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_b
    new-instance v0, LT/I1;

    invoke-direct {v0, v7}, LT/I1;-><init>(I)V

    const-string v3, "dumpsys activity activities 2>/dev/null | grep mResumedActivity"

    invoke-virtual {v0, v6, v3}, LT/I1;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LI0/f;->b(Ljava/lang/Object;)V

    const-string v3, "AppListActivity"

    const/4 v4, 0x0

    invoke-static {v0, v3, v4}, LO0/j;->x0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v3

    new-instance v5, LT/C1;

    const-string v6, "com.flyme.auto.launcher"

    invoke-static {v0, v6, v4}, LO0/j;->x0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-eqz v0, :cond_2b

    if-nez v3, :cond_2b

    const/4 v4, 0x1

    goto :goto_16

    :cond_2b
    const/4 v4, 0x0

    :goto_16
    invoke-direct {v5, v4, v3}, LT/C1;-><init>(ZZ)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    goto :goto_17

    :catchall_6
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "checkForegroundState: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "HomeFloatingWidgets"

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, LT/C1;

    const/4 v3, 0x0

    invoke-direct {v5, v3, v3}, LT/C1;-><init>(ZZ)V

    :goto_17
    iget-object v0, v2, Lcom/ex/auto/HomeFloatingWidgetsService;->c:Landroid/os/Handler;

    new-instance v3, LT/z;

    iget-object v4, v1, LT/H;->c:Ljava/lang/Object;

    check-cast v4, LT/F1;

    const/4 v6, 0x3

    invoke-direct {v3, v5, v2, v4, v6}, LT/z;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_15
    sget-object v0, Lcom/ex/auto/HomeFloatingWidgetsService;->Q:Ljava/util/List;

    iget-object v0, v1, LT/H;->b:Ljava/lang/Object;

    check-cast v0, Lcom/ex/auto/HomeFloatingWidgetsService;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v1, LT/H;->c:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto/16 :goto_18

    :sswitch_0
    const-string v3, "heating"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2c

    goto/16 :goto_18

    :cond_2c
    iget-object v2, v0, Lcom/ex/auto/HomeFloatingWidgetsService;->z:Landroid/view/View;

    if-eqz v2, :cond_36

    invoke-virtual {v0, v2}, Lcom/ex/auto/HomeFloatingWidgetsService;->s(Landroid/view/View;)V

    const/4 v3, 0x0

    iput-object v3, v0, Lcom/ex/auto/HomeFloatingWidgetsService;->z:Landroid/view/View;

    invoke-virtual {v0}, Lcom/ex/auto/HomeFloatingWidgetsService;->e()V

    goto/16 :goto_18

    :sswitch_1
    const/4 v3, 0x0

    const-string v4, "drive_regen"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2d

    goto/16 :goto_18

    :cond_2d
    iget-object v2, v0, Lcom/ex/auto/HomeFloatingWidgetsService;->u:Landroid/view/View;

    if-eqz v2, :cond_36

    invoke-virtual {v0, v2}, Lcom/ex/auto/HomeFloatingWidgetsService;->s(Landroid/view/View;)V

    iput-object v3, v0, Lcom/ex/auto/HomeFloatingWidgetsService;->u:Landroid/view/View;

    invoke-virtual {v0}, Lcom/ex/auto/HomeFloatingWidgetsService;->c()V

    goto/16 :goto_18

    :sswitch_2
    const/4 v3, 0x0

    const-string v4, "vent"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2e

    goto/16 :goto_18

    :cond_2e
    iget-object v2, v0, Lcom/ex/auto/HomeFloatingWidgetsService;->x:Landroid/view/View;

    if-eqz v2, :cond_36

    invoke-virtual {v0, v2}, Lcom/ex/auto/HomeFloatingWidgetsService;->s(Landroid/view/View;)V

    iput-object v3, v0, Lcom/ex/auto/HomeFloatingWidgetsService;->x:Landroid/view/View;

    invoke-virtual {v0}, Lcom/ex/auto/HomeFloatingWidgetsService;->j()V

    goto/16 :goto_18

    :sswitch_3
    const/4 v3, 0x0

    const-string v4, "temp"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2f

    goto/16 :goto_18

    :cond_2f
    iget-object v2, v0, Lcom/ex/auto/HomeFloatingWidgetsService;->w:Landroid/view/View;

    if-eqz v2, :cond_36

    invoke-virtual {v0, v2}, Lcom/ex/auto/HomeFloatingWidgetsService;->s(Landroid/view/View;)V

    iput-object v3, v0, Lcom/ex/auto/HomeFloatingWidgetsService;->w:Landroid/view/View;

    invoke-virtual {v0}, Lcom/ex/auto/HomeFloatingWidgetsService;->h()V

    goto/16 :goto_18

    :sswitch_4
    const/4 v3, 0x0

    const-string v4, "apps"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_30

    goto/16 :goto_18

    :cond_30
    iget-object v2, v0, Lcom/ex/auto/HomeFloatingWidgetsService;->A:Landroid/widget/GridLayout;

    if-eqz v2, :cond_36

    invoke-virtual {v0, v2}, Lcom/ex/auto/HomeFloatingWidgetsService;->s(Landroid/view/View;)V

    iput-object v3, v0, Lcom/ex/auto/HomeFloatingWidgetsService;->A:Landroid/widget/GridLayout;

    invoke-virtual {v0}, Lcom/ex/auto/HomeFloatingWidgetsService;->b()V

    goto/16 :goto_18

    :sswitch_5
    const/4 v3, 0x0

    const-string v4, "fan"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_31

    goto :goto_18

    :cond_31
    iget-object v2, v0, Lcom/ex/auto/HomeFloatingWidgetsService;->v:Landroid/view/View;

    if-eqz v2, :cond_36

    invoke-virtual {v0, v2}, Lcom/ex/auto/HomeFloatingWidgetsService;->s(Landroid/view/View;)V

    iput-object v3, v0, Lcom/ex/auto/HomeFloatingWidgetsService;->v:Landroid/view/View;

    invoke-virtual {v0}, Lcom/ex/auto/HomeFloatingWidgetsService;->d()V

    goto :goto_18

    :sswitch_6
    const-string v3, "volume"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_32

    goto :goto_18

    :cond_32
    iget-object v2, v0, Lcom/ex/auto/HomeFloatingWidgetsService;->B:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_36

    invoke-virtual {v0}, Lcom/ex/auto/HomeFloatingWidgetsService;->t()V

    invoke-virtual {v0}, Lcom/ex/auto/HomeFloatingWidgetsService;->k()V

    goto :goto_18

    :sswitch_7
    const-string v3, "sysinfo"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_33

    goto :goto_18

    :cond_33
    iget-object v2, v0, Lcom/ex/auto/HomeFloatingWidgetsService;->C:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_36

    iget-object v2, v0, Lcom/ex/auto/HomeFloatingWidgetsService;->H:LT/F1;

    if-eqz v2, :cond_34

    iget-object v3, v0, Lcom/ex/auto/HomeFloatingWidgetsService;->c:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_34
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/ex/auto/HomeFloatingWidgetsService;->H:LT/F1;

    invoke-virtual {v0}, Lcom/ex/auto/HomeFloatingWidgetsService;->p()V

    iget-object v3, v0, Lcom/ex/auto/HomeFloatingWidgetsService;->C:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Lcom/ex/auto/HomeFloatingWidgetsService;->s(Landroid/view/View;)V

    iput-object v2, v0, Lcom/ex/auto/HomeFloatingWidgetsService;->C:Landroid/widget/LinearLayout;

    iput-object v2, v0, Lcom/ex/auto/HomeFloatingWidgetsService;->F:Landroid/widget/TextView;

    iput-object v2, v0, Lcom/ex/auto/HomeFloatingWidgetsService;->G:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/ex/auto/HomeFloatingWidgetsService;->g()V

    goto :goto_18

    :sswitch_8
    const-string v3, "vent_fan"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_35

    goto :goto_18

    :cond_35
    iget-object v2, v0, Lcom/ex/auto/HomeFloatingWidgetsService;->y:Landroid/view/View;

    if-eqz v2, :cond_36

    invoke-virtual {v0, v2}, Lcom/ex/auto/HomeFloatingWidgetsService;->s(Landroid/view/View;)V

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/ex/auto/HomeFloatingWidgetsService;->y:Landroid/view/View;

    invoke-virtual {v0}, Lcom/ex/auto/HomeFloatingWidgetsService;->i()V

    :cond_36
    :goto_18
    return-void

    :pswitch_16
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, LT/V0;

    iget-object v3, v1, LT/H;->c:Ljava/lang/Object;

    check-cast v3, Lcom/ex/auto/MainActivity;

    iget-object v4, v1, LT/H;->b:Ljava/lang/Object;

    check-cast v4, Landroid/content/SharedPreferences;

    invoke-direct {v2, v3, v4}, LT/V0;-><init>(Lcom/ex/auto/MainActivity;Landroid/content/SharedPreferences;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    :pswitch_17
    iget-object v0, v1, LT/H;->c:Ljava/lang/Object;

    check-cast v0, LI0/i;

    iget-boolean v0, v0, LI0/i;->a:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-object v2, v1, LT/H;->b:Ljava/lang/Object;

    check-cast v2, LH0/l;

    invoke-interface {v2, v0}, LH0/l;->b(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :pswitch_18
    iget-object v0, v1, LT/H;->b:Ljava/lang/Object;

    check-cast v0, LH0/a;

    iget-object v2, v1, LT/H;->c:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    sget-object v3, LT/U0;->b:Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    :try_start_c
    invoke-interface {v0}, LH0/a;->a()Ljava/lang/Object;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    invoke-virtual {v3, v2}, Ljava/util/concurrent/ConcurrentHashMap$KeySetView;->remove(Ljava/lang/Object;)Z

    return-void

    :catchall_7
    move-exception v0

    move-object v4, v0

    invoke-virtual {v3, v2}, Ljava/util/concurrent/ConcurrentHashMap$KeySetView;->remove(Ljava/lang/Object;)Z

    throw v4

    :pswitch_19
    iget-object v0, v1, LT/H;->b:Ljava/lang/Object;

    check-cast v0, Lcom/ex/auto/CentralWatchdogService;

    iget-object v2, v1, LT/H;->c:Ljava/lang/Object;

    check-cast v2, Landroid/car/hardware/property/CarPropertyManager;

    :try_start_d
    invoke-static {v2}, LT/H1;->i(Landroid/car/hardware/property/CarPropertyManager;)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v0, Lcom/ex/auto/CentralWatchdogService;->w:Ljava/lang/Boolean;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_8

    const/4 v2, 0x0

    :goto_19
    iput-boolean v2, v0, Lcom/ex/auto/CentralWatchdogService;->x:Z

    goto :goto_1a

    :catchall_8
    const/4 v2, 0x0

    goto :goto_19

    :goto_1a
    return-void

    :pswitch_1a
    const/4 v2, 0x0

    iget-object v3, v1, LT/H;->b:Ljava/lang/Object;

    check-cast v3, Lcom/ex/auto/CentralWatchdogService;

    iget-object v4, v1, LT/H;->c:Ljava/lang/Object;

    check-cast v4, LH0/l;

    iget-object v5, v3, Lcom/ex/auto/CentralWatchdogService;->i:Landroid/car/hardware/property/CarPropertyManager;

    if-nez v5, :cond_37

    iget-object v5, v3, Lcom/ex/auto/CentralWatchdogService;->a:Landroid/os/Handler;

    new-instance v6, LT/t0;

    const/16 v7, 0x1c

    invoke-direct {v6, v3, v7}, LT/t0;-><init>(Lcom/ex/auto/CentralWatchdogService;I)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_37
    sget-object v5, LT/A4;->a:Ljava/util/HashMap;

    iget-object v5, v3, Lcom/ex/auto/CentralWatchdogService;->i:Landroid/car/hardware/property/CarPropertyManager;

    if-nez v5, :cond_38

    goto :goto_1b

    :cond_38
    const v2, 0x11400204

    invoke-static {v5, v2}, LT/A4;->k(Landroid/car/hardware/property/CarPropertyManager;I)Ljava/lang/Float;

    move-result-object v2

    if-nez v2, :cond_39

    const v6, 0x11600204

    invoke-static {v5, v6}, LT/A4;->k(Landroid/car/hardware/property/CarPropertyManager;I)Ljava/lang/Float;

    move-result-object v2

    if-nez v2, :cond_39

    const v6, 0x2140a6ac

    invoke-static {v5, v6}, LT/A4;->k(Landroid/car/hardware/property/CarPropertyManager;I)Ljava/lang/Float;

    move-result-object v2

    :cond_39
    :goto_1b
    if-eqz v2, :cond_3a

    invoke-virtual {v3}, Lcom/ex/auto/CentralWatchdogService;->M()Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v6

    invoke-interface {v5, v0, v6}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v0, v3, Lcom/ex/auto/CentralWatchdogService;->a:Landroid/os/Handler;

    new-instance v5, LT/t0;

    const/16 v6, 0x1d

    invoke-direct {v5, v3, v6}, LT/t0;-><init>(Lcom/ex/auto/CentralWatchdogService;I)V

    invoke-virtual {v0, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3a
    if-eqz v4, :cond_3c

    if-eqz v2, :cond_3b

    const/4 v3, 0x1

    goto :goto_1c

    :cond_3b
    const/4 v3, 0x0

    :goto_1c
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v4, v0}, LH0/l;->b(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3c
    return-void

    :pswitch_1b
    iget-object v0, v1, LT/H;->b:Ljava/lang/Object;

    check-cast v0, Landroid/car/hardware/property/CarPropertyManager;

    iget-object v2, v1, LT/H;->c:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    sget-object v3, Lcom/ex/auto/CentralWatchdogService;->d2:[I

    const-string v3, "CentralWatchdog"

    const-string v4, "recircGuard("

    const-wide/16 v5, 0x2bc

    :try_start_e
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V

    const/4 v5, 0x1

    invoke-static {v0, v5}, LT/H1;->t(Landroid/car/hardware/property/CarPropertyManager;Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "): recirc estava ligada \u2014 reaplicada"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_9

    goto :goto_1d

    :catchall_9
    move-exception v0

    const-string v5, ") falhou: "

    invoke-static {v4, v2, v5}, LM/d0;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0, v2, v3}, LM/d0;->r(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_1d
    return-void

    :pswitch_1c
    move v5, v4

    const/4 v2, 0x0

    const-string v3, "BanChecker"

    :try_start_f
    sget-object v0, LT/Y0;->a:LT/Y0;

    invoke-static {}, LT/Y0;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LO0/j;->X0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LO0/j;->E0(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3d

    :goto_1e
    goto/16 :goto_21

    :cond_3d
    invoke-static {}, LT/J;->c()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3e

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v6, "entries"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    goto :goto_1f

    :catch_5
    move-exception v0

    goto :goto_20

    :cond_3e
    :goto_1f
    if-eqz v4, :cond_43

    if-nez v2, :cond_3f

    goto :goto_21

    :cond_3f
    invoke-static {v0}, LT/J;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    const/4 v6, 0x0

    invoke-static {v6, v4}, LA/b;->i0(II)LL0/c;

    move-result-object v4

    instance-of v6, v4, Ljava/util/Collection;

    if-eqz v6, :cond_41

    move-object v6, v4

    check-cast v6, Ljava/util/Collection;

    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_41

    :cond_40
    const/4 v4, 0x0

    goto :goto_22

    :cond_41
    invoke-virtual {v4}, LL0/a;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_42
    move-object v6, v4

    check-cast v6, LL0/b;

    iget-boolean v6, v6, LL0/b;->c:Z

    if-eqz v6, :cond_40

    move-object v6, v4

    check-cast v6, LL0/b;

    invoke-virtual {v6}, LL0/b;->a()I

    move-result v6

    invoke-virtual {v2, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "hash"

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, LI0/f;->b(Ljava/lang/Object;)V

    invoke-static {v6}, LO0/j;->E0(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_42

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_5

    if-eqz v6, :cond_42

    goto :goto_1e

    :goto_20
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "recheckWhileBlocked: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_43
    :goto_21
    move v4, v5

    :goto_22
    if-nez v4, :cond_44

    iget-object v0, v1, LT/H;->b:Ljava/lang/Object;

    check-cast v0, Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "device_banned"

    const/4 v5, 0x0

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string v0, "recheckWhileBlocked: XDSN n\u00e3o est\u00e1 mais na banlist.json \u2014 desbloqueado"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23

    :cond_44
    const/4 v5, 0x0

    :goto_23
    sget-object v0, LT/J;->b:Landroid/os/Handler;

    new-instance v2, LT/I;

    iget-object v3, v1, LT/H;->c:Ljava/lang/Object;

    check-cast v3, LA/c;

    invoke-direct {v2, v3, v4, v5}, LT/I;-><init>(Ljava/lang/Object;ZI)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        -0x7d1b7b77 -> :sswitch_8
        -0x67930b05 -> :sswitch_7
        -0x305518e6 -> :sswitch_6
        0x18b13 -> :sswitch_5
        0x2dca72 -> :sswitch_4
        0x3643d4 -> :sswitch_3
        0x372cb5 -> :sswitch_2
        0x2b4e1d48 -> :sswitch_1
        0x2f6ec3f2 -> :sswitch_0
    .end sparse-switch
.end method
