.class public final LX/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/geely/hvacstepperv2/TempStepperService;


# direct methods
.method public synthetic constructor <init>(Lcom/geely/hvacstepperv2/TempStepperService;I)V
    .locals 0

    iput p2, p0, LX/d;->a:I

    iput-object p1, p0, LX/d;->b:Lcom/geely/hvacstepperv2/TempStepperService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    iget v0, p0, LX/d;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LX/d;->b:Lcom/geely/hvacstepperv2/TempStepperService;

    iget-object v1, v0, Lcom/geely/hvacstepperv2/TempStepperService;->d:Landroid/view/View;

    if-eqz v1, :cond_1

    iget-object v2, v0, Lcom/geely/hvacstepperv2/TempStepperService;->c:Landroid/view/WindowManager;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/geely/hvacstepperv2/TempStepperService;->I:Z

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager$LayoutParams;

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v2, v0, Lcom/geely/hvacstepperv2/TempStepperService;->C:I

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    iput v1, v0, Lcom/geely/hvacstepperv2/TempStepperService;->D:I

    iget v1, v0, Lcom/geely/hvacstepperv2/TempStepperService;->G:F

    iput v1, v0, Lcom/geely/hvacstepperv2/TempStepperService;->E:F

    iget v1, v0, Lcom/geely/hvacstepperv2/TempStepperService;->H:F

    iput v1, v0, Lcom/geely/hvacstepperv2/TempStepperService;->F:F

    :cond_1
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, LX/d;->b:Lcom/geely/hvacstepperv2/TempStepperService;

    iget-boolean v1, v0, Lcom/geely/hvacstepperv2/TempStepperService;->A:Z

    if-nez v1, :cond_2

    goto/16 :goto_5

    :cond_2
    const-string v1, "HvacStepperV2"

    iget-object v2, v0, Lcom/geely/hvacstepperv2/TempStepperService;->k:Landroid/car/hardware/property/CarPropertyManager;

    iget-object v3, v0, Lcom/geely/hvacstepperv2/TempStepperService;->n:Landroid/os/Handler;

    if-nez v2, :cond_3

    goto/16 :goto_4

    :cond_3
    iget v4, v0, Lcom/geely/hvacstepperv2/TempStepperService;->u:F

    iget-boolean v5, v0, Lcom/geely/hvacstepperv2/TempStepperService;->p:Z

    if-eqz v5, :cond_4

    iget v5, v0, Lcom/geely/hvacstepperv2/TempStepperService;->q:I

    if-ltz v5, :cond_4

    const v6, 0x15600502

    :try_start_0
    invoke-virtual {v2, v6, v5}, Landroid/car/hardware/property/CarPropertyManager;->getFloatProperty(II)F

    move-result v2

    iput v2, v0, Lcom/geely/hvacstepperv2/TempStepperService;->u:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_4
    const/4 v2, 0x1

    const/4 v5, 0x0

    :try_start_1
    iget-object v6, v0, Lcom/geely/hvacstepperv2/TempStepperService;->k:Landroid/car/hardware/property/CarPropertyManager;

    iget v7, v0, Lcom/geely/hvacstepperv2/TempStepperService;->l:I

    const v8, 0x15600503

    invoke-virtual {v6, v8, v7}, Landroid/car/hardware/property/CarPropertyManager;->getProperty(II)Landroid/car/hardware/CarPropertyValue;

    move-result-object v6

    if-eqz v6, :cond_5

    invoke-virtual {v6}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v7

    instance-of v7, v7, Ljava/lang/Float;

    if-eqz v7, :cond_5

    invoke-virtual {v6}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v7

    iget v8, v0, Lcom/geely/hvacstepperv2/TempStepperService;->a:F

    cmpl-float v8, v7, v8

    if-ltz v8, :cond_5

    iget v8, v0, Lcom/geely/hvacstepperv2/TempStepperService;->b:F

    cmpg-float v8, v7, v8

    if-gtz v8, :cond_5

    iget v8, v0, Lcom/geely/hvacstepperv2/TempStepperService;->m:F

    sub-float v8, v7, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    const v9, 0x3c23d70a    # 0.01f

    cmpl-float v8, v8, v9

    if-ltz v8, :cond_5

    const-string v8, "Poll UI: %.1f\u00b0C \u2192 %.1f\u00b0C (HAL=%.1f area=0x%x)"

    iget v9, v0, Lcom/geely/hvacstepperv2/TempStepperService;->m:F

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    iget v10, v0, Lcom/geely/hvacstepperv2/TempStepperService;->l:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    filled-new-array {v9, v6, v6, v10}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v8, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput v7, v0, Lcom/geely/hvacstepperv2/TempStepperService;->m:F
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move v1, v2

    goto :goto_1

    :catch_1
    move-exception v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "pollCurrentTemp falhou: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    move v1, v5

    :goto_1
    iget-boolean v6, v0, Lcom/geely/hvacstepperv2/TempStepperService;->p:Z

    const v7, 0x3d4ccccd    # 0.05f

    if-eqz v6, :cond_7

    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    iget v8, v0, Lcom/geely/hvacstepperv2/TempStepperService;->u:F

    invoke-static {v8}, Ljava/lang/Float;->isNaN(F)Z

    move-result v8

    if-ne v6, v8, :cond_6

    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    if-nez v6, :cond_7

    iget v6, v0, Lcom/geely/hvacstepperv2/TempStepperService;->u:F

    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    if-nez v6, :cond_7

    iget v6, v0, Lcom/geely/hvacstepperv2/TempStepperService;->u:F

    sub-float/2addr v4, v6

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v4, v4, v7

    if-ltz v4, :cond_7

    :cond_6
    move v4, v2

    goto :goto_2

    :cond_7
    move v4, v5

    :goto_2
    iget v6, v0, Lcom/geely/hvacstepperv2/TempStepperService;->x:F

    iget-boolean v8, v0, Lcom/geely/hvacstepperv2/TempStepperService;->v:Z

    if-eqz v8, :cond_8

    iget v8, v0, Lcom/geely/hvacstepperv2/TempStepperService;->w:I

    if-ltz v8, :cond_8

    invoke-virtual {v0, v8}, Lcom/geely/hvacstepperv2/TempStepperService;->d(I)Ljava/lang/Float;

    move-result-object v8

    if-eqz v8, :cond_8

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    iput v8, v0, Lcom/geely/hvacstepperv2/TempStepperService;->x:F

    :cond_8
    iget-boolean v8, v0, Lcom/geely/hvacstepperv2/TempStepperService;->v:Z

    if-eqz v8, :cond_9

    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    move-result v8

    iget v9, v0, Lcom/geely/hvacstepperv2/TempStepperService;->x:F

    invoke-static {v9}, Ljava/lang/Float;->isNaN(F)Z

    move-result v9

    if-ne v8, v9, :cond_a

    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    move-result v8

    if-nez v8, :cond_9

    iget v8, v0, Lcom/geely/hvacstepperv2/TempStepperService;->x:F

    invoke-static {v8}, Ljava/lang/Float;->isNaN(F)Z

    move-result v8

    if-nez v8, :cond_9

    iget v8, v0, Lcom/geely/hvacstepperv2/TempStepperService;->x:F

    sub-float/2addr v6, v8

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_9

    goto :goto_3

    :cond_9
    move v2, v5

    :cond_a
    :goto_3
    if-nez v1, :cond_b

    if-nez v4, :cond_b

    if-eqz v2, :cond_c

    :cond_b
    new-instance v1, LX/b;

    const/4 v2, 0x3

    invoke-direct {v1, v0, v2}, LX/b;-><init>(Lcom/geely/hvacstepperv2/TempStepperService;I)V

    invoke-virtual {v3, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_c
    :goto_4
    const-wide/16 v0, 0xbb8

    invoke-virtual {v3, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_5
    return-void

    :pswitch_1
    iget-object v0, p0, LX/d;->b:Lcom/geely/hvacstepperv2/TempStepperService;

    iget-boolean v1, v0, Lcom/geely/hvacstepperv2/TempStepperService;->o:Z

    if-nez v1, :cond_d

    goto/16 :goto_a

    :cond_d
    const-string v2, "HvacStepperV2"

    iget-object v3, v0, Lcom/geely/hvacstepperv2/TempStepperService;->k:Landroid/car/hardware/property/CarPropertyManager;

    iget-object v4, v0, Lcom/geely/hvacstepperv2/TempStepperService;->n:Landroid/os/Handler;

    if-eqz v3, :cond_18

    if-eqz v1, :cond_18

    iget-boolean v1, v0, Lcom/geely/hvacstepperv2/TempStepperService;->y:Z

    if-eqz v1, :cond_e

    goto/16 :goto_9

    :cond_e
    iget-boolean v1, v0, Lcom/geely/hvacstepperv2/TempStepperService;->P:Z

    if-eqz v1, :cond_f

    goto/16 :goto_9

    :cond_f
    iget-boolean v1, v0, Lcom/geely/hvacstepperv2/TempStepperService;->p:Z

    if-eqz v1, :cond_18

    iget v1, v0, Lcom/geely/hvacstepperv2/TempStepperService;->q:I

    if-gez v1, :cond_10

    goto/16 :goto_9

    :cond_10
    const v5, 0x15600502

    :try_start_2
    invoke-virtual {v3, v5, v1}, Landroid/car/hardware/property/CarPropertyManager;->getFloatProperty(II)F

    move-result v1

    iput v1, v0, Lcom/geely/hvacstepperv2/TempStepperService;->u:F

    iget v3, v0, Lcom/geely/hvacstepperv2/TempStepperService;->m:F

    sub-float v5, v3, v1

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v6, v0, Lcom/geely/hvacstepperv2/TempStepperService;->s:I

    const/4 v7, 0x1

    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    const v8, 0x3eb33333    # 0.35f

    cmpg-float v8, v5, v8

    if-gtz v8, :cond_11

    goto :goto_6

    :cond_11
    const v7, 0x3f333333    # 0.7f

    cmpg-float v7, v5, v7

    if-gtz v7, :cond_12

    const/4 v7, 0x2

    invoke-static {v7, v6}, Ljava/lang/Math;->min(II)I

    move-result v7

    goto :goto_6

    :cond_12
    const v7, 0x3f99999a    # 1.2f

    cmpg-float v7, v5, v7

    if-gtz v7, :cond_13

    const/4 v7, 0x3

    invoke-static {v7, v6}, Ljava/lang/Math;->min(II)I

    move-result v7

    goto :goto_6

    :cond_13
    const/high16 v7, 0x40000000    # 2.0f

    cmpg-float v7, v5, v7

    if-gtz v7, :cond_14

    const/4 v7, 0x4

    invoke-static {v7, v6}, Ljava/lang/Math;->min(II)I

    move-result v7

    goto :goto_6

    :cond_14
    const/high16 v7, 0x40600000    # 3.5f

    cmpg-float v7, v5, v7

    if-gtz v7, :cond_15

    const/4 v7, 0x5

    invoke-static {v7, v6}, Ljava/lang/Math;->min(II)I

    move-result v7

    goto :goto_6

    :cond_15
    const/high16 v7, 0x40a00000    # 5.0f

    cmpg-float v7, v5, v7

    if-gtz v7, :cond_16

    const/4 v7, 0x6

    invoke-static {v7, v6}, Ljava/lang/Math;->min(II)I

    move-result v7

    goto :goto_6

    :cond_16
    move v7, v6

    :goto_6
    invoke-virtual {v0}, Lcom/geely/hvacstepperv2/TempStepperService;->g()I

    move-result v6

    iget v8, v0, Lcom/geely/hvacstepperv2/TempStepperService;->t:I

    if-eq v7, v8, :cond_17

    iget-object v8, v0, Lcom/geely/hvacstepperv2/TempStepperService;->k:Landroid/car/hardware/property/CarPropertyManager;

    const v9, 0x15400500

    invoke-virtual {v8, v9, v6, v7}, Landroid/car/hardware/property/CarPropertyManager;->setIntProperty(III)V

    iput v7, v0, Lcom/geely/hvacstepperv2/TempStepperService;->t:I

    const-string v8, "AUTO: cabina=%.1f\u00b0C alvo=%.1f\u00b0C err=%.1f \u2192 ventoinha=%d (area=0x%x)"

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v1, v3, v5, v7, v6}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v8, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :catch_2
    move-exception v1

    goto :goto_8

    :cond_17
    :goto_7
    new-instance v1, LX/b;

    const/4 v3, 0x2

    invoke-direct {v1, v0, v3}, LX/b;-><init>(Lcom/geely/hvacstepperv2/TempStepperService;I)V

    invoke-virtual {v4, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_9

    :goto_8
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "AUTO tick: "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v3, v2}, LM/d0;->n(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_18
    :goto_9
    iget-boolean v0, v0, Lcom/geely/hvacstepperv2/TempStepperService;->o:Z

    if-eqz v0, :cond_19

    const-wide/16 v0, 0x9c4

    invoke-virtual {v4, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_19
    :goto_a
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
