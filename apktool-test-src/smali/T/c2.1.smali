.class public final synthetic LT/c2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/ex/auto/MainActivity;

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Lcom/ex/auto/MainActivity;ZI)V
    .locals 0

    .line 1
    iput p3, p0, LT/c2;->a:I

    iput-object p1, p0, LT/c2;->b:Lcom/ex/auto/MainActivity;

    iput-boolean p2, p0, LT/c2;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(ZLcom/ex/auto/MainActivity;I)V
    .locals 0

    .line 2
    iput p3, p0, LT/c2;->a:I

    iput-boolean p1, p0, LT/c2;->c:Z

    iput-object p2, p0, LT/c2;->b:Lcom/ex/auto/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    const v0, 0x7f0f02a7

    const v1, 0x7f0f02a2

    const/4 v2, 0x1

    const-string v3, "binding"

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget v6, p0, LT/c2;->a:I

    packed-switch v6, :pswitch_data_0

    sget v0, Lcom/ex/auto/MainActivity;->u0:I

    iget-object v0, p0, LT/c2;->b:Lcom/ex/auto/MainActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v1, p0, LT/c2;->c:Z

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v1, :cond_1

    iget-object v1, v1, LU/a;->R0:LU/b;

    iget-object v1, v1, LU/b;->r:Landroid/widget/TextView;

    const v2, 0x7f0f043f

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/ex/auto/MainActivity;->v:Landroid/os/Handler;

    new-instance v2, LT/G2;

    const/16 v3, 0x13

    invoke-direct {v2, v3, v0}, LT/G2;-><init>(ILcom/ex/auto/MainActivity;)V

    const-wide/16 v3, 0x3a98

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_1
    invoke-static {v3}, LI0/f;->h(Ljava/lang/String;)V

    throw v4

    :cond_2
    iget-object v1, v0, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v1, :cond_3

    iget-object v1, v1, LU/a;->R0:LU/b;

    iget-object v1, v1, LU/b;->r:Landroid/widget/TextView;

    const v2, 0x7f0f0441

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lcom/ex/auto/MainActivity;->B0()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "gestures_enabled"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-virtual {v0}, Lcom/ex/auto/MainActivity;->l1()V

    :goto_0
    return-void

    :cond_3
    invoke-static {v3}, LI0/f;->h(Ljava/lang/String;)V

    throw v4

    :pswitch_0
    sget v0, Lcom/ex/auto/MainActivity;->u0:I

    iget-boolean v0, p0, LT/c2;->c:Z

    if-eqz v0, :cond_4

    const v0, 0x7f0f0125

    goto :goto_1

    :cond_4
    const v0, 0x7f0f011e

    :goto_1
    iget-object v1, p0, LT/c2;->b:Lcom/ex/auto/MainActivity;

    invoke-static {v1, v0, v1, v5}, LM/d0;->l(Lcom/ex/auto/MainActivity;ILcom/ex/auto/MainActivity;I)V

    return-void

    :pswitch_1
    iget-boolean v11, p0, LT/c2;->c:Z

    iget-object v8, p0, LT/c2;->b:Lcom/ex/auto/MainActivity;

    if-nez v11, :cond_5

    sget v0, Lcom/ex/auto/MainActivity;->u0:I

    invoke-virtual {v8}, Lcom/ex/auto/MainActivity;->r2()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v1, v8, Lcom/ex/auto/MainActivity;->v:Landroid/os/Handler;

    new-instance v2, LT/V1;

    const/16 v3, 0x17

    invoke-direct {v2, v8, v0, v3}, LT/V1;-><init>(Lcom/ex/auto/MainActivity;Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_5

    :cond_5
    iget-object v0, v8, Lcom/ex/auto/MainActivity;->v:Landroid/os/Handler;

    new-instance v1, LT/c2;

    const/16 v3, 0xf

    invoke-direct {v1, v8, v11, v3}, LT/c2;-><init>(Lcom/ex/auto/MainActivity;ZI)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    if-eqz v11, :cond_6

    const-string v0, "pm uninstall com.njda.adapter"

    goto :goto_2

    :cond_6
    const-string v0, "pm install -r -g \'/data/local/tmp/fixes/ca_fix.apk\'"

    :goto_2
    const/16 v1, 0x7530

    invoke-virtual {v8, v1, v0}, Lcom/ex/auto/MainActivity;->C1(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, LO0/j;->E0(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_8

    const-string v0, "Success"

    invoke-static {v12, v0, v2}, LO0/j;->x0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-nez v0, :cond_7

    if-eqz v11, :cond_8

    const-string v0, "Failure"

    invoke-static {v12, v0, v2}, LO0/j;->x0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-nez v0, :cond_8

    :cond_7
    move v9, v2

    goto :goto_3

    :cond_8
    move v9, v5

    :goto_3
    invoke-virtual {v8}, Lcom/ex/auto/MainActivity;->Y()Z

    move-result v0

    if-eq v0, v11, :cond_9

    move v10, v2

    goto :goto_4

    :cond_9
    move v10, v5

    :goto_4
    if-eqz v10, :cond_a

    const-string v1, "aa_wifi_bind_enabled"

    invoke-static {v8, v1, v0}, LM/d0;->m(Lcom/ex/auto/MainActivity;Ljava/lang/String;Z)V

    :cond_a
    iget-object v0, v8, Lcom/ex/auto/MainActivity;->v:Landroid/os/Handler;

    new-instance v1, LT/W2;

    move-object v6, v1

    invoke-direct/range {v6 .. v12}, LT/W2;-><init>(ZLcom/ex/auto/MainActivity;ZZZLjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_5
    return-void

    :pswitch_2
    sget v0, Lcom/ex/auto/MainActivity;->u0:I

    iget-object v0, p0, LT/c2;->b:Lcom/ex/auto/MainActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_b

    goto :goto_7

    :cond_b
    iget-boolean v1, p0, LT/c2;->c:Z

    if-eqz v1, :cond_c

    const v1, 0x7f0f014a

    goto :goto_6

    :cond_c
    const v1, 0x7f0f0149

    :goto_6
    invoke-static {v0, v1, v0, v2}, LM/d0;->l(Lcom/ex/auto/MainActivity;ILcom/ex/auto/MainActivity;I)V

    :goto_7
    return-void

    :pswitch_3
    sget v0, Lcom/ex/auto/MainActivity;->u0:I

    iget-boolean v0, p0, LT/c2;->c:Z

    iget-object v1, p0, LT/c2;->b:Lcom/ex/auto/MainActivity;

    if-eqz v0, :cond_d

    const v0, 0x7f0f010f

    invoke-static {v1, v0, v1, v5}, LM/d0;->l(Lcom/ex/auto/MainActivity;ILcom/ex/auto/MainActivity;I)V

    :cond_d
    invoke-virtual {v1}, Lcom/ex/auto/MainActivity;->z()V

    return-void

    :pswitch_4
    iget-object v0, p0, LT/c2;->b:Lcom/ex/auto/MainActivity;

    iget-object v1, v0, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v1, :cond_f

    iget-boolean v2, p0, LT/c2;->c:Z

    if-eqz v2, :cond_e

    const v2, 0x7f05003b

    invoke-virtual {v0, v2}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    :cond_e
    iget-object v0, v1, LU/a;->S2:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    return-void

    :cond_f
    invoke-static {v3}, LI0/f;->h(Ljava/lang/String;)V

    throw v4

    :pswitch_5
    iget-object v0, p0, LT/c2;->b:Lcom/ex/auto/MainActivity;

    iget-boolean v1, p0, LT/c2;->c:Z

    iput-boolean v1, v0, Lcom/ex/auto/MainActivity;->Q:Z

    invoke-virtual {v0}, Lcom/ex/auto/MainActivity;->q2()V

    return-void

    :pswitch_6
    iget-object v0, p0, LT/c2;->b:Lcom/ex/auto/MainActivity;

    iget-boolean v1, p0, LT/c2;->c:Z

    sget v2, Lcom/ex/auto/MainActivity;->u0:I

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_10

    goto :goto_8

    :cond_10
    if-eqz v1, :cond_11

    const v1, 0x7f0f02b0

    invoke-static {v0, v1, v0, v5}, LM/d0;->l(Lcom/ex/auto/MainActivity;ILcom/ex/auto/MainActivity;I)V

    goto :goto_8

    :cond_11
    const-string v1, "rvc_black_bg"

    invoke-static {v0, v1, v5}, LM/d0;->m(Lcom/ex/auto/MainActivity;Ljava/lang/String;Z)V

    iget-object v1, v0, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v1, :cond_12

    iget-object v1, v1, LU/a;->e2:Lcom/google/android/material/switchmaterial/SwitchMaterial;

    invoke-virtual {v0, v1, v5}, Lcom/ex/auto/MainActivity;->O1(Lcom/google/android/material/switchmaterial/SwitchMaterial;Z)V

    invoke-virtual {v0}, Lcom/ex/auto/MainActivity;->v1()V

    sget-object v1, LT/p4;->a:Ljava/lang/String;

    sget-object v1, LT/p4;->a:Ljava/lang/String;

    new-instance v2, LT/j1;

    invoke-direct {v2, v0}, LT/j1;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0f0167

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v5, v2, LT/j1;->b:Ljava/lang/Object;

    check-cast v5, Le/e;

    iput-object v3, v5, Le/e;->d:Ljava/lang/CharSequence;

    const-string v3, "Falha ao aplicar o fundo preto na r\u00e9"

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const v6, 0x7f0f016e

    invoke-virtual {v0, v6, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v5, Le/e;->f:Ljava/lang/CharSequence;

    const v3, 0x7f0f0033

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v4}, LT/j1;->f(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    const v3, 0x7f0f02c7

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, LT/a2;

    const/4 v5, 0x4

    invoke-direct {v4, v0, v1, v5}, LT/a2;-><init>(Lcom/ex/auto/MainActivity;Ljava/lang/String;I)V

    invoke-virtual {v2, v3, v4}, LT/j1;->h(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v2}, LT/j1;->j()Le/i;

    :goto_8
    return-void

    :cond_12
    invoke-static {v3}, LI0/f;->h(Ljava/lang/String;)V

    throw v4

    :pswitch_7
    sget v2, Lcom/ex/auto/MainActivity;->u0:I

    iget-object v2, p0, LT/c2;->b:Lcom/ex/auto/MainActivity;

    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_14

    iget-boolean v3, p0, LT/c2;->c:Z

    if-eqz v3, :cond_13

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    :cond_13
    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_9
    invoke-static {v2, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_14
    return-void

    :pswitch_8
    iget-object v0, p0, LT/c2;->b:Lcom/ex/auto/MainActivity;

    iget-object v1, v0, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v1, :cond_17

    const-string v2, "swTtl65"

    iget-object v1, v1, LU/a;->q2:Lcom/google/android/material/switchmaterial/SwitchMaterial;

    invoke-static {v1, v2}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v2, p0, LT/c2;->c:Z

    invoke-virtual {v0, v1, v2}, Lcom/ex/auto/MainActivity;->O1(Lcom/google/android/material/switchmaterial/SwitchMaterial;Z)V

    iget-object v1, v0, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v1, :cond_16

    if-eqz v2, :cond_15

    const v2, 0x7f0f0318

    goto :goto_a

    :cond_15
    const v2, 0x7f0f0317

    :goto_a
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, v1, LU/a;->Q2:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_16
    invoke-static {v3}, LI0/f;->h(Ljava/lang/String;)V

    throw v4

    :cond_17
    invoke-static {v3}, LI0/f;->h(Ljava/lang/String;)V

    throw v4

    :pswitch_9
    iget-object v0, p0, LT/c2;->b:Lcom/ex/auto/MainActivity;

    iget-object v1, v0, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v1, :cond_19

    iget-object v1, v1, LU/a;->c:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    iget-boolean v1, p0, LT/c2;->c:Z

    if-eqz v1, :cond_18

    const v1, 0x7f0f0081

    :goto_b
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_c

    :cond_18
    const v1, 0x7f0f0080

    goto :goto_b

    :goto_c
    invoke-static {v1}, LI0/f;->b(Ljava/lang/Object;)V

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_19
    invoke-static {v3}, LI0/f;->h(Ljava/lang/String;)V

    throw v4

    :pswitch_a
    sget v0, Lcom/ex/auto/MainActivity;->u0:I

    iget-boolean v0, p0, LT/c2;->c:Z

    if-eqz v0, :cond_1a

    const-string v0, "mkdir -p /data/local/gesture-launcher && touch /data/local/gesture-launcher/single_step_mode && chmod 666 /data/local/gesture-launcher/single_step_mode"

    goto :goto_d

    :cond_1a
    const-string v0, "rm -f /data/local/gesture-launcher/single_step_mode"

    :goto_d
    const/16 v1, 0xbb8

    iget-object v2, p0, LT/c2;->b:Lcom/ex/auto/MainActivity;

    invoke-virtual {v2, v1, v0}, Lcom/ex/auto/MainActivity;->C1(ILjava/lang/String;)Ljava/lang/String;

    return-void

    :pswitch_b
    sget v0, Lcom/ex/auto/MainActivity;->u0:I

    iget-object v0, p0, LT/c2;->b:Lcom/ex/auto/MainActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_1c

    iget-boolean v1, p0, LT/c2;->c:Z

    if-eqz v1, :cond_1b

    const v1, 0x7f0f02af

    :goto_e
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_f

    :cond_1b
    const v1, 0x7f0f02b5

    goto :goto_e

    :goto_f
    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_1c
    return-void

    :pswitch_c
    sget v0, Lcom/ex/auto/MainActivity;->u0:I

    iget-boolean v0, p0, LT/c2;->c:Z

    if-eqz v0, :cond_1d

    const-string v1, "for i in 1 2 3 4 5; do iptables  -t mangle -D POSTROUTING -j TTL --ttl-set 65 2>/dev/null || break; done\nfor i in 1 2 3 4 5; do ip6tables -t mangle -D POSTROUTING -j HL  --hl-set  65 2>/dev/null || break; done\niptables  -t mangle -A POSTROUTING -j TTL --ttl-set 65 2>&1\nip6tables -t mangle -A POSTROUTING -j HL  --hl-set  65 2>&1\necho TTL_V4=$(iptables  -t mangle -S POSTROUTING | grep -c \'ttl-set 65\')\necho TTL_V6=$(ip6tables -t mangle -S POSTROUTING | grep -c \'hl-set 65\')"

    goto :goto_10

    :cond_1d
    const-string v1, "for i in 1 2 3 4 5; do iptables  -t mangle -D POSTROUTING -j TTL --ttl-set 65 2>/dev/null || break; done\nfor i in 1 2 3 4 5; do ip6tables -t mangle -D POSTROUTING -j HL  --hl-set  65 2>/dev/null || break; done\necho TTL_V4=$(iptables  -t mangle -S POSTROUTING | grep -c \'ttl-set 65\')\necho TTL_V6=$(ip6tables -t mangle -S POSTROUTING | grep -c \'hl-set 65\')"

    :goto_10
    iget-object v3, p0, LT/c2;->b:Lcom/ex/auto/MainActivity;

    const/16 v4, 0x4e20

    invoke-virtual {v3, v4, v1}, Lcom/ex/auto/MainActivity;->C1(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "TTL_V6"

    const-string v6, "TTL_V4"

    const-string v7, "saida"

    if-eqz v0, :cond_1e

    invoke-static {v1, v7}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v6}, LT/q4;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_1f

    invoke-static {v1, v4}, LT/q4;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_1f

    goto :goto_11

    :cond_1e
    invoke-static {v1, v7}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v6}, LT/q4;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_20

    invoke-static {v1, v4}, LT/q4;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_20

    :cond_1f
    move v2, v5

    :cond_20
    :goto_11
    if-eqz v2, :cond_21

    const-string v4, "ttl_65_ativo"

    invoke-static {v3, v4, v0}, LM/d0;->m(Lcom/ex/auto/MainActivity;Ljava/lang/String;Z)V

    :cond_21
    sget-object v4, LT/L3;->a:LT/L3;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v0, :cond_22

    const-string v6, "ativar"

    goto :goto_12

    :cond_22
    const-string v6, "desativar"

    :goto_12
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_23

    const-string v6, "OK"

    goto :goto_13

    :cond_23
    const-string v6, "FALHOU"

    :goto_13
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " \u2014 "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\n"

    const-string v7, " "

    invoke-static {v1, v6, v7}, LO0/s;->v0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v6, 0x78

    invoke-static {v6, v1}, LO0/j;->V0(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v5, "TTL"

    invoke-virtual {v4, v5, v1}, LT/L3;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v3, Lcom/ex/auto/MainActivity;->v:Landroid/os/Handler;

    new-instance v4, LT/H2;

    const/4 v5, 0x2

    invoke-direct {v4, v3, v2, v0, v5}, LT/H2;-><init>(Landroid/content/ContextWrapper;ZZI)V

    invoke-virtual {v1, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_d
    iget-object v0, p0, LT/c2;->b:Lcom/ex/auto/MainActivity;

    iget-object v1, v0, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v1, :cond_2a

    iget-object v1, v1, LU/a;->R0:LU/b;

    iget-object v1, v1, LU/b;->c:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    iget-object v1, v0, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v1, :cond_29

    iget-object v1, v1, LU/a;->R0:LU/b;

    iget-object v1, v1, LU/b;->c:Landroid/widget/Button;

    iget-boolean v2, p0, LT/c2;->c:Z

    if-eqz v2, :cond_24

    const v5, 0x7f0f0413

    :goto_14
    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_15

    :cond_24
    const v5, 0x7f0f03ef

    goto :goto_14

    :goto_15
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v1, :cond_28

    iget-object v1, v1, LU/a;->R0:LU/b;

    iget-object v1, v1, LU/b;->c:Landroid/widget/Button;

    if-eqz v2, :cond_25

    const v5, 0x7f050035

    goto :goto_16

    :cond_25
    const v5, 0x7f05003e

    :goto_16
    invoke-virtual {v0, v5}, Landroid/content/Context;->getColor(I)I

    move-result v5

    invoke-static {v5}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    iget-object v1, v0, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v1, :cond_27

    iget-object v1, v1, LU/a;->R0:LU/b;

    iget-object v1, v1, LU/b;->c:Landroid/widget/Button;

    if-eqz v2, :cond_26

    const v2, 0x7f050038

    goto :goto_17

    :cond_26
    const v2, 0x7f05003f

    :goto_17
    invoke-virtual {v0, v2}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void

    :cond_27
    invoke-static {v3}, LI0/f;->h(Ljava/lang/String;)V

    throw v4

    :cond_28
    invoke-static {v3}, LI0/f;->h(Ljava/lang/String;)V

    throw v4

    :cond_29
    invoke-static {v3}, LI0/f;->h(Ljava/lang/String;)V

    throw v4

    :cond_2a
    invoke-static {v3}, LI0/f;->h(Ljava/lang/String;)V

    throw v4

    :pswitch_e
    sget v2, Lcom/ex/auto/MainActivity;->u0:I

    iget-object v2, p0, LT/c2;->b:Lcom/ex/auto/MainActivity;

    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_2c

    iget-boolean v3, p0, LT/c2;->c:Z

    if-eqz v3, :cond_2b

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_18

    :cond_2b
    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_18
    invoke-static {v2, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_2c
    return-void

    :pswitch_f
    iget-object v0, p0, LT/c2;->b:Lcom/ex/auto/MainActivity;

    sget v1, Lcom/ex/auto/MainActivity;->u0:I

    const-string v1, "/data/local/tmp/sons"

    const-string v3, "ls -1 "

    const-string v4, "\n                    for _sw in "

    const-string v5, "\n                        for wav in "

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/ex/auto/MainActivity;->Y1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "/data/local/tmp"

    invoke-static {v7}, Lcom/ex/auto/MainActivity;->Y1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "/sdcard/Download"

    invoke-static {v8}, Lcom/ex/auto/MainActivity;->Y1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "/storage/emulated/0/Download"

    invoke-static {v9}, Lcom/ex/auto/MainActivity;->Y1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-boolean v10, p0, LT/c2;->c:Z

    const-string v11, "/*.wav "

    if-eqz v10, :cond_2d

    :try_start_1
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/*.WAV; do\n                          [ -f \"$wav\" ] || continue\n                          base=${wav##*/}\n                          base=$(echo \"$base\" | tr \' \' \'_\')\n                          dest="

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/\"$base\"\n                          mv -f \"$wav\" \"$dest\" 2>&1 || true\n                          chown root:root \"$dest\" 2>/dev/null || true\n                          chmod 644 \"$dest\" 2>/dev/null || true\n                          restorecon -v \"$dest\" 2>/dev/null || true\n                        done\n                        for dlroot in "

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x20

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "; do\n                          [ -d \"$dlroot\" ] || continue\n                          for wav in \"$dlroot\"/*.wav \"$dlroot\"/*.WAV; do\n                            [ -f \"$wav\" ] || continue\n                            base=${wav##*/}\n                            base=$(echo \"$base\" | tr \' \' \'_\')\n                            dest="

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/\"$base\"\n                            cp -f \"$wav\" \"$dest\" 2>&1 || true\n                            chown root:root \"$dest\" 2>/dev/null || true\n                            chmod 644 \"$dest\" 2>/dev/null || true\n                            restorecon -v \"$dest\" 2>/dev/null || true\n                          done\n                        done\n                        "

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, LO0/l;->n0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_19

    :cond_2d
    const-string v5, ""

    :goto_19
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/*.WAV; do\n                      [ -f \"$_sw\" ] || continue\n                      _sb=${_sw##*/}\n                      _sc=$(echo \"$_sb\" | tr \' \' \'_\')\n                      [ \"$_sc\" = \"$_sb\" ] && continue\n                      mv -f \"$_sw\" "

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/\"$_sc\" 2>&1 || true\n                      chown root:root "

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/\"$_sc\" 2>/dev/null || true\n                      chmod 644 "

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/\"$_sc\" 2>/dev/null || true\n                    done\n                "

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, LO0/l;->n0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, LT/Y;->C()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v8, 0xa

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_2e

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2e
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/*.wav 2>/dev/null || true"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "toString(...)"

    invoke-static {v3, v4}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v10, :cond_2f

    const v4, 0x88b8

    goto :goto_1a

    :cond_2f
    const/16 v4, 0x2ee0

    :goto_1a
    invoke-virtual {v0, v4, v3}, Lcom/ex/auto/MainActivity;->C1(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, LO0/j;->H0(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-static {v3}, Lw0/k;->V(Ljava/lang/Iterable;)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_30

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, LO0/j;->X0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    :cond_30
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_31
    :goto_1c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_32

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Ljava/lang/String;

    invoke-static {v6, v1}, LO0/s;->w0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_31

    const-string v7, ".wav"

    invoke-static {v6, v7, v2}, LO0/s;->r0(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_31

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1c

    :catch_0
    sget-object v3, Lw0/q;->a:Lw0/q;

    :cond_32
    iget-object v1, v0, Lcom/ex/auto/MainActivity;->v:Landroid/os/Handler;

    new-instance v2, LT/H;

    const/16 v4, 0x10

    invoke-direct {v2, v0, v4, v3}, LT/H;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
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
