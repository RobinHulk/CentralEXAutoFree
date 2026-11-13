.class public final synthetic LT/R3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/ex/auto/PhoneSyncService;


# direct methods
.method public synthetic constructor <init>(Lcom/ex/auto/PhoneSyncService;I)V
    .locals 0

    iput p2, p0, LT/R3;->a:I

    iput-object p1, p0, LT/R3;->b:Lcom/ex/auto/PhoneSyncService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget v2, p0, LT/R3;->a:I

    packed-switch v2, :pswitch_data_0

    iget-object v2, p0, LT/R3;->b:Lcom/ex/auto/PhoneSyncService;

    :goto_0
    iget-boolean v3, v2, Lcom/ex/auto/PhoneSyncService;->a:Z

    if-eqz v3, :cond_5

    :try_start_0
    invoke-virtual {v2}, Lcom/ex/auto/PhoneSyncService;->n()Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, v2, Lcom/ex/auto/PhoneSyncService;->f:Landroid/car/hardware/property/CarPropertyManager;

    if-nez v4, :cond_1

    :cond_0
    move-object v4, v1

    goto :goto_1

    :cond_1
    const v5, 0x25401036

    invoke-static {v4, v5, v0}, LT/U;->b(Landroid/car/hardware/property/CarPropertyManager;II)Ljava/lang/Float;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :goto_1
    invoke-virtual {v2}, Lcom/ex/auto/PhoneSyncService;->l()Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-object v8, v2, Lcom/ex/auto/PhoneSyncService;->k:Ljava/lang/Object;

    monitor-enter v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_2

    :try_start_1
    iget-object v9, v2, Lcom/ex/auto/PhoneSyncService;->l:Ljava/lang/Integer;

    invoke-virtual {v3, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    iput-object v3, v2, Lcom/ex/auto/PhoneSyncService;->l:Ljava/lang/Integer;

    iput-wide v6, v2, Lcom/ex/auto/PhoneSyncService;->m:J

    goto :goto_2

    :catchall_0
    move-exception v3

    goto :goto_3

    :cond_2
    :goto_2
    if-eqz v4, :cond_3

    iget-object v3, v2, Lcom/ex/auto/PhoneSyncService;->n:Ljava/lang/Integer;

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    iput-object v4, v2, Lcom/ex/auto/PhoneSyncService;->n:Ljava/lang/Integer;

    iput-wide v6, v2, Lcom/ex/auto/PhoneSyncService;->o:J

    :cond_3
    if-eqz v5, :cond_4

    iget-object v3, v2, Lcom/ex/auto/PhoneSyncService;->p:Ljava/lang/Boolean;

    invoke-virtual {v5, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    iput-object v5, v2, Lcom/ex/auto/PhoneSyncService;->p:Ljava/lang/Boolean;

    iput-wide v6, v2, Lcom/ex/auto/PhoneSyncService;->q:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :goto_3
    :try_start_2
    monitor-exit v8

    throw v3

    :cond_4
    :goto_4
    monitor-exit v8
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    const-wide/16 v3, 0xbb8

    :try_start_3
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    :cond_5
    return-void

    :pswitch_0
    iget-object v0, p0, LT/R3;->b:Lcom/ex/auto/PhoneSyncService;

    sget-boolean v2, Lcom/ex/auto/PhoneSyncService;->v:Z

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_4
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_5

    :catch_2
    move-object v2, v1

    :goto_5
    const-string v3, "PhoneSyncService"

    if-nez v2, :cond_6

    const-string v0, "sem adaptador BT \u2014 sync s\u00f3 por WiFi"

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    :cond_6
    const-string v4, "b5b9a1e0-3c2f-4d6a-8f4e-7a2b9c1d0e5f"

    invoke-static {v4}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v4

    :goto_6
    iget-boolean v5, v0, Lcom/ex/auto/PhoneSyncService;->a:Z

    if-eqz v5, :cond_b

    const-wide/16 v5, 0x3a98

    :try_start_5
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v7

    if-nez v7, :cond_8

    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catch_3
    :cond_7
    :goto_7
    iput-object v1, v0, Lcom/ex/auto/PhoneSyncService;->c:Landroid/bluetooth/BluetoothServerSocket;

    goto :goto_6

    :catchall_1
    move-exception v2

    goto :goto_b

    :catch_4
    move-exception v7

    goto :goto_a

    :cond_8
    :try_start_6
    const-string v7, "TelaPretaSync"

    invoke-virtual {v2, v7, v4}, Landroid/bluetooth/BluetoothAdapter;->listenUsingInsecureRfcommWithServiceRecord(Ljava/lang/String;Ljava/util/UUID;)Landroid/bluetooth/BluetoothServerSocket;

    move-result-object v7

    iput-object v7, v0, Lcom/ex/auto/PhoneSyncService;->c:Landroid/bluetooth/BluetoothServerSocket;

    const-string v8, "RFCOMM sync ouvindo (TelaPretaSync)"

    invoke-static {v3, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_8
    iget-boolean v8, v0, Lcom/ex/auto/PhoneSyncService;->a:Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v8, :cond_a

    :try_start_7
    invoke-virtual {v7}, Landroid/bluetooth/BluetoothServerSocket;->accept()Landroid/bluetooth/BluetoothSocket;

    move-result-object v8
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-nez v8, :cond_9

    goto :goto_9

    :cond_9
    :try_start_8
    iget-object v9, v0, Lcom/ex/auto/PhoneSyncService;->d:Ljava/util/concurrent/ExecutorService;

    new-instance v10, LT/H;

    const/16 v11, 0x19

    invoke-direct {v10, v8, v11, v0}, LT/H;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-interface {v9, v10}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_8

    :catch_5
    :cond_a
    :goto_9
    :try_start_9
    invoke-virtual {v7}, Landroid/bluetooth/BluetoothServerSocket;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_7

    :goto_a
    :try_start_a
    iget-boolean v8, v0, Lcom/ex/auto/PhoneSyncService;->a:Z

    if-eqz v8, :cond_7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "serveBt: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " \u2014 retry em 15 s"

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :try_start_b
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_b} :catch_6
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto :goto_7

    :catch_6
    iput-object v1, v0, Lcom/ex/auto/PhoneSyncService;->c:Landroid/bluetooth/BluetoothServerSocket;

    goto :goto_c

    :goto_b
    iput-object v1, v0, Lcom/ex/auto/PhoneSyncService;->c:Landroid/bluetooth/BluetoothServerSocket;

    throw v2

    :cond_b
    :goto_c
    return-void

    :pswitch_1
    iget-object v2, p0, LT/R3;->b:Lcom/ex/auto/PhoneSyncService;

    sget-boolean v3, Lcom/ex/auto/PhoneSyncService;->v:Z

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "PhoneSyncService"

    :try_start_c
    new-instance v4, Ljava/net/ServerSocket;

    invoke-direct {v4}, Ljava/net/ServerSocket;-><init>()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_8
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    :try_start_d
    invoke-virtual {v4, v0}, Ljava/net/ServerSocket;->setReuseAddress(Z)V

    new-instance v0, Ljava/net/InetSocketAddress;

    const v5, 0xbab9

    invoke-direct {v0, v5}, Ljava/net/InetSocketAddress;-><init>(I)V

    invoke-virtual {v4, v0}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;)V

    iput-object v4, v2, Lcom/ex/auto/PhoneSyncService;->b:Ljava/net/ServerSocket;

    const-string v0, "HTTP sync em 0.0.0.0:47801"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_d
    iget-boolean v0, v2, Lcom/ex/auto/PhoneSyncService;->a:Z
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    if-eqz v0, :cond_d

    :try_start_e
    invoke-virtual {v4}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_7
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    goto :goto_e

    :catchall_2
    move-exception v0

    goto :goto_10

    :catch_7
    move-object v0, v1

    :goto_e
    if-nez v0, :cond_c

    goto :goto_d

    :cond_c
    :try_start_f
    iget-object v5, v2, Lcom/ex/auto/PhoneSyncService;->d:Ljava/util/concurrent/ExecutorService;

    new-instance v6, LT/H;

    const/16 v7, 0x1a

    invoke-direct {v6, v2, v7, v0}, LT/H;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-interface {v5, v6}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    goto :goto_d

    :cond_d
    :try_start_10
    invoke-static {v4, v1}, LA/b;->m(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_8
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    :cond_e
    :goto_f
    iput-object v1, v2, Lcom/ex/auto/PhoneSyncService;->b:Ljava/net/ServerSocket;

    goto :goto_12

    :catchall_3
    move-exception v0

    goto :goto_13

    :catch_8
    move-exception v0

    goto :goto_11

    :goto_10
    :try_start_11
    throw v0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    :catchall_4
    move-exception v5

    :try_start_12
    invoke-static {v4, v0}, LA/b;->m(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v5
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_8
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    :goto_11
    :try_start_13
    iget-boolean v4, v2, Lcom/ex/auto/PhoneSyncService;->a:Z

    if-eqz v4, :cond_e

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "serveTcp: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    goto :goto_f

    :goto_12
    return-void

    :goto_13
    iput-object v1, v2, Lcom/ex/auto/PhoneSyncService;->b:Ljava/net/ServerSocket;

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
