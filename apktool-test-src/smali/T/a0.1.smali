.class public final synthetic LT/a0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, LT/a0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    const/16 v0, 0xbb8

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget v3, p0, LT/a0;->a:I

    packed-switch v3, :pswitch_data_0

    const-string v3, "SwcModeCtrl"

    const-string v4, "cancelPendingAaVoice: BACK desativado (investiga\u00e7\u00e3o) \u2014 topo da pilha: "

    :try_start_0
    const-string v5, "dumpsys activity activities 2>/dev/null | grep mResumedActivity"

    new-instance v6, LT/n;

    invoke-direct {v6, v2}, LT/n;-><init>(I)V

    invoke-static {v5, v0, v1, v6}, LT/m;->v(Ljava/lang/String;ILH0/l;LH0/p;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, LO0/j;->X0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "cancelPendingAaVoice falhou: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v3}, LM/d0;->n(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_0
    return-void

    :pswitch_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, LT/a0;

    const/16 v2, 0xc

    invoke-direct {v1, v2}, LT/a0;-><init>(I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    :pswitch_1
    const-wide/16 v0, 0x0

    sput-wide v0, LT/Y;->h:J

    sget-object v0, LT/Y;->g:Landroid/os/Handler;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v1, LT/a0;

    const/16 v2, 0xb

    invoke-direct {v1, v2}, LT/a0;-><init>(I)V

    const-wide/16 v2, 0x258

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_1
    return-void

    :pswitch_2
    sget-object v0, LT/B3;->l:Landroid/media/session/MediaController;

    if-eqz v0, :cond_1

    sget-object v1, LT/B3;->a:LT/B3;

    invoke-static {v0}, LT/B3;->j(Landroid/media/session/MediaController;)V

    :cond_1
    return-void

    :pswitch_3
    sget-object v0, LT/B3;->a:LT/B3;

    invoke-static {}, LT/B3;->e()V

    return-void

    :pswitch_4
    sget-object v0, LT/B3;->a:LT/B3;

    invoke-static {}, LT/B3;->e()V

    return-void

    :pswitch_5
    sget-boolean v0, LT/B3;->g:Z

    if-nez v0, :cond_2

    sget-object v0, LT/B3;->a:LT/B3;

    invoke-virtual {v0}, LT/B3;->h()V

    :cond_2
    return-void

    :pswitch_6
    sget-boolean v0, LT/B3;->g:Z

    if-nez v0, :cond_3

    sget-object v0, LT/B3;->a:LT/B3;

    invoke-static {}, LT/B3;->e()V

    :cond_3
    return-void

    :pswitch_7
    sget-object v0, LT/B3;->a:LT/B3;

    invoke-virtual {v0}, LT/B3;->h()V

    return-void

    :pswitch_8
    sget-boolean v0, LT/B3;->g:Z

    if-nez v0, :cond_4

    sget-object v0, LT/B3;->l:Landroid/media/session/MediaController;

    if-eqz v0, :cond_4

    sget-object v1, LT/B3;->a:LT/B3;

    invoke-static {v0}, LT/B3;->j(Landroid/media/session/MediaController;)V

    :cond_4
    return-void

    :pswitch_9
    sget-boolean v0, LT/B3;->g:Z

    if-nez v0, :cond_5

    sget-object v0, LT/B3;->a:LT/B3;

    invoke-static {}, LT/B3;->e()V

    :cond_5
    return-void

    :pswitch_a
    sget-object v3, Lcom/ex/auto/CentralWatchdogService;->d2:[I

    const-string v3, "CentralWatchdog"

    const-string v4, "doorAudioPause: keyevent 127 OK, sa\u00edda=\""

    :try_start_1
    const-string v5, "input keyevent 127"

    new-instance v6, LT/n;

    invoke-direct {v6, v2}, LT/n;-><init>(I)V

    invoke-static {v5, v0, v1, v6}, LT/m;->v(Ljava/lang/String;ILH0/l;LH0/p;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x22

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "doorAudioPause: keyevent 127 falhou: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v3}, LM/d0;->n(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_2
    return-void

    :pswitch_b
    sget-object v0, LT/b0;->a:LT/b0;

    :cond_6
    sget-boolean v3, LT/b0;->d:Z

    if-eqz v3, :cond_1c

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v3

    const-wide/16 v4, 0x3a98

    if-eqz v3, :cond_1b

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v6

    if-nez v6, :cond_7

    goto/16 :goto_f

    :cond_7
    :try_start_2
    const-string v6, "CarPlay"

    sget-object v7, LT/b0;->b:Ljava/util/UUID;

    invoke-virtual {v3, v6, v7}, Landroid/bluetooth/BluetoothAdapter;->listenUsingRfcommWithServiceRecord(Ljava/lang/String;Ljava/util/UUID;)Landroid/bluetooth/BluetoothServerSocket;

    move-result-object v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_b

    :try_start_3
    monitor-enter v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    sget-boolean v6, LT/b0;->d:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_a

    if-nez v6, :cond_a

    :try_start_5
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothServerSocket;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v3, :cond_8

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothServerSocket;->close()V

    :cond_8
    monitor-enter v0

    sget-object v2, LT/b0;->c:Landroid/bluetooth/BluetoothServerSocket;

    if-ne v2, v3, :cond_9

    sput-object v1, LT/b0;->c:Landroid/bluetooth/BluetoothServerSocket;

    :cond_9
    :goto_3
    monitor-exit v0

    goto/16 :goto_10

    :catchall_1
    move-exception v6

    goto/16 :goto_a

    :cond_a
    :try_start_7
    sput-object v3, LT/b0;->c:Landroid/bluetooth/BluetoothServerSocket;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_a

    :try_start_8
    monitor-exit v0

    sget-object v6, LT/L3;->a:LT/L3;

    const-string v8, "CarplaySdp"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "registro SDP publicado (CarPlay / "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v7, 0x29

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v8, v7}, LT/L3;->b(Ljava/lang/String;Ljava/lang/String;)V

    :catchall_2
    :goto_4
    move v6, v2

    :cond_b
    sget-boolean v7, LT/b0;->d:Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    if-eqz v7, :cond_12

    const/16 v7, 0x12c

    if-ge v6, v7, :cond_12

    :try_start_9
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothServerSocket;->accept()Landroid/bluetooth/BluetoothSocket;

    move-result-object v6
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    invoke-virtual {v6}, Landroid/bluetooth/BluetoothSocket;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v7

    if-eqz v7, :cond_c

    invoke-virtual {v7}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v7
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    goto :goto_5

    :catchall_3
    :cond_c
    move-object v7, v1

    :goto_5
    :try_start_b
    const-string v8, "CarplaySdp"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "conex\u00e3o RFCOMM de "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v7, :cond_d

    const-string v7, "?"

    goto :goto_6

    :catch_2
    move v6, v2

    goto :goto_7

    :cond_d
    :goto_6
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " \u2014 fechando (o stack do vendor assume)"

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :try_start_c
    invoke-virtual {v6}, Landroid/bluetooth/BluetoothSocket;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    goto :goto_4

    :catch_3
    :goto_7
    :try_start_d
    sget-boolean v7, LT/b0;->d:Z
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    if-nez v7, :cond_f

    if-eqz v3, :cond_e

    :try_start_e
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothServerSocket;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    :catchall_4
    :cond_e
    monitor-enter v0

    :try_start_f
    sget-object v2, LT/b0;->c:Landroid/bluetooth/BluetoothServerSocket;

    if-ne v2, v3, :cond_9

    sput-object v1, LT/b0;->c:Landroid/bluetooth/BluetoothServerSocket;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    goto :goto_3

    :catchall_5
    move-exception v1

    monitor-exit v0

    throw v1

    :cond_f
    const/4 v7, 0x1

    add-int/2addr v6, v7

    if-ne v6, v7, :cond_10

    :try_start_10
    const-string v7, "CarplaySdp"

    const-string v8, "accept() estourou (normal nesta pilha) \u2014 reciclando, registro segue no ar"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    const-wide/16 v7, 0x3e8

    invoke-static {v7, v8}, LT/b0;->a(J)Z

    move-result v7
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    if-nez v7, :cond_b

    if-eqz v3, :cond_11

    :try_start_11
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothServerSocket;->close()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    :catchall_6
    :cond_11
    monitor-enter v0

    :try_start_12
    sget-object v2, LT/b0;->c:Landroid/bluetooth/BluetoothServerSocket;

    if-ne v2, v3, :cond_9

    sput-object v1, LT/b0;->c:Landroid/bluetooth/BluetoothServerSocket;
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_7

    goto/16 :goto_3

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1

    :cond_12
    :try_start_13
    sget-boolean v6, LT/b0;->d:Z

    if-eqz v6, :cond_13

    const-string v6, "CarplaySdp"

    const-string v7, "accept() falhou 300 vezes seguidas \u2014 republicando o registro"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    :cond_13
    if-eqz v3, :cond_14

    :try_start_14
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothServerSocket;->close()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_8

    :catchall_8
    :cond_14
    monitor-enter v0

    :try_start_15
    sget-object v6, LT/b0;->c:Landroid/bluetooth/BluetoothServerSocket;

    if-ne v6, v3, :cond_15

    sput-object v1, LT/b0;->c:Landroid/bluetooth/BluetoothServerSocket;
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_9

    goto :goto_8

    :catchall_9
    move-exception v1

    goto :goto_9

    :cond_15
    :goto_8
    monitor-exit v0

    goto :goto_b

    :goto_9
    monitor-exit v0

    throw v1

    :catchall_a
    move-exception v6

    :try_start_16
    monitor-exit v0

    throw v6
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_1

    :catchall_b
    move-exception v6

    move-object v3, v1

    :goto_a
    :try_start_17
    sget-boolean v7, LT/b0;->d:Z
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_10

    if-nez v7, :cond_17

    if-eqz v3, :cond_16

    :try_start_18
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothServerSocket;->close()V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_c

    :catchall_c
    :cond_16
    monitor-enter v0

    :try_start_19
    sget-object v2, LT/b0;->c:Landroid/bluetooth/BluetoothServerSocket;

    if-ne v2, v3, :cond_9

    sput-object v1, LT/b0;->c:Landroid/bluetooth/BluetoothServerSocket;
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_d

    goto/16 :goto_3

    :catchall_d
    move-exception v1

    monitor-exit v0

    throw v1

    :cond_17
    :try_start_1a
    const-string v7, "CarplaySdp"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "an\u00fancio caiu ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ") \u2014 retentando"

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_10

    if-eqz v3, :cond_18

    :try_start_1b
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothServerSocket;->close()V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_e

    :catchall_e
    :cond_18
    monitor-enter v0

    :try_start_1c
    sget-object v6, LT/b0;->c:Landroid/bluetooth/BluetoothServerSocket;

    if-ne v6, v3, :cond_15

    sput-object v1, LT/b0;->c:Landroid/bluetooth/BluetoothServerSocket;
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_f

    goto :goto_8

    :catchall_f
    move-exception v1

    goto :goto_c

    :goto_b
    invoke-static {v4, v5}, LT/b0;->a(J)Z

    move-result v3

    if-nez v3, :cond_6

    goto :goto_10

    :goto_c
    monitor-exit v0

    throw v1

    :catchall_10
    move-exception v2

    if-eqz v3, :cond_19

    :try_start_1d
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothServerSocket;->close()V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_11

    :catchall_11
    :cond_19
    monitor-enter v0

    :try_start_1e
    sget-object v4, LT/b0;->c:Landroid/bluetooth/BluetoothServerSocket;

    if-ne v4, v3, :cond_1a

    sput-object v1, LT/b0;->c:Landroid/bluetooth/BluetoothServerSocket;
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_12

    goto :goto_d

    :catchall_12
    move-exception v1

    goto :goto_e

    :cond_1a
    :goto_d
    monitor-exit v0

    throw v2

    :goto_e
    monitor-exit v0

    throw v1

    :cond_1b
    :goto_f
    sget-object v3, LT/L3;->a:LT/L3;

    const-string v6, "CarplaySdp"

    const-string v7, "Bluetooth indispon\u00edvel \u2014 nova tentativa em 15s"

    invoke-virtual {v3, v6, v7}, LT/L3;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v4, v5}, LT/b0;->a(J)Z

    move-result v3

    if-nez v3, :cond_6

    :cond_1c
    :goto_10
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
.end method
