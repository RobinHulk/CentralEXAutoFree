.class public final synthetic LX/b;
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

    iput p2, p0, LX/b;->a:I

    iput-object p1, p0, LX/b;->b:Lcom/geely/hvacstepperv2/TempStepperService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    const-string v0, "init"

    iget-object v1, p0, LX/b;->b:Lcom/geely/hvacstepperv2/TempStepperService;

    iget v2, p0, LX/b;->a:I

    packed-switch v2, :pswitch_data_0

    sget-object v2, Lcom/geely/hvacstepperv2/TempStepperService;->X:[I

    invoke-virtual {v1, v0}, Lcom/geely/hvacstepperv2/TempStepperService;->k(Ljava/lang/String;)V

    return-void

    :pswitch_0
    sget-object v0, Lcom/geely/hvacstepperv2/TempStepperService;->X:[I

    invoke-virtual {v1}, Lcom/geely/hvacstepperv2/TempStepperService;->b()V

    return-void

    :pswitch_1
    sget-object v0, Lcom/geely/hvacstepperv2/TempStepperService;->X:[I

    const-string v0, "fan_end"

    invoke-virtual {v1, v0}, Lcom/geely/hvacstepperv2/TempStepperService;->k(Ljava/lang/String;)V

    return-void

    :pswitch_2
    sget-object v0, Lcom/geely/hvacstepperv2/TempStepperService;->X:[I

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    const-string v2, "Altera\u00e7\u00e3o manual \u2014 temporizador desligado"

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    :pswitch_3
    sget-object v0, Lcom/geely/hvacstepperv2/TempStepperService;->X:[I

    const-string v0, "fan_pr"

    invoke-virtual {v1, v0}, Lcom/geely/hvacstepperv2/TempStepperService;->k(Ljava/lang/String;)V

    return-void

    :pswitch_4
    sget-object v0, Lcom/geely/hvacstepperv2/TempStepperService;->X:[I

    const-string v0, "poll"

    invoke-virtual {v1, v0}, Lcom/geely/hvacstepperv2/TempStepperService;->k(Ljava/lang/String;)V

    return-void

    :pswitch_5
    sget-object v0, Lcom/geely/hvacstepperv2/TempStepperService;->X:[I

    const-string v0, "auto"

    invoke-virtual {v1, v0}, Lcom/geely/hvacstepperv2/TempStepperService;->k(Ljava/lang/String;)V

    return-void

    :pswitch_6
    sget-object v0, Lcom/geely/hvacstepperv2/TempStepperService;->X:[I

    invoke-virtual {v1}, Lcom/geely/hvacstepperv2/TempStepperService;->l()V

    return-void

    :pswitch_7
    sget-object v2, Lcom/geely/hvacstepperv2/TempStepperService;->X:[I

    invoke-virtual {v1, v0}, Lcom/geely/hvacstepperv2/TempStepperService;->k(Ljava/lang/String;)V

    return-void

    nop

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
