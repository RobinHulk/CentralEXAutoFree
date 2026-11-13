.class public final synthetic LT/z0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/ex/auto/CentralWatchdogService;


# direct methods
.method public synthetic constructor <init>(Lcom/ex/auto/CentralWatchdogService;I)V
    .locals 0

    iput p2, p0, LT/z0;->a:I

    iput-object p1, p0, LT/z0;->b:Lcom/ex/auto/CentralWatchdogService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "CentralWatchdog"

    const/4 v3, 0x0

    iget v4, p0, LT/z0;->a:I

    packed-switch v4, :pswitch_data_0

    const-string v0, "wifi_reconnected"

    iget-object v1, p0, LT/z0;->b:Lcom/ex/auto/CentralWatchdogService;

    invoke-virtual {v1, v0}, Lcom/ex/auto/CentralWatchdogService;->v(Ljava/lang/String;)V

    return-void

    :pswitch_0
    iget-object v0, p0, LT/z0;->b:Lcom/ex/auto/CentralWatchdogService;

    invoke-static {v0}, LA/b;->V(Landroid/content/Context;)V

    return-void

    :pswitch_1
    iget-object v1, p0, LT/z0;->b:Lcom/ex/auto/CentralWatchdogService;

    const v2, 0x7f0f0384

    :try_start_0
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void

    :pswitch_2
    iget-object v1, p0, LT/z0;->b:Lcom/ex/auto/CentralWatchdogService;

    :try_start_1
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "wifi"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "null cannot be cast to non-null type android.net.wifi.WifiManager"

    invoke-static {v4, v5}, LI0/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v7, v1, Lcom/ex/auto/CentralWatchdogService;->z0:J

    sub-long v7, v5, v7

    iget-wide v9, v1, Lcom/ex/auto/CentralWatchdogService;->A0:J

    cmp-long v7, v7, v9

    if-gez v7, :cond_0

    move v7, v0

    goto :goto_0

    :cond_0
    move v7, v3

    :goto_0
    if-nez v7, :cond_1

    invoke-virtual {v1}, Lcom/ex/auto/CentralWatchdogService;->o()Z

    move-result v8

    if-eqz v8, :cond_1

    iput-wide v5, v1, Lcom/ex/auto/CentralWatchdogService;->z0:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    sget-object v0, LT/L3;->a:LT/L3;

    const-string v4, "\u00edcone WiFi: N\u00c3O liguei \u2014 h\u00e1 celular no ap0 (sess\u00e3o em curso). Toque de novo pra ligar assim mesmo"

    invoke-virtual {v0, v2, v4}, LT/L3;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/ex/auto/CentralWatchdogService;->a:Landroid/os/Handler;

    new-instance v4, LT/z0;

    const/16 v5, 0x15

    invoke-direct {v4, v1, v5}, LT/z0;-><init>(Lcom/ex/auto/CentralWatchdogService;I)V

    invoke-virtual {v0, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :goto_1
    move v0, v3

    goto :goto_5

    :catch_0
    move-exception v0

    goto :goto_4

    :goto_2
    move-object v11, v3

    move v3, v0

    move-object v0, v11

    goto :goto_4

    :cond_1
    if-eqz v7, :cond_2

    :try_start_3
    sget-object v3, LT/L3;->a:LT/L3;

    const-string v5, "\u00edcone WiFi: ligando mesmo com sess\u00e3o no ap0 (confirmado pelo 2\u00ba toque)"

    invoke-virtual {v3, v2, v5}, LT/L3;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :catch_1
    move-exception v3

    goto :goto_2

    :cond_2
    :goto_3
    invoke-virtual {v4, v0}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_5

    :goto_4
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "statusWifiApplyReceiver: falha ao ligar WiFi: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v4, v2}, LM/d0;->n(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    :goto_5
    if-eqz v0, :cond_4

    iget-object v0, v1, Lcom/ex/auto/CentralWatchdogService;->a:Landroid/os/Handler;

    new-instance v2, LT/z0;

    const/16 v3, 0x16

    invoke-direct {v2, v1, v3}, LT/z0;-><init>(Lcom/ex/auto/CentralWatchdogService;I)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_4
    return-void

    :pswitch_3
    sget-object v0, LT/Y0;->a:LT/Y0;

    sget-object v1, Lcom/ex/auto/CentralWatchdogService;->d2:[I

    iget-object v1, p0, LT/z0;->b:Lcom/ex/auto/CentralWatchdogService;

    invoke-virtual {v1}, Lcom/ex/auto/CentralWatchdogService;->M()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-virtual {v0, v1}, LT/Y0;->d(Landroid/content/SharedPreferences;)I

    return-void

    :pswitch_4
    iget-object v0, p0, LT/z0;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-object v1, Lcom/ex/auto/CentralWatchdogService;->d2:[I

    sget-boolean v1, Lcom/ex/auto/CentralWatchdogService;->f2:Z

    if-nez v1, :cond_5

    goto :goto_6

    :cond_5
    sget-boolean v1, LT/E3;->a:Z

    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->M()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-static {v0, v1}, LT/E3;->a(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    sget-boolean v1, LT/J;->a:Z

    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->M()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-static {v0, v1}, LT/J;->a(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    sget-object v1, LT/Y0;->a:LT/Y0;

    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->M()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-static {v1}, LT/Y0;->f(Landroid/content/SharedPreferences;)Z

    move-result v1

    if-eqz v1, :cond_6

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, LT/z0;

    const/16 v3, 0x13

    invoke-direct {v2, v0, v3}, LT/z0;-><init>(Lcom/ex/auto/CentralWatchdogService;I)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :cond_6
    :goto_6
    return-void

    :pswitch_5
    iget-object v0, p0, LT/z0;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-object v1, Lcom/ex/auto/CentralWatchdogService;->d2:[I

    sget-boolean v1, Lcom/ex/auto/CentralWatchdogService;->f2:Z

    if-eqz v1, :cond_7

    invoke-static {v0}, Lcom/ex/auto/CentralWatchdogService;->A0(Lcom/ex/auto/CentralWatchdogService;)V

    :cond_7
    return-void

    :pswitch_6
    iget-object v0, p0, LT/z0;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-object v1, Lcom/ex/auto/CentralWatchdogService;->d2:[I

    sget-boolean v1, Lcom/ex/auto/CentralWatchdogService;->f2:Z

    if-eqz v1, :cond_8

    iget-object v1, v0, Lcom/ex/auto/CentralWatchdogService;->M0:Ljava/lang/String;

    new-instance v2, Ljava/lang/Thread;

    new-instance v3, LT/f0;

    const-string v4, "ACL_CONNECTED"

    invoke-direct {v3, v1, v0, v4}, LT/f0;-><init>(Ljava/lang/String;Lcom/ex/auto/CentralWatchdogService;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    :cond_8
    return-void

    :pswitch_7
    iget-object v0, p0, LT/z0;->b:Lcom/ex/auto/CentralWatchdogService;

    iput-object v1, v0, Lcom/ex/auto/CentralWatchdogService;->M1:LT/z0;

    invoke-virtual {v0, v3}, Lcom/ex/auto/CentralWatchdogService;->u0(Z)V

    return-void

    :pswitch_8
    iget-object v0, p0, LT/z0;->b:Lcom/ex/auto/CentralWatchdogService;

    :try_start_4
    const-string v1, "AP sempre aberto (caiu)"

    sget-object v2, Lcom/ex/auto/CentralWatchdogService;->d2:[I

    invoke-virtual {v0, v1}, Lcom/ex/auto/CentralWatchdogService;->K(Ljava/lang/String;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    return-void

    :pswitch_9
    iget-object v0, p0, LT/z0;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-object v1, Lcom/ex/auto/CentralWatchdogService;->d2:[I

    sget-boolean v1, Lcom/ex/auto/CentralWatchdogService;->f2:Z

    if-eqz v1, :cond_9

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, LT/z0;

    const/16 v3, 0xe

    invoke-direct {v2, v0, v3}, LT/z0;-><init>(Lcom/ex/auto/CentralWatchdogService;I)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :cond_9
    return-void

    :pswitch_a
    iget-object v0, p0, LT/z0;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-object v1, Lcom/ex/auto/CentralWatchdogService;->d2:[I

    sget-boolean v1, Lcom/ex/auto/CentralWatchdogService;->f2:Z

    if-eqz v1, :cond_a

    iget-boolean v1, v0, Lcom/ex/auto/CentralWatchdogService;->G0:Z

    if-eqz v1, :cond_a

    new-instance v1, LT/e0;

    const/4 v2, 0x3

    invoke-direct {v1, v0, v2}, LT/e0;-><init>(Lcom/ex/auto/CentralWatchdogService;I)V

    invoke-static {v1}, LT/U0;->a(LH0/a;)V

    :cond_a
    return-void

    :pswitch_b
    iget-object v0, p0, LT/z0;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-object v2, Lcom/ex/auto/CentralWatchdogService;->d2:[I

    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->M()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v4, "recirc_guard_enabled"

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_b

    iput v3, v0, Lcom/ex/auto/CentralWatchdogService;->s:I

    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->Q()V

    goto :goto_7

    :cond_b
    iget-object v2, v0, Lcom/ex/auto/CentralWatchdogService;->a:Landroid/os/Handler;

    iget-object v3, v0, Lcom/ex/auto/CentralWatchdogService;->K1:LT/D0;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :try_start_5
    iget-object v2, v0, Lcom/ex/auto/CentralWatchdogService;->r:Landroid/car/hardware/property/CarPropertyManager;

    if-eqz v2, :cond_c

    iget-object v3, v0, Lcom/ex/auto/CentralWatchdogService;->L1:LT/E0;

    invoke-virtual {v2, v3}, Landroid/car/hardware/property/CarPropertyManager;->unregisterCallback(Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    :cond_c
    :try_start_6
    iget-object v2, v0, Lcom/ex/auto/CentralWatchdogService;->q:Landroid/car/Car;

    if-eqz v2, :cond_d

    invoke-virtual {v2}, Landroid/car/Car;->disconnect()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :catchall_3
    :cond_d
    iput-object v1, v0, Lcom/ex/auto/CentralWatchdogService;->q:Landroid/car/Car;

    iput-object v1, v0, Lcom/ex/auto/CentralWatchdogService;->r:Landroid/car/hardware/property/CarPropertyManager;

    :goto_7
    return-void

    :pswitch_c
    sget-object v0, Lcom/ex/auto/CentralWatchdogService;->d2:[I

    iget-object v0, p0, LT/z0;->b:Lcom/ex/auto/CentralWatchdogService;

    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->b0()V

    return-void

    :pswitch_d
    iget-object v0, p0, LT/z0;->b:Lcom/ex/auto/CentralWatchdogService;

    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->M()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "swc_media_control_enabled"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_e

    sget-object v1, LT/B3;->a:LT/B3;

    invoke-virtual {v1, v0}, LT/B3;->o(Landroid/content/Context;)V

    iget-boolean v0, v0, Lcom/ex/auto/CentralWatchdogService;->z1:Z

    invoke-static {v0}, LT/B3;->n(Z)V

    goto :goto_8

    :cond_e
    sget-object v0, LT/B3;->a:LT/B3;

    invoke-virtual {v0}, LT/B3;->p()V

    :goto_8
    return-void

    :pswitch_e
    iget-object v0, p0, LT/z0;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-object v2, Lcom/ex/auto/CentralWatchdogService;->d2:[I

    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->M()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v4, "rear_cam_turn_signal_enabled"

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_f

    iput v3, v0, Lcom/ex/auto/CentralWatchdogService;->F:I

    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->P()V

    goto :goto_9

    :cond_f
    :try_start_7
    iget-object v2, v0, Lcom/ex/auto/CentralWatchdogService;->E:Landroid/car/hardware/property/CarPropertyManager;

    if-eqz v2, :cond_10

    iget-object v4, v0, Lcom/ex/auto/CentralWatchdogService;->N1:LT/E0;

    invoke-virtual {v2, v4}, Landroid/car/hardware/property/CarPropertyManager;->unregisterCallback(Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    :catchall_4
    :cond_10
    :try_start_8
    iget-object v2, v0, Lcom/ex/auto/CentralWatchdogService;->D:Landroid/car/Car;

    if-eqz v2, :cond_11

    invoke-virtual {v2}, Landroid/car/Car;->disconnect()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    :catchall_5
    :cond_11
    iput-object v1, v0, Lcom/ex/auto/CentralWatchdogService;->D:Landroid/car/Car;

    iput-object v1, v0, Lcom/ex/auto/CentralWatchdogService;->E:Landroid/car/hardware/property/CarPropertyManager;

    iput-object v1, v0, Lcom/ex/auto/CentralWatchdogService;->G:Ljava/lang/Integer;

    iget-object v2, v0, Lcom/ex/auto/CentralWatchdogService;->M1:LT/z0;

    if-eqz v2, :cond_12

    iget-object v4, v0, Lcom/ex/auto/CentralWatchdogService;->a:Landroid/os/Handler;

    invoke-virtual {v4, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-object v1, v0, Lcom/ex/auto/CentralWatchdogService;->M1:LT/z0;

    :cond_12
    invoke-virtual {v0, v3}, Lcom/ex/auto/CentralWatchdogService;->u0(Z)V

    :goto_9
    return-void

    :pswitch_f
    const-string v0, "quick_access"

    iget-object v1, p0, LT/z0;->b:Lcom/ex/auto/CentralWatchdogService;

    invoke-virtual {v1, v0}, Lcom/ex/auto/CentralWatchdogService;->v(Ljava/lang/String;)V

    return-void

    :pswitch_10
    iget-object v0, p0, LT/z0;->b:Lcom/ex/auto/CentralWatchdogService;

    iget-object v1, v0, Lcom/ex/auto/CentralWatchdogService;->g:Landroid/car/hardware/property/CarPropertyManager;

    if-eqz v1, :cond_13

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, LT/t0;

    const/16 v3, 0x1b

    invoke-direct {v2, v0, v3}, LT/t0;-><init>(Lcom/ex/auto/CentralWatchdogService;I)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_a

    :cond_13
    const-string v0, "triggerDriveRegenApply: cpm continua null ap\u00f3s init"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_a
    return-void

    :pswitch_11
    iget-object v0, p0, LT/z0;->b:Lcom/ex/auto/CentralWatchdogService;

    iget-object v1, v0, Lcom/ex/auto/CentralWatchdogService;->g:Landroid/car/hardware/property/CarPropertyManager;

    if-nez v1, :cond_14

    goto :goto_b

    :cond_14
    const-string v1, "DriveRegen: floater iniciou, liberando Car"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->F()V

    :goto_b
    return-void

    :pswitch_12
    iget-object v0, p0, LT/z0;->b:Lcom/ex/auto/CentralWatchdogService;

    :try_start_9
    const-string v1, "celular por outro canal (sync por Bluetooth)"

    sget-object v2, Lcom/ex/auto/CentralWatchdogService;->d2:[I

    invoke-virtual {v0, v1}, Lcom/ex/auto/CentralWatchdogService;->K(Ljava/lang/String;)Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    :catchall_6
    return-void

    :pswitch_13
    iget-object v0, p0, LT/z0;->b:Lcom/ex/auto/CentralWatchdogService;

    invoke-static {v0}, Lcom/ex/auto/CentralWatchdogService;->e(Lcom/ex/auto/CentralWatchdogService;)V

    return-void

    :pswitch_14
    sget-object v0, Lcom/ex/auto/CentralWatchdogService;->d2:[I

    iget-object v0, p0, LT/z0;->b:Lcom/ex/auto/CentralWatchdogService;

    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->M()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v4, "ap_sempre_aberto"

    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_15

    goto :goto_d

    :cond_15
    invoke-static {}, Lcom/ex/auto/CentralWatchdogService;->p()Z

    move-result v1

    if-eqz v1, :cond_16

    const-string v3, "j\u00e1 no ar \u2014 nada a fazer"

    goto :goto_c

    :cond_16
    const-string v3, "fechado \u2014 vou reabrir"

    :goto_c
    const-string v4, "pedido de AP pelo celular (sync por Bluetooth): ap0 "

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_17

    goto :goto_d

    :cond_17
    sget-object v1, LT/L3;->a:LT/L3;

    const-string v3, "celular chegou por outro canal (sync por Bluetooth) com o ap0 fechado \u2014 reabrindo o AP"

    invoke-virtual {v1, v2, v3}, LT/L3;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, LT/z0;

    const/4 v3, 0x4

    invoke-direct {v2, v0, v3}, LT/z0;-><init>(Lcom/ex/auto/CentralWatchdogService;I)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :goto_d
    return-void

    :pswitch_15
    sget-object v0, Lcom/ex/auto/CentralWatchdogService;->d2:[I

    iget-object v0, p0, LT/z0;->b:Lcom/ex/auto/CentralWatchdogService;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "DriveRegen: floater parou, iniciando watchdog"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->O()V

    return-void

    :pswitch_16
    iget-object v0, p0, LT/z0;->b:Lcom/ex/auto/CentralWatchdogService;

    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->M()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v4, "keyserver_bind_enabled"

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_18

    iput v3, v0, Lcom/ex/auto/CentralWatchdogService;->p:I

    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->R()V

    goto :goto_e

    :cond_18
    :try_start_a
    iget-object v2, v0, Lcom/ex/auto/CentralWatchdogService;->o:Landroid/car/hardware/property/CarPropertyManager;

    if-eqz v2, :cond_19

    iget-object v4, v0, Lcom/ex/auto/CentralWatchdogService;->J1:LT/Q0;

    invoke-virtual {v2, v4}, Landroid/car/hardware/property/CarPropertyManager;->unregisterCallback(Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    :catchall_7
    :cond_19
    :try_start_b
    iget-object v2, v0, Lcom/ex/auto/CentralWatchdogService;->n:Landroid/car/Car;

    if-eqz v2, :cond_1a

    invoke-virtual {v2}, Landroid/car/Car;->disconnect()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_8

    :catchall_8
    :cond_1a
    iput-object v1, v0, Lcom/ex/auto/CentralWatchdogService;->n:Landroid/car/Car;

    iput-object v1, v0, Lcom/ex/auto/CentralWatchdogService;->o:Landroid/car/hardware/property/CarPropertyManager;

    sput-boolean v3, LT/Y;->f:Z

    sget-object v0, LT/Y;->g:Landroid/os/Handler;

    if-eqz v0, :cond_1b

    sget-object v1, LT/Y;->i:LT/a0;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1b
    const-string v0, "SwcModeCtrl"

    const-string v1, "stop"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_e
    return-void

    :pswitch_data_0
    .packed-switch 0x0
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
.end method
