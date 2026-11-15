.class public final synthetic LT/f2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/ex/auto/MainActivity;


# direct methods
.method public synthetic constructor <init>(ILcom/ex/auto/MainActivity;)V
    .locals 0

    iput p1, p0, LT/f2;->a:I

    iput-object p2, p0, LT/f2;->b:Lcom/ex/auto/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 8

    const p1, 0x7f0f002f

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, LT/f2;->b:Lcom/ex/auto/MainActivity;

    iget v3, p0, LT/f2;->a:I

    packed-switch v3, :pswitch_data_0

    const p1, 0x7f0901f1

    if-ne p2, p1, :cond_0

    iget p1, v2, Lcom/ex/auto/MainActivity;->A:I

    goto :goto_0

    :cond_0
    const p1, 0x7f0901ef

    if-ne p2, p1, :cond_1

    iget p1, v2, Lcom/ex/auto/MainActivity;->B:I

    goto :goto_0

    :cond_1
    sget p1, Lcom/ex/auto/MainActivity;->u0:I

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move p1, v1

    :goto_0
    iget p2, v2, Lcom/ex/auto/MainActivity;->C:I

    if-ne p1, p2, :cond_2

    goto/16 :goto_7

    :cond_2
    iput p1, v2, Lcom/ex/auto/MainActivity;->C:I

    iget-object p2, v2, Lcom/ex/auto/MainActivity;->y:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    iget-object p2, v2, Lcom/ex/auto/MainActivity;->z:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    iget p2, v2, Lcom/ex/auto/MainActivity;->C:I

    iget v3, v2, Lcom/ex/auto/MainActivity;->B:I

    if-ne p2, v3, :cond_3

    goto :goto_1

    :cond_3
    move v0, v1

    :goto_1
    iget-object p2, v2, Lcom/ex/auto/MainActivity;->t:LU/a;

    const/4 v3, 0x0

    const-string v4, "binding"

    if-eqz p2, :cond_e

    if-eqz v0, :cond_4

    const v5, 0x7f0f0322

    :goto_2
    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    :cond_4
    const v5, 0x7f0f01ca

    goto :goto_2

    :goto_3
    iget-object p2, p2, LU/a;->H:Landroid/widget/Button;

    invoke-virtual {p2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v0, :cond_5

    const p2, 0x7f050035

    goto :goto_4

    :cond_5
    const p2, 0x7f05002e

    :goto_4
    invoke-virtual {v2, p2}, Landroid/content/Context;->getColor(I)I

    move-result p2

    iget-object v5, v2, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v5, :cond_d

    iget-object v5, v5, LU/a;->H:Landroid/widget/Button;

    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-virtual {v5, p2}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    iget-object p2, v2, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz p2, :cond_c

    if-eqz v0, :cond_6

    const/4 v5, -0x1

    goto :goto_5

    :cond_6
    const v5, 0x7f050038

    invoke-virtual {v2, v5}, Landroid/content/Context;->getColor(I)I

    move-result v5

    :goto_5
    iget-object p2, p2, LU/a;->H:Landroid/widget/Button;

    invoke-virtual {p2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p2, v2, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz p2, :cond_b

    const/16 v5, 0x8

    if-eqz v0, :cond_7

    move v6, v5

    goto :goto_6

    :cond_7
    move v6, v1

    :goto_6
    iget-object p2, p2, LU/a;->s:Landroid/widget/Button;

    invoke-virtual {p2, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, v2, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz p2, :cond_a

    if-eqz v0, :cond_8

    move v1, v5

    :cond_8
    iget-object p2, p2, LU/a;->p:Landroid/widget/Button;

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    sget-object p2, Lw0/q;->a:Lw0/q;

    iget v0, v2, Lcom/ex/auto/MainActivity;->A:I

    if-ne p1, v0, :cond_9

    const p1, 0x7f0f0303

    invoke-virtual {v2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "getString(...)"

    invoke-static {p1, v0}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, p2, p1}, Lcom/ex/auto/MainActivity;->I1(Ljava/util/List;Ljava/lang/String;)V

    goto :goto_7

    :cond_9
    const-string p1, ""

    invoke-virtual {v2, p2, p1}, Lcom/ex/auto/MainActivity;->I1(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/ex/auto/MainActivity;->o1()V

    :goto_7
    return-void

    :cond_a
    invoke-static {v4}, LI0/f;->h(Ljava/lang/String;)V

    throw v3

    :cond_b
    invoke-static {v4}, LI0/f;->h(Ljava/lang/String;)V

    throw v3

    :cond_c
    invoke-static {v4}, LI0/f;->h(Ljava/lang/String;)V

    throw v3

    :cond_d
    invoke-static {v4}, LI0/f;->h(Ljava/lang/String;)V

    throw v3

    :cond_e
    invoke-static {v4}, LI0/f;->h(Ljava/lang/String;)V

    throw v3

    :pswitch_0
    iget-boolean v3, v2, Lcom/ex/auto/MainActivity;->p0:Z

    if-eqz v3, :cond_f

    goto :goto_9

    :cond_f
    const v3, 0x7f0901f3

    if-ne p2, v3, :cond_10

    const-string p2, "1114"

    goto :goto_8

    :cond_10
    const-string p2, "1111"

    :goto_8
    invoke-virtual {v2}, Lcom/ex/auto/MainActivity;->c0()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    goto :goto_9

    :cond_11
    invoke-virtual {v2, p2}, Lcom/ex/auto/MainActivity;->d0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, LT/j1;

    invoke-direct {v5, v2}, LT/j1;-><init>(Landroid/content/Context;)V

    const v6, 0x7f0f012b

    invoke-virtual {v5, v6}, LT/j1;->i(I)V

    const v6, 0x7f0f0129

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v5, LT/j1;->b:Ljava/lang/Object;

    check-cast v7, Le/e;

    iput-object v6, v7, Le/e;->f:Ljava/lang/CharSequence;

    iput-boolean v1, v7, Le/e;->k:Z

    const v6, 0x7f0f012a

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v6, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v6, LT/x2;

    invoke-direct {v6, v1, v2, p2, v3}, LT/x2;-><init>(ILcom/ex/auto/MainActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v4, v6}, LT/j1;->h(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    new-instance p2, LT/a2;

    invoke-direct {p2, v3, v2, v0}, LT/a2;-><init>(Ljava/lang/String;Lcom/ex/auto/MainActivity;I)V

    invoke-virtual {v5, p1, p2}, LT/j1;->e(ILandroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v5}, LT/j1;->j()Le/i;

    :goto_9
    return-void

    :pswitch_1
    iget-boolean v3, v2, Lcom/ex/auto/MainActivity;->o0:Z

    if-eqz v3, :cond_12

    goto :goto_c

    :cond_12
    const v3, 0x7f0901f4

    const-string v4, "aa"

    if-ne p2, v3, :cond_13

    move-object p2, v4

    goto :goto_a

    :cond_13
    const-string p2, "ambos"

    :goto_a
    invoke-virtual {v2}, Lcom/ex/auto/MainActivity;->a0()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    goto :goto_c

    :cond_14
    invoke-virtual {v2, p2}, Lcom/ex/auto/MainActivity;->b0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, LT/j1;

    invoke-direct {v6, v2}, LT/j1;-><init>(Landroid/content/Context;)V

    const v7, 0x7f0f021f

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v7, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iget-object v7, v6, LT/j1;->b:Ljava/lang/Object;

    check-cast v7, Le/e;

    iput-object v5, v7, Le/e;->d:Ljava/lang/CharSequence;

    invoke-virtual {p2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    const v4, 0x7f0f0218

    goto :goto_b

    :cond_15
    const-string v4, "carplay"

    invoke-virtual {p2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    const v4, 0x7f0f021e

    goto :goto_b

    :cond_16
    const v4, 0x7f0f021a

    :goto_b
    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v7, Le/e;->f:Ljava/lang/CharSequence;

    iput-boolean v1, v7, Le/e;->k:Z

    new-instance v1, LT/x2;

    invoke-direct {v1, v0, v2, p2, v3}, LT/x2;-><init>(ILcom/ex/auto/MainActivity;Ljava/lang/String;Ljava/lang/String;)V

    const p2, 0x104000a

    invoke-virtual {v6, p2, v1}, LT/j1;->g(ILandroid/content/DialogInterface$OnClickListener;)V

    new-instance p2, LT/a2;

    const/4 v0, 0x2

    invoke-direct {p2, v3, v2, v0}, LT/a2;-><init>(Ljava/lang/String;Lcom/ex/auto/MainActivity;I)V

    invoke-virtual {v6, p1, p2}, LT/j1;->e(ILandroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v6}, LT/j1;->j()Le/i;

    :goto_c
    return-void

    :pswitch_2
    sget p1, Lcom/ex/auto/MainActivity;->u0:I

    const-string p1, "stable"

    invoke-virtual {v2}, Lcom/ex/auto/MainActivity;->B0()Landroid/content/SharedPreferences;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    const-string v0, "update_channel"

    invoke-interface {p2, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
