.class public final synthetic LT/T2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/ex/auto/MainActivity;


# direct methods
.method public synthetic constructor <init>(ILcom/ex/auto/MainActivity;)V
    .locals 0

    iput p1, p0, LT/T2;->a:I

    iput-object p2, p0, LT/T2;->b:Lcom/ex/auto/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 22

    move-object/from16 v0, p0

    const/16 v1, 0xa

    const v2, 0x7f0f0034

    const v3, 0x7f0f002f

    const-string v4, "binding"

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "getString(...)"

    iget-object v9, v0, LT/T2;->b:Lcom/ex/auto/MainActivity;

    iget v10, v0, LT/T2;->a:I

    packed-switch v10, :pswitch_data_0

    sget v1, Lcom/ex/auto/MainActivity;->u0:I

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, LT/j1;

    invoke-direct {v1, v9}, LT/j1;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0f0221

    invoke-virtual {v9, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, LT/j1;->b:Ljava/lang/Object;

    check-cast v4, Le/e;

    iput-object v3, v4, Le/e;->d:Ljava/lang/CharSequence;

    const v3, 0x7f0f0220

    invoke-virtual {v9, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Le/e;->f:Ljava/lang/CharSequence;

    invoke-virtual {v9, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v7}, LT/j1;->h(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v1}, LT/j1;->j()Le/i;

    return-void

    :pswitch_0
    sget v1, Lcom/ex/auto/MainActivity;->u0:I

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v9}, LT/J3;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f0f0229

    invoke-virtual {v9, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v8}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, LT/i2;

    const/4 v3, 0x5

    invoke-direct {v2, v3, v9}, LT/i2;-><init>(ILcom/ex/auto/MainActivity;)V

    invoke-virtual {v9, v1, v2}, Lcom/ex/auto/MainActivity;->A1(Ljava/lang/String;LH0/a;)V

    goto :goto_0

    :cond_0
    new-instance v1, LT/j1;

    invoke-direct {v1, v9}, LT/j1;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0f0225

    invoke-virtual {v9, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v4, v1, LT/j1;->b:Ljava/lang/Object;

    check-cast v4, Le/e;

    iput-object v2, v4, Le/e;->d:Ljava/lang/CharSequence;

    const v2, 0x7f0f0224

    invoke-virtual {v9, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Le/e;->f:Ljava/lang/CharSequence;

    const v2, 0x7f0f0222

    invoke-virtual {v9, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v4, LT/X1;

    const/16 v5, 0x11

    invoke-direct {v4, v5, v9}, LT/X1;-><init>(ILcom/ex/auto/MainActivity;)V

    invoke-virtual {v1, v2, v4}, LT/j1;->h(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v9, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v7}, LT/j1;->f(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v1}, LT/j1;->j()Le/i;

    :goto_0
    return-void

    :pswitch_1
    sget v1, Lcom/ex/auto/MainActivity;->u0:I

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, LT/j1;

    invoke-direct {v1, v9}, LT/j1;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0f0295

    invoke-virtual {v9, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v4, v1, LT/j1;->b:Ljava/lang/Object;

    check-cast v4, Le/e;

    iput-object v2, v4, Le/e;->d:Ljava/lang/CharSequence;

    const v2, 0x7f0f0294

    invoke-virtual {v9, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Le/e;->f:Ljava/lang/CharSequence;

    const v2, 0x7f0f0035

    invoke-virtual {v9, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v4, LT/X1;

    const/4 v5, 0x7

    invoke-direct {v4, v5, v9}, LT/X1;-><init>(ILcom/ex/auto/MainActivity;)V

    invoke-virtual {v1, v2, v4}, LT/j1;->h(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v9, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v7}, LT/j1;->f(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v1}, LT/j1;->j()Le/i;

    return-void

    :pswitch_2
    sget v2, Lcom/ex/auto/MainActivity;->u0:I

    invoke-virtual {v9}, Lcom/ex/auto/MainActivity;->B0()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "adb_gpio_enabled"

    invoke-interface {v2, v3, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    xor-int/2addr v5, v2

    if-nez v2, :cond_1

    const-string v2, "1"

    goto :goto_1

    :cond_1
    const-string v2, "0"

    :goto_1
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v10, "echo \"out 151 "

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "\" > /sys/devices/platform/1000b000.pinctrl/mt_gpio; echo gpio_151="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v8, v9, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v8, :cond_3

    iget-object v4, v8, LU/a;->c:Landroid/widget/Button;

    invoke-virtual {v4, v6}, Landroid/view/View;->setEnabled(Z)V

    sget-object v4, LT/Y0;->a:LT/Y0;

    invoke-virtual {v9}, Lcom/ex/auto/MainActivity;->B0()Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v6, "<get-prefs>(...)"

    invoke-static {v4, v6}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, LT/Y0;->h(Landroid/content/SharedPreferences;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v9, v5}, Lcom/ex/auto/MainActivity;->m0(Z)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v9}, Lcom/ex/auto/MainActivity;->B0()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-virtual {v9}, Lcom/ex/auto/MainActivity;->c1()V

    invoke-virtual {v9}, Lcom/ex/auto/MainActivity;->B0()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-static {v2, v6}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, LT/W1;

    invoke-direct {v3, v1, v9}, LT/W1;-><init>(ILcom/ex/auto/MainActivity;)V

    invoke-static {v9, v2, v3}, LT/Y0;->e(Landroid/content/Context;Landroid/content/SharedPreferences;LH0/l;)V

    goto :goto_2

    :cond_2
    invoke-virtual {v9}, Lcom/ex/auto/MainActivity;->B0()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-static {v1, v6}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, LT/k2;

    invoke-direct {v3, v9, v2, v5}, LT/k2;-><init>(Lcom/ex/auto/MainActivity;Ljava/lang/String;Z)V

    invoke-static {v9, v1, v3}, LT/Y0;->e(Landroid/content/Context;Landroid/content/SharedPreferences;LH0/l;)V

    :goto_2
    return-void

    :cond_3
    invoke-static {v4}, LI0/f;->h(Ljava/lang/String;)V

    throw v7

    :pswitch_3
    sget v1, Lcom/ex/auto/MainActivity;->u0:I

    invoke-virtual {v9}, Lcom/ex/auto/MainActivity;->b2()V

    return-void

    :pswitch_4
    sget v1, Lcom/ex/auto/MainActivity;->u0:I

    invoke-virtual {v9}, Lcom/ex/auto/MainActivity;->b2()V

    return-void

    :pswitch_5
    sget v1, Lcom/ex/auto/MainActivity;->u0:I

    invoke-virtual {v9}, Lcom/ex/auto/MainActivity;->y1()V

    return-void

    :pswitch_6
    sget v1, Lcom/ex/auto/MainActivity;->u0:I

    invoke-virtual {v9}, Lcom/ex/auto/MainActivity;->B0()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "aa_wifi_help_seen"

    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v9}, Lcom/ex/auto/MainActivity;->B0()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-virtual {v9}, Lcom/ex/auto/MainActivity;->b2()V

    goto :goto_3

    :cond_4
    invoke-virtual {v9}, Lcom/ex/auto/MainActivity;->t()V

    :goto_3
    return-void

    :pswitch_7
    iget-object v10, v0, LT/T2;->b:Lcom/ex/auto/MainActivity;

    iget-boolean v1, v10, Lcom/ex/auto/MainActivity;->Q:Z

    if-eqz v1, :cond_7

    iget-object v1, v10, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v1, :cond_6

    iget-object v11, v1, LU/a;->P0:Landroid/widget/Button;

    if-eqz v1, :cond_5

    iget-object v12, v1, LU/a;->M2:Landroid/widget/TextView;

    const v1, 0x7f0f02a5

    invoke-virtual {v10, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13, v8}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, LT/W1;

    invoke-direct {v1, v5, v10}, LT/W1;-><init>(ILcom/ex/auto/MainActivity;)V

    const/16 v18, 0x0

    const/16 v19, 0x0

    const-wide/16 v14, 0x7d0

    const/16 v16, 0x3a98

    const-string v17, "ip rule del prio 12500 2>/dev/null || true\nip rule del prio 18500 2>/dev/null || true\nip rule del prio 21000 2>/dev/null || true\nip route flush table 200 2>/dev/null || true\necho \"routes_removed\"\nREMAINING=$(ip rule show 2>/dev/null | grep -c \"12500:\" || echo 0)\necho \"remaining=${REMAINING}\""

    const/16 v21, 0x2c0

    move-object/from16 v20, v1

    invoke-static/range {v10 .. v21}, Lcom/ex/auto/MainActivity;->F1(Lcom/ex/auto/MainActivity;Landroid/widget/Button;Landroid/widget/TextView;Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;LH0/l;LH0/l;I)V

    goto :goto_4

    :cond_5
    invoke-static {v4}, LI0/f;->h(Ljava/lang/String;)V

    throw v7

    :cond_6
    invoke-static {v4}, LI0/f;->h(Ljava/lang/String;)V

    throw v7

    :cond_7
    new-instance v1, LT/j1;

    invoke-direct {v1, v10}, LT/j1;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0f0100

    invoke-virtual {v10, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, LT/j1;->b:Ljava/lang/Object;

    check-cast v3, Le/e;

    iput-object v2, v3, Le/e;->d:Ljava/lang/CharSequence;

    const v2, 0x7f0f00ff

    invoke-virtual {v10, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Le/e;->f:Ljava/lang/CharSequence;

    const v2, 0x7f0f0036

    invoke-virtual {v10, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, LT/X1;

    const/4 v4, 0x6

    invoke-direct {v3, v4, v10}, LT/X1;-><init>(ILcom/ex/auto/MainActivity;)V

    invoke-virtual {v1, v2, v3}, LT/j1;->h(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    const v2, 0x7f0f0032

    invoke-virtual {v10, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v7}, LT/j1;->f(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v1}, LT/j1;->j()Le/i;

    :goto_4
    return-void

    :pswitch_8
    sget v1, Lcom/ex/auto/MainActivity;->u0:I

    iget-object v9, v0, LT/T2;->b:Lcom/ex/auto/MainActivity;

    invoke-virtual {v9}, Lcom/ex/auto/MainActivity;->B0()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v10, "keyserver_bind_enabled"

    invoke-interface {v1, v10, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, v9, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v1, :cond_9

    iget-object v2, v1, LU/a;->R0:LU/b;

    iget-object v10, v2, LU/b;->c:Landroid/widget/Button;

    if-eqz v1, :cond_8

    iget-object v11, v2, LU/b;->s:Landroid/widget/TextView;

    const v1, 0x7f0f01e9

    invoke-virtual {v9, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v8}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, " /system/app/GeelyAutoKeyServer/GeelyAutoKeyServer.apk "

    invoke-static {v1}, LT/Y;->h0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\n            am force-stop com.flyme.auto.keyserver\n            sleep 1\n            "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/system/app/GeelyAutoKeyServer/GeelyAutoKeyServer.apk"

    invoke-static {v3}, LT/Y;->l0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n            am start-foreground-service -n com.flyme.auto.keyserver/com.flyme.auto.keyserver.service.AutoKeyService 2>/dev/null || true\n            if grep -F "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " /proc/mounts >/dev/null 2>&1; then echo \"UNMOUNT_FALHOU\"; else echo \"desativado\"; fi\n        "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, LO0/l;->n0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    new-instance v1, LT/W1;

    const/16 v2, 0x8

    invoke-direct {v1, v2, v9}, LT/W1;-><init>(ILcom/ex/auto/MainActivity;)V

    new-instance v2, LT/W1;

    const/16 v3, 0x9

    invoke-direct {v2, v3, v9}, LT/W1;-><init>(ILcom/ex/auto/MainActivity;)V

    const/16 v15, 0x4e20

    const/16 v20, 0x240

    const-wide/16 v13, 0xfa0

    const/16 v17, 0x0

    move-object/from16 v18, v1

    move-object/from16 v19, v2

    invoke-static/range {v9 .. v20}, Lcom/ex/auto/MainActivity;->F1(Lcom/ex/auto/MainActivity;Landroid/widget/Button;Landroid/widget/TextView;Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;LH0/l;LH0/l;I)V

    goto :goto_5

    :cond_8
    invoke-static {v4}, LI0/f;->h(Ljava/lang/String;)V

    throw v7

    :cond_9
    invoke-static {v4}, LI0/f;->h(Ljava/lang/String;)V

    throw v7

    :cond_a
    const-string v1, "KeyServerAtivador"

    const-string v4, "bindKeyServer(): bot\u00e3o Ativar clicado"

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v9}, Lcom/ex/auto/MainActivity;->B0()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v4, "keyserver_first_activate_warned"

    invoke-interface {v1, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_b

    new-instance v1, LT/j1;

    invoke-direct {v1, v9}, LT/j1;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0f01ee

    invoke-virtual {v9, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v6, v1, LT/j1;->b:Ljava/lang/Object;

    check-cast v6, Le/e;

    iput-object v4, v6, Le/e;->d:Ljava/lang/CharSequence;

    const v4, 0x7f0f01ed

    invoke-virtual {v9, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v6, Le/e;->f:Ljava/lang/CharSequence;

    invoke-virtual {v9, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v4, LT/X1;

    invoke-direct {v4, v5, v9}, LT/X1;-><init>(ILcom/ex/auto/MainActivity;)V

    invoke-virtual {v1, v2, v4}, LT/j1;->h(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v9, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v7}, LT/j1;->f(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v1}, LT/j1;->j()Le/i;

    goto :goto_5

    :cond_b
    invoke-virtual {v9}, Lcom/ex/auto/MainActivity;->D1()V

    :goto_5
    return-void

    :pswitch_9
    sget v1, Lcom/ex/auto/MainActivity;->u0:I

    invoke-virtual {v9}, Lcom/ex/auto/MainActivity;->y1()V

    return-void

    :pswitch_a
    sget v1, Lcom/ex/auto/MainActivity;->u0:I

    invoke-virtual {v9}, Lcom/ex/auto/MainActivity;->t()V

    return-void

    :pswitch_b
    sget v1, Lcom/ex/auto/MainActivity;->u0:I

    invoke-virtual {v9}, Lcom/ex/auto/MainActivity;->B0()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "rear_cam_hold_open_5s"

    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    xor-int/lit8 v3, v1, 0x1

    invoke-virtual {v9}, Lcom/ex/auto/MainActivity;->B0()Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-virtual {v9}, Lcom/ex/auto/MainActivity;->s1()V

    if-nez v1, :cond_c

    const v1, 0x7f0f0290

    :goto_6
    invoke-virtual {v9, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_7

    :cond_c
    const v1, 0x7f0f028f

    goto :goto_6

    :goto_7
    invoke-static {v9, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    return-void

    :pswitch_c
    sget v1, Lcom/ex/auto/MainActivity;->u0:I

    invoke-virtual {v9}, Lcom/ex/auto/MainActivity;->B0()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "lyrics_floater_enabled"

    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_e

    invoke-static {v9, v2, v5}, LM/d0;->m(Lcom/ex/auto/MainActivity;Ljava/lang/String;Z)V

    iget-object v1, v9, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v1, :cond_d

    iget-object v1, v1, LU/a;->R0:LU/b;

    iget-object v1, v1, LU/b;->o:Lcom/google/android/material/switchmaterial/SwitchMaterial;

    invoke-virtual {v1, v5}, Lj/d1;->setChecked(Z)V

    goto :goto_8

    :cond_d
    invoke-static {v4}, LI0/f;->h(Ljava/lang/String;)V

    throw v7

    :cond_e
    :goto_8
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/ex/auto/LyricsFloaterService;

    invoke-direct {v1, v9, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "com.ex.auto.LYRICS_CONFIG"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void

    :pswitch_d
    sget v1, Lcom/ex/auto/MainActivity;->u0:I

    invoke-static {v9}, LA/b;->V(Landroid/content/Context;)V

    return-void

    :pswitch_e
    sget v1, Lcom/ex/auto/MainActivity;->u0:I

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Landroid/content/Intent;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "package:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "android.settings.action.MANAGE_OVERLAY_PERMISSION"

    invoke-direct {v1, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v9, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :pswitch_f
    sget v1, Lcom/ex/auto/MainActivity;->u0:I

    const v1, 0x7f0f01c4

    invoke-virtual {v9, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v8}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const v2, 0x7f0f01c3

    invoke-virtual {v9, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v8}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9, v1, v2}, Lcom/ex/auto/MainActivity;->d2(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_10
    sget v1, Lcom/ex/auto/MainActivity;->u0:I

    const v1, 0x7f0f01be

    invoke-virtual {v9, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v8}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const v2, 0x7f0f01bd

    invoke-virtual {v9, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v8}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9, v1, v2}, Lcom/ex/auto/MainActivity;->d2(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_11
    sget v1, Lcom/ex/auto/MainActivity;->u0:I

    const v1, 0x7f0f01a3

    invoke-virtual {v9, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v8}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const v2, 0x7f0f01b9

    invoke-virtual {v9, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v8}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9, v1, v2}, Lcom/ex/auto/MainActivity;->d2(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_12
    sget v1, Lcom/ex/auto/MainActivity;->u0:I

    const v1, 0x7f0f01a7

    invoke-virtual {v9, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v8}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const v2, 0x7f0f01ba

    invoke-virtual {v9, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v8}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9, v1, v2}, Lcom/ex/auto/MainActivity;->d2(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_13
    sget v1, Lcom/ex/auto/MainActivity;->u0:I

    const v1, 0x7f0f01c0

    invoke-virtual {v9, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v8}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const v2, 0x7f0f01bf

    invoke-virtual {v9, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v8}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9, v1, v2}, Lcom/ex/auto/MainActivity;->d2(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_14
    sget v1, Lcom/ex/auto/MainActivity;->u0:I

    const v1, 0x7f0f01c2

    invoke-virtual {v9, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v8}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const v2, 0x7f0f01c1

    invoke-virtual {v9, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v8}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9, v1, v2}, Lcom/ex/auto/MainActivity;->d2(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_15
    sget v1, Lcom/ex/auto/MainActivity;->u0:I

    const/16 v1, 0x78

    invoke-virtual {v9, v1}, Lcom/ex/auto/MainActivity;->N1(I)V

    return-void

    :pswitch_16
    sget v1, Lcom/ex/auto/MainActivity;->u0:I

    const/16 v1, 0x3c

    invoke-virtual {v9, v1}, Lcom/ex/auto/MainActivity;->N1(I)V

    return-void

    :pswitch_17
    sget v1, Lcom/ex/auto/MainActivity;->u0:I

    const/16 v1, 0x1e

    invoke-virtual {v9, v1}, Lcom/ex/auto/MainActivity;->N1(I)V

    return-void

    :pswitch_18
    sget v2, Lcom/ex/auto/MainActivity;->u0:I

    invoke-virtual {v9, v1}, Lcom/ex/auto/MainActivity;->N1(I)V

    return-void

    :pswitch_19
    sget v1, Lcom/ex/auto/MainActivity;->u0:I

    invoke-virtual {v9, v6}, Lcom/ex/auto/MainActivity;->N1(I)V

    return-void

    :pswitch_1a
    sget v1, Lcom/ex/auto/MainActivity;->u0:I

    const-string v1, "en-US"

    invoke-virtual {v9, v1}, Lcom/ex/auto/MainActivity;->J1(Ljava/lang/String;)V

    return-void

    :pswitch_1b
    sget v1, Lcom/ex/auto/MainActivity;->u0:I

    const-string v1, "vi-VN"

    invoke-virtual {v9, v1}, Lcom/ex/auto/MainActivity;->J1(Ljava/lang/String;)V

    return-void

    :pswitch_1c
    sget v1, Lcom/ex/auto/MainActivity;->u0:I

    const-string v1, "ru-RU"

    invoke-virtual {v9, v1}, Lcom/ex/auto/MainActivity;->J1(Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
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
