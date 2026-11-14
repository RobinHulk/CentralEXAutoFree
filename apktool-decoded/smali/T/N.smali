.class public final LT/N;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, LT/N;->a:I

    iput-object p1, p0, LT/N;->b:Ljava/lang/Object;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    iget-object v0, p0, LT/N;->b:Ljava/lang/Object;

    iget v1, p0, LT/N;->a:I

    packed-switch v1, :pswitch_data_0

    check-cast v0, Landroidx/fragment/app/f;

    invoke-virtual {v0}, Landroidx/fragment/app/f;->h()V

    return-void

    :pswitch_0
    const-string p1, "com.geely.hvacstepperv2.PRESETS_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    check-cast v0, Lcom/geely/hvacstepperv2/TempStepperService;

    iget-object p1, v0, Lcom/geely/hvacstepperv2/TempStepperService;->n:Landroid/os/Handler;

    new-instance p2, LT/T0;

    const/16 v0, 0xb

    invoke-direct {p2, p0, v0}, LT/T0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void

    :pswitch_1
    const-string v1, "ctx"

    invoke-static {p1, v1}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "intent"

    invoke-static {p2, p1}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/ex/auto/WifiFloaterService;

    iget-object p1, v0, Lcom/ex/auto/WifiFloaterService;->c:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    const-string v0, "alpha"

    const/16 v1, 0x64

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    int-to-float p2, p2

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p2, v0

    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    :cond_1
    return-void

    :pswitch_2
    sget-object p1, Lcom/ex/auto/HomeFloatingWidgetsService;->Q:Ljava/util/List;

    check-cast v0, Lcom/ex/auto/HomeFloatingWidgetsService;

    invoke-virtual {v0}, Lcom/ex/auto/HomeFloatingWidgetsService;->r()V

    return-void

    :pswitch_3
    check-cast v0, Lcom/ex/auto/BlackoutFloaterService;

    iget-boolean p1, v0, Lcom/ex/auto/BlackoutFloaterService;->c:Z

    if-eqz p1, :cond_2

    const-string p1, "BlackoutFloater"

    const-string p2, "Volume (broadcast) alterado \u2014 restaurando backlight"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/ex/auto/BlackoutFloaterService;->e()V

    :cond_2
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
