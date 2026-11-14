.class public final synthetic LT/x0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:Landroid/app/Service;


# direct methods
.method public synthetic constructor <init>(Landroid/app/Service;III)V
    .locals 0

    iput p4, p0, LT/x0;->a:I

    iput-object p1, p0, LT/x0;->d:Landroid/app/Service;

    iput p2, p0, LT/x0;->b:I

    iput p3, p0, LT/x0;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 19

    move-object/from16 v1, p0

    iget v0, v1, LT/x0;->a:I

    packed-switch v0, :pswitch_data_0

    iget v0, v1, LT/x0;->b:I

    iget v2, v1, LT/x0;->c:I

    iget-object v3, v1, LT/x0;->d:Landroid/app/Service;

    check-cast v3, Lcom/geely/hvacstepperv2/TempStepperService;

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/geely/hvacstepperv2/TempStepperService;->S:LT/x0;

    iget-boolean v4, v3, Lcom/geely/hvacstepperv2/TempStepperService;->P:Z

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    iget-object v4, v3, Lcom/geely/hvacstepperv2/TempStepperService;->k:Landroid/car/hardware/property/CarPropertyManager;

    if-eqz v4, :cond_1

    const v5, 0x15400500

    invoke-virtual {v4, v5, v0, v2}, Landroid/car/hardware/property/CarPropertyManager;->setIntProperty(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Ventoinha final: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "HvacStepperV2"

    invoke-static {v0, v2, v4}, LM/d0;->n(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_1
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, v3, Lcom/geely/hvacstepperv2/TempStepperService;->P:Z

    const/4 v0, -0x1

    iput v0, v3, Lcom/geely/hvacstepperv2/TempStepperService;->Q:I

    iget-object v0, v3, Lcom/geely/hvacstepperv2/TempStepperService;->n:Landroid/os/Handler;

    new-instance v2, LX/b;

    const/4 v4, 0x6

    invoke-direct {v2, v3, v4}, LX/b;-><init>(Lcom/geely/hvacstepperv2/TempStepperService;I)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_1
    return-void

    :pswitch_0
    iget-object v0, v1, LT/x0;->d:Landroid/app/Service;

    check-cast v0, Lcom/ex/auto/QuickAccessFloaterService;

    iget-object v2, v0, Lcom/ex/auto/QuickAccessFloaterService;->j:Landroid/widget/TextView;

    iget v3, v1, LT/x0;->b:I

    const v4, 0x22010101

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v3, v4, :cond_2

    move v4, v6

    goto :goto_2

    :cond_2
    move v4, v5

    :goto_2
    invoke-virtual {v0, v2, v4}, Lcom/ex/auto/QuickAccessFloaterService;->Q(Landroid/widget/TextView;Z)V

    iget-object v2, v0, Lcom/ex/auto/QuickAccessFloaterService;->k:Landroid/widget/TextView;

    const v4, 0x22010102

    if-ne v3, v4, :cond_3

    move v4, v6

    goto :goto_3

    :cond_3
    move v4, v5

    :goto_3
    invoke-virtual {v0, v2, v4}, Lcom/ex/auto/QuickAccessFloaterService;->Q(Landroid/widget/TextView;Z)V

    iget-object v2, v0, Lcom/ex/auto/QuickAccessFloaterService;->l:Landroid/widget/TextView;

    const v4, 0x22010103

    if-ne v3, v4, :cond_4

    move v3, v6

    goto :goto_4

    :cond_4
    move v3, v5

    :goto_4
    invoke-virtual {v0, v2, v3}, Lcom/ex/auto/QuickAccessFloaterService;->Q(Landroid/widget/TextView;Z)V

    iget-object v2, v0, Lcom/ex/auto/QuickAccessFloaterService;->m:Landroid/widget/TextView;

    const v3, 0x20020501

    iget v4, v1, LT/x0;->c:I

    if-ne v4, v3, :cond_5

    move v3, v6

    goto :goto_5

    :cond_5
    move v3, v5

    :goto_5
    invoke-virtual {v0, v2, v3}, Lcom/ex/auto/QuickAccessFloaterService;->Q(Landroid/widget/TextView;Z)V

    iget-object v2, v0, Lcom/ex/auto/QuickAccessFloaterService;->n:Landroid/widget/TextView;

    const v3, 0x20020502

    if-ne v4, v3, :cond_6

    move v3, v6

    goto :goto_6

    :cond_6
    move v3, v5

    :goto_6
    invoke-virtual {v0, v2, v3}, Lcom/ex/auto/QuickAccessFloaterService;->Q(Landroid/widget/TextView;Z)V

    iget-object v2, v0, Lcom/ex/auto/QuickAccessFloaterService;->o:Landroid/widget/TextView;

    const v3, 0x20020503

    if-ne v4, v3, :cond_7

    move v5, v6

    :cond_7
    invoke-virtual {v0, v2, v5}, Lcom/ex/auto/QuickAccessFloaterService;->Q(Landroid/widget/TextView;Z)V

    return-void

    :pswitch_1
    iget-object v0, v1, LT/x0;->d:Landroid/app/Service;

    check-cast v0, Lcom/ex/auto/CentralWatchdogService;

    iget v2, v1, LT/x0;->b:I

    iget v3, v1, LT/x0;->c:I

    sget-boolean v4, Lcom/ex/auto/CentralWatchdogService;->f2:Z

    if-nez v4, :cond_8

    goto/16 :goto_8

    :cond_8
    const/4 v4, 0x1

    iput-boolean v4, v0, Lcom/ex/auto/CentralWatchdogService;->s0:Z

    iput v2, v0, Lcom/ex/auto/CentralWatchdogService;->t0:I

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "applyStatusBrightnessFromSlider: pct="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " nextState="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " registrarVolume="

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-gt v3, v4, :cond_9

    move v2, v4

    goto :goto_7

    :cond_9
    const/4 v2, 0x0

    :goto_7
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "CentralWatchdog"

    invoke-static {v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-gt v3, v4, :cond_b

    iget-object v2, v0, Lcom/ex/auto/CentralWatchdogService;->v0:LT/J0;

    if-eqz v2, :cond_a

    goto :goto_8

    :cond_a
    const-string v17, "wifi_scan_always_enabled"

    const-string v18, "airplane_mode_on"

    const-string v5, "global_http_proxy_host"

    const-string v6, "global_http_proxy_port"

    const-string v7, "global_http_proxy_exclusion_list"

    const-string v8, "http_proxy"

    const-string v9, "captive_portal_mode"

    const-string v10, "policy_control"

    const-string v11, "development_settings_enabled"

    const-string v12, "enable_freeform_support"

    const-string v13, "force_resizable_activities"

    const-string v14, "heads_up_notifications_enabled"

    const-string v15, "wifi_on"

    const-string v16, "bluetooth_on"

    filled-new-array/range {v5 .. v18}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lw0/j;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iget-object v3, v0, Lcom/ex/auto/CentralWatchdogService;->a:Landroid/os/Handler;

    new-instance v5, LT/J0;

    invoke-direct {v5, v0, v2, v3}, LT/J0;-><init>(Lcom/ex/auto/CentralWatchdogService;Ljava/util/List;Landroid/os/Handler;)V

    iput-object v5, v0, Lcom/ex/auto/CentralWatchdogService;->v0:LT/J0;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :try_start_1
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/Settings$Global;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    new-instance v2, LT/G0;

    const/4 v3, 0x3

    invoke-direct {v2, v0, v3}, LT/G0;-><init>(Lcom/ex/auto/CentralWatchdogService;I)V

    iput-object v2, v0, Lcom/ex/auto/CentralWatchdogService;->w0:LT/G0;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.media.VOLUME_CHANGED_ACTION"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_8

    :cond_b
    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->z0()V

    :goto_8
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
