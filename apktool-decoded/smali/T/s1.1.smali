.class public final synthetic LT/s1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/car/Car$CarServiceLifecycleListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/content/ContextWrapper;


# direct methods
.method public synthetic constructor <init>(Landroid/content/ContextWrapper;I)V
    .locals 0

    iput p2, p0, LT/s1;->a:I

    iput-object p1, p0, LT/s1;->b:Landroid/content/ContextWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLifecycleChanged(Landroid/car/Car;Z)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "audio"

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-string v9, "property"

    iget v10, v1, LT/s1;->a:I

    packed-switch v10, :pswitch_data_0

    sget-object v2, Lcom/geely/hvacstepperv2/TempStepperService;->X:[I

    iget-object v2, v1, LT/s1;->b:Landroid/content/ContextWrapper;

    check-cast v2, Lcom/geely/hvacstepperv2/TempStepperService;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v10, "HvacStepperV2"

    if-eqz p2, :cond_14

    invoke-virtual {v0, v9}, Landroid/car/Car;->getCarManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/property/CarPropertyManager;

    iput-object v0, v2, Lcom/geely/hvacstepperv2/TempStepperService;->k:Landroid/car/hardware/property/CarPropertyManager;

    const-string v9, "getMaxValue"

    const-string v11, "getCarPropertyConfig"

    const-class v12, Landroid/car/hardware/property/CarPropertyManager;

    const v13, 0x15600503

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    const/high16 v0, 0x41800000    # 16.0f

    iput v0, v2, Lcom/geely/hvacstepperv2/TempStepperService;->a:F

    const/high16 v14, 0x41f00000    # 30.0f

    iput v14, v2, Lcom/geely/hvacstepperv2/TempStepperService;->b:F

    :try_start_0
    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v14}, [Ljava/lang/Class;

    move-result-object v14

    invoke-virtual {v12, v11, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v14

    iget-object v15, v2, Lcom/geely/hvacstepperv2/TempStepperService;->k:Landroid/car/hardware/property/CarPropertyManager;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    filled-new-array/range {v16 .. v16}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v14, v15, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    goto/16 :goto_2

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v14, "getMinValue"

    invoke-virtual {v4, v14, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v14

    invoke-virtual {v14, v3, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v4, v9, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v4, v3, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v14, Ljava/lang/Float;

    if-eqz v4, :cond_3

    instance-of v4, v3, Ljava/lang/Float;

    if-eqz v4, :cond_3

    check-cast v14, Ljava/lang/Float;

    invoke-virtual {v14}, Ljava/lang/Float;->floatValue()F

    move-result v4

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    cmpg-float v15, v4, v3

    if-gez v15, :cond_3

    sub-float v15, v3, v4

    const/high16 v16, 0x42200000    # 40.0f

    cmpg-float v15, v15, v16

    if-gtz v15, :cond_3

    invoke-static {v4, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, v2, Lcom/geely/hvacstepperv2/TempStepperService;->a:F

    iput v3, v2, Lcom/geely/hvacstepperv2/TempStepperService;->b:F

    cmpg-float v3, v4, v0

    if-gez v3, :cond_2

    const-string v3, "HAL min %.1f ignorado \u2014 uso m\u00ednimo UI %.1f \u00b0C"

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    filled-new-array {v14, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_2
    :goto_0
    const-string v0, "Intervalo activo: %.1f\u00b0C \u2013 %.1f\u00b0C (invert HAL=%s)"

    iget v3, v2, Lcom/geely/hvacstepperv2/TempStepperService;->a:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    iget v4, v2, Lcom/geely/hvacstepperv2/TempStepperService;->b:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    sget-object v14, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    filled-new-array {v3, v4, v14}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getCarPropertyConfig indispon\u00edvel ou falhou: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_2
    iget-object v0, v2, Lcom/geely/hvacstepperv2/TempStepperService;->k:Landroid/car/hardware/property/CarPropertyManager;

    sget-object v3, Lcom/geely/hvacstepperv2/TempStepperService;->X:[I

    iget-object v4, v2, Lcom/geely/hvacstepperv2/TempStepperService;->n:Landroid/os/Handler;

    const/4 v14, 0x4

    if-nez v0, :cond_4

    goto :goto_4

    :cond_4
    move v15, v6

    :goto_3
    if-ge v15, v14, :cond_6

    aget v14, v3, v15

    :try_start_1
    iget-object v0, v2, Lcom/geely/hvacstepperv2/TempStepperService;->k:Landroid/car/hardware/property/CarPropertyManager;

    invoke-virtual {v0, v13, v14}, Landroid/car/hardware/property/CarPropertyManager;->getProperty(II)Landroid/car/hardware/CarPropertyValue;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v8

    instance-of v8, v8, Ljava/lang/Float;

    if-eqz v8, :cond_5

    invoke-virtual {v0}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v8

    iput v8, v2, Lcom/geely/hvacstepperv2/TempStepperService;->m:F

    iput v14, v2, Lcom/geely/hvacstepperv2/TempStepperService;->l:I

    const-string v8, "Temp HAL=%.1f \u2192 UI=%.1f\u00b0C (area=0x%x)"

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v0, v0, v5}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v8, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, LX/b;

    const/16 v5, 0x8

    invoke-direct {v0, v2, v5}, LX/b;-><init>(Lcom/geely/hvacstepperv2/TempStepperService;I)V

    invoke-virtual {v4, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v5, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v5, "area 0x%x inv\u00e1lida: %s"

    invoke-static {v5, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    add-int/2addr v15, v7

    const/4 v8, 0x0

    const/4 v14, 0x4

    goto :goto_3

    :cond_6
    const-string v0, "N\u00e3o foi poss\u00edvel ler temperatura \u2014 usando valor padr\u00e3o 22.0"

    invoke-static {v10, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, LX/b;

    invoke-direct {v0, v2, v6}, LX/b;-><init>(Lcom/geely/hvacstepperv2/TempStepperService;I)V

    invoke-virtual {v4, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_4
    iget-object v0, v2, Lcom/geely/hvacstepperv2/TempStepperService;->k:Landroid/car/hardware/property/CarPropertyManager;

    if-nez v0, :cond_7

    goto :goto_5

    :cond_7
    :try_start_2
    new-instance v5, LX/e;

    invoke-direct {v5, v2, v7}, LX/e;-><init>(Landroid/app/Service;I)V

    iput-object v5, v2, Lcom/geely/hvacstepperv2/TempStepperService;->T:LX/e;

    const/4 v8, 0x0

    invoke-virtual {v0, v5, v13, v8}, Landroid/car/hardware/property/CarPropertyManager;->registerCallback(Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;IF)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_5

    :catch_2
    move-exception v0

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, "registerCallback falhou: "

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v5, v10}, LM/d0;->n(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    const/4 v5, 0x0

    iput-object v5, v2, Lcom/geely/hvacstepperv2/TempStepperService;->T:LX/e;

    :goto_5
    iget-object v0, v2, Lcom/geely/hvacstepperv2/TempStepperService;->k:Landroid/car/hardware/property/CarPropertyManager;

    const v5, 0x15400500

    if-nez v0, :cond_8

    goto :goto_6

    :cond_8
    :try_start_3
    iget-object v8, v2, Lcom/geely/hvacstepperv2/TempStepperService;->U:LX/e;

    const/4 v13, 0x0

    invoke-virtual {v0, v8, v5, v13}, Landroid/car/hardware/property/CarPropertyManager;->registerCallback(Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;IF)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_6

    :catch_3
    move-exception v0

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v13, "registerCallback ventoinha falhou: "

    invoke-direct {v8, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v8, v10}, LM/d0;->n(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_6
    iget-boolean v0, v2, Lcom/geely/hvacstepperv2/TempStepperService;->A:Z

    if-eqz v0, :cond_9

    goto :goto_7

    :cond_9
    iput-boolean v7, v2, Lcom/geely/hvacstepperv2/TempStepperService;->A:Z

    iget-object v0, v2, Lcom/geely/hvacstepperv2/TempStepperService;->B:LX/d;

    const-wide/16 v13, 0xbb8

    invoke-virtual {v4, v0, v13, v14}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const-string v0, "Polling iniciado (intervalo=3000ms)"

    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_7
    iget-object v0, v2, Lcom/geely/hvacstepperv2/TempStepperService;->k:Landroid/car/hardware/property/CarPropertyManager;

    if-nez v0, :cond_a

    goto/16 :goto_d

    :cond_a
    iput-boolean v6, v2, Lcom/geely/hvacstepperv2/TempStepperService;->p:Z

    const/4 v8, -0x1

    iput v8, v2, Lcom/geely/hvacstepperv2/TempStepperService;->q:I

    move v14, v6

    :goto_8
    const/4 v13, 0x4

    if-ge v14, v13, :cond_c

    aget v13, v3, v14

    :try_start_4
    iget-object v0, v2, Lcom/geely/hvacstepperv2/TempStepperService;->k:Landroid/car/hardware/property/CarPropertyManager;

    const v15, 0x15600502

    invoke-virtual {v0, v15, v13}, Landroid/car/hardware/property/CarPropertyManager;->getFloatProperty(II)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v15

    if-nez v15, :cond_b

    const/high16 v15, -0x3dcc0000    # -45.0f

    cmpl-float v15, v0, v15

    if-lez v15, :cond_b

    const/high16 v15, 0x42820000    # 65.0f

    cmpg-float v15, v0, v15

    if-gez v15, :cond_b

    iput v13, v2, Lcom/geely/hvacstepperv2/TempStepperService;->q:I

    iput-boolean v7, v2, Lcom/geely/hvacstepperv2/TempStepperService;->p:Z

    iput v0, v2, Lcom/geely/hvacstepperv2/TempStepperService;->u:F

    const-string v15, "Sensor cabina OK (HVAC_TEMPERATURE_CURRENT) area=0x%x \u2192 %.1f\u00b0C"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    filled-new-array {v5, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v15, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_9

    :catch_4
    move-exception v0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v5, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v5, "cabina area 0x%x: %s"

    invoke-static {v5, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    add-int/2addr v14, v7

    const v5, 0x15400500

    goto :goto_8

    :cond_c
    :goto_9
    iget-boolean v0, v2, Lcom/geely/hvacstepperv2/TempStepperService;->p:Z

    if-nez v0, :cond_d

    const-string v0, "HVAC_TEMPERATURE_CURRENT indispon\u00edvel \u2014 AUTO usar\u00e1 s\u00f3 modo sistema (OEM) se activar."

    invoke-static {v10, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    iget-object v0, v2, Lcom/geely/hvacstepperv2/TempStepperService;->k:Landroid/car/hardware/property/CarPropertyManager;

    if-nez v0, :cond_e

    goto :goto_b

    :cond_e
    iput-boolean v6, v2, Lcom/geely/hvacstepperv2/TempStepperService;->v:Z

    iput v8, v2, Lcom/geely/hvacstepperv2/TempStepperService;->w:I

    sget-object v0, Lcom/geely/hvacstepperv2/TempStepperService;->Y:[I

    const/4 v3, 0x4

    :goto_a
    if-ge v6, v3, :cond_10

    aget v5, v0, v6

    invoke-virtual {v2, v5}, Lcom/geely/hvacstepperv2/TempStepperService;->d(I)Ljava/lang/Float;

    move-result-object v13

    if-eqz v13, :cond_f

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v14

    invoke-static {v14}, Ljava/lang/Float;->isNaN(F)Z

    move-result v14

    if-nez v14, :cond_f

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v14

    const/high16 v15, -0x3da40000    # -55.0f

    cmpl-float v14, v14, v15

    if-lez v14, :cond_f

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v14

    const/high16 v15, 0x428c0000    # 70.0f

    cmpg-float v14, v14, v15

    if-gez v14, :cond_f

    iput v5, v2, Lcom/geely/hvacstepperv2/TempStepperService;->w:I

    iput-boolean v7, v2, Lcom/geely/hvacstepperv2/TempStepperService;->v:Z

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, v2, Lcom/geely/hvacstepperv2/TempStepperService;->x:F

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0, v13}, [Ljava/lang/Object;

    move-result-object v0

    const-string v3, "Exterior OK (ENV_OUTSIDE_TEMPERATURE) area=0x%x \u2192 %.1f\u00b0C"

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    :cond_f
    add-int/2addr v6, v7

    goto :goto_a

    :cond_10
    const-string v0, "ENV_OUTSIDE_TEMPERATURE indispon\u00edvel em todas as zonas testadas."

    invoke-static {v10, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_b
    iget-object v0, v2, Lcom/geely/hvacstepperv2/TempStepperService;->k:Landroid/car/hardware/property/CarPropertyManager;

    const/4 v3, 0x7

    if-nez v0, :cond_11

    goto :goto_c

    :cond_11
    :try_start_5
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v0}, [Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v12, v11, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v5, v2, Lcom/geely/hvacstepperv2/TempStepperService;->k:Landroid/car/hardware/property/CarPropertyManager;

    const v6, 0x15400500

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_12

    goto :goto_c

    :cond_12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v9, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    invoke-virtual {v5, v0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v5, v0, Ljava/lang/Integer;

    if-eqz v5, :cond_13

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    if-lt v0, v7, :cond_13

    const/16 v5, 0x10

    if-gt v0, v5, :cond_13

    move v3, v0

    :catch_5
    :cond_13
    :goto_c
    iput v3, v2, Lcom/geely/hvacstepperv2/TempStepperService;->s:I

    iput v8, v2, Lcom/geely/hvacstepperv2/TempStepperService;->r:I

    new-instance v0, LX/b;

    invoke-direct {v0, v2, v7}, LX/b;-><init>(Lcom/geely/hvacstepperv2/TempStepperService;I)V

    invoke-virtual {v4, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_d

    :cond_14
    const-string v0, "CarService desconectado \u2014 opera\u00e7\u00e3o offline"

    invoke-static {v10, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_d
    return-void

    :pswitch_0
    sget-boolean v2, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->J:Z

    iget-object v2, v1, LT/s1;->b:Landroid/content/ContextWrapper;

    check-cast v2, Lcom/geely/driveregenfloater/DriveRegenFloaterService;

    if-eqz p2, :cond_16

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v9}, Landroid/car/Car;->getCarManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/property/CarPropertyManager;

    iput-object v0, v2, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->q:Landroid/car/hardware/property/CarPropertyManager;

    const-string v0, "Car OK"

    invoke-virtual {v2, v0}, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->o(Ljava/lang/String;)V

    iget-object v0, v2, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->q:Landroid/car/hardware/property/CarPropertyManager;

    if-nez v0, :cond_15

    goto :goto_e

    :cond_15
    :try_start_6
    iget-object v3, v2, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->I:LX/e;

    const v4, 0x11400400

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v4, v5}, Landroid/car/hardware/property/CarPropertyManager;->registerCallback(Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;IF)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_e

    :catch_6
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "registerGearCallback failed: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "DriveRegenFloater"

    invoke-static {v0, v3, v4}, LM/d0;->n(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_e
    invoke-virtual {v2}, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->k()V

    const-string v0, "car_ready"

    invoke-virtual {v2, v0}, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->c(Ljava/lang/String;)V

    iget-object v0, v2, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->s:Landroid/os/Handler;

    iget-object v2, v2, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->F:LB/b;

    const-wide/16 v3, 0xbb8

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_f

    :cond_16
    const-string v0, "Car desconectado"

    invoke-virtual {v2, v0}, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->o(Ljava/lang/String;)V

    :goto_f
    return-void

    :pswitch_1
    sget-boolean v2, Lcom/ex/auto/VhalProviderService;->j:Z

    iget-object v2, v1, LT/s1;->b:Landroid/content/ContextWrapper;

    check-cast v2, Lcom/ex/auto/VhalProviderService;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p2, :cond_17

    new-instance v3, LT/G4;

    invoke-virtual {v0, v9}, Landroid/car/Car;->getCarManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/property/CarPropertyManager;

    invoke-direct {v3, v0}, LT/G4;-><init>(Landroid/car/hardware/property/CarPropertyManager;)V

    iput-object v3, v2, Lcom/ex/auto/VhalProviderService;->b:LT/G4;

    :cond_17
    return-void

    :pswitch_2
    iget-object v2, v1, LT/s1;->b:Landroid/content/ContextWrapper;

    check-cast v2, Lcom/ex/auto/TempBattPillFloaterService;

    sget-object v3, Lcom/ex/auto/TempBattPillFloaterService;->u:Lcom/ex/auto/TempBattPillFloaterService;

    if-nez p2, :cond_18

    goto :goto_12

    :cond_18
    if-eqz v0, :cond_19

    invoke-virtual {v0, v9}, Landroid/car/Car;->getCarManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_10

    :cond_19
    const/4 v0, 0x0

    :goto_10
    instance-of v3, v0, Landroid/car/hardware/property/CarPropertyManager;

    if-eqz v3, :cond_1a

    move-object v8, v0

    check-cast v8, Landroid/car/hardware/property/CarPropertyManager;

    goto :goto_11

    :cond_1a
    const/4 v8, 0x0

    :goto_11
    iput-object v8, v2, Lcom/ex/auto/TempBattPillFloaterService;->g:Landroid/car/hardware/property/CarPropertyManager;

    :goto_12
    return-void

    :pswitch_3
    iget-object v2, v1, LT/s1;->b:Landroid/content/ContextWrapper;

    check-cast v2, Lcom/ex/auto/QuickAccessFloaterService;

    sget-object v3, Lcom/ex/auto/QuickAccessFloaterService;->j0:Ljava/util/List;

    if-nez p2, :cond_1b

    goto :goto_15

    :cond_1b
    if-eqz v0, :cond_1c

    invoke-virtual {v0, v9}, Landroid/car/Car;->getCarManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_13

    :cond_1c
    const/4 v0, 0x0

    :goto_13
    instance-of v3, v0, Landroid/car/hardware/property/CarPropertyManager;

    if-eqz v3, :cond_1d

    move-object v8, v0

    check-cast v8, Landroid/car/hardware/property/CarPropertyManager;

    goto :goto_14

    :cond_1d
    const/4 v8, 0x0

    :goto_14
    iput-object v8, v2, Lcom/ex/auto/QuickAccessFloaterService;->K:Landroid/car/hardware/property/CarPropertyManager;

    :goto_15
    return-void

    :pswitch_4
    iget-object v3, v1, LT/s1;->b:Landroid/content/ContextWrapper;

    check-cast v3, Lcom/ex/auto/PhoneSyncService;

    if-eqz p2, :cond_20

    sget-boolean v4, Lcom/ex/auto/PhoneSyncService;->v:Z

    invoke-virtual {v0, v9}, Landroid/car/Car;->getCarManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Landroid/car/hardware/property/CarPropertyManager;

    if-eqz v5, :cond_1e

    check-cast v4, Landroid/car/hardware/property/CarPropertyManager;

    goto :goto_16

    :cond_1e
    const/4 v4, 0x0

    :goto_16
    iput-object v4, v3, Lcom/ex/auto/PhoneSyncService;->f:Landroid/car/hardware/property/CarPropertyManager;

    invoke-virtual {v0, v2}, Landroid/car/Car;->getCarManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Landroid/car/media/CarAudioManager;

    if-eqz v2, :cond_1f

    move-object v8, v0

    check-cast v8, Landroid/car/media/CarAudioManager;

    goto :goto_17

    :cond_1f
    const/4 v8, 0x0

    :goto_17
    iput-object v8, v3, Lcom/ex/auto/PhoneSyncService;->g:Landroid/car/media/CarAudioManager;

    iget-object v0, v3, Lcom/ex/auto/PhoneSyncService;->f:Landroid/car/hardware/property/CarPropertyManager;

    if-eqz v0, :cond_21

    new-instance v2, LT/G4;

    invoke-direct {v2, v0}, LT/G4;-><init>(Landroid/car/hardware/property/CarPropertyManager;)V

    iput-object v2, v3, Lcom/ex/auto/PhoneSyncService;->h:LT/G4;

    goto :goto_18

    :cond_20
    const/4 v2, 0x0

    iput-object v2, v3, Lcom/ex/auto/PhoneSyncService;->f:Landroid/car/hardware/property/CarPropertyManager;

    iput-object v2, v3, Lcom/ex/auto/PhoneSyncService;->g:Landroid/car/media/CarAudioManager;

    iput-object v2, v3, Lcom/ex/auto/PhoneSyncService;->h:LT/G4;

    :cond_21
    :goto_18
    return-void

    :pswitch_5
    iget-object v3, v1, LT/s1;->b:Landroid/content/ContextWrapper;

    check-cast v3, Lcom/ex/auto/MainActivity;

    if-eqz p2, :cond_24

    sget v4, Lcom/ex/auto/MainActivity;->u0:I

    invoke-virtual {v0, v9}, Landroid/car/Car;->getCarManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Landroid/car/hardware/property/CarPropertyManager;

    if-eqz v5, :cond_22

    move-object v5, v4

    check-cast v5, Landroid/car/hardware/property/CarPropertyManager;

    goto :goto_19

    :cond_22
    const/4 v5, 0x0

    :goto_19
    iput-object v5, v3, Lcom/ex/auto/MainActivity;->G:Landroid/car/hardware/property/CarPropertyManager;

    invoke-virtual {v0, v2}, Landroid/car/Car;->getCarManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Landroid/car/media/CarAudioManager;

    if-eqz v2, :cond_23

    move-object v8, v0

    check-cast v8, Landroid/car/media/CarAudioManager;

    goto :goto_1a

    :cond_23
    const/4 v8, 0x0

    :goto_1a
    iput-object v8, v3, Lcom/ex/auto/MainActivity;->H:Landroid/car/media/CarAudioManager;

    iget-object v0, v3, Lcom/ex/auto/MainActivity;->v:Landroid/os/Handler;

    new-instance v2, LT/U1;

    const/16 v4, 0x1a

    invoke-direct {v2, v4, v3}, LT/U1;-><init>(ILcom/ex/auto/MainActivity;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1b

    :cond_24
    const/4 v5, 0x0

    iput-object v5, v3, Lcom/ex/auto/MainActivity;->G:Landroid/car/hardware/property/CarPropertyManager;

    iput-object v5, v3, Lcom/ex/auto/MainActivity;->H:Landroid/car/media/CarAudioManager;

    iget-object v0, v3, Lcom/ex/auto/MainActivity;->v:Landroid/os/Handler;

    new-instance v2, LT/U1;

    const/16 v4, 0x1b

    invoke-direct {v2, v4, v3}, LT/U1;-><init>(ILcom/ex/auto/MainActivity;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_1b
    return-void

    :pswitch_6
    move-object v5, v8

    if-eqz p2, :cond_26

    sget v2, Lcom/ex/auto/HomeWidgetsPollService;->r:I

    if-eqz v0, :cond_25

    :try_start_7
    invoke-virtual {v0, v9}, Landroid/car/Car;->getCarManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1c

    :cond_25
    move-object v0, v5

    :goto_1c
    instance-of v2, v0, Landroid/car/hardware/property/CarPropertyManager;

    if-eqz v2, :cond_26

    check-cast v0, Landroid/car/hardware/property/CarPropertyManager;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    move-object v8, v0

    goto :goto_1d

    :catch_7
    :cond_26
    move-object v8, v5

    :goto_1d
    iget-object v0, v1, LT/s1;->b:Landroid/content/ContextWrapper;

    check-cast v0, Lcom/ex/auto/HomeWidgetsPollService;

    iput-object v8, v0, Lcom/ex/auto/HomeWidgetsPollService;->c:Landroid/car/hardware/property/CarPropertyManager;

    return-void

    :pswitch_7
    move-object v5, v8

    iget-object v2, v1, LT/s1;->b:Landroid/content/ContextWrapper;

    check-cast v2, Lcom/ex/auto/HomeFloatingWidgetsService;

    if-eqz p2, :cond_28

    sget-object v3, Lcom/ex/auto/HomeFloatingWidgetsService;->Q:Ljava/util/List;

    if-eqz v0, :cond_27

    :try_start_8
    invoke-virtual {v0, v9}, Landroid/car/Car;->getCarManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1e

    :cond_27
    move-object v0, v5

    :goto_1e
    instance-of v3, v0, Landroid/car/hardware/property/CarPropertyManager;

    if-eqz v3, :cond_28

    check-cast v0, Landroid/car/hardware/property/CarPropertyManager;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    move-object v8, v0

    goto :goto_1f

    :catch_8
    :cond_28
    move-object v8, v5

    :goto_1f
    iput-object v8, v2, Lcom/ex/auto/HomeFloatingWidgetsService;->e:Landroid/car/hardware/property/CarPropertyManager;

    return-void

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
.end method
