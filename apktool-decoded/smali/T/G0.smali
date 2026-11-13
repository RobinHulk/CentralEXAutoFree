.class public final LT/G0;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/ex/auto/CentralWatchdogService;


# direct methods
.method public synthetic constructor <init>(Lcom/ex/auto/CentralWatchdogService;I)V
    .locals 0

    iput p2, p0, LT/G0;->a:I

    iput-object p1, p0, LT/G0;->b:Lcom/ex/auto/CentralWatchdogService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11

    const/16 v0, 0x73

    const/16 v1, 0x3e8

    const/4 v2, 0x0

    const/16 v3, 0xc

    const/4 v4, -0x1

    const-string v5, "intent"

    const-string v6, "context"

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-string v9, "CentralWatchdog"

    iget v10, p0, LT/G0;->a:I

    packed-switch v10, :pswitch_data_0

    invoke-static {p1, v6}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v5}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.net.wifi.STATE_CHANGE"

    invoke-static {p1, v0}, LI0/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    const-string p1, "networkInfo"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/NetworkInfo;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p1

    if-ne p1, v7, :cond_1

    goto :goto_0

    :cond_1
    move v7, v8

    :goto_0
    iget-object p1, p0, LT/G0;->b:Lcom/ex/auto/CentralWatchdogService;

    iget-boolean p1, p1, Lcom/ex/auto/CentralWatchdogService;->S:Z

    iget-object p2, p0, LT/G0;->b:Lcom/ex/auto/CentralWatchdogService;

    iput-boolean v7, p2, Lcom/ex/auto/CentralWatchdogService;->S:Z

    if-eqz v7, :cond_5

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    iget-object p1, p0, LT/G0;->b:Lcom/ex/auto/CentralWatchdogService;

    const-string p2, "WiFi autom\u00e1tico"

    invoke-virtual {p1, p2}, Lcom/ex/auto/CentralWatchdogService;->x(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    const-string p1, "WiFi reconectado \u2014 reaplicando drive/regen"

    invoke-static {v9, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, LT/G0;->b:Lcom/ex/auto/CentralWatchdogService;

    iget-object p1, p1, Lcom/ex/auto/CentralWatchdogService;->g:Landroid/car/hardware/property/CarPropertyManager;

    if-nez p1, :cond_4

    iget-object p1, p0, LT/G0;->b:Lcom/ex/auto/CentralWatchdogService;

    invoke-virtual {p1}, Lcom/ex/auto/CentralWatchdogService;->O()V

    goto :goto_1

    :cond_4
    new-instance p1, Ljava/lang/Thread;

    iget-object p2, p0, LT/G0;->b:Lcom/ex/auto/CentralWatchdogService;

    new-instance v0, LT/z0;

    const/16 v1, 0x17

    invoke-direct {v0, p2, v1}, LT/z0;-><init>(Lcom/ex/auto/CentralWatchdogService;I)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    :cond_5
    :goto_1
    return-void

    :pswitch_0
    invoke-static {p1, v6}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v5}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.SCREEN_ON"

    invoke-static {p1, p2}, LI0/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_2

    :cond_6
    sget-object p1, Lcom/ex/auto/CentralWatchdogService;->d2:[I

    iget-object p1, p0, LT/G0;->b:Lcom/ex/auto/CentralWatchdogService;

    const-string p2, "ACTION_SCREEN_ON"

    invoke-virtual {p1, p2}, Lcom/ex/auto/CentralWatchdogService;->J(Ljava/lang/String;)V

    :goto_2
    return-void

    :pswitch_1
    new-instance p1, Ljava/lang/Thread;

    new-instance p2, LT/z0;

    iget-object v0, p0, LT/G0;->b:Lcom/ex/auto/CentralWatchdogService;

    const/16 v1, 0x14

    invoke-direct {p2, v0, v1}, LT/z0;-><init>(Lcom/ex/auto/CentralWatchdogService;I)V

    invoke-direct {p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void

    :pswitch_2
    iget-object v6, p0, LT/G0;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-object p1, Lcom/ex/auto/CentralWatchdogService;->d2:[I

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean p1, Lcom/ex/auto/CentralWatchdogService;->f2:Z

    if-nez p1, :cond_7

    goto/16 :goto_8

    :cond_7
    sget-object p1, Lcom/ex/auto/QuickAccessFloaterService;->j0:Ljava/util/List;

    sget-boolean p1, Lcom/ex/auto/QuickAccessFloaterService;->n0:Z

    if-nez p1, :cond_f

    sget-boolean p1, Lcom/ex/auto/BlackoutFloaterService;->q:Z

    if-eqz p1, :cond_8

    goto :goto_7

    :cond_8
    invoke-virtual {v6}, Lcom/ex/auto/CentralWatchdogService;->M()Landroid/content/SharedPreferences;

    move-result-object p1

    const-string p2, "status_brightness2_enabled"

    invoke-interface {p1, p2, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iget p2, v6, Lcom/ex/auto/CentralWatchdogService;->t0:I

    if-eqz p2, :cond_b

    if-eq p2, v7, :cond_a

    :cond_9
    move v4, v8

    goto :goto_3

    :cond_a
    if-eqz p1, :cond_9

    const/4 p1, 0x2

    move v4, p1

    goto :goto_3

    :cond_b
    move v4, v7

    :goto_3
    if-nez v4, :cond_c

    invoke-virtual {v6}, Lcom/ex/auto/CentralWatchdogService;->g0()V

    goto :goto_8

    :cond_c
    invoke-virtual {v6}, Lcom/ex/auto/CentralWatchdogService;->M()Landroid/content/SharedPreferences;

    move-result-object p1

    if-ne v4, v7, :cond_d

    const-string p2, "status_brightness_pct"

    goto :goto_4

    :cond_d
    const-string p2, "status_brightness_pct2"

    :goto_4
    const/16 v0, 0x32

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    if-gtz v5, :cond_e

    :goto_5
    move v3, v8

    goto :goto_6

    :cond_e
    add-int/lit8 p1, v5, -0x1

    mul-int/lit16 p1, p1, 0xfe

    div-int/lit8 p1, p1, 0x63

    add-int/2addr p1, v7

    const/16 p2, 0xff

    invoke-static {p1, v7, p2}, LA/b;->o(III)I

    move-result v8

    goto :goto_5

    :goto_6
    iget-boolean v7, v6, Lcom/ex/auto/CentralWatchdogService;->s0:Z

    new-instance p1, Ljava/lang/Thread;

    new-instance p2, LT/r0;

    move-object v2, p2

    invoke-direct/range {v2 .. v7}, LT/r0;-><init>(IIILcom/ex/auto/CentralWatchdogService;Z)V

    invoke-direct {p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    goto :goto_8

    :cond_f
    :goto_7
    const-string p1, "applyStatusBrightnessFromSlider: tela j\u00e1 apagada por outro mecanismo \u2014 ignorando"

    invoke-static {v9, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_8
    return-void

    :pswitch_3
    if-eqz p2, :cond_10

    const-string p1, "android.bluetooth.adapter.extra.STATE"

    invoke-virtual {p2, p1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    :cond_10
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    const/16 v0, 0xa

    if-eq v4, v0, :cond_13

    if-eq v4, v3, :cond_11

    goto :goto_9

    :cond_11
    iget-object p1, p0, LT/G0;->b:Lcom/ex/auto/CentralWatchdogService;

    iget-boolean p1, p1, Lcom/ex/auto/CentralWatchdogService;->V0:Z

    if-eqz p1, :cond_12

    iget-object p1, p0, LT/G0;->b:Lcom/ex/auto/CentralWatchdogService;

    iput-boolean v8, p1, Lcom/ex/auto/CentralWatchdogService;->V0:Z

    sget-object p1, LT/L3;->a:LT/L3;

    const-string p2, "BT: ligado de novo \u2014 volto a poder religar quando fizer falta"

    invoke-virtual {p1, v9, p2}, LT/L3;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_12
    iget-object p1, p0, LT/G0;->b:Lcom/ex/auto/CentralWatchdogService;

    invoke-virtual {p1}, Lcom/ex/auto/CentralWatchdogService;->M()Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p2, "bt_desligado_por_nos"

    invoke-interface {p1, p2, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_9

    :cond_13
    iget-object v0, p0, LT/G0;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-object v1, Lcom/ex/auto/CentralWatchdogService;->d2:[I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-gez p1, :cond_14

    sget-object p1, LT/L3;->a:LT/L3;

    const-string p2, "BT: desligou por pedido NOSSO"

    invoke-virtual {p1, v9, p2}, LT/L3;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    :cond_14
    iget-object p1, p0, LT/G0;->b:Lcom/ex/auto/CentralWatchdogService;

    iput-boolean v7, p1, Lcom/ex/auto/CentralWatchdogService;->V0:Z

    sget-object p1, LT/L3;->a:LT/L3;

    const-string p2, "BT: desligado por FORA (usu\u00e1rio ou CarPlay) \u2014 n\u00e3o vou religar"

    invoke-virtual {p1, v9, p2}, LT/L3;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_9
    return-void

    :pswitch_4
    iget-object p1, p0, LT/G0;->b:Lcom/ex/auto/CentralWatchdogService;

    iget-boolean p2, p1, Lcom/ex/auto/CentralWatchdogService;->s0:Z

    if-eqz p2, :cond_15

    const-string p2, "Volume (broadcast) alterado \u2014 restaurando brilho anterior"

    invoke-static {v9, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/ex/auto/CentralWatchdogService;->g0()V

    :cond_15
    return-void

    :pswitch_5
    if-eqz p2, :cond_1b

    const-string p1, "notification"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_16

    goto :goto_b

    :cond_16
    sget-object p2, LT/L3;->a:LT/L3;

    const-string v0, "CarPlay broadcast: notification="

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v9, v0}, LT/L3;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "disable_bluetooth"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, LT/G0;->b:Lcom/ex/auto/CentralWatchdogService;

    iput-boolean v7, v0, Lcom/ex/auto/CentralWatchdogService;->V0:Z

    const-string v0, "BT: o CarPlay desligou o Bluetooth de prop\u00f3sito \u2014 n\u00e3o vou religar"

    invoke-virtual {p2, v9, v0}, LT/L3;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_17
    const-string p2, "connected"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_1a

    const-string p2, "foreground"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_1a

    const-string p2, "background"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_18

    goto :goto_a

    :cond_18
    const-string p2, "disconnected"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_19

    move v7, v8

    goto :goto_a

    :cond_19
    iget-object p2, p0, LT/G0;->b:Lcom/ex/auto/CentralWatchdogService;

    iget-boolean v7, p2, Lcom/ex/auto/CentralWatchdogService;->z1:Z

    :cond_1a
    :goto_a
    :try_start_0
    sget-object p2, LT/B3;->a:LT/B3;

    invoke-static {v7}, LT/B3;->n(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    iget-object p2, p0, LT/G0;->b:Lcom/ex/auto/CentralWatchdogService;

    iget-boolean p2, p2, Lcom/ex/auto/CentralWatchdogService;->z1:Z

    if-eq v7, p2, :cond_1b

    iget-object p2, p0, LT/G0;->b:Lcom/ex/auto/CentralWatchdogService;

    iput-boolean v7, p2, Lcom/ex/auto/CentralWatchdogService;->z1:Z

    sget-object p2, LT/L3;->a:LT/L3;

    const-string v0, "CarPlay sess\u00e3o: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v9, p1}, LT/L3;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v7, :cond_1b

    iget-object p1, p0, LT/G0;->b:Lcom/ex/auto/CentralWatchdogService;

    iget-boolean p2, p1, Lcom/ex/auto/CentralWatchdogService;->G0:Z

    if-eqz p2, :cond_1b

    const-string p2, "CarPlay conectado"

    invoke-virtual {p1, p2}, Lcom/ex/auto/CentralWatchdogService;->y0(Ljava/lang/String;)V

    :cond_1b
    :goto_b
    return-void

    :pswitch_6
    if-eqz p2, :cond_1c

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    goto :goto_c

    :cond_1c
    move-object p1, v2

    :goto_c
    if-eqz p1, :cond_27

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v5

    const-string v6, "android.bluetooth.device.extra.DEVICE"

    sparse-switch v5, :sswitch_data_0

    goto/16 :goto_10

    :sswitch_0
    const-string v0, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1d

    goto/16 :goto_10

    :cond_1d
    const-string p1, "android.bluetooth.device.extra.BOND_STATE"

    invoke-virtual {p2, p1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v3, :cond_27

    :try_start_1
    invoke-virtual {p2, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothDevice;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v2, p1

    :catchall_1
    if-eqz v2, :cond_27

    iget-object p1, p0, LT/G0;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-object p2, Lcom/ex/auto/CentralWatchdogService;->d2:[I

    const-string p2, "pareamento"

    invoke-virtual {p1, v2, p2}, Lcom/ex/auto/CentralWatchdogService;->T(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)V

    goto/16 :goto_10

    :sswitch_1
    const-string v3, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1e

    goto/16 :goto_10

    :cond_1e
    iget-object p1, p0, LT/G0;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-object v3, Lcom/ex/auto/CentralWatchdogService;->d2:[I

    iget-object v3, p1, Lcom/ex/auto/CentralWatchdogService;->a:Landroid/os/Handler;

    iget-object v4, p1, Lcom/ex/auto/CentralWatchdogService;->L0:LT/D0;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-boolean v8, p1, Lcom/ex/auto/CentralWatchdogService;->G0:Z

    iput v8, p1, Lcom/ex/auto/CentralWatchdogService;->H0:I

    iput v8, p1, Lcom/ex/auto/CentralWatchdogService;->I0:I

    iput v8, p1, Lcom/ex/auto/CentralWatchdogService;->J0:I

    iget-object p1, p0, LT/G0;->b:Lcom/ex/auto/CentralWatchdogService;

    iput-boolean v8, p1, Lcom/ex/auto/CentralWatchdogService;->A1:Z

    :try_start_2
    invoke-virtual {p2, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    if-eqz p1, :cond_1f

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :catchall_2
    :cond_1f
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iget-object v3, p0, LT/G0;->b:Lcom/ex/auto/CentralWatchdogService;

    iget-wide v4, v3, Lcom/ex/auto/CentralWatchdogService;->k1:J

    iget-wide v6, v3, Lcom/ex/auto/CentralWatchdogService;->l1:J

    sub-long/2addr v4, v6

    sub-long/2addr p1, v4

    if-eqz v2, :cond_20

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iget-object p2, p0, LT/G0;->b:Lcom/ex/auto/CentralWatchdogService;

    iget-object p2, p2, Lcom/ex/auto/CentralWatchdogService;->j1:Ljava/util/HashMap;

    invoke-virtual {p2, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "CarPlay identity: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " desconectou \u2014 pr\u00f3xima inje\u00e7\u00e3o liberada em "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, LT/G0;->b:Lcom/ex/auto/CentralWatchdogService;

    iget-wide v2, p2, Lcom/ex/auto/CentralWatchdogService;->l1:J

    int-to-long v4, v1

    div-long/2addr v2, v4

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v9, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_10

    :cond_20
    iget-object v0, v3, Lcom/ex/auto/CentralWatchdogService;->j1:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    const-string v1, "<get-keys>(...)"

    invoke-static {v0, v1}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lw0/i;->i0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, LT/G0;->b:Lcom/ex/auto/CentralWatchdogService;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-object v4, v1, Lcom/ex/auto/CentralWatchdogService;->j1:Ljava/util/HashMap;

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    :sswitch_2
    const-string v0, "android.bluetooth.device.action.ACL_CONNECTED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_27

    :try_start_3
    invoke-virtual {p2, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothDevice;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_e

    :catchall_3
    move-object p1, v2

    :goto_e
    iget-object p2, p0, LT/G0;->b:Lcom/ex/auto/CentralWatchdogService;

    if-eqz p1, :cond_21

    :try_start_4
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    :catchall_4
    :cond_21
    iput-object v2, p2, Lcom/ex/auto/CentralWatchdogService;->M0:Ljava/lang/String;

    if-eqz p1, :cond_22

    iget-object p2, p0, LT/G0;->b:Lcom/ex/auto/CentralWatchdogService;

    const-string v0, "ACL_CONNECTED"

    invoke-virtual {p2, p1, v0}, Lcom/ex/auto/CentralWatchdogService;->T(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)V

    :cond_22
    iget-object p2, p0, LT/G0;->b:Lcom/ex/auto/CentralWatchdogService;

    const-string v0, "conex\u00e3o BT"

    invoke-virtual {p2, v0}, Lcom/ex/auto/CentralWatchdogService;->W(Ljava/lang/String;)V

    iget-object p2, p0, LT/G0;->b:Lcom/ex/auto/CentralWatchdogService;

    invoke-virtual {p2, v0}, Lcom/ex/auto/CentralWatchdogService;->y(Ljava/lang/String;)V

    if-eqz p1, :cond_23

    iget-object p2, p0, LT/G0;->b:Lcom/ex/auto/CentralWatchdogService;

    invoke-virtual {p2, p1}, Lcom/ex/auto/CentralWatchdogService;->X(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p1

    if-eqz p1, :cond_23

    goto :goto_f

    :cond_23
    move v7, v8

    :goto_f
    iget-object p1, p0, LT/G0;->b:Lcom/ex/auto/CentralWatchdogService;

    iput-boolean v7, p1, Lcom/ex/auto/CentralWatchdogService;->A1:Z

    if-eqz v7, :cond_24

    iget-object p1, p0, LT/G0;->b:Lcom/ex/auto/CentralWatchdogService;

    invoke-virtual {p1}, Lcom/ex/auto/CentralWatchdogService;->C()Z

    move-result p1

    if-eqz p1, :cond_24

    iget-object p1, p0, LT/G0;->b:Lcom/ex/auto/CentralWatchdogService;

    iget-object p2, p1, Lcom/ex/auto/CentralWatchdogService;->a:Landroid/os/Handler;

    new-instance v0, LT/z0;

    const/16 v1, 0x10

    invoke-direct {v0, p1, v1}, LT/z0;-><init>(Lcom/ex/auto/CentralWatchdogService;I)V

    const-wide/16 v1, 0xfa0

    invoke-virtual {p2, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_24
    if-nez v7, :cond_25

    iget-object p1, p0, LT/G0;->b:Lcom/ex/auto/CentralWatchdogService;

    invoke-virtual {p1}, Lcom/ex/auto/CentralWatchdogService;->m()Z

    move-result p1

    if-eqz p1, :cond_25

    sget-object p1, LT/U0;->a:Ljava/util/concurrent/ExecutorService;

    iget-object p1, p0, LT/G0;->b:Lcom/ex/auto/CentralWatchdogService;

    new-instance p2, LT/e0;

    const/4 v0, 0x5

    invoke-direct {p2, p1, v0}, LT/e0;-><init>(Lcom/ex/auto/CentralWatchdogService;I)V

    invoke-static {p2}, LT/U0;->a(LH0/a;)V

    :cond_25
    if-nez v7, :cond_27

    iget-object p1, p0, LT/G0;->b:Lcom/ex/auto/CentralWatchdogService;

    invoke-virtual {p1}, Lcom/ex/auto/CentralWatchdogService;->m()Z

    move-result p1

    if-eqz p1, :cond_27

    iget-object p1, p0, LT/G0;->b:Lcom/ex/auto/CentralWatchdogService;

    iget-object p2, p1, Lcom/ex/auto/CentralWatchdogService;->a:Landroid/os/Handler;

    new-instance v0, LT/z0;

    const/16 v1, 0x11

    invoke-direct {v0, p1, v1}, LT/z0;-><init>(Lcom/ex/auto/CentralWatchdogService;I)V

    const-wide/16 v1, 0x5dc

    invoke-virtual {p2, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_10

    :sswitch_3
    const-string v0, "android.bluetooth.device.action.UUID"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_26

    goto :goto_10

    :cond_26
    :try_start_5
    invoke-virtual {p2, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothDevice;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    move-object v2, p1

    :catchall_5
    if-eqz v2, :cond_27

    iget-object p1, p0, LT/G0;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-object p2, Lcom/ex/auto/CentralWatchdogService;->d2:[I

    const-string p2, "ACTION_UUID"

    invoke-virtual {p1, v2, p2}, Lcom/ex/auto/CentralWatchdogService;->T(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)V

    :cond_27
    :goto_10
    return-void

    :pswitch_7
    if-eqz p2, :cond_28

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    :cond_28
    const-string p1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-static {v2, p1}, LI0/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_29

    goto/16 :goto_11

    :cond_29
    const-string p1, "wifi_state"

    const/16 v2, 0xb

    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/16 p2, 0xe

    if-ne p1, p2, :cond_2a

    iget-object v3, p0, LT/G0;->b:Lcom/ex/auto/CentralWatchdogService;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/ex/auto/CentralWatchdogService;->Z0:J

    :cond_2a
    if-eq p1, v2, :cond_2b

    if-eq p1, p2, :cond_2b

    goto/16 :goto_11

    :cond_2b
    iget-object p2, p0, LT/G0;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-object v2, Lcom/ex/auto/CentralWatchdogService;->d2:[I

    invoke-virtual {p2}, Lcom/ex/auto/CentralWatchdogService;->M()Landroid/content/SharedPreferences;

    move-result-object p2

    const-string v2, "ap_sempre_aberto"

    invoke-interface {p2, v2, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-nez p2, :cond_2c

    goto/16 :goto_11

    :cond_2c
    iget-object p2, p0, LT/G0;->b:Lcom/ex/auto/CentralWatchdogService;

    invoke-virtual {p2}, Lcom/ex/auto/CentralWatchdogService;->M()Landroid/content/SharedPreferences;

    move-result-object p2

    const-string v2, "wifi_auto_enable_on_wake"

    invoke-interface {p2, v2, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_2d

    goto/16 :goto_11

    :cond_2d
    iget-object p2, p0, LT/G0;->b:Lcom/ex/auto/CentralWatchdogService;

    invoke-virtual {p2}, Lcom/ex/auto/CentralWatchdogService;->H0()Z

    move-result p2

    const-string v2, "AP caiu (estado="

    if-eqz p2, :cond_2e

    sget-object p2, LT/L3;->a:LT/L3;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") \u2014 n\u00e3o reabro: o WiFi cliente est\u00e1 ligado e a r\u00e1dio \u00e9 uma s\u00f3"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v9, p1}, LT/L3;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_11

    :cond_2e
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-object p2, p0, LT/G0;->b:Lcom/ex/auto/CentralWatchdogService;

    iget-wide v5, p2, Lcom/ex/auto/CentralWatchdogService;->f1:J

    sub-long/2addr v3, v5

    iget-object p2, p0, LT/G0;->b:Lcom/ex/auto/CentralWatchdogService;

    iget-wide v5, p2, Lcom/ex/auto/CentralWatchdogService;->g1:J

    cmp-long p2, v3, v5

    if-lez p2, :cond_2f

    sget-object p2, LT/L3;->a:LT/L3;

    const-string v0, ") \u2014 fora da janela de arranque ("

    invoke-static {v2, p1, v0}, LM/d0;->h(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, LT/G0;->b:Lcom/ex/auto/CentralWatchdogService;

    iget-wide v0, v0, Lcom/ex/auto/CentralWatchdogService;->g1:J

    const v2, 0xea60

    int-to-long v2, v2

    div-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " min); s\u00f3 reabro no boot, ao acordar ou quando o celular chegar"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v9, p1}, LT/L3;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11

    :cond_2f
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-object p2, p0, LT/G0;->b:Lcom/ex/auto/CentralWatchdogService;

    iget-wide v5, p2, Lcom/ex/auto/CentralWatchdogService;->e1:J

    sub-long v5, v3, v5

    iget-object p2, p0, LT/G0;->b:Lcom/ex/auto/CentralWatchdogService;

    iget-wide v7, p2, Lcom/ex/auto/CentralWatchdogService;->h1:J

    cmp-long v5, v5, v7

    if-gez v5, :cond_30

    sget-object p2, LT/L3;->a:LT/L3;

    const-string v5, ") \u2014 n\u00e3o reabro: \u00faltima reabertura h\u00e1 "

    invoke-static {v2, p1, v5}, LM/d0;->h(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v2, p0, LT/G0;->b:Lcom/ex/auto/CentralWatchdogService;

    iget-wide v5, v2, Lcom/ex/auto/CentralWatchdogService;->e1:J

    sub-long/2addr v3, v5

    int-to-long v1, v1

    div-long/2addr v3, v1

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v9, p1}, LT/L3;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11

    :cond_30
    iput-wide v3, p2, Lcom/ex/auto/CentralWatchdogService;->e1:J

    sget-object p2, LT/L3;->a:LT/L3;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") \u2014 reabrindo para o pr\u00f3ximo telefone achar a rede pronta"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v9, p1}, LT/L3;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, LT/G0;->b:Lcom/ex/auto/CentralWatchdogService;

    iget-object p2, p1, Lcom/ex/auto/CentralWatchdogService;->a:Landroid/os/Handler;

    new-instance v0, LT/z0;

    const/16 v1, 0xd

    invoke-direct {v0, p1, v1}, LT/z0;-><init>(Lcom/ex/auto/CentralWatchdogService;I)V

    const-wide/16 v1, 0xbb8

    invoke-virtual {p2, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_11
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
        -0x16809cc6 -> :sswitch_3
        -0x11f77b4b -> :sswitch_2
        0x6c9330ef -> :sswitch_1
        0x7e2cc189 -> :sswitch_0
    .end sparse-switch
.end method
