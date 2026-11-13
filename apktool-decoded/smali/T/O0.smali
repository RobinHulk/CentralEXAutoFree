.class public final synthetic LT/O0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LH0/a;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Lcom/ex/auto/CentralWatchdogService;

.field public final synthetic c:Z

.field public final synthetic d:Z

.field public final synthetic e:Z

.field public final synthetic f:Z


# direct methods
.method public synthetic constructor <init>(ZLcom/ex/auto/CentralWatchdogService;ZZZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, LT/O0;->a:Z

    iput-object p2, p0, LT/O0;->b:Lcom/ex/auto/CentralWatchdogService;

    iput-boolean p3, p0, LT/O0;->c:Z

    iput-boolean p4, p0, LT/O0;->d:Z

    iput-boolean p5, p0, LT/O0;->e:Z

    iput-boolean p6, p0, LT/O0;->f:Z

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    const/4 v1, 0x0

    iget-boolean v4, v0, LT/O0;->a:Z

    iget-object v3, v0, LT/O0;->b:Lcom/ex/auto/CentralWatchdogService;

    iget-boolean v6, v0, LT/O0;->c:Z

    iget-boolean v8, v0, LT/O0;->d:Z

    iget-boolean v10, v0, LT/O0;->e:Z

    iget-boolean v12, v0, LT/O0;->f:Z

    const/4 v2, 0x0

    if-eqz v4, :cond_0

    sget-object v5, LT/A4;->a:Ljava/util/HashMap;

    iget-object v5, v3, Lcom/ex/auto/CentralWatchdogService;->i:Landroid/car/hardware/property/CarPropertyManager;

    invoke-static {v5}, LT/A4;->l(Landroid/car/hardware/property/CarPropertyManager;)Ljava/lang/Float;

    move-result-object v5

    goto :goto_0

    :cond_0
    move-object v5, v2

    :goto_0
    if-eqz v6, :cond_1

    sget-object v7, LT/A4;->a:Ljava/util/HashMap;

    iget-object v7, v3, Lcom/ex/auto/CentralWatchdogService;->i:Landroid/car/hardware/property/CarPropertyManager;

    invoke-static {v7}, LT/A4;->m(Landroid/car/hardware/property/CarPropertyManager;)Ljava/lang/Float;

    move-result-object v7

    goto :goto_1

    :cond_1
    move-object v7, v2

    :goto_1
    if-nez v8, :cond_3

    if-eqz v10, :cond_2

    goto :goto_3

    :cond_2
    :goto_2
    move-object v9, v2

    goto :goto_4

    :cond_3
    :goto_3
    sget-object v9, LT/A4;->a:Ljava/util/HashMap;

    iget-object v9, v3, Lcom/ex/auto/CentralWatchdogService;->i:Landroid/car/hardware/property/CarPropertyManager;

    if-nez v9, :cond_4

    goto :goto_2

    :cond_4
    const v2, 0x11400204

    invoke-static {v9, v2}, LT/A4;->k(Landroid/car/hardware/property/CarPropertyManager;I)Ljava/lang/Float;

    move-result-object v2

    if-nez v2, :cond_2

    const v2, 0x11600204

    invoke-static {v9, v2}, LT/A4;->k(Landroid/car/hardware/property/CarPropertyManager;I)Ljava/lang/Float;

    move-result-object v2

    if-nez v2, :cond_2

    const v2, 0x2140a6ac

    invoke-static {v9, v2}, LT/A4;->k(Landroid/car/hardware/property/CarPropertyManager;I)Ljava/lang/Float;

    move-result-object v2

    goto :goto_2

    :goto_4
    new-instance v13, LI0/k;

    invoke-direct {v13}, Ljava/lang/Object;-><init>()V

    new-instance v14, LI0/i;

    invoke-direct {v14}, Ljava/lang/Object;-><init>()V

    if-eqz v12, :cond_7

    :try_start_0
    const-class v11, Landroid/telephony/TelephonyManager;

    invoke-virtual {v3, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/telephony/TelephonyManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v11, :cond_5

    :try_start_1
    invoke-virtual {v11}, Landroid/telephony/TelephonyManager;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object v15

    if-eqz v15, :cond_5

    invoke-virtual {v15}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5

    :catchall_0
    :cond_5
    move v15, v1

    :goto_5
    :try_start_2
    iput v15, v13, LI0/k;->a:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v11, :cond_6

    :try_start_3
    invoke-virtual {v11}, Landroid/telephony/TelephonyManager;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v11

    if-eqz v11, :cond_6

    invoke-virtual {v11}, Landroid/telephony/ServiceState;->getState()I

    move-result v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-nez v11, :cond_6

    const/4 v11, 0x1

    goto :goto_6

    :catchall_1
    :cond_6
    move v11, v1

    :goto_6
    :try_start_4
    iput-boolean v11, v14, LI0/i;->a:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    :cond_7
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v15, "totalKmOn="

    invoke-direct {v11, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v15, " tripKmOn="

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v15, " odo="

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v15, "KmIconProbe"

    invoke-static {v15, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v11, LI0/l;

    invoke-direct {v11, v1}, LI0/l;-><init>(I)V

    if-eqz v10, :cond_8

    if-eqz v9, :cond_8

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v15

    const/16 v16, 0x0

    cmpl-float v15, v15, v16

    if-lez v15, :cond_8

    sget-object v15, Lcom/ex/auto/CentralWatchdogService;->d2:[I

    invoke-virtual {v3}, Lcom/ex/auto/CentralWatchdogService;->M()Landroid/content/SharedPreferences;

    move-result-object v15

    const-string v1, "trip_start_odometer_km"

    const/high16 v2, -0x40800000    # -1.0f

    invoke-interface {v15, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v2

    cmpg-float v15, v2, v16

    const-string v0, "CentralWatchdog"

    if-gtz v15, :cond_9

    invoke-virtual {v3}, Lcom/ex/auto/CentralWatchdogService;->M()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v15

    invoke-interface {v2, v1, v15}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    sget-object v1, LT/L3;->a:LT/L3;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v15, "viagem: in\u00edcio gravado pela primeira vez em "

    invoke-direct {v2, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v15

    float-to-int v15, v15

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " km"

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, LT/L3;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, v11, LI0/l;->b:Ljava/lang/Object;

    :cond_8
    move-object/from16 v16, v14

    goto :goto_7

    :cond_9
    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v1

    cmpl-float v1, v2, v1

    if-lez v1, :cond_a

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, v11, LI0/l;->b:Ljava/lang/Object;

    iget-boolean v1, v3, Lcom/ex/auto/CentralWatchdogService;->X1:Z

    if-nez v1, :cond_8

    const/4 v1, 0x1

    iput-boolean v1, v3, Lcom/ex/auto/CentralWatchdogService;->X1:Z

    sget-object v1, LT/L3;->a:LT/L3;

    new-instance v15, Ljava/lang/StringBuilder;

    move-object/from16 v16, v14

    const-string v14, "viagem: od\u00f4metro ("

    invoke-direct {v15, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v14

    float-to-int v14, v14

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ") < in\u00edcio guardado ("

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    float-to-int v2, v2

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") \u2014 leitura suspeita, mantendo o in\u00edcio"

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, LT/L3;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :cond_a
    move-object/from16 v16, v14

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v0

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, v11, LI0/l;->b:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, v3, Lcom/ex/auto/CentralWatchdogService;->X1:Z

    :goto_7
    iget-object v0, v3, Lcom/ex/auto/CentralWatchdogService;->a:Landroid/os/Handler;

    new-instance v1, LT/P0;

    move-object v2, v1

    move-object/from16 v14, v16

    invoke-direct/range {v2 .. v14}, LT/P0;-><init>(Lcom/ex/auto/CentralWatchdogService;ZLjava/lang/Float;ZLjava/lang/Float;ZLjava/lang/Float;ZLI0/l;ZLI0/k;LI0/i;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    sget-object v0, Lv0/e;->c:Lv0/e;

    return-object v0
.end method
