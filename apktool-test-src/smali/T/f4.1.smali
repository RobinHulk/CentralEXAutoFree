.class public final synthetic LT/f4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/ex/auto/QuickAccessFloaterService;

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Lcom/ex/auto/QuickAccessFloaterService;ZI)V
    .locals 0

    iput p3, p0, LT/f4;->a:I

    iput-object p1, p0, LT/f4;->b:Lcom/ex/auto/QuickAccessFloaterService;

    iput-boolean p2, p0, LT/f4;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 17

    move-object/from16 v1, p0

    const-string v0, "property"

    const/4 v2, 0x0

    const-string v3, "QuickAccessFloater"

    const/4 v4, 0x0

    iget-boolean v5, v1, LT/f4;->c:Z

    iget-object v6, v1, LT/f4;->b:Lcom/ex/auto/QuickAccessFloaterService;

    const/4 v7, 0x1

    iget v8, v1, LT/f4;->a:I

    packed-switch v8, :pswitch_data_0

    sget-object v0, Lcom/ex/auto/QuickAccessFloaterService;->j0:Ljava/util/List;

    const-string v0, "/sys/class/leds/lcd-backlight/brightness"

    const/16 v2, 0xbb8

    :try_start_0
    new-instance v8, LT/I1;

    const/16 v9, 0x15b3

    invoke-direct {v8, v9}, LT/I1;-><init>(I)V

    const-string v9, "setenforce 0 2>/dev/null"

    invoke-virtual {v8, v2, v9}, LT/I1;->b(ILjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v8}, LA/b;->b0(Ljava/io/File;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, LO0/j;->X0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    const/16 v9, 0xff

    invoke-static {v8, v7, v9}, LA/b;->o(III)I

    move-result v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    const/16 v8, 0xa6

    :goto_0
    iput v8, v6, Lcom/ex/auto/QuickAccessFloaterService;->M:I

    :try_start_2
    const-string v8, "settings get global heads_up_notifications_enabled"

    invoke-virtual {v6, v2, v8}, Lcom/ex/auto/QuickAccessFloaterService;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, LO0/j;->X0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, LO0/r;->p0(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    :cond_0
    move v8, v7

    :goto_1
    iput v8, v6, Lcom/ex/auto/QuickAccessFloaterService;->N:I

    :try_start_3
    const-string v8, "settings put global heads_up_notifications_enabled 0"

    invoke-virtual {v6, v2, v8}, Lcom/ex/auto/QuickAccessFloaterService;->b(ILjava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    const-string v8, "settings get global audio_speed_volume_enable"

    invoke-virtual {v6, v2, v8}, Lcom/ex/auto/QuickAccessFloaterService;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, LO0/j;->X0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, LO0/r;->p0(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    if-eqz v8, :cond_1

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_2

    :catch_4
    :cond_1
    move v8, v7

    :goto_2
    iput v8, v6, Lcom/ex/auto/QuickAccessFloaterService;->O:I

    :try_start_5
    const-string v8, "settings put global audio_speed_volume_enable 0"

    invoke-virtual {v6, v2, v8}, Lcom/ex/auto/QuickAccessFloaterService;->b(ILjava/lang/String;)Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    if-eqz v5, :cond_2

    const/16 v2, 0xc

    goto :goto_3

    :cond_2
    move v2, v4

    :goto_3
    :try_start_6
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, LA/b;->k0(Ljava/io/File;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    move v4, v7

    goto :goto_4

    :catch_6
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v7, "backlight write: "

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v2, v3}, LM/d0;->n(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_4
    iget-object v0, v6, Lcom/ex/auto/QuickAccessFloaterService;->a:Landroid/os/Handler;

    new-instance v2, LT/H2;

    const/4 v3, 0x3

    invoke-direct {v2, v6, v4, v5, v3}, LT/H2;-><init>(Landroid/content/ContextWrapper;ZZI)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_0
    sget-object v8, Lcom/ex/auto/QuickAccessFloaterService;->j0:Ljava/util/List;

    const-string v8, "AEB write: "

    :try_start_7
    invoke-static {v6}, Landroid/car/Car;->createCar(Landroid/content/Context;)Landroid/car/Car;

    move-result-object v9
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_8
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    invoke-virtual {v9, v0}, Landroid/car/Car;->getCarManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v10, v0, Landroid/car/hardware/property/CarPropertyManager;

    if-eqz v10, :cond_3

    check-cast v0, Landroid/car/hardware/property/CarPropertyManager;

    goto :goto_5

    :catchall_0
    move-exception v0

    move-object v2, v9

    goto/16 :goto_a

    :catch_7
    move-exception v0

    goto :goto_8

    :cond_3
    move-object v0, v2

    :goto_5
    const v10, 0x2140403a

    if-eqz v0, :cond_4

    invoke-virtual {v0, v10, v4, v5}, Landroid/car/hardware/property/CarPropertyManager;->setIntProperty(III)V

    :cond_4
    const-wide/16 v11, 0x190

    invoke-static {v11, v12}, Ljava/lang/Thread;->sleep(J)V

    if-eqz v0, :cond_6

    invoke-static {v0, v10, v4}, LT/U;->c(Landroid/car/hardware/property/CarPropertyManager;II)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    if-eqz v0, :cond_5

    move v4, v7

    :cond_5
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_6

    :cond_6
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_6
    iput-object v0, v6, Lcom/ex/auto/QuickAccessFloaterService;->u:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v6}, Lcom/ex/auto/QuickAccessFloaterService;->r()Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "aeb_state_saved"

    invoke-interface {v4, v5, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :goto_7
    :try_start_9
    invoke-virtual {v9}, Landroid/car/Car;->disconnect()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9

    goto :goto_9

    :catchall_1
    move-exception v0

    goto :goto_a

    :catch_8
    move-exception v0

    move-object v9, v2

    :goto_8
    :try_start_a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v2, v6, Lcom/ex/auto/QuickAccessFloaterService;->u:Ljava/lang/Boolean;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    if-eqz v9, :cond_7

    goto :goto_7

    :catch_9
    :cond_7
    :goto_9
    iget-object v0, v6, Lcom/ex/auto/QuickAccessFloaterService;->a:Landroid/os/Handler;

    new-instance v2, LT/X3;

    const/16 v3, 0xb

    invoke-direct {v2, v6, v3}, LT/X3;-><init>(Lcom/ex/auto/QuickAccessFloaterService;I)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :goto_a
    if-eqz v2, :cond_8

    :try_start_b
    invoke-virtual {v2}, Landroid/car/Car;->disconnect()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_a

    :catch_a
    :cond_8
    throw v0

    :pswitch_1
    sget-object v8, Lcom/ex/auto/QuickAccessFloaterService;->j0:Ljava/util/List;

    :try_start_c
    invoke-static {v6}, Landroid/car/Car;->createCar(Landroid/content/Context;)Landroid/car/Car;

    move-result-object v8
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_e
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    :try_start_d
    const-string v9, "audio"

    invoke-virtual {v8, v9}, Landroid/car/Car;->getCarManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    instance-of v10, v9, Landroid/car/media/CarAudioManager;

    if-eqz v10, :cond_9

    check-cast v9, Landroid/car/media/CarAudioManager;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_b
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    goto :goto_b

    :catchall_2
    move-exception v0

    move-object v2, v8

    goto/16 :goto_15

    :catch_b
    move-exception v0

    move-object v2, v8

    goto/16 :goto_13

    :cond_9
    move-object v9, v2

    :goto_b
    if-nez v9, :cond_b

    :cond_a
    :goto_c
    :try_start_e
    invoke-virtual {v8}, Landroid/car/Car;->disconnect()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_f

    goto/16 :goto_14

    :cond_b
    const v10, 0x21407057

    const-string v11, "avas_sound_type_saved"

    if-eqz v5, :cond_f

    :try_start_f
    invoke-virtual {v8, v0}, Landroid/car/Car;->getCarManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    instance-of v13, v12, Landroid/car/hardware/property/CarPropertyManager;

    if-eqz v13, :cond_c

    check-cast v12, Landroid/car/hardware/property/CarPropertyManager;

    goto :goto_d

    :cond_c
    move-object v12, v2

    :goto_d
    sget-object v13, LT/q;->a:[I

    array-length v14, v13

    move v15, v4

    :goto_e
    if-ge v15, v14, :cond_f

    aget v2, v13, v15
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_b
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    if-eqz v12, :cond_d

    :try_start_10
    invoke-static {v12, v10, v2}, LT/U;->c(Landroid/car/hardware/property/CarPropertyManager;II)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_f

    :cond_d
    const/4 v2, 0x0

    :goto_f
    if-eqz v2, :cond_e

    invoke-virtual {v6}, Lcom/ex/auto/QuickAccessFloaterService;->r()Landroid/content/SharedPreferences;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v4, v11, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_c
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    goto :goto_10

    :catch_c
    :cond_e
    add-int/2addr v15, v7

    const/4 v2, 0x0

    const/4 v4, 0x0

    goto :goto_e

    :cond_f
    :goto_10
    :try_start_11
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v4, "setAVASMode"

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v12}, [Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v2, v4, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    xor-int/lit8 v4, v5, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v9, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v5, :cond_a

    invoke-virtual {v6}, Lcom/ex/auto/QuickAccessFloaterService;->r()Landroid/content/SharedPreferences;

    move-result-object v2

    const/4 v4, -0x1

    invoke-interface {v2, v11, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-lez v2, :cond_a

    invoke-virtual {v8, v0}, Landroid/car/Car;->getCarManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v4, v0, Landroid/car/hardware/property/CarPropertyManager;

    if-eqz v4, :cond_10

    check-cast v0, Landroid/car/hardware/property/CarPropertyManager;

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    sget-object v4, LT/q;->a:[I

    array-length v5, v4

    const/4 v6, 0x0

    :goto_12
    if-ge v6, v5, :cond_a

    aget v9, v4, v6
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_b
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    if-eqz v0, :cond_a

    :try_start_12
    invoke-virtual {v0, v10, v9, v2}, Landroid/car/hardware/property/CarPropertyManager;->setIntProperty(III)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_d
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    goto/16 :goto_c

    :catch_d
    add-int/2addr v6, v7

    goto :goto_12

    :catchall_3
    move-exception v0

    const/4 v2, 0x0

    goto :goto_15

    :catch_e
    move-exception v0

    const/4 v2, 0x0

    :goto_13
    :try_start_13
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "toggleAvas: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_4

    if-eqz v2, :cond_11

    :try_start_14
    invoke-virtual {v2}, Landroid/car/Car;->disconnect()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_f

    :catch_f
    :cond_11
    :goto_14
    return-void

    :catchall_4
    move-exception v0

    :goto_15
    if-eqz v2, :cond_12

    :try_start_15
    invoke-virtual {v2}, Landroid/car/Car;->disconnect()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_10

    :catch_10
    :cond_12
    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
