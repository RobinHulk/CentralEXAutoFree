.class public final synthetic LT/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 0

    iput p2, p0, LT/u;->a:I

    iput-object p1, p0, LT/u;->b:Ljava/lang/Object;

    iput-object p3, p0, LT/u;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    const-string p1, "getString(...)"

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget v2, p0, LT/u;->a:I

    packed-switch v2, :pswitch_data_0

    iget-object v2, p0, LT/u;->b:Ljava/lang/Object;

    check-cast v2, Lcom/ex/auto/SplitFloaterService;

    iget-object v3, p0, LT/u;->c:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-boolean v4, v2, Lcom/ex/auto/SplitFloaterService;->o:Z

    if-eqz v4, :cond_0

    const v0, 0x7f0f030f

    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lcom/ex/auto/SplitFloaterService;->g(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v4, v2, Lcom/ex/auto/SplitFloaterService;->e:Landroid/widget/LinearLayout;

    if-eqz v4, :cond_1

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iput-boolean v1, v2, Lcom/ex/auto/SplitFloaterService;->n:Z

    iput-boolean v0, v2, Lcom/ex/auto/SplitFloaterService;->o:Z

    invoke-virtual {v2}, Lcom/ex/auto/SplitFloaterService;->h()V

    const v0, 0x7f0f024f

    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lcom/ex/auto/SplitFloaterService;->g(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/Thread;

    new-instance v0, LT/u4;

    invoke-direct {v0, v2, v3, v1}, LT/u4;-><init>(Lcom/ex/auto/SplitFloaterService;Ljava/lang/String;I)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    :goto_0
    return-void

    :pswitch_0
    sget-object p1, Lcom/ex/auto/QuickAccessFloaterService;->j0:Ljava/util/List;

    iget-object p1, p0, LT/u;->b:Ljava/lang/Object;

    check-cast p1, Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    xor-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iget-object v0, p0, LT/u;->c:Ljava/lang/Object;

    check-cast v0, LT/h4;

    invoke-virtual {v0, p1}, LT/h4;->b(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :pswitch_1
    sget-object p1, Lcom/ex/auto/QuickAccessFloaterService;->j0:Ljava/util/List;

    iget-object p1, p0, LT/u;->b:Ljava/lang/Object;

    check-cast p1, LH0/a;

    invoke-interface {p1}, LH0/a;->a()Ljava/lang/Object;

    const-wide/16 v0, 0xbb8

    iget-object p1, p0, LT/u;->c:Ljava/lang/Object;

    check-cast p1, Lcom/ex/auto/QuickAccessFloaterService;

    invoke-virtual {p1, v0, v1}, Lcom/ex/auto/QuickAccessFloaterService;->M(J)V

    return-void

    :pswitch_2
    sget v1, Lcom/ex/auto/MainActivity;->u0:I

    iget-object v1, p0, LT/u;->b:Ljava/lang/Object;

    check-cast v1, Lcom/ex/auto/MainActivity;

    const v2, 0x7f0f0173

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, LT/u;->c:Ljava/lang/Object;

    check-cast p1, LT/C;

    iget-object v3, p1, LT/C;->b:Ljava/lang/String;

    new-instance v4, LT/S2;

    invoke-direct {v4, v1, p1, v0}, LT/S2;-><init>(Lcom/ex/auto/MainActivity;LT/C;I)V

    invoke-virtual {v1, v2, v3, v4}, Lcom/ex/auto/MainActivity;->l0(Ljava/lang/String;Ljava/lang/String;LH0/l;)V

    return-void

    :pswitch_3
    sget p1, Lcom/ex/auto/MainActivity;->u0:I

    iget-object p1, p0, LT/u;->b:Ljava/lang/Object;

    check-cast p1, Lcom/ex/auto/MainActivity;

    invoke-virtual {p1}, Lcom/ex/auto/MainActivity;->B0()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "aeb_restore_on_boot"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iget-object v3, p0, LT/u;->c:Ljava/lang/Object;

    check-cast v3, Landroid/widget/TextView;

    if-nez v0, :cond_2

    new-instance v0, LT/j1;

    invoke-direct {v0, p1}, LT/j1;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f008d

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, LT/j1;->b:Ljava/lang/Object;

    check-cast v2, Le/e;

    iput-object v1, v2, Le/e;->d:Ljava/lang/CharSequence;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f0f0084

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v5, 0x7f0f008b

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v4, 0x7f0f0335

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Le/e;->f:Ljava/lang/CharSequence;

    const v1, 0x7f0f0030

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, LT/f;

    const/4 v4, 0x2

    invoke-direct {v2, p1, v4, v3}, LT/f;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, LT/j1;->h(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    const v1, 0x7f0f002f

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, LT/j1;->f(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0}, LT/j1;->j()Le/i;

    move-result-object p1

    const v0, 0x102000b

    invoke-virtual {p1, v0}, Le/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_3

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/ex/auto/MainActivity;->B0()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-static {p1, v3}, Lcom/ex/auto/MainActivity;->J(Lcom/ex/auto/MainActivity;Landroid/widget/TextView;)V

    :cond_3
    :goto_1
    return-void

    :pswitch_4
    sget-object p1, Lcom/ex/auto/HomeFloatingWidgetsService;->Q:Ljava/util/List;

    iget-object p1, p0, LT/u;->c:Ljava/lang/Object;

    check-cast p1, LT/B1;

    iget-object p1, p1, LT/B1;->a:Ljava/lang/String;

    iget-object v0, p0, LT/u;->b:Ljava/lang/Object;

    check-cast v0, Lcom/ex/auto/HomeFloatingWidgetsService;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, LT/T0;

    const/4 v2, 0x3

    invoke-direct {v1, p1, v2}, LT/T0;-><init>(Ljava/lang/Object;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    :pswitch_5
    sget-object p1, Lcom/ex/auto/AppPipFloaterService;->u:Lcom/ex/auto/AppPipFloaterService;

    iget-object p1, p0, LT/u;->b:Ljava/lang/Object;

    check-cast p1, Lcom/ex/auto/AppPipFloaterService;

    iget-object v0, p0, LT/u;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/ex/auto/AppPipFloaterService;->e(Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
