.class public final LT/E0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/ex/auto/CentralWatchdogService;


# direct methods
.method public synthetic constructor <init>(Lcom/ex/auto/CentralWatchdogService;I)V
    .locals 0

    iput p2, p0, LT/E0;->a:I

    iput-object p1, p0, LT/E0;->b:Lcom/ex/auto/CentralWatchdogService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a(II)V
    .locals 0

    return-void
.end method


# virtual methods
.method public final onChangeEvent(Landroid/car/hardware/CarPropertyValue;)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const/4 v3, 0x2

    const/4 v4, 0x0

    const-string v5, "CentralWatchdog"

    const/4 v0, 0x0

    const-string v6, "value"

    const/4 v7, 0x1

    iget v8, v1, LT/E0;->a:I

    packed-switch v8, :pswitch_data_0

    invoke-static {v2, v6}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v6

    instance-of v8, v6, Ljava/lang/Integer;

    if-eqz v8, :cond_0

    move-object v0, v6

    check-cast v0, Ljava/lang/Integer;

    :cond_0
    if-eqz v0, :cond_13

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Landroid/car/hardware/CarPropertyValue;->getAreaId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Landroid/car/hardware/CarPropertyValue;->getStatus()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    filled-new-array {v8, v0, v9}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v8, 0x3

    invoke-static {v0, v8}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    const-string v9, "DOOR_POS \u00e1rea=0x%x val=%d status=%d"

    invoke-static {v9, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, LT/E0;->b:Lcom/ex/auto/CentralWatchdogService;

    invoke-virtual/range {p1 .. p1}, Landroid/car/hardware/CarPropertyValue;->getAreaId()I

    move-result v9

    sget-object v10, Lcom/ex/auto/CentralWatchdogService;->d2:[I

    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->M()Landroid/content/SharedPreferences;

    move-result-object v10

    const-string v11, "window_driver_on_door"

    invoke-interface {v10, v11, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    if-nez v10, :cond_1

    goto/16 :goto_4

    :cond_1
    sget-object v10, LT/q;->c:Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    if-eqz v10, :cond_c

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-eq v6, v7, :cond_3

    if-eq v6, v3, :cond_2

    goto/16 :goto_4

    :cond_2
    move v12, v4

    goto :goto_0

    :cond_3
    move v12, v7

    :goto_0
    iget-object v13, v0, Lcom/ex/auto/CentralWatchdogService;->l:Ljava/util/HashMap;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Boolean;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    iget-object v7, v0, Lcom/ex/auto/CentralWatchdogService;->l:Ljava/util/HashMap;

    invoke-virtual {v7, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v13, :cond_c

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v13, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    goto/16 :goto_4

    :cond_4
    iget-object v7, v0, Lcom/ex/auto/CentralWatchdogService;->k:Landroid/car/hardware/property/CarPropertyManager;

    if-nez v7, :cond_5

    goto/16 :goto_4

    :cond_5
    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->M()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v13, "window_opposite_on_door"

    invoke-interface {v0, v13, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, LT/q;->d:Ljava/lang/Object;

    invoke-interface {v0, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v10, v0

    goto :goto_1

    :cond_6
    move v10, v11

    :goto_1
    if-eq v10, v11, :cond_7

    const-string v0, "oposta "

    :goto_2
    move-object v11, v0

    goto :goto_3

    :cond_7
    const-string v0, ""

    goto :goto_2

    :goto_3
    const v0, 0x13400bc0

    invoke-static {v7, v0, v10}, LT/U;->c(Landroid/car/hardware/property/CarPropertyManager;II)Ljava/lang/Integer;

    move-result-object v13

    if-eqz v13, :cond_b

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v14

    const-string v15, "0x%x falhou: %s"

    const-string v4, "windowDriver set "

    const/16 v3, 0xa

    const-string v0, "janela "

    if-eqz v12, :cond_9

    const/4 v12, 0x7

    if-le v14, v12, :cond_8

    const-string v3, "0x%x n\u00e3o est\u00e1 fechada (pos=%d) \u2014 porta 0x%x abriu, n\u00e3o mexe"

    invoke-static {v0, v11, v3}, LM/d0;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v3, v13, v4}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v8}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_8
    const v12, 0x13400bc0

    :try_start_0
    invoke-virtual {v7, v12, v10, v3}, Landroid/car/hardware/property/CarPropertyManager;->setIntProperty(III)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "0x%x \u2192 POS %d (porta 0x%x aberta)"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    filled-new-array {v7, v3, v9}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v8}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_4

    :catchall_0
    move-exception v0

    invoke-static {v4, v11, v15}, LM/d0;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v4, v0}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v4, 0x2

    invoke-static {v0, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_9
    sub-int/2addr v14, v3

    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v12

    if-le v12, v8, :cond_a

    const-string v4, "0x%x n\u00e3o est\u00e1 mais perto de POS %d (pos=%d) \u2014 porta 0x%x fechou, n\u00e3o mexe"

    invoke-static {v0, v11, v4}, LM/d0;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array {v4, v3, v13, v7}, [Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x4

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_a
    const v3, 0x13400bc0

    const/4 v8, 0x0

    :try_start_1
    invoke-virtual {v7, v3, v10, v8}, Landroid/car/hardware/property/CarPropertyManager;->setIntProperty(III)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "0x%x \u2192 POS 0 (porta 0x%x fechada)"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array {v3, v7}, [Ljava/lang/Object;

    move-result-object v3

    const/4 v7, 0x2

    invoke-static {v3, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v0

    invoke-static {v4, v11, v15}, LM/d0;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v4, v0}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v4, 0x2

    invoke-static {v0, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_b
    const-string v0, "windowDriver leitura "

    const-string v3, "0x%x falhou (timeout/erro)"

    invoke-static {v0, v11, v3}, LM/d0;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    :goto_4
    iget-object v0, v1, LT/E0;->b:Lcom/ex/auto/CentralWatchdogService;

    invoke-virtual/range {p1 .. p1}, Landroid/car/hardware/CarPropertyValue;->getAreaId()I

    move-result v2

    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->M()Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "pause_audio_on_door"

    const/4 v7, 0x0

    invoke-interface {v3, v4, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_d

    goto :goto_6

    :cond_d
    const/4 v3, 0x1

    if-eq v2, v3, :cond_e

    goto :goto_6

    :cond_e
    if-eq v6, v3, :cond_10

    const/4 v3, 0x2

    if-eq v6, v3, :cond_f

    goto :goto_6

    :cond_f
    const/4 v4, 0x0

    goto :goto_5

    :cond_10
    const/4 v4, 0x1

    :goto_5
    iget-object v0, v0, Lcom/ex/auto/CentralWatchdogService;->m:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v3, :cond_13

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_6

    :cond_11
    if-nez v4, :cond_12

    goto :goto_6

    :cond_12
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    const-string v3, "doorAudioPause: porta 0x%x abriu \u2014 pausando m\u00eddia (keyevent 127)"

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/Thread;

    new-instance v3, LT/a0;

    invoke-direct {v3, v2}, LT/a0;-><init>(I)V

    invoke-direct {v0, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_13
    :goto_6
    return-void

    :pswitch_0
    invoke-static {v2, v6}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/car/hardware/CarPropertyValue;->getStatus()I

    move-result v3

    if-eqz v3, :cond_14

    goto :goto_7

    :cond_14
    invoke-virtual/range {p1 .. p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Ljava/lang/Boolean;

    if-eqz v4, :cond_15

    move-object v0, v3

    check-cast v0, Ljava/lang/Boolean;

    :cond_15
    if-eqz v0, :cond_19

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual/range {p1 .. p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v2

    const v4, 0x10200c00

    iget-object v5, v1, LT/E0;->b:Lcom/ex/auto/CentralWatchdogService;

    if-eq v2, v4, :cond_18

    const v4, 0x15200507

    if-eq v2, v4, :cond_17

    const v4, 0x15200510

    if-eq v2, v4, :cond_16

    goto :goto_7

    :cond_16
    iget-object v2, v5, Lcom/ex/auto/CentralWatchdogService;->t:Ljava/lang/Boolean;

    iput-object v0, v5, Lcom/ex/auto/CentralWatchdogService;->t:Ljava/lang/Boolean;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v2, v0}, LI0/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    if-nez v3, :cond_19

    const-string v0, "HVAC_POWER_ON\u2192false"

    invoke-static {v5, v0}, Lcom/ex/auto/CentralWatchdogService;->h(Lcom/ex/auto/CentralWatchdogService;Ljava/lang/String;)V

    goto :goto_7

    :cond_17
    iget-object v2, v5, Lcom/ex/auto/CentralWatchdogService;->u:Ljava/lang/Boolean;

    iput-object v0, v5, Lcom/ex/auto/CentralWatchdogService;->u:Ljava/lang/Boolean;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v2, v0}, LI0/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    const/4 v2, 0x1

    if-ne v3, v2, :cond_19

    const-string v0, "frontMaxDefrost\u2192true"

    invoke-static {v5, v0}, Lcom/ex/auto/CentralWatchdogService;->h(Lcom/ex/auto/CentralWatchdogService;Ljava/lang/String;)V

    goto :goto_7

    :cond_18
    iget-object v2, v5, Lcom/ex/auto/CentralWatchdogService;->v:Ljava/lang/Boolean;

    iput-object v0, v5, Lcom/ex/auto/CentralWatchdogService;->v:Ljava/lang/Boolean;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v2, v0}, LI0/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    const/4 v2, 0x1

    if-ne v3, v2, :cond_19

    const-string v0, "windshieldHeat\u2192true"

    invoke-static {v5, v0}, Lcom/ex/auto/CentralWatchdogService;->h(Lcom/ex/auto/CentralWatchdogService;Ljava/lang/String;)V

    :cond_19
    :goto_7
    return-void

    :pswitch_1
    invoke-static {v2, v6}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "rearCamTurnSignal: onChangeEvent prop=0x%x status="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/car/hardware/CarPropertyValue;->getStatus()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " value="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const/4 v6, 0x1

    invoke-static {v4, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p1 .. p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Ljava/lang/Integer;

    if-eqz v3, :cond_1a

    check-cast v2, Ljava/lang/Integer;

    goto :goto_8

    :cond_1a
    move-object v2, v0

    :goto_8
    if-eqz v2, :cond_24

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, v1, LT/E0;->b:Lcom/ex/auto/CentralWatchdogService;

    iget-object v6, v4, Lcom/ex/auto/CentralWatchdogService;->G:Ljava/lang/Integer;

    iput-object v2, v4, Lcom/ex/auto/CentralWatchdogService;->G:Ljava/lang/Integer;

    if-nez v6, :cond_1b

    const/4 v7, 0x1

    goto :goto_9

    :cond_1b
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v7, 0x1

    if-eq v2, v7, :cond_1e

    :goto_9
    if-nez v6, :cond_1c

    const/4 v6, 0x2

    goto :goto_a

    :cond_1c
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v6, 0x2

    if-ne v2, v6, :cond_1d

    goto :goto_b

    :cond_1d
    :goto_a
    const/4 v2, 0x0

    goto :goto_c

    :cond_1e
    const/4 v6, 0x2

    :goto_b
    move v2, v7

    :goto_c
    if-eq v3, v7, :cond_20

    if-ne v3, v6, :cond_1f

    goto :goto_d

    :cond_1f
    const/4 v3, 0x0

    goto :goto_e

    :cond_20
    :goto_d
    const/4 v3, 0x1

    :goto_e
    iget-object v6, v4, Lcom/ex/auto/CentralWatchdogService;->a:Landroid/os/Handler;

    if-eqz v3, :cond_22

    if-nez v2, :cond_22

    iget-object v2, v4, Lcom/ex/auto/CentralWatchdogService;->M1:LT/z0;

    if-eqz v2, :cond_21

    invoke-virtual {v6, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-object v0, v4, Lcom/ex/auto/CentralWatchdogService;->M1:LT/z0;

    :cond_21
    const/4 v2, 0x1

    invoke-virtual {v4, v2}, Lcom/ex/auto/CentralWatchdogService;->u0(Z)V

    goto :goto_f

    :cond_22
    if-nez v3, :cond_24

    if-eqz v2, :cond_24

    invoke-virtual {v4}, Lcom/ex/auto/CentralWatchdogService;->M()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "rear_cam_hold_open_5s"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_23

    new-instance v0, LT/z0;

    const/16 v2, 0xf

    invoke-direct {v0, v4, v2}, LT/z0;-><init>(Lcom/ex/auto/CentralWatchdogService;I)V

    iput-object v0, v4, Lcom/ex/auto/CentralWatchdogService;->M1:LT/z0;

    const-wide/16 v2, 0x1388

    invoke-virtual {v6, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const-string v0, "rearCamTurnSignal: seta desligou, segurando o PiP aberto por 5000ms (\u00edcone 5s)"

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    :cond_23
    const/4 v3, 0x0

    invoke-virtual {v4, v3}, Lcom/ex/auto/CentralWatchdogService;->u0(Z)V

    :cond_24
    :goto_f
    return-void

    :pswitch_2
    move v3, v4

    invoke-static {v2, v6}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/car/hardware/CarPropertyValue;->getStatus()I

    move-result v4

    if-eqz v4, :cond_25

    goto/16 :goto_13

    :cond_25
    invoke-virtual/range {p1 .. p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v4

    instance-of v6, v4, Ljava/lang/Integer;

    if-eqz v6, :cond_26

    move-object v0, v4

    check-cast v0, Ljava/lang/Integer;

    :cond_26
    if-eqz v0, :cond_2a

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual/range {p1 .. p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v4

    iget-object v6, v1, LT/E0;->b:Lcom/ex/auto/CentralWatchdogService;

    packed-switch v4, :pswitch_data_1

    move v4, v3

    goto :goto_12

    :pswitch_3
    iget v4, v6, Lcom/ex/auto/CentralWatchdogService;->I:I

    if-eq v0, v4, :cond_27

    const/4 v4, 0x1

    goto :goto_10

    :cond_27
    move v4, v3

    :goto_10
    iput v0, v6, Lcom/ex/auto/CentralWatchdogService;->I:I

    goto :goto_12

    :pswitch_4
    iget v4, v6, Lcom/ex/auto/CentralWatchdogService;->H:I

    if-eq v0, v4, :cond_28

    const/4 v4, 0x1

    goto :goto_11

    :cond_28
    move v4, v3

    :goto_11
    iput v0, v6, Lcom/ex/auto/CentralWatchdogService;->H:I

    :goto_12
    if-eqz v4, :cond_2a

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "troca de marcha (prop="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " val="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") \u2014 reaplicar drive/regen"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/ex/auto/CentralWatchdogService;->d2:[I

    sget-boolean v0, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->J:Z

    if-eqz v0, :cond_29

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_13

    :cond_29
    iget-object v0, v6, Lcom/ex/auto/CentralWatchdogService;->a:Landroid/os/Handler;

    iget-object v2, v6, Lcom/ex/auto/CentralWatchdogService;->Q1:LT/p0;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-wide/16 v3, 0x258

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2a
    :goto_13
    return-void

    :pswitch_5
    move v3, v4

    invoke-static {v2, v6}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/car/hardware/CarPropertyValue;->getStatus()I

    move-result v4

    if-eqz v4, :cond_2b

    goto/16 :goto_15

    :cond_2b
    invoke-virtual/range {p1 .. p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v2

    instance-of v4, v2, Ljava/lang/Integer;

    if-eqz v4, :cond_2c

    move-object v0, v2

    check-cast v0, Ljava/lang/Integer;

    :cond_2c
    if-eqz v0, :cond_2f

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_2d

    const/4 v4, 0x1

    goto :goto_14

    :cond_2d
    move v4, v3

    :goto_14
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "aebObserver: AEB int="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " \u2192 on="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, LT/E0;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-object v2, Lcom/ex/auto/CentralWatchdogService;->d2:[I

    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->M()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "aeb_state_saved"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v0, v1, LT/E0;->b:Lcom/ex/auto/CentralWatchdogService;

    iget-boolean v2, v0, Lcom/ex/auto/CentralWatchdogService;->B:Z

    if-nez v2, :cond_2e

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/ex/auto/CentralWatchdogService;->B:Z

    goto :goto_15

    :cond_2e
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-object v0, v1, LT/E0;->b:Lcom/ex/auto/CentralWatchdogService;

    iget-wide v6, v0, Lcom/ex/auto/CentralWatchdogService;->C:J

    sub-long/2addr v2, v6

    const-wide/16 v6, 0x7530

    cmp-long v0, v2, v6

    if-lez v0, :cond_2f

    iget-object v0, v1, LT/E0;->b:Lcom/ex/auto/CentralWatchdogService;

    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->M()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "aeb_desired"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eq v0, v4, :cond_2f

    iget-object v0, v1, LT/E0;->b:Lcom/ex/auto/CentralWatchdogService;

    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->M()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "aebObserver: usu\u00e1rio mudou o AEB pelo carro \u2192 desejado="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2f
    :goto_15
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x11400400
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public final onErrorEvent(II)V
    .locals 2

    iget v0, p0, LT/E0;->a:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "windowDriver: onErrorEvent prop="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " \u00e1rea=0x%x"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const/4 v0, 0x1

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "CentralWatchdog"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "recircGuard: onErrorEvent prop="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " \u00e1rea=0x%x"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const/4 v0, 0x1

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "CentralWatchdog"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "rearCamTurnSignal: onErrorEvent prop="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " \u00e1rea=0x%x"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const/4 v0, 0x1

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "CentralWatchdog"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :pswitch_2
    return-void

    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "aebObserver: onErrorEvent prop="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " \u00e1rea=0x%x"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const/4 v0, 0x1

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "CentralWatchdog"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
