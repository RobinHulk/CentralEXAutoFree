.class public final synthetic LT/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 0

    iput p2, p0, LT/f;->a:I

    iput-object p1, p0, LT/f;->b:Ljava/lang/Object;

    iput-object p3, p0, LT/f;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const/4 p1, 0x1

    const/4 v0, 0x0

    iget v1, p0, LT/f;->a:I

    packed-switch v1, :pswitch_data_0

    iget-object p1, p0, LT/f;->b:Ljava/lang/Object;

    check-cast p1, Lcom/ex/auto/TempBattPillFloaterService;

    iget-object v1, p0, LT/f;->c:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    sget-object v2, Lcom/ex/auto/TempBattPillFloaterService;->u:Lcom/ex/auto/TempBattPillFloaterService;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, p2}, LT/Y;->T(Landroid/content/Context;I)LT/k;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p1, Lcom/ex/auto/TempBattPillFloaterService;->e:Landroid/os/Handler;

    iget-object v3, p1, Lcom/ex/auto/TempBattPillFloaterService;->n:LT/H4;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-object v1, p1, Lcom/ex/auto/TempBattPillFloaterService;->l:LT/k;

    iput v0, p1, Lcom/ex/auto/TempBattPillFloaterService;->m:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iput-object p2, p1, Lcom/ex/auto/TempBattPillFloaterService;->k:Ljava/lang/Integer;

    iget-object p2, p1, Lcom/ex/auto/TempBattPillFloaterService;->c:Landroid/widget/TextView;

    if-eqz p2, :cond_1

    const v0, -0xff0100

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    iget-object p2, p1, Lcom/ex/auto/TempBattPillFloaterService;->e:Landroid/os/Handler;

    iget-object p1, p1, Lcom/ex/auto/TempBattPillFloaterService;->n:LT/H4;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :pswitch_0
    sget-object p1, Lcom/ex/auto/QuickAccessFloaterService;->j0:Ljava/util/List;

    iget-object p1, p0, LT/f;->b:Ljava/lang/Object;

    check-cast p1, Lcom/ex/auto/QuickAccessFloaterService;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Ljava/lang/Thread;

    new-instance v0, LT/H;

    iget-object v1, p0, LT/f;->c:Ljava/lang/Object;

    check-cast v1, Landroid/car/hardware/property/CarPropertyManager;

    const/16 v2, 0x1c

    invoke-direct {v0, v1, v2, p1}, LT/H;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-direct {p2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    return-void

    :pswitch_1
    sget v0, Lcom/ex/auto/MainActivity;->u0:I

    if-nez p2, :cond_2

    const-string p1, ""

    goto :goto_1

    :cond_2
    sub-int/2addr p2, p1

    iget-object p1, p0, LT/f;->c:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lv0/a;

    iget-object p1, p1, Lv0/a;->a:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    :goto_1
    iget-object p2, p0, LT/f;->b:Ljava/lang/Object;

    check-cast p2, LH0/l;

    invoke-interface {p2, p1}, LH0/l;->b(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :pswitch_2
    sget p2, Lcom/ex/auto/MainActivity;->u0:I

    iget-object p2, p0, LT/f;->b:Ljava/lang/Object;

    check-cast p2, Lcom/ex/auto/MainActivity;

    invoke-virtual {p2}, Lcom/ex/auto/MainActivity;->B0()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "aeb_restore_on_boot"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object p1, p0, LT/f;->c:Ljava/lang/Object;

    check-cast p1, Landroid/widget/TextView;

    invoke-static {p2, p1}, Lcom/ex/auto/MainActivity;->J(Lcom/ex/auto/MainActivity;Landroid/widget/TextView;)V

    return-void

    :pswitch_3
    iget-object p1, p0, LT/f;->b:Ljava/lang/Object;

    check-cast p1, Lcom/ex/auto/MainActivity;

    iget-object p2, p1, Lcom/ex/auto/MainActivity;->t:LU/a;

    const/4 v1, 0x0

    const-string v2, "binding"

    if-eqz p2, :cond_4

    iget-object p2, p2, LU/a;->n:Landroid/widget/Button;

    invoke-virtual {p2, v0}, Landroid/view/View;->setEnabled(Z)V

    iget-object p2, p1, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz p2, :cond_3

    const v1, 0x7f0f03d3

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object p2, p2, LU/a;->R2:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance p2, LT/U2;

    iget-object v1, p0, LT/f;->c:Ljava/lang/Object;

    check-cast v1, LT/p3;

    invoke-direct {p2, p1, v1, v0}, LT/U2;-><init>(Lcom/ex/auto/MainActivity;LT/p3;I)V

    iget-object p1, p1, Lcom/ex/auto/MainActivity;->w:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_3
    invoke-static {v2}, LI0/f;->h(Ljava/lang/String;)V

    throw v1

    :cond_4
    invoke-static {v2}, LI0/f;->h(Ljava/lang/String;)V

    throw v1

    :pswitch_4
    iget-object p1, p0, LT/f;->b:Ljava/lang/Object;

    check-cast p1, Lcom/ex/auto/AcProgramEditActivity;

    iget-object p2, p1, Lcom/ex/auto/AcProgramEditActivity;->u:Ljava/util/ArrayList;

    new-instance v0, LT/l;

    iget-object v1, p0, LT/f;->c:Ljava/lang/Object;

    check-cast v1, Landroid/widget/RadioButton;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_5

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    goto :goto_2

    :cond_5
    const-wide/16 v1, 0x0

    :goto_2
    const-string v3, "recirc"

    invoke-direct {v0, v3, v1, v2}, LT/l;-><init>(Ljava/lang/String;D)V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lcom/ex/auto/AcProgramEditActivity;->t()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
