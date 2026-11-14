.class public final LX/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/app/Service;


# direct methods
.method public synthetic constructor <init>(Landroid/app/Service;I)V
    .locals 0

    iput p2, p0, LX/e;->a:I

    iput-object p1, p0, LX/e;->b:Landroid/app/Service;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a(II)V
    .locals 0

    return-void
.end method

.method private final b(II)V
    .locals 0

    return-void
.end method


# virtual methods
.method public final onChangeEvent(Landroid/car/hardware/CarPropertyValue;)V
    .locals 6

    iget v0, p0, LX/e;->a:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "troca de marcha GEAR_SELECTION="

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getStatus()I

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v1

    const v2, 0x11400400

    if-eq v1, v2, :cond_2

    goto :goto_0

    :cond_2
    :try_start_0
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object p1

    instance-of v1, p1, Ljava/lang/Integer;

    if-eqz v1, :cond_3

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v1, p0, LX/e;->b:Landroid/app/Service;

    check-cast v1, Lcom/geely/driveregenfloater/DriveRegenFloaterService;

    iget v1, v1, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->x:I

    if-eq p1, v1, :cond_3

    iget-object v1, p0, LX/e;->b:Landroid/app/Service;

    check-cast v1, Lcom/geely/driveregenfloater/DriveRegenFloaterService;

    iput p1, v1, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->x:I

    const-string v1, "DriveRegenFloater"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " \u2014 reaplicar"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, LX/e;->b:Landroid/app/Service;

    check-cast p1, Lcom/geely/driveregenfloater/DriveRegenFloaterService;

    iget-object v0, p1, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->q:Landroid/car/hardware/property/CarPropertyManager;

    if-eqz v0, :cond_3

    const-string v0, "gear_change"

    invoke-virtual {p1, v0}, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v0

    const v1, 0x15600503

    if-ne v0, v1, :cond_4

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getAreaId()I

    move-result v0

    iget-object v1, p0, LX/e;->b:Landroid/app/Service;

    check-cast v1, Lcom/geely/hvacstepperv2/TempStepperService;

    iget v2, v1, Lcom/geely/hvacstepperv2/TempStepperService;->l:I

    if-ne v0, v2, :cond_4

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Float;

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget v0, v1, Lcom/geely/hvacstepperv2/TempStepperService;->a:F

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_4

    iget v0, v1, Lcom/geely/hvacstepperv2/TempStepperService;->b:F

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_4

    iput p1, v1, Lcom/geely/hvacstepperv2/TempStepperService;->m:F

    iget-object p1, v1, Lcom/geely/hvacstepperv2/TempStepperService;->n:Landroid/os/Handler;

    new-instance v0, LT/T0;

    const/16 v1, 0xc

    invoke-direct {v0, p0, v1}, LT/T0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_4
    return-void

    :pswitch_1
    iget-object v0, p0, LX/e;->b:Landroid/app/Service;

    check-cast v0, Lcom/geely/hvacstepperv2/TempStepperService;

    iget-boolean v1, v0, Lcom/geely/hvacstepperv2/TempStepperService;->P:Z

    if-nez v1, :cond_5

    goto/16 :goto_3

    :cond_5
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v1

    const v2, 0x15400500

    if-eq v1, v2, :cond_6

    goto :goto_3

    :cond_6
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Integer;

    if-nez v1, :cond_7

    goto :goto_3

    :cond_7
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-wide v3, v0, Lcom/geely/hvacstepperv2/TempStepperService;->R:J

    cmp-long v1, v1, v3

    if-gez v1, :cond_8

    goto :goto_3

    :cond_8
    iget v1, v0, Lcom/geely/hvacstepperv2/TempStepperService;->r:I

    if-ltz v1, :cond_9

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getAreaId()I

    move-result v1

    iget v2, v0, Lcom/geely/hvacstepperv2/TempStepperService;->r:I

    if-eq v1, v2, :cond_9

    goto :goto_3

    :cond_9
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget v1, v0, Lcom/geely/hvacstepperv2/TempStepperService;->Q:I

    if-eq p1, v1, :cond_d

    iget-object p1, v0, Lcom/geely/hvacstepperv2/TempStepperService;->S:LT/x0;

    const/4 v1, 0x0

    if-nez p1, :cond_b

    iget-boolean v2, v0, Lcom/geely/hvacstepperv2/TempStepperService;->P:Z

    if-eqz v2, :cond_a

    goto :goto_1

    :cond_a
    move v2, v1

    goto :goto_2

    :cond_b
    :goto_1
    const/4 v2, 0x1

    :goto_2
    iget-object v3, v0, Lcom/geely/hvacstepperv2/TempStepperService;->n:Landroid/os/Handler;

    if-eqz p1, :cond_c

    invoke-virtual {v3, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    iput-object p1, v0, Lcom/geely/hvacstepperv2/TempStepperService;->S:LT/x0;

    :cond_c
    iput-boolean v1, v0, Lcom/geely/hvacstepperv2/TempStepperService;->P:Z

    const/4 p1, -0x1

    iput p1, v0, Lcom/geely/hvacstepperv2/TempStepperService;->Q:I

    const-wide/16 v4, 0x0

    iput-wide v4, v0, Lcom/geely/hvacstepperv2/TempStepperService;->R:J

    if-eqz v2, :cond_d

    const-string p1, "Programa ventoinha: "

    const-string v1, "Altera\u00e7\u00e3o manual \u2014 temporizador desligado"

    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "HvacStepperV2"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, LX/b;

    const/4 v1, 0x5

    invoke-direct {p1, v0, v1}, LX/b;-><init>(Lcom/geely/hvacstepperv2/TempStepperService;I)V

    invoke-virtual {v3, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_d
    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onErrorEvent(II)V
    .locals 1

    iget v0, p0, LX/e;->a:I

    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "Erro CarProperty propId=0x%x area=0x%x"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "HvacStepperV2"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :pswitch_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
