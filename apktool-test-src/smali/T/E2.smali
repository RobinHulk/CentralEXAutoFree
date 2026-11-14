.class public final synthetic LT/E2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LH0/l;
.implements LH0/p;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/ex/auto/MainActivity;


# direct methods
.method public synthetic constructor <init>(ILcom/ex/auto/MainActivity;)V
    .locals 0

    iput p1, p0, LT/E2;->a:I

    iput-object p2, p0, LT/E2;->b:Lcom/ex/auto/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v0, p0

    const/4 v1, 0x3

    const/16 v2, 0x8

    const-string v3, ""

    const-string v4, "auto_route_changed"

    const-string v5, "putExtra(...)"

    const-string v6, "auto_proxy_changed"

    const-string v7, "txt"

    const-string v8, "getString(...)"

    const-string v9, "binding"

    const-string v10, "result"

    const/4 v11, 0x0

    const/4 v12, 0x1

    const-class v13, Lcom/ex/auto/CentralWatchdogService;

    const/4 v14, 0x0

    iget v15, v0, LT/E2;->a:I

    packed-switch v15, :pswitch_data_0

    :pswitch_0
    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    sget v2, Lcom/ex/auto/MainActivity;->u0:I

    iget-object v2, v0, LT/E2;->b:Lcom/ex/auto/MainActivity;

    if-eqz v1, :cond_0

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v2, v13}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v3}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    :cond_0
    sget-object v3, LT/A4;->a:Ljava/util/HashMap;

    invoke-static {v2}, LT/A4;->g(Landroid/content/Context;)V

    :goto_0
    sget-object v3, Lcom/ex/auto/CentralWatchdogService;->d2:[I

    invoke-static {}, LT/Y;->a0()V

    if-eqz v1, :cond_1

    const v1, 0x7f0f02f7

    :goto_1
    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_1
    const v1, 0x7f0f02f6

    goto :goto_1

    :goto_2
    invoke-static {v2, v1, v14}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    sget-object v1, Lv0/e;->c:Lv0/e;

    return-object v1

    :pswitch_1
    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    sget v2, Lcom/ex/auto/MainActivity;->u0:I

    iget-object v2, v0, LT/E2;->b:Lcom/ex/auto/MainActivity;

    if-eqz v1, :cond_2

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v2, v13}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v3}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_3

    :cond_2
    sget-object v3, LT/A4;->a:Ljava/util/HashMap;

    invoke-static {v2}, LT/A4;->f(Landroid/content/Context;)V

    :goto_3
    sget-object v3, Lcom/ex/auto/CentralWatchdogService;->d2:[I

    invoke-static {}, LT/Y;->a0()V

    if-eqz v1, :cond_3

    const v1, 0x7f0f02f4

    :goto_4
    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    :cond_3
    const v1, 0x7f0f02f3

    goto :goto_4

    :goto_5
    invoke-static {v2, v1, v14}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    sget-object v1, Lv0/e;->c:Lv0/e;

    return-object v1

    :pswitch_2
    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    sget v2, Lcom/ex/auto/MainActivity;->u0:I

    iget-object v2, v0, LT/E2;->b:Lcom/ex/auto/MainActivity;

    if-eqz v1, :cond_4

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v2, v13}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v3}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_6

    :cond_4
    sget-object v3, LT/A4;->a:Ljava/util/HashMap;

    invoke-static {v2}, LT/A4;->d(Landroid/content/Context;)V

    :goto_6
    sget-object v3, Lcom/ex/auto/CentralWatchdogService;->d2:[I

    invoke-static {}, LT/Y;->a0()V

    if-eqz v1, :cond_5

    const v1, 0x7f0f00b9

    :goto_7
    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_8

    :cond_5
    const v1, 0x7f0f00b8

    goto :goto_7

    :goto_8
    invoke-static {v2, v1, v14}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    sget-object v1, Lv0/e;->c:Lv0/e;

    return-object v1

    :pswitch_3
    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    sget v2, Lcom/ex/auto/MainActivity;->u0:I

    iget-object v2, v0, LT/E2;->b:Lcom/ex/auto/MainActivity;

    if-eqz v1, :cond_6

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v2, v13}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v3}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_9

    :cond_6
    sget-object v3, LT/A4;->a:Ljava/util/HashMap;

    invoke-static {v2}, LT/A4;->e(Landroid/content/Context;)V

    :goto_9
    sget-object v3, Lcom/ex/auto/CentralWatchdogService;->d2:[I

    invoke-static {}, LT/Y;->a0()V

    if-eqz v1, :cond_7

    const-string v1, "Temperatura externa na barra ligada"

    goto :goto_a

    :cond_7
    const-string v1, "Temperatura externa na barra desligada"

    :goto_a
    invoke-static {v2, v1, v14}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    sget-object v1, Lv0/e;->c:Lv0/e;

    return-object v1

    :pswitch_4
    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    sget v2, Lcom/ex/auto/MainActivity;->u0:I

    sget-boolean v2, Lcom/ex/auto/PhoneSyncService;->v:Z

    const-string v2, "ctx"

    iget-object v3, v0, LT/E2;->b:Lcom/ex/auto/MainActivity;

    invoke-static {v3, v2}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Landroid/content/Intent;

    const-class v4, Lcom/ex/auto/PhoneSyncService;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-eqz v1, :cond_8

    :try_start_0
    invoke-virtual {v3, v2}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_b

    :cond_8
    invoke-virtual {v3, v2}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_b
    if-eqz v1, :cond_9

    const v1, 0xbab9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const v2, 0x7f0f025b

    invoke-virtual {v3, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_c

    :cond_9
    const v1, 0x7f0f025a

    invoke-virtual {v3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_c
    invoke-static {v3, v1, v14}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    sget-object v1, Lv0/e;->c:Lv0/e;

    return-object v1

    :pswitch_5
    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    sget v2, Lcom/ex/auto/MainActivity;->u0:I

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/ex/auto/LyricsFloaterService;

    iget-object v4, v0, LT/E2;->b:Lcom/ex/auto/MainActivity;

    invoke-direct {v2, v4, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-eqz v1, :cond_a

    invoke-virtual {v4, v2}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_d

    :cond_a
    invoke-virtual {v4, v2}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    :goto_d
    sget-object v1, Lv0/e;->c:Lv0/e;

    return-object v1

    :pswitch_6
    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    sget v2, Lcom/ex/auto/MainActivity;->u0:I

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/ex/auto/MediaBarFloaterService;

    iget-object v4, v0, LT/E2;->b:Lcom/ex/auto/MainActivity;

    invoke-direct {v2, v4, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-eqz v1, :cond_b

    invoke-virtual {v4, v2}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_e

    :cond_b
    invoke-virtual {v4, v2}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    :goto_e
    sget-object v1, Lv0/e;->c:Lv0/e;

    return-object v1

    :pswitch_7
    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    sget v2, Lcom/ex/auto/MainActivity;->u0:I

    iget-object v2, v0, LT/E2;->b:Lcom/ex/auto/MainActivity;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v2, v13}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v3, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v3

    invoke-static {v3, v5}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    if-eqz v1, :cond_d

    invoke-virtual {v2}, Lcom/ex/auto/MainActivity;->B0()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v3, "auto_route_on_aa_connect"

    invoke-interface {v1, v3, v14}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-virtual {v2}, Lcom/ex/auto/MainActivity;->B0()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v3, v14}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v2, v13}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v4, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    iput-boolean v12, v2, Lcom/ex/auto/MainActivity;->S:Z

    iget-object v1, v2, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v1, :cond_c

    iget-object v1, v1, LU/a;->X1:Lcom/google/android/material/switchmaterial/SwitchMaterial;

    invoke-virtual {v1, v14}, Lj/d1;->setChecked(Z)V

    iput-boolean v14, v2, Lcom/ex/auto/MainActivity;->S:Z

    goto :goto_f

    :cond_c
    invoke-static {v9}, LI0/f;->h(Ljava/lang/String;)V

    throw v11

    :cond_d
    :goto_f
    sget-object v1, Lv0/e;->c:Lv0/e;

    return-object v1

    :pswitch_8
    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    sget v2, Lcom/ex/auto/MainActivity;->u0:I

    new-instance v2, Landroid/content/Intent;

    iget-object v3, v0, LT/E2;->b:Lcom/ex/auto/MainActivity;

    invoke-direct {v2, v3, v13}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    if-eqz v1, :cond_f

    invoke-virtual {v3}, Lcom/ex/auto/MainActivity;->B0()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "auto_proxy_enabled"

    invoke-interface {v1, v2, v14}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-virtual {v3}, Lcom/ex/auto/MainActivity;->B0()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v2, v14}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v3, v13}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v6, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1, v5}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    iput-boolean v12, v3, Lcom/ex/auto/MainActivity;->S:Z

    iget-object v1, v3, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v1, :cond_e

    iget-object v1, v1, LU/a;->W1:Lcom/google/android/material/switchmaterial/SwitchMaterial;

    invoke-virtual {v1, v14}, Lj/d1;->setChecked(Z)V

    iput-boolean v14, v3, Lcom/ex/auto/MainActivity;->S:Z

    goto :goto_10

    :cond_e
    invoke-static {v9}, LI0/f;->h(Ljava/lang/String;)V

    throw v11

    :cond_f
    :goto_10
    sget-object v1, Lv0/e;->c:Lv0/e;

    return-object v1

    :pswitch_9
    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    sget v2, Lcom/ex/auto/MainActivity;->u0:I

    iget-object v2, v0, LT/E2;->b:Lcom/ex/auto/MainActivity;

    if-eqz v1, :cond_12

    :try_start_1
    iget-object v3, v2, Lcom/ex/auto/MainActivity;->E:Landroid/net/wifi/WifiManager;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const-string v4, "wifiManager"

    if-eqz v3, :cond_11

    :try_start_2
    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v3

    if-nez v3, :cond_12

    iget-object v3, v2, Lcom/ex/auto/MainActivity;->E:Landroid/net/wifi/WifiManager;

    if-eqz v3, :cond_10

    invoke-virtual {v3, v12}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    goto :goto_11

    :cond_10
    invoke-static {v4}, LI0/f;->h(Ljava/lang/String;)V

    throw v11

    :cond_11
    invoke-static {v4}, LI0/f;->h(Ljava/lang/String;)V

    throw v11
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    :cond_12
    :goto_11
    if-eqz v1, :cond_13

    const v1, 0x7f0f0386

    :goto_12
    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_13

    :cond_13
    const v1, 0x7f0f0385

    goto :goto_12

    :goto_13
    invoke-static {v2, v1, v14}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    sget-object v1, Lv0/e;->c:Lv0/e;

    return-object v1

    :pswitch_a
    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/String;

    sget v2, Lcom/ex/auto/MainActivity;->u0:I

    const-string v2, "stage"

    invoke-static {v1, v2}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v0, LT/E2;->b:Lcom/ex/auto/MainActivity;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "download:"

    invoke-static {v1, v3}, LO0/s;->w0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_15

    invoke-static {v1, v3}, LO0/j;->K0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, LO0/r;->p0(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_14

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v14

    :cond_14
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const v3, 0x7f0f043e

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    goto :goto_14

    :cond_15
    const-string v3, "verify"

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    const v1, 0x7f0f0442

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    goto :goto_14

    :cond_16
    const-string v3, "copy"

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    const v1, 0x7f0f0440

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    goto :goto_14

    :cond_17
    const-string v3, "mount"

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    const v1, 0x7f0f043d

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    :cond_18
    :goto_14
    if-nez v11, :cond_19

    goto :goto_15

    :cond_19
    iget-object v1, v2, Lcom/ex/auto/MainActivity;->v:Landroid/os/Handler;

    new-instance v3, LT/V1;

    const/16 v4, 0x18

    invoke-direct {v3, v2, v11, v4}, LT/V1;-><init>(Lcom/ex/auto/MainActivity;Ljava/lang/String;I)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_15
    sget-object v1, Lv0/e;->c:Lv0/e;

    return-object v1

    :pswitch_b
    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/String;

    sget v2, Lcom/ex/auto/MainActivity;->u0:I

    invoke-static {v1, v10}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v0, LT/E2;->b:Lcom/ex/auto/MainActivity;

    iput-boolean v14, v2, Lcom/ex/auto/MainActivity;->K:Z

    sget-object v4, LT/L3;->a:LT/L3;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "pm install terminou \u2014 ok="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/ex/auto/MainActivity;->Z(Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Ativar"

    invoke-virtual {v4, v6, v5}, LT/L3;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/ex/auto/MainActivity;->Z(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-virtual {v2}, Lcom/ex/auto/MainActivity;->B0()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v5, "aa_wifi_bind_enabled"

    invoke-interface {v1, v5, v12}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v5, "connadaptor_ja_ativado"

    invoke-interface {v1, v5, v12}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v2, v13}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v1}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_1b

    invoke-virtual {v2}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_1b

    new-instance v1, LT/j1;

    invoke-direct {v1, v2}, LT/j1;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0f00aa

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v7, v1, LT/j1;->b:Ljava/lang/Object;

    check-cast v7, Le/e;

    iput-object v5, v7, Le/e;->d:Ljava/lang/CharSequence;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const v8, 0x7f0f00a8

    invoke-virtual {v2, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\n\n"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/ex/auto/MainActivity;->f0()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v9, LT/q;->a:[I

    invoke-virtual {v2}, Lcom/ex/auto/MainActivity;->B0()Landroid/content/SharedPreferences;

    move-result-object v9

    const-string v10, "<get-prefs>(...)"

    invoke-static {v9, v10}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v9}, LT/q;->a(Landroid/content/SharedPreferences;)Z

    move-result v9

    if-nez v9, :cond_1a

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const v8, 0x7f0f00a7

    invoke-virtual {v2, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_1a
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v7, Le/e;->f:Ljava/lang/CharSequence;

    const v3, 0x104000a

    invoke-virtual {v1, v3, v11}, LT/j1;->g(ILandroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v1}, LT/j1;->j()Le/i;

    :cond_1b
    sget-object v1, LT/q;->a:[I

    invoke-virtual {v2}, Lcom/ex/auto/MainActivity;->a0()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, LT/q;->d(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1c

    new-instance v1, LT/U1;

    invoke-direct {v1, v14, v2}, LT/U1;-><init>(ILcom/ex/auto/MainActivity;)V

    iget-object v3, v2, Lcom/ex/auto/MainActivity;->w:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v3, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_16

    :cond_1c
    const-string v1, "modo Android Auto \u2014 patch do CarplayMonitor n\u00e3o se aplica"

    invoke-virtual {v4, v6, v1}, LT/L3;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_16
    invoke-virtual {v2}, Lcom/ex/auto/MainActivity;->a0()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, LT/q;->d(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1d

    iget-object v1, v2, Lcom/ex/auto/MainActivity;->v:Landroid/os/Handler;

    new-instance v3, LT/G2;

    const/16 v4, 0x12

    invoke-direct {v3, v4, v2}, LT/G2;-><init>(ILcom/ex/auto/MainActivity;)V

    const-wide/16 v4, 0x2ee0

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1d
    invoke-virtual {v2}, Lcom/ex/auto/MainActivity;->e1()V

    sget-object v1, Lv0/e;->c:Lv0/e;

    return-object v1

    :pswitch_c
    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/String;

    sget v4, Lcom/ex/auto/MainActivity;->u0:I

    invoke-static {v1, v10}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "SRC_MD5=([0-9a-f]{32})"

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    const-string v5, "compile(...)"

    invoke-static {v4, v5}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    const-string v5, "matcher(...)"

    invoke-static {v4, v5}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v14, v1}, LA/b;->e(Ljava/util/regex/Matcher;ILjava/lang/CharSequence;)LO0/e;

    move-result-object v4

    if-eqz v4, :cond_1e

    invoke-virtual {v4}, LO0/e;->a()Ljava/util/List;

    move-result-object v4

    invoke-static {v4, v12}, Lw0/i;->b0(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v4

    move-object v11, v4

    check-cast v11, Ljava/lang/String;

    :cond_1e
    const-string v4, "src="

    const-string v5, " sa\u00edda="

    invoke-static {v4, v11, v5}, LM/d0;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x190

    invoke-static {v5, v1}, LO0/j;->V0(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, LT/E2;->b:Lcom/ex/auto/MainActivity;

    const-string v6, "Instalar ConnAdaptor"

    invoke-virtual {v5, v6, v4}, Lcom/ex/auto/MainActivity;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/ex/auto/MainActivity;->Z(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_20

    if-eqz v11, :cond_1f

    invoke-static {v2, v11}, LO0/j;->V0(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_1f
    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v1

    const v2, 0x7f0f0078

    invoke-virtual {v5, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v8}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_17

    :cond_20
    const v1, 0x7f0f0161

    invoke-virtual {v5, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v8}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_17
    return-object v1

    :pswitch_d
    iget-object v1, v0, LT/E2;->b:Lcom/ex/auto/MainActivity;

    move-object/from16 v2, p1

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    sget v3, Lcom/ex/auto/MainActivity;->u0:I

    invoke-virtual {v1}, Lcom/ex/auto/MainActivity;->B0()Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "telemetry_on"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-static {v1, v2}, Lcom/ex/auto/VhalProviderService;->b(Landroid/content/Context;Z)V

    sget-object v3, Lcom/ex/auto/QuickAccessFloaterService;->j0:Ljava/util/List;

    sget-object v3, Lcom/ex/auto/QuickAccessFloaterService;->l0:Lcom/ex/auto/QuickAccessFloaterService;

    if-eqz v3, :cond_21

    invoke-virtual {v3}, Lcom/ex/auto/QuickAccessFloaterService;->H()V

    :cond_21
    if-eqz v2, :cond_22

    const-string v2, "Telemetria ligada (porta 47800)"

    goto :goto_18

    :cond_22
    const-string v2, "Telemetria desligada"

    :goto_18
    invoke-static {v1, v2, v14}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    sget-object v1, Lv0/e;->c:Lv0/e;

    return-object v1

    :pswitch_e
    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, v0, LT/E2;->b:Lcom/ex/auto/MainActivity;

    iget-object v3, v2, Lcom/ex/auto/MainActivity;->v:Landroid/os/Handler;

    new-instance v4, LT/Z1;

    const/4 v5, 0x4

    invoke-direct {v4, v2, v1, v5}, LT/Z1;-><init>(Lcom/ex/auto/MainActivity;II)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    sget-object v1, Lv0/e;->c:Lv0/e;

    return-object v1

    :pswitch_f
    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/String;

    sget v2, Lcom/ex/auto/MainActivity;->u0:I

    invoke-static {v1, v7}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v0, LT/E2;->b:Lcom/ex/auto/MainActivity;

    iget-object v3, v2, Lcom/ex/auto/MainActivity;->v:Landroid/os/Handler;

    new-instance v4, LT/V1;

    const/16 v5, 0x15

    invoke-direct {v4, v2, v1, v5}, LT/V1;-><init>(Lcom/ex/auto/MainActivity;Ljava/lang/String;I)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    sget-object v1, Lv0/e;->c:Lv0/e;

    return-object v1

    :pswitch_10
    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/String;

    sget v2, Lcom/ex/auto/MainActivity;->u0:I

    const-string v2, "progressText"

    invoke-static {v1, v2}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v0, LT/E2;->b:Lcom/ex/auto/MainActivity;

    iget-object v3, v2, Lcom/ex/auto/MainActivity;->v:Landroid/os/Handler;

    new-instance v4, LT/V1;

    const/16 v5, 0x14

    invoke-direct {v4, v2, v1, v5}, LT/V1;-><init>(Lcom/ex/auto/MainActivity;Ljava/lang/String;I)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    sget-object v1, Lv0/e;->c:Lv0/e;

    return-object v1

    :pswitch_11
    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/String;

    sget v2, Lcom/ex/auto/MainActivity;->u0:I

    invoke-static {v1, v7}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v0, LT/E2;->b:Lcom/ex/auto/MainActivity;

    iget-object v3, v2, Lcom/ex/auto/MainActivity;->v:Landroid/os/Handler;

    new-instance v4, LT/V1;

    const/16 v5, 0x16

    invoke-direct {v4, v2, v1, v5}, LT/V1;-><init>(Lcom/ex/auto/MainActivity;Ljava/lang/String;I)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    sget-object v1, Lv0/e;->c:Lv0/e;

    return-object v1

    :pswitch_12
    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    sget v2, Lcom/ex/auto/MainActivity;->u0:I

    iget-object v2, v0, LT/E2;->b:Lcom/ex/auto/MainActivity;

    if-eqz v1, :cond_24

    const-string v3, "window_driver_on_door"

    invoke-static {v2, v3, v12}, LM/d0;->m(Lcom/ex/auto/MainActivity;Ljava/lang/String;Z)V

    iput-boolean v12, v2, Lcom/ex/auto/MainActivity;->S:Z

    iget-object v3, v2, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v3, :cond_23

    iget-object v3, v3, LU/a;->s2:Lcom/google/android/material/switchmaterial/SwitchMaterial;

    invoke-virtual {v3, v12}, Lj/d1;->setChecked(Z)V

    iput-boolean v14, v2, Lcom/ex/auto/MainActivity;->S:Z

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v2, v13}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v3}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_19

    :cond_23
    invoke-static {v9}, LI0/f;->h(Ljava/lang/String;)V

    throw v11

    :cond_24
    :goto_19
    if-eqz v1, :cond_25

    const v1, 0x7f0f0396

    :goto_1a
    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1b

    :cond_25
    const v1, 0x7f0f0395

    goto :goto_1a

    :goto_1b
    invoke-static {v2, v1, v14}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    sget-object v1, Lv0/e;->c:Lv0/e;

    return-object v1

    :pswitch_13
    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/String;

    sget v2, Lcom/ex/auto/MainActivity;->u0:I

    invoke-static {v1, v7}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v0, LT/E2;->b:Lcom/ex/auto/MainActivity;

    iget-object v3, v2, Lcom/ex/auto/MainActivity;->v:Landroid/os/Handler;

    new-instance v4, LT/V1;

    const/16 v5, 0xf

    invoke-direct {v4, v2, v1, v5}, LT/V1;-><init>(Lcom/ex/auto/MainActivity;Ljava/lang/String;I)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    sget-object v1, Lv0/e;->c:Lv0/e;

    return-object v1

    :pswitch_14
    move-object/from16 v2, p1

    check-cast v2, Ljava/lang/String;

    sget v3, Lcom/ex/auto/MainActivity;->u0:I

    const-string v3, "saida"

    invoke-static {v2, v3}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, v0, LT/E2;->b:Lcom/ex/auto/MainActivity;

    iput-boolean v14, v3, Lcom/ex/auto/MainActivity;->K:Z

    sget-object v4, LT/L3;->a:LT/L3;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "restart dos servi\u00e7os terminou \u2014 "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v6, 0x50

    invoke-static {v6, v2}, LO0/j;->V0(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v6, "\n"

    const-string v7, " "

    invoke-static {v2, v6, v7}, LO0/s;->v0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, LO0/j;->X0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "Reiniciar"

    invoke-virtual {v4, v5, v2}, LT/L3;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, LT/q;->a:[I

    invoke-virtual {v3}, Lcom/ex/auto/MainActivity;->a0()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, LT/q;->d(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_26

    const-string v2, "modo sem CarPlay \u2014 n\u00e3o mexo no CarplayMonitor"

    invoke-virtual {v4, v5, v2}, LT/L3;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1c

    :cond_26
    new-instance v2, LT/G2;

    const/4 v4, 0x6

    invoke-direct {v2, v4, v3}, LT/G2;-><init>(ILcom/ex/auto/MainActivity;)V

    iget-object v4, v3, Lcom/ex/auto/MainActivity;->w:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v4, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_1c
    invoke-virtual {v3}, Lcom/ex/auto/MainActivity;->e1()V

    new-array v2, v1, [J

    fill-array-data v2, :array_0

    :goto_1d
    if-ge v14, v1, :cond_27

    aget-wide v4, v2, v14

    iget-object v6, v3, Lcom/ex/auto/MainActivity;->v:Landroid/os/Handler;

    new-instance v7, LT/G2;

    const/4 v8, 0x7

    invoke-direct {v7, v8, v3}, LT/G2;-><init>(ILcom/ex/auto/MainActivity;)V

    invoke-virtual {v6, v7, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    add-int/2addr v14, v12

    goto :goto_1d

    :cond_27
    sget-object v1, Lv0/e;->c:Lv0/e;

    return-object v1

    :pswitch_15
    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/String;

    sget v2, Lcom/ex/auto/MainActivity;->u0:I

    invoke-static {v1, v10}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v0, LT/E2;->b:Lcom/ex/auto/MainActivity;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/ex/auto/MainActivity;->s(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_28

    const-string v3, "restart_enviado"

    invoke-static {v1, v3, v14}, LO0/j;->x0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v1

    if-eqz v1, :cond_28

    const v1, 0x7f0f02a8

    :goto_1e
    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v8}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1f

    :cond_28
    const v1, 0x7f0f0171

    goto :goto_1e

    :goto_1f
    return-object v1

    :pswitch_16
    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    sget v2, Lcom/ex/auto/MainActivity;->u0:I

    iget-object v2, v0, LT/E2;->b:Lcom/ex/auto/MainActivity;

    if-eqz v1, :cond_29

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v2, v13}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v3}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_20

    :cond_29
    invoke-virtual {v2}, Lcom/ex/auto/MainActivity;->B0()Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "window_opposite_on_door"

    invoke-interface {v3, v4, v14}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_2b

    invoke-static {v2, v4, v14}, LM/d0;->m(Lcom/ex/auto/MainActivity;Ljava/lang/String;Z)V

    iput-boolean v12, v2, Lcom/ex/auto/MainActivity;->S:Z

    iget-object v3, v2, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v3, :cond_2a

    iget-object v3, v3, LU/a;->t2:Lcom/google/android/material/switchmaterial/SwitchMaterial;

    invoke-virtual {v3, v14}, Lj/d1;->setChecked(Z)V

    iput-boolean v14, v2, Lcom/ex/auto/MainActivity;->S:Z

    goto :goto_20

    :cond_2a
    invoke-static {v9}, LI0/f;->h(Ljava/lang/String;)V

    throw v11

    :cond_2b
    :goto_20
    if-eqz v1, :cond_2c

    const v1, 0x7f0f0393

    :goto_21
    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_22

    :cond_2c
    const v1, 0x7f0f0392

    goto :goto_21

    :goto_22
    invoke-static {v2, v1, v14}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    sget-object v1, Lv0/e;->c:Lv0/e;

    return-object v1

    :pswitch_17
    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/String;

    sget v2, Lcom/ex/auto/MainActivity;->u0:I

    invoke-static {v1, v10}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v0, LT/E2;->b:Lcom/ex/auto/MainActivity;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/ex/auto/MainActivity;->B1(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2d

    iput-boolean v12, v2, Lcom/ex/auto/MainActivity;->Q:Z

    iget-object v1, v2, Lcom/ex/auto/MainActivity;->v:Landroid/os/Handler;

    new-instance v3, LT/G2;

    const/4 v4, 0x2

    invoke-direct {v3, v4, v2}, LT/G2;-><init>(ILcom/ex/auto/MainActivity;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2d
    sget-object v1, Lv0/e;->c:Lv0/e;

    return-object v1

    :pswitch_18
    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/String;

    sget v2, Lcom/ex/auto/MainActivity;->u0:I

    invoke-static {v1, v10}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "FWMARK_MATCH=MISMATCH"

    invoke-static {v1, v2, v12}, LO0/j;->x0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v2

    iget-object v3, v0, LT/E2;->b:Lcom/ex/auto/MainActivity;

    if-eqz v2, :cond_2e

    const v1, 0x7f0f02ae

    invoke-virtual {v3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v8}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_23

    :cond_2e
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/ex/auto/MainActivity;->B1(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2f

    const v1, 0x7f0f02ac

    invoke-virtual {v3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v8}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_23

    :cond_2f
    const v1, 0x7f0f02ad

    invoke-virtual {v3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v8}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_23
    return-object v1

    :pswitch_19
    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    sget v3, Lcom/ex/auto/MainActivity;->u0:I

    iget-object v3, v0, LT/E2;->b:Lcom/ex/auto/MainActivity;

    if-eqz v1, :cond_30

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, v3, v13}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v3, v4}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    new-instance v4, LT/U1;

    invoke-direct {v4, v2, v3}, LT/U1;-><init>(ILcom/ex/auto/MainActivity;)V

    iget-object v2, v3, Lcom/ex/auto/MainActivity;->w:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v2, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_30
    if-eqz v1, :cond_31

    const v1, 0x7f0f0390

    :goto_24
    invoke-virtual {v3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_25

    :cond_31
    const v1, 0x7f0f0398

    goto :goto_24

    :goto_25
    invoke-static {v3, v1, v14}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    sget-object v1, Lv0/e;->c:Lv0/e;

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_0
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
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :array_0
    .array-data 8
        0x3a98
        0x9c40
        0xfde8
    .end array-data
.end method

.method public c(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    iget v0, p0, LT/E2;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LT/E2;->b:Lcom/ex/auto/MainActivity;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    check-cast p2, LH0/a;

    sget v1, Lcom/ex/auto/MainActivity;->u0:I

    const/4 v1, 0x1

    const-string v2, "br.com.central.dualdashcam"

    if-eqz p1, :cond_0

    invoke-virtual {v0, v2}, Lcom/ex/auto/MainActivity;->A0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    const p1, 0x7f0f0291

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    invoke-interface {p2}, LH0/a;->a()Ljava/lang/Object;

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "br.com.central.dualdashcam.camera.RearCamPipService"

    invoke-direct {v3, v2, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "setComponent(...)"

    invoke-static {v2, v3}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    goto :goto_0

    :catchall_0
    :cond_1
    const p1, 0x7f0f0292

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    invoke-interface {p2}, LH0/a;->a()Ljava/lang/Object;

    goto :goto_1

    :cond_2
    :goto_0
    const-string p2, "rear_cam_turn_signal_enabled"

    invoke-static {v0, p2, p1}, LM/d0;->m(Lcom/ex/auto/MainActivity;Ljava/lang/String;Z)V

    sget-object p1, Lcom/ex/auto/CentralWatchdogService;->d2:[I

    sget-object p1, Lcom/ex/auto/CentralWatchdogService;->g2:Lcom/ex/auto/CentralWatchdogService;

    if-eqz p1, :cond_3

    iget-object p2, p1, Lcom/ex/auto/CentralWatchdogService;->a:Landroid/os/Handler;

    new-instance v0, LT/z0;

    const/16 v1, 0x8

    invoke-direct {v0, p1, v1}, LT/z0;-><init>(Lcom/ex/auto/CentralWatchdogService;I)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    :goto_1
    sget-object p1, Lv0/e;->c:Lv0/e;

    return-object p1

    :pswitch_0
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    sget v0, Lcom/ex/auto/MainActivity;->u0:I

    const-string v0, "c"

    invoke-static {p1, v0}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, LT/E2;->b:Lcom/ex/auto/MainActivity;

    invoke-virtual {v0, p2, p1}, Lcom/ex/auto/MainActivity;->C1(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method
