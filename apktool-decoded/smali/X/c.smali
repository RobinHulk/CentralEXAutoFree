.class public final synthetic LX/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/geely/hvacstepperv2/TempStepperService;


# direct methods
.method public synthetic constructor <init>(Lcom/geely/hvacstepperv2/TempStepperService;I)V
    .locals 0

    iput p2, p0, LX/c;->a:I

    iput-object p1, p0, LX/c;->b:Lcom/geely/hvacstepperv2/TempStepperService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 8

    const/4 p1, 0x0

    const/4 v0, 0x1

    iget-object v1, p0, LX/c;->b:Lcom/geely/hvacstepperv2/TempStepperService;

    iget v2, p0, LX/c;->a:I

    packed-switch v2, :pswitch_data_0

    iget-boolean v2, v1, Lcom/geely/hvacstepperv2/TempStepperService;->N:Z

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/geely/hvacstepperv2/TempStepperService;->b()V

    goto :goto_1

    :cond_0
    iget-object v2, v1, Lcom/geely/hvacstepperv2/TempStepperService;->L:Landroid/view/View;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lcom/geely/hvacstepperv2/TempStepperService;->e()V

    move v2, p1

    move v3, v2

    :goto_0
    const/4 v4, 0x3

    if-ge v2, v4, :cond_3

    invoke-static {v1, v2}, LA/b;->J(Lcom/geely/hvacstepperv2/TempStepperService;I)LX/a;

    move-result-object v4

    if-eqz v4, :cond_2

    add-int/2addr v3, v0

    :cond_2
    add-int/2addr v2, v0

    goto :goto_0

    :cond_3
    if-nez v3, :cond_4

    const-string v0, "Guarde modos de ventoinha na app principal"

    invoke-static {v1, v0, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    :cond_4
    iput-boolean v0, v1, Lcom/geely/hvacstepperv2/TempStepperService;->N:Z

    iget-object v0, v1, Lcom/geely/hvacstepperv2/TempStepperService;->L:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, v1, Lcom/geely/hvacstepperv2/TempStepperService;->n:Landroid/os/Handler;

    iget-object v0, v1, Lcom/geely/hvacstepperv2/TempStepperService;->O:LX/b;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-virtual {v1}, Lcom/geely/hvacstepperv2/TempStepperService;->f()V

    :goto_1
    return-void

    :pswitch_0
    const-string v2, "AUTO: modo climatiza\u00e7\u00e3o do sistema"

    const-string v3, "HvacStepperV2"

    iget-object v4, v1, Lcom/geely/hvacstepperv2/TempStepperService;->k:Landroid/car/hardware/property/CarPropertyManager;

    if-nez v4, :cond_5

    const-string v0, "CarService n\u00e3o dispon\u00edvel"

    invoke-static {v1, v0, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_3

    :cond_5
    iget-boolean v4, v1, Lcom/geely/hvacstepperv2/TempStepperService;->o:Z

    const-string v5, "init"

    if-eqz v4, :cond_6

    invoke-virtual {v1}, Lcom/geely/hvacstepperv2/TempStepperService;->i()V

    invoke-virtual {v1}, Lcom/geely/hvacstepperv2/TempStepperService;->j()V

    invoke-virtual {v1, v5}, Lcom/geely/hvacstepperv2/TempStepperService;->k(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_6
    invoke-virtual {v1}, Lcom/geely/hvacstepperv2/TempStepperService;->a()V

    iget-boolean v4, v1, Lcom/geely/hvacstepperv2/TempStepperService;->p:Z

    if-eqz v4, :cond_7

    iget v4, v1, Lcom/geely/hvacstepperv2/TempStepperService;->q:I

    if-ltz v4, :cond_7

    iput-boolean p1, v1, Lcom/geely/hvacstepperv2/TempStepperService;->y:Z

    iput-boolean v0, v1, Lcom/geely/hvacstepperv2/TempStepperService;->o:Z

    const/4 v0, -0x1

    iput v0, v1, Lcom/geely/hvacstepperv2/TempStepperService;->t:I

    iget-object v0, v1, Lcom/geely/hvacstepperv2/TempStepperService;->n:Landroid/os/Handler;

    iget-object v2, v1, Lcom/geely/hvacstepperv2/TempStepperService;->z:LX/d;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const-string v0, "AUTO: ventoinha conforme sensor cabina"

    invoke-static {v1, v0, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_2

    :cond_7
    const v4, 0x1520050a

    :try_start_0
    iget-object v6, v1, Lcom/geely/hvacstepperv2/TempStepperService;->k:Landroid/car/hardware/property/CarPropertyManager;

    iget v7, v1, Lcom/geely/hvacstepperv2/TempStepperService;->l:I

    invoke-virtual {v6, v4, v7, v0}, Landroid/car/hardware/property/CarPropertyManager;->setBooleanProperty(IIZ)V

    iput-boolean v0, v1, Lcom/geely/hvacstepperv2/TempStepperService;->y:Z

    iput-boolean v0, v1, Lcom/geely/hvacstepperv2/TempStepperService;->o:Z

    const-string v6, "AUTO OEM: HVAC_AUTO_ON=true"

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1, v2, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    :try_start_1
    iget-object v6, v1, Lcom/geely/hvacstepperv2/TempStepperService;->k:Landroid/car/hardware/property/CarPropertyManager;

    invoke-virtual {v6, v4, p1, v0}, Landroid/car/hardware/property/CarPropertyManager;->setBooleanProperty(IIZ)V

    iput-boolean v0, v1, Lcom/geely/hvacstepperv2/TempStepperService;->y:Z

    iput-boolean v0, v1, Lcom/geely/hvacstepperv2/TempStepperService;->o:Z

    const-string v4, "AUTO OEM: HVAC_AUTO_ON=true (area global)"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1, v2, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    invoke-virtual {v1}, Lcom/geely/hvacstepperv2/TempStepperService;->j()V

    invoke-virtual {v1, v5}, Lcom/geely/hvacstepperv2/TempStepperService;->k(Ljava/lang/String;)V

    goto :goto_3

    :catch_1
    move-exception p1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "AUTO indispon\u00edvel: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "AUTO indispon\u00edvel (sensor e OEM n\u00e3o responderam)"

    invoke-static {v1, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_3
    return-void

    :pswitch_1
    sget-object p1, Lcom/geely/hvacstepperv2/TempStepperService;->X:[I

    const/high16 p1, 0x3f000000    # 0.5f

    invoke-virtual {v1, p1}, Lcom/geely/hvacstepperv2/TempStepperService;->h(F)V

    return-void

    :pswitch_2
    sget-object p1, Lcom/geely/hvacstepperv2/TempStepperService;->X:[I

    const/high16 p1, -0x41000000    # -0.5f

    invoke-virtual {v1, p1}, Lcom/geely/hvacstepperv2/TempStepperService;->h(F)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
