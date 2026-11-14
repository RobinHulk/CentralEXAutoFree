.class public final LT/q3;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/ex/auto/MainActivity;


# direct methods
.method public synthetic constructor <init>(ILcom/ex/auto/MainActivity;)V
    .locals 0

    iput p1, p0, LT/q3;->a:I

    iput-object p2, p0, LT/q3;->b:Lcom/ex/auto/MainActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    iget-object p1, p0, LT/q3;->b:Lcom/ex/auto/MainActivity;

    iget v0, p0, LT/q3;->a:I

    packed-switch v0, :pswitch_data_0

    sget p2, Lcom/ex/auto/MainActivity;->u0:I

    invoke-virtual {p1}, Lcom/ex/auto/MainActivity;->x1()V

    return-void

    :pswitch_0
    sget p2, Lcom/ex/auto/MainActivity;->u0:I

    invoke-virtual {p1}, Lcom/ex/auto/MainActivity;->v1()V

    invoke-virtual {p1}, Lcom/ex/auto/MainActivity;->w1()V

    return-void

    :pswitch_1
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x35af4b58    # -3419434.0f

    const/4 v3, 0x0

    if-eq v1, v2, :cond_6

    const v2, -0x127e2833

    if-eq v1, v2, :cond_3

    const p2, 0x16582c57

    if-eq v1, p2, :cond_1

    goto/16 :goto_3

    :cond_1
    const-string p2, "com.ex.auto.USB_WATCHDOG_APPLIED"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    goto/16 :goto_3

    :cond_2
    sget p2, Lcom/ex/auto/MainActivity;->u0:I

    const-string p2, "AutoUSB"

    const-string v0, "USB corrigido pelo watchdog"

    invoke-virtual {p1, p2, v0}, Lcom/ex/auto/MainActivity;->v(Ljava/lang/String;Ljava/lang/String;)V

    const p2, 0x7f0f0334

    invoke-static {p1, p2, p1, v3}, LM/d0;->l(Lcom/ex/auto/MainActivity;ILcom/ex/auto/MainActivity;I)V

    goto/16 :goto_3

    :cond_3
    const-string v1, "com.ex.auto.AUTO_PROXY_APPLIED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_3

    :cond_4
    const-string v0, "ip"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    goto :goto_3

    :cond_5
    const-string v1, "port"

    const/16 v2, 0x1f90

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {v0, p2}, [Ljava/lang/Object;

    move-result-object p2

    const v0, 0x7f0f00ad

    invoke-virtual {p1, v0, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "getString(...)"

    invoke-static {p2, v0}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcom/ex/auto/MainActivity;->u0:I

    const-string v0, "AutoProxy"

    invoke-virtual {p1, v0, p2}, Lcom/ex/auto/MainActivity;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, p2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_3

    :cond_6
    const-string v1, "com.ex.auto.AUTO_ROUTE_APPLIED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_3

    :cond_7
    const-string v0, "ok"

    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_8

    const v0, 0x7f0f00b1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_8
    const v0, 0x7f0f00b2

    goto :goto_1

    :goto_2
    invoke-static {v0}, LI0/f;->b(Ljava/lang/Object;)V

    sget v1, Lcom/ex/auto/MainActivity;->u0:I

    const-string v1, "AutoRota"

    invoke-virtual {p1, v1, v0}, Lcom/ex/auto/MainActivity;->v(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_9

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/ex/auto/MainActivity;->Q:Z

    invoke-virtual {p1}, Lcom/ex/auto/MainActivity;->q2()V

    :cond_9
    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
