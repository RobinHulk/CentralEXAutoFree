.class public final synthetic LT/B0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LH0/a;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/app/Service;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/app/Service;Ljava/lang/Object;I)V
    .locals 0

    iput p3, p0, LT/B0;->a:I

    iput-object p1, p0, LT/B0;->b:Landroid/app/Service;

    iput-object p2, p0, LT/B0;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 30

    move-object/from16 v1, p0

    const-string v2, "CentralWatchdog"

    const/4 v0, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget v5, v1, LT/B0;->a:I

    packed-switch v5, :pswitch_data_0

    sget-object v0, Lcom/ex/auto/QuickAccessFloaterService;->j0:Ljava/util/List;

    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/ex/auto/AppPipFloaterService;

    iget-object v3, v1, LT/B0;->b:Landroid/app/Service;

    check-cast v3, Lcom/ex/auto/QuickAccessFloaterService;

    invoke-direct {v0, v3, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v2, v1, LT/B0;->c:Ljava/lang/Object;

    check-cast v2, LT/C;

    iget-object v2, v2, LT/C;->b:Ljava/lang/String;

    const-string v4, "pacote"

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    invoke-virtual {v3}, Lcom/ex/auto/QuickAccessFloaterService;->j()V

    sget-object v0, Lv0/e;->c:Lv0/e;

    return-object v0

    :pswitch_0
    sget-object v0, Lcom/ex/auto/QuickAccessFloaterService;->j0:Ljava/util/List;

    new-instance v0, Landroid/content/Intent;

    iget-object v2, v1, LT/B0;->b:Landroid/app/Service;

    check-cast v2, Lcom/ex/auto/QuickAccessFloaterService;

    const-class v3, Lcom/ex/auto/SplitFloaterService;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v0}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    invoke-virtual {v2}, Lcom/ex/auto/QuickAccessFloaterService;->j()V

    new-instance v0, Ljava/lang/Thread;

    new-instance v2, LT/T0;

    iget-object v3, v1, LT/B0;->c:Ljava/lang/Object;

    check-cast v3, LT/D;

    const/16 v4, 0x9

    invoke-direct {v2, v3, v4}, LT/T0;-><init>(Ljava/lang/Object;I)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    sget-object v0, Lv0/e;->c:Lv0/e;

    return-object v0

    :pswitch_1
    sget-object v5, Lcom/ex/auto/CentralWatchdogService;->d2:[I

    iget-object v5, v1, LT/B0;->b:Landroid/app/Service;

    check-cast v5, Lcom/ex/auto/CentralWatchdogService;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v6, 0x11400400

    const v7, 0x11400401

    filled-new-array {v6, v7}, [I

    move-result-object v6

    move v7, v4

    :goto_0
    const/4 v8, 0x2

    if-ge v7, v8, :cond_2

    aget v8, v6, v7

    sget-object v9, LT/U;->a:Ljava/util/concurrent/ExecutorService;

    iget-object v9, v1, LT/B0;->c:Ljava/lang/Object;

    check-cast v9, Landroid/car/hardware/property/CarPropertyManager;

    invoke-static {v9, v8, v4}, LT/U;->e(Landroid/car/hardware/property/CarPropertyManager;II)Ljava/lang/Object;

    move-result-object v8

    instance-of v9, v8, Ljava/lang/Integer;

    if-eqz v9, :cond_0

    check-cast v8, Ljava/lang/Integer;

    goto :goto_1

    :cond_0
    move-object v8, v0

    :goto_1
    if-eqz v8, :cond_1

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-eqz v9, :cond_1

    move-object v0, v8

    goto :goto_2

    :cond_1
    add-int/2addr v7, v3

    goto :goto_0

    :cond_2
    :goto_2
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v3, v5, Lcom/ex/auto/CentralWatchdogService;->J:I

    if-eq v0, v3, :cond_4

    iput v0, v5, Lcom/ex/auto/CentralWatchdogService;->J:I

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "poll: troca de marcha (val="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") \u2014 reaplicar drive/regen"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->J:Z

    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    iget-object v0, v5, Lcom/ex/auto/CentralWatchdogService;->a:Landroid/os/Handler;

    iget-object v2, v5, Lcom/ex/auto/CentralWatchdogService;->Q1:LT/p0;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-wide/16 v3, 0x258

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    :goto_3
    sget-object v0, Lv0/e;->c:Lv0/e;

    return-object v0

    :pswitch_2
    const-string v0, "update_check_next_at"

    iget-object v5, v1, LT/B0;->b:Landroid/app/Service;

    check-cast v5, Lcom/ex/auto/CentralWatchdogService;

    iget-object v6, v1, LT/B0;->c:Ljava/lang/Object;

    check-cast v6, LT/D0;

    const-string v7, "update_attempt_vc"

    const-string v8, "ok (vc="

    const-string v9, "falha download "

    const-string v10, "Auto-update install "

    const-string v11, "instalando "

    const-string v12, "Auto-update re-check falhou: "

    const-string v13, "baixando "

    const-string v14, "Auto-update: vers\u00e3o ainda mais recente ("

    const-string v15, "Auto-update: nova vers\u00e3o "

    const-string v3, "Auto-update: vc="

    const-string v4, "instala\u00e7\u00e3o da "

    move-object/from16 v18, v8

    move-object/from16 v19, v9

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    sget-object v22, Lcom/ex/auto/CentralWatchdogService;->d2:[I

    invoke-virtual {v5}, Lcom/ex/auto/CentralWatchdogService;->M()Landroid/content/SharedPreferences;

    move-result-object v8

    move-object/from16 v23, v10

    const-wide/16 v9, 0x0

    invoke-interface {v8, v0, v9, v10}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v24

    cmp-long v8, v20, v24

    if-gez v8, :cond_5

    sub-long v24, v24, v20

    const-wide/32 v26, 0x2932e00

    cmp-long v8, v24, v26

    if-gez v8, :cond_5

    sget-object v0, Lcom/ex/auto/CentralWatchdogService;->i2:Ljava/util/concurrent/atomic/AtomicReference;

    const-string v3, "aguardando a pr\u00f3xima janela de consulta"

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    sget-boolean v0, Lcom/ex/auto/CentralWatchdogService;->f2:Z

    if-eqz v0, :cond_d

    iget-object v0, v5, Lcom/ex/auto/CentralWatchdogService;->a:Landroid/os/Handler;

    const-wide/32 v3, 0xea60

    invoke-virtual {v0, v6, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_c

    :catchall_0
    move-exception v0

    move-object v13, v2

    goto/16 :goto_9

    :cond_5
    invoke-virtual {v5}, Lcom/ex/auto/CentralWatchdogService;->M()Landroid/content/SharedPreferences;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    const-wide/32 v24, 0x124f80

    add-long v9, v20, v24

    invoke-interface {v8, v0, v9, v10}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    sget-object v8, Lcom/ex/auto/CentralWatchdogService;->i2:Ljava/util/concurrent/atomic/AtomicReference;

    const-string v9, "verificando\u2026"

    invoke-virtual {v8, v9}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    invoke-static {v5}, Lcom/ex/auto/CentralWatchdogService;->j(Lcom/ex/auto/CentralWatchdogService;)LT/A0;

    move-result-object v9

    invoke-virtual {v5}, Lcom/ex/auto/CentralWatchdogService;->M()Landroid/content/SharedPreferences;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    const-wide/32 v24, 0x36ee80

    move-object/from16 v28, v11

    move-object/from16 v29, v12

    add-long v11, v20, v24

    invoke-interface {v10, v0, v11, v12}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v0, v10, v11}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v10

    invoke-virtual {v5}, Lcom/ex/auto/CentralWatchdogService;->M()Landroid/content/SharedPreferences;

    move-result-object v0

    move-object/from16 v20, v13

    const-wide/16 v12, -0x1

    invoke-interface {v0, v7, v12, v13}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v24
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v26, 0x0

    cmp-long v0, v26, v24

    const-string v12, "update_attempt_count"

    if-gtz v0, :cond_6

    cmp-long v0, v24, v10

    if-gtz v0, :cond_6

    :try_start_1
    invoke-virtual {v5}, Lcom/ex/auto/CentralWatchdogService;->M()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v12}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_6
    iget-wide v0, v9, LT/A0;->a:J

    cmp-long v0, v0, v10

    if-lez v0, :cond_b

    invoke-virtual {v5}, Lcom/ex/auto/CentralWatchdogService;->M()Landroid/content/SharedPreferences;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v13, v2

    const-wide/16 v1, -0x1

    :try_start_2
    invoke-interface {v0, v7, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v24

    invoke-virtual {v5}, Lcom/ex/auto/CentralWatchdogService;->M()Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v12, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iget-wide v1, v9, LT/A0;->a:J

    cmp-long v1, v24, v1

    if-nez v1, :cond_7

    iget v1, v5, Lcom/ex/auto/CentralWatchdogService;->Z1:I

    if-lt v0, v1, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v9, LT/A0;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " falhou "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "x \u2014 pausada (aguardando nova vers\u00e3o; ou instale manualmente)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, v9, LT/A0;->a:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " pausada ap\u00f3s "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " falhas (guard anti-loop)"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/ex/auto/CentralWatchdogService;->f2:Z

    if-eqz v0, :cond_d

    iget-object v0, v5, Lcom/ex/auto/CentralWatchdogService;->a:Landroid/os/Handler;

    const-wide/32 v1, 0xea60

    invoke-virtual {v0, v6, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_c

    :catchall_1
    move-exception v0

    goto/16 :goto_9

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v9, LT/A0;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (vc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, v9, LT/A0;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " > "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/ex/auto/CentralWatchdogService;->h2:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v9, LT/A0;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x2026

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-static {v5, v9}, Lcom/ex/auto/CentralWatchdogService;->i(Lcom/ex/auto/CentralWatchdogService;LT/A0;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-static {v5}, Lcom/ex/auto/CentralWatchdogService;->j(Lcom/ex/auto/CentralWatchdogService;)LT/A0;

    move-result-object v2

    iget-wide v3, v2, LT/A0;->a:J

    iget-wide v10, v9, LT/A0;->a:J

    cmp-long v0, v3, v10

    if-lez v0, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v2, LT/A0;->b:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ") \u2014 re-baixando"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v2, LT/A0;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (re-check)\u2026"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    invoke-static {v5, v2}, Lcom/ex/auto/CentralWatchdogService;->i(Lcom/ex/auto/CentralWatchdogService;LT/A0;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-object v9, v2

    goto :goto_5

    :catchall_2
    move-exception v0

    goto/16 :goto_8

    :catch_0
    move-exception v0

    move-object v9, v2

    goto :goto_4

    :catch_1
    move-exception v0

    :goto_4
    :try_start_6
    new-instance v1, Ljava/lang/StringBuilder;

    move-object/from16 v2, v29

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    :goto_5
    invoke-virtual {v5}, Lcom/ex/auto/CentralWatchdogService;->M()Landroid/content/SharedPreferences;

    move-result-object v0

    const-wide/16 v1, -0x1

    invoke-interface {v0, v7, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iget-wide v2, v9, LT/A0;->a:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_9

    invoke-virtual {v5}, Lcom/ex/auto/CentralWatchdogService;->M()Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v12, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_6

    :cond_9
    const/4 v0, 0x0

    :goto_6
    invoke-virtual {v5}, Lcom/ex/auto/CentralWatchdogService;->M()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iget-wide v2, v9, LT/A0;->a:J

    invoke-interface {v1, v7, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const/4 v2, 0x1

    add-int/2addr v0, v2

    invoke-interface {v1, v12, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    sget-object v0, Lcom/ex/auto/CentralWatchdogService;->i2:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Ljava/lang/StringBuilder;

    move-object/from16 v2, v28

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v9, LT/A0;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " (a central pode reiniciar)\u2026"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    invoke-static {v5}, Lcom/ex/auto/CentralWatchdogService;->k(Lcom/ex/auto/CentralWatchdogService;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    move-object/from16 v2, v23

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v9, LT/A0;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " (destacado): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x12c

    invoke-static {v2, v0}, LO0/j;->W0(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    sget-object v0, Lcom/ex/auto/CentralWatchdogService;->h2:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto/16 :goto_b

    :catch_2
    move-exception v0

    move-object v1, v0

    :try_start_8
    sget-object v0, Lcom/ex/auto/CentralWatchdogService;->d2:[I

    sget-object v0, Lcom/ex/auto/CentralWatchdogService;->i2:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v3, v19

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v9, LT/A0;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_a

    const/16 v4, 0x78

    invoke-static {v4, v3}, LO0/j;->V0(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_7

    :cond_a
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    :goto_7
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :goto_8
    :try_start_9
    sget-object v1, Lcom/ex/auto/CentralWatchdogService;->h2:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw v0

    :cond_b
    move-object v13, v2

    new-instance v0, Ljava/lang/StringBuilder;

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", latest="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, v9, LT/A0;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_b

    :goto_9
    sget-object v1, Lcom/ex/auto/CentralWatchdogService;->i2:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_c

    const/16 v3, 0xa0

    invoke-static {v3, v2}, LO0/j;->V0(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_a

    :cond_c
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    :goto_a
    const-string v3, "erro: "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Auto-update erro: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v13}, LM/d0;->r(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_b
    sget-boolean v0, Lcom/ex/auto/CentralWatchdogService;->f2:Z

    if-eqz v0, :cond_d

    iget-object v0, v5, Lcom/ex/auto/CentralWatchdogService;->a:Landroid/os/Handler;

    const-wide/32 v1, 0xea60

    invoke-virtual {v0, v6, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_d
    :goto_c
    sget-object v0, Lv0/e;->c:Lv0/e;

    return-object v0

    :pswitch_3
    sget-object v1, Lcom/ex/auto/CentralWatchdogService;->d2:[I

    move-object/from16 v1, p0

    iget-object v2, v1, LT/B0;->b:Landroid/app/Service;

    check-cast v2, Lcom/ex/auto/CentralWatchdogService;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_a
    new-instance v3, LT/I1;

    const/16 v4, 0x15b3

    invoke-direct {v3, v4}, LT/I1;-><init>(I)V

    const-string v4, "ip neigh show dev ap0 2>/dev/null"

    const/16 v5, 0xfa0

    invoke-virtual {v3, v5, v4}, LT/I1;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, LI0/f;->b(Ljava/lang/Object;)V

    invoke-static {v3}, LO0/j;->H0(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_e
    :goto_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Ljava/lang/String;

    const-string v6, "^[0-9]+\\.[0-9]+\\.[0-9]+\\.[0-9]+.*"

    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v6

    const-string v7, "compile(...)"

    invoke-static {v6, v7}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "input"

    invoke-static {v5, v7}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-eqz v6, :cond_f

    const-string v6, "REACHABLE"

    const/4 v11, 0x0

    invoke-static {v5, v6, v11}, LO0/j;->x0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v6

    if-nez v6, :cond_11

    const-string v6, "STALE"

    invoke-static {v5, v6, v11}, LO0/j;->x0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v6

    if-nez v6, :cond_11

    const-string v6, "DELAY"

    invoke-static {v5, v6, v11}, LO0/j;->x0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v5

    if-eqz v5, :cond_e

    goto :goto_e

    :cond_f
    const/4 v11, 0x0

    goto :goto_d

    :cond_10
    move-object v4, v0

    :cond_11
    :goto_e
    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_12

    const-string v3, " "

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, LO0/j;->O0(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lw0/i;->a0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    move-object v0, v3

    :catch_3
    :cond_12
    iget-object v3, v2, Lcom/ex/auto/CentralWatchdogService;->a:Landroid/os/Handler;

    new-instance v4, LT/z;

    iget-object v5, v1, LT/B0;->c:Ljava/lang/Object;

    check-cast v5, LT/D0;

    const/4 v6, 0x1

    invoke-direct {v4, v2, v0, v5, v6}, LT/z;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    sget-object v0, Lv0/e;->c:Lv0/e;

    return-object v0

    :pswitch_4
    move v6, v3

    move v11, v4

    sget-object v0, Lcom/ex/auto/CentralWatchdogService;->d2:[I

    iget-object v0, v1, LT/B0;->b:Landroid/app/Service;

    move-object v13, v0

    check-cast v13, Lcom/ex/auto/CentralWatchdogService;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/ex/auto/CentralWatchdogService;->b()Z

    move-result v14

    iget v0, v13, Lcom/ex/auto/CentralWatchdogService;->J0:I

    iget v2, v13, Lcom/ex/auto/CentralWatchdogService;->E0:I

    if-lt v0, v2, :cond_13

    move v15, v6

    goto :goto_f

    :cond_13
    move v15, v11

    :goto_f
    if-eqz v15, :cond_15

    iget-boolean v0, v13, Lcom/ex/auto/CentralWatchdogService;->z1:Z

    if-nez v0, :cond_14

    iget-boolean v0, v13, Lcom/ex/auto/CentralWatchdogService;->A1:Z

    if-eqz v0, :cond_15

    invoke-virtual {v13}, Lcom/ex/auto/CentralWatchdogService;->o()Z

    move-result v0

    if-eqz v0, :cond_15

    :cond_14
    move/from16 v17, v6

    goto :goto_10

    :cond_15
    move/from16 v17, v11

    :goto_10
    iget-object v0, v13, Lcom/ex/auto/CentralWatchdogService;->a:Landroid/os/Handler;

    new-instance v2, LT/C0;

    iget-object v3, v1, LT/B0;->c:Ljava/lang/Object;

    move-object/from16 v16, v3

    check-cast v16, LT/D0;

    move-object v12, v2

    invoke-direct/range {v12 .. v17}, LT/C0;-><init>(Lcom/ex/auto/CentralWatchdogService;ZZLT/D0;Z)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    sget-object v0, Lv0/e;->c:Lv0/e;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
