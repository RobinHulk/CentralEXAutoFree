.class public final synthetic LT/X1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/ex/auto/MainActivity;


# direct methods
.method public synthetic constructor <init>(ILcom/ex/auto/MainActivity;)V
    .locals 0

    iput p1, p0, LT/X1;->a:I

    iput-object p2, p0, LT/X1;->b:Lcom/ex/auto/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 23

    move-object/from16 v0, p0

    const/16 v1, 0x13

    const-string v2, "crash_action"

    const-class v3, Lcom/ex/auto/CentralWatchdogService;

    const-string v4, "getString(...)"

    const-string v5, "binding"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    iget v9, v0, LT/X1;->a:I

    packed-switch v9, :pswitch_data_0

    sget v1, Lcom/ex/auto/MainActivity;->u0:I

    iget-object v1, v0, LT/X1;->b:Lcom/ex/auto/MainActivity;

    invoke-virtual {v1}, Lcom/ex/auto/MainActivity;->B0()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v4, "gestures_enabled"

    invoke-interface {v2, v4, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-virtual {v1}, Lcom/ex/auto/MainActivity;->l1()V

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    iget-object v2, v1, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v2, :cond_1

    iget-object v2, v2, LU/a;->R0:LU/b;

    iget-object v2, v2, LU/b;->r:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, v1, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v2, :cond_0

    iget-object v2, v2, LU/a;->R0:LU/b;

    iget-object v2, v2, LU/b;->r:Landroid/widget/TextView;

    const v3, 0x7f0f043d

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v2, LT/G2;

    const/16 v3, 0x10

    invoke-direct {v2, v3, v1}, LT/G2;-><init>(ILcom/ex/auto/MainActivity;)V

    iget-object v1, v1, Lcom/ex/auto/MainActivity;->w:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    invoke-static {v5}, LI0/f;->h(Ljava/lang/String;)V

    throw v6

    :cond_1
    invoke-static {v5}, LI0/f;->h(Ljava/lang/String;)V

    throw v6

    :pswitch_0
    sget v1, Lcom/ex/auto/MainActivity;->u0:I

    iget-object v1, v0, LT/X1;->b:Lcom/ex/auto/MainActivity;

    invoke-virtual {v1}, Lcom/ex/auto/MainActivity;->l1()V

    return-void

    :pswitch_1
    sget v1, Lcom/ex/auto/MainActivity;->u0:I

    iget-object v1, v0, LT/X1;->b:Lcom/ex/auto/MainActivity;

    invoke-virtual {v1}, Lcom/ex/auto/MainActivity;->l1()V

    return-void

    :pswitch_2
    sget v1, Lcom/ex/auto/MainActivity;->u0:I

    iget-object v1, v0, LT/X1;->b:Lcom/ex/auto/MainActivity;

    invoke-virtual {v1}, Lcom/ex/auto/MainActivity;->V()V

    return-void

    :pswitch_3
    sget v1, Lcom/ex/auto/MainActivity;->u0:I

    iget-object v1, v0, LT/X1;->b:Lcom/ex/auto/MainActivity;

    invoke-virtual {v1}, Lcom/ex/auto/MainActivity;->v1()V

    return-void

    :pswitch_4
    sget v1, Lcom/ex/auto/MainActivity;->u0:I

    iget-object v1, v0, LT/X1;->b:Lcom/ex/auto/MainActivity;

    invoke-virtual {v1}, Lcom/ex/auto/MainActivity;->V()V

    return-void

    :pswitch_5
    sget v1, Lcom/ex/auto/MainActivity;->u0:I

    iget-object v1, v0, LT/X1;->b:Lcom/ex/auto/MainActivity;

    invoke-virtual {v1}, Lcom/ex/auto/MainActivity;->v1()V

    return-void

    :pswitch_6
    sget v1, Lcom/ex/auto/MainActivity;->u0:I

    const v1, 0x7f0f03d0

    iget-object v2, v0, LT/X1;->b:Lcom/ex/auto/MainActivity;

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v4}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, v2, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v3, :cond_3

    iget-object v3, v3, LU/a;->R2:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v2, v1, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    iget-object v1, v2, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v1, :cond_2

    iget-object v1, v1, LU/a;->n:Landroid/widget/Button;

    invoke-virtual {v1, v8}, Landroid/view/View;->setEnabled(Z)V

    return-void

    :cond_2
    invoke-static {v5}, LI0/f;->h(Ljava/lang/String;)V

    throw v6

    :cond_3
    invoke-static {v5}, LI0/f;->h(Ljava/lang/String;)V

    throw v6

    :pswitch_7
    sget v1, Lcom/ex/auto/MainActivity;->u0:I

    iget-object v1, v0, LT/X1;->b:Lcom/ex/auto/MainActivity;

    invoke-virtual {v1}, Lcom/ex/auto/MainActivity;->B0()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "gestures_restore_on_boot"

    invoke-interface {v2, v3, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-virtual {v1}, Lcom/ex/auto/MainActivity;->m1()V

    return-void

    :pswitch_8
    sget v1, Lcom/ex/auto/MainActivity;->u0:I

    iget-object v1, v0, LT/X1;->b:Lcom/ex/auto/MainActivity;

    const v2, 0x7f0f022b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v4}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, LT/i2;

    const/4 v4, 0x7

    invoke-direct {v3, v4, v1}, LT/i2;-><init>(ILcom/ex/auto/MainActivity;)V

    invoke-virtual {v1, v2, v3}, Lcom/ex/auto/MainActivity;->A1(Ljava/lang/String;LH0/a;)V

    return-void

    :pswitch_9
    sget v1, Lcom/ex/auto/MainActivity;->u0:I

    iget-object v1, v0, LT/X1;->b:Lcom/ex/auto/MainActivity;

    invoke-virtual {v1}, Lcom/ex/auto/MainActivity;->B0()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "aeb_restore_on_boot"

    invoke-interface {v2, v3, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-virtual {v1}, Lcom/ex/auto/MainActivity;->d1()V

    sget-object v2, Lcom/ex/auto/CentralWatchdogService;->d2:[I

    sget-object v2, Lcom/ex/auto/CentralWatchdogService;->g2:Lcom/ex/auto/CentralWatchdogService;

    if-eqz v2, :cond_4

    iget-object v3, v2, Lcom/ex/auto/CentralWatchdogService;->a:Landroid/os/Handler;

    new-instance v4, LT/t0;

    const/16 v5, 0x19

    invoke-direct {v4, v2, v5}, LT/t0;-><init>(Lcom/ex/auto/CentralWatchdogService;I)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_4
    iget-object v2, v1, Lcom/ex/auto/MainActivity;->G:Landroid/car/hardware/property/CarPropertyManager;

    if-eqz v2, :cond_5

    new-instance v3, Ljava/lang/Thread;

    new-instance v4, LT/e2;

    invoke-direct {v4, v2, v1, v8}, LT/e2;-><init>(Landroid/car/hardware/property/CarPropertyManager;Lcom/ex/auto/MainActivity;I)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    :cond_5
    return-void

    :pswitch_a
    sget v1, Lcom/ex/auto/MainActivity;->u0:I

    iget-object v1, v0, LT/X1;->b:Lcom/ex/auto/MainActivity;

    invoke-virtual {v1, v8}, Lcom/ex/auto/MainActivity;->K1(Z)V

    return-void

    :pswitch_b
    sget v1, Lcom/ex/auto/MainActivity;->u0:I

    iget-object v1, v0, LT/X1;->b:Lcom/ex/auto/MainActivity;

    iget-object v2, v1, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v2, :cond_6

    iget-object v2, v2, LU/a;->g:Landroid/widget/Button;

    invoke-virtual {v2, v7}, Landroid/view/View;->setEnabled(Z)V

    new-instance v2, LT/U1;

    const/16 v3, 0x18

    invoke-direct {v2, v3, v1}, LT/U1;-><init>(ILcom/ex/auto/MainActivity;)V

    iget-object v1, v1, Lcom/ex/auto/MainActivity;->w:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_6
    invoke-static {v5}, LI0/f;->h(Ljava/lang/String;)V

    throw v6

    :pswitch_c
    sget v1, Lcom/ex/auto/MainActivity;->u0:I

    iget-object v7, v0, LT/X1;->b:Lcom/ex/auto/MainActivity;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "/data/local/tmp/sons"

    invoke-static {v1}, Lcom/ex/auto/MainActivity;->Y1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\n            "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, LT/Y;->C()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n            echo \"== copiar \u00e1udios do pen-drive para sons/ ==\"\n            mkdir -p "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " 2>&1 || exit 20\n            chmod 755 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " 2>&1 || true\n            copied=0\n            for root in /storage/* /mnt/media_rw/* /mnt/usb* /mnt/media_rw/usb*; do\n              [ -d \"$root\" ] || continue\n              case \"$root\" in\n                /storage/emulated|/storage/self) continue ;;\n              esac\n              echo \"-- procurando em $root\"\n              for f in \"$root\"/*.wav \"$root\"/*.WAV \"$root\"/*.mp3 \"$root\"/*.MP3 \"$root\"/*.ogg \"$root\"/*.OGG \"$root\"/*.flac \"$root\"/*.FLAC \"$root\"/*.m4a \"$root\"/*.M4A \"$root\"/*.aac \"$root\"/*.AAC \\\n                        \"$root\"/*/*.wav \"$root\"/*/*.WAV \"$root\"/*/*.mp3 \"$root\"/*/*.MP3 \\\n                        \"$root\"/*/*.ogg \"$root\"/*/*.OGG \"$root\"/*/*.flac \"$root\"/*/*.FLAC \\\n                        \"$root\"/*/*.m4a \"$root\"/*/*.M4A \"$root\"/*/*.aac \"$root\"/*/*.AAC; do\n                [ -f \"$f\" ] || continue\n                base=${f##*/}\n                base=$(echo \"$base\" | tr \' \' \'_\')\n                echo \"copiando $f -> /data/local/tmp/sons/$base\"\n                cp -f \"$f\" "

    const-string v8, "/\"$base\" 2>&1\n                chown root:root "

    invoke-static {v2, v3, v1, v8, v1}, LM/d0;->q(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "/\"$base\" 2>/dev/null || true\n                chmod 644 "

    const-string v8, "/\"$base\" 2>/dev/null || true\n                restorecon -v "

    invoke-static {v2, v3, v1, v8, v1}, LM/d0;->q(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "/\"$base\" 2>/dev/null || true\n                copied=$((copied + 1))\n              done\n            done\n            echo \"copiados=$copied\"\n            ls -l "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " 2>&1 || true\n        "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, LO0/l;->n0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    iget-object v1, v7, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v1, :cond_8

    iget-object v8, v1, LU/a;->q:Landroid/widget/Button;

    if-eqz v1, :cond_7

    iget-object v9, v1, LU/a;->M2:Landroid/widget/TextView;

    const v1, 0x7f0f0138

    invoke-virtual {v7, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v4}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, LT/W1;

    const/16 v2, 0x12

    invoke-direct {v1, v2, v7}, LT/W1;-><init>(ILcom/ex/auto/MainActivity;)V

    const/4 v15, 0x0

    const/16 v18, 0x2c0

    const-wide/16 v11, 0xbb8

    const v13, 0xea60

    const/16 v16, 0x0

    move-object/from16 v17, v1

    invoke-static/range {v7 .. v18}, Lcom/ex/auto/MainActivity;->F1(Lcom/ex/auto/MainActivity;Landroid/widget/Button;Landroid/widget/TextView;Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;LH0/l;LH0/l;I)V

    return-void

    :cond_7
    invoke-static {v5}, LI0/f;->h(Ljava/lang/String;)V

    throw v6

    :cond_8
    invoke-static {v5}, LI0/f;->h(Ljava/lang/String;)V

    throw v6

    :pswitch_d
    sget v1, Lcom/ex/auto/MainActivity;->u0:I

    iget-object v1, v0, LT/X1;->b:Lcom/ex/auto/MainActivity;

    invoke-virtual {v1}, Lcom/ex/auto/MainActivity;->V()V

    return-void

    :pswitch_e
    sget v1, Lcom/ex/auto/MainActivity;->u0:I

    iget-object v1, v0, LT/X1;->b:Lcom/ex/auto/MainActivity;

    invoke-virtual {v1}, Lcom/ex/auto/MainActivity;->B0()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v4, "rvc_black_bg"

    invoke-interface {v2, v4, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-virtual {v1}, Lcom/ex/auto/MainActivity;->v1()V

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    const v2, 0x7f0f02b1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    new-instance v2, LT/U1;

    const/16 v3, 0x11

    invoke-direct {v2, v3, v1}, LT/U1;-><init>(ILcom/ex/auto/MainActivity;)V

    iget-object v1, v1, Lcom/ex/auto/MainActivity;->w:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :pswitch_f
    sget v1, Lcom/ex/auto/MainActivity;->u0:I

    iget-object v1, v0, LT/X1;->b:Lcom/ex/auto/MainActivity;

    iget-object v2, v1, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v2, :cond_9

    iget-object v2, v2, LU/a;->e2:Lcom/google/android/material/switchmaterial/SwitchMaterial;

    invoke-virtual {v1, v2, v7}, Lcom/ex/auto/MainActivity;->O1(Lcom/google/android/material/switchmaterial/SwitchMaterial;Z)V

    invoke-virtual {v1}, Lcom/ex/auto/MainActivity;->v1()V

    return-void

    :cond_9
    invoke-static {v5}, LI0/f;->h(Ljava/lang/String;)V

    throw v6

    :pswitch_10
    sget v1, Lcom/ex/auto/MainActivity;->u0:I

    new-instance v1, Landroid/content/Intent;

    iget-object v4, v0, LT/X1;->b:Lcom/ex/auto/MainActivity;

    invoke-direct {v1, v4, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "disable_all"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    iget v1, v4, Lcom/ex/auto/MainActivity;->J:I

    iget-object v2, v4, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v2, :cond_e

    const-string v3, "navAcesso"

    iget-object v2, v2, LU/a;->i1:Landroid/widget/LinearLayout;

    invoke-static {v2, v3}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, v4, Lcom/ex/auto/MainActivity;->W:Ljava/util/List;

    if-eqz v3, :cond_d

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LT/n3;

    iget-object v5, v5, LT/n3;->a:Landroid/widget/LinearLayout;

    if-ne v5, v2, :cond_a

    goto :goto_1

    :cond_a
    add-int/2addr v7, v8

    goto :goto_0

    :cond_b
    const/4 v7, -0x1

    :goto_1
    if-ne v1, v7, :cond_c

    invoke-virtual {v4}, Lcom/ex/auto/MainActivity;->C()V

    :cond_c
    return-void

    :cond_d
    const-string v1, "navSections"

    invoke-static {v1}, LI0/f;->h(Ljava/lang/String;)V

    throw v6

    :cond_e
    invoke-static {v5}, LI0/f;->h(Ljava/lang/String;)V

    throw v6

    :pswitch_11
    sget v1, Lcom/ex/auto/MainActivity;->u0:I

    new-instance v1, Landroid/content/Intent;

    iget-object v4, v0, LT/X1;->b:Lcom/ex/auto/MainActivity;

    invoke-direct {v1, v4, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "resume"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void

    :pswitch_12
    sget v2, Lcom/ex/auto/MainActivity;->u0:I

    sget-object v2, LT/L3;->a:LT/L3;

    const-string v3, "Reiniciar"

    const-string v4, "reboot pedido pelo bot\u00e3o da tela"

    invoke-virtual {v2, v3, v4}, LT/L3;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v0, LT/X1;->b:Lcom/ex/auto/MainActivity;

    iget-object v3, v2, Lcom/ex/auto/MainActivity;->w:Ljava/util/concurrent/ExecutorService;

    new-instance v4, LT/U1;

    invoke-direct {v4, v1, v2}, LT/U1;-><init>(ILcom/ex/auto/MainActivity;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :pswitch_13
    iget-object v1, v0, LT/X1;->b:Lcom/ex/auto/MainActivity;

    iget-object v2, v1, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v2, :cond_10

    iget-object v3, v2, LU/a;->P0:Landroid/widget/Button;

    if-eqz v2, :cond_f

    iget-object v7, v2, LU/a;->M2:Landroid/widget/TextView;

    const v2, 0x7f0f013b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v4}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const v4, 0x7f0f013c

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    new-instance v14, LT/E2;

    invoke-direct {v14, v8, v1}, LT/E2;-><init>(ILcom/ex/auto/MainActivity;)V

    new-instance v15, LT/E2;

    const/4 v4, 0x2

    invoke-direct {v15, v4, v1}, LT/E2;-><init>(ILcom/ex/auto/MainActivity;)V

    const/16 v11, 0x7530

    const/16 v16, 0x200

    const-wide/16 v9, 0xbb8

    const-string v12, "TS=$(date +%Y%m%d-%H%M%S)\nF=/sdcard/Download/aa_route_create_${TS}.txt\n{\n  echo \"=== CRIAR ROTAS AA INTERNET $(date) ===\"\n  PHONE=$(ip neigh show dev ap0 2>/dev/null | awk \'/REACHABLE|STALE|DELAY/ && $1 ~ /^[0-9]/ {print $1; exit}\')\n  echo \"PHONE=${PHONE}\"\n  if [ -z \"${PHONE}\" ]; then echo \"ERRO: telefone nao encontrado em ap0\"; exit 1; fi\n\n  FWMARK=$(ip rule show 2>/dev/null | awk \'/^19[0-9][0-9][0-9]:.*fwmark.*lookup tbox0/{print $5; exit}\')\n  [ -z \"${FWMARK}\" ] && FWMARK=\"0x64/0x1ffff\"\n  echo \"FWMARK=${FWMARK}\"\n\n  NETID=$(printf \'%d\' $(echo \"${FWMARK}\" | cut -d\'/\' -f1) 2>/dev/null || echo 100)\n  echo \"NETID=${NETID}\"\n\n  EXPLICIT_FWMARK=$(ip rule show 2>/dev/null | awk \'/^13[0-9][0-9][0-9]:.*fwmark.*lookup tbox0/{print $5; exit}\')\n  if [ -z \"${EXPLICIT_FWMARK}\" ]; then\n    EXPLICIT_DEC=$(( $(printf \'%d\' $(echo \"${FWMARK}\" | cut -d\'/\' -f1)) | 65536 ))\n    EXPLICIT_FWMARK=$(printf \'0x%x/0x1ffff\' ${EXPLICIT_DEC})\n    echo \"EXPLICIT_FWMARK=${EXPLICIT_FWMARK} (calculado)\"\n  else\n    echo \"EXPLICIT_FWMARK=${EXPLICIT_FWMARK} (lido prio13000)\"\n  fi\n\n  ip rule del prio 12500 2>/dev/null; true\n  ip rule del prio 18500 2>/dev/null; true\n  ip rule del prio 21000 2>/dev/null; true\n  ip route flush table 200 2>/dev/null; true\n\n  ip rule add prio 12500 from all fwmark ${EXPLICIT_FWMARK} iif lo lookup 200 2>&1; echo \"rule_add_12500_ec=$?\"\n  ip rule add prio 18500 from all fwmark ${FWMARK} iif lo lookup 200 2>&1; echo \"rule_add_18500_ec=$?\"\n  ip rule add prio 21000 from all fwmark 0x0/0xffff iif lo lookup 200 2>&1; echo \"rule_add_21000_ec=$?\"\n  ip route replace default via ${PHONE} dev ap0 table 200 2>&1; echo \"route_default_ec=$?\"\n  ip route add 192.168.43.0/24 dev ap0 table 200 2>&1; echo \"route_43_ec=$?\"\n\n  settings put global captive_portal_mode 0 2>&1\n  echo \"--- limpando proxy global ---\"\n  settings delete global http_proxy 2>&1\n  settings delete global global_http_proxy_host 2>&1\n  settings delete global global_http_proxy_port 2>&1\n  setprop net.dns1 8.8.8.8\n  setprop net.dns2 8.8.4.4\n  ndc resolver setnetdns ${NETID} \'\' 8.8.8.8 8.8.4.4 2>&1\n\n  echo \"--- ip rule grep rotas ---\"\n  ip rule show 2>&1 | grep -E \'12500|18500|21000\' || echo \"REGRAS_NAO_ENCONTRADAS\"\n  echo \"--- ip route table 200 ---\"\n  ip route show table 200 2>&1\n  echo \"--- verificacao fwmark ---\"\n  OUR_12500=$(ip rule show 2>/dev/null | awk \'/^12500:.*fwmark/{print $5; exit}\')\n  TBOX_13000=$(ip rule show 2>/dev/null | awk \'/^13[0-9][0-9][0-9]:.*fwmark.*lookup tbox0/{print $5; exit}\')\n  echo \"prio_12500=${OUR_12500}\"\n  echo \"prio_13000_tbox0=${TBOX_13000}\"\n  if [ \"${OUR_12500}\" = \"${TBOX_13000}\" ]; then echo \"FWMARK_MATCH=OK\"; else echo \"FWMARK_MATCH=MISMATCH - execute Criar Rotas novamente\"; fi\n  echo \"--- dns ---\"\n  getprop net.dns1; getprop net.dns2\n  echo \"--- proxy global ---\"\n  settings get global http_proxy 2>&1\n  settings get global global_http_proxy_host 2>&1\n  settings get global global_http_proxy_port 2>&1\n  echo \"--- ping global fallback ---\"\n  ping -c 2 -W 3 8.8.8.8 2>&1\n  echo \"--- ping via ap0 direto ---\"\n  ping -I ap0 -c 2 -W 3 8.8.8.8 2>&1\n} 2>&1 | tee ${F}\necho \"Salvo: ${F}\""

    move-object v5, v1

    move-object v6, v3

    move-object v8, v2

    invoke-static/range {v5 .. v16}, Lcom/ex/auto/MainActivity;->F1(Lcom/ex/auto/MainActivity;Landroid/widget/Button;Landroid/widget/TextView;Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;LH0/l;LH0/l;I)V

    return-void

    :cond_f
    invoke-static {v5}, LI0/f;->h(Ljava/lang/String;)V

    throw v6

    :cond_10
    invoke-static {v5}, LI0/f;->h(Ljava/lang/String;)V

    throw v6

    :pswitch_14
    sget v1, Lcom/ex/auto/MainActivity;->u0:I

    iget-object v1, v0, LT/X1;->b:Lcom/ex/auto/MainActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    return-void

    :pswitch_15
    sget v1, Lcom/ex/auto/MainActivity;->u0:I

    iget-object v1, v0, LT/X1;->b:Lcom/ex/auto/MainActivity;

    invoke-virtual {v1}, Lcom/ex/auto/MainActivity;->W()V

    return-void

    :pswitch_16
    iget-object v2, v0, LT/X1;->b:Lcom/ex/auto/MainActivity;

    iget-object v3, v2, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v3, :cond_14

    iget-object v3, v3, LU/a;->E1:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v3

    iget-object v8, v2, Lcom/ex/auto/MainActivity;->x:Ljava/util/ArrayList;

    invoke-static {v8, v3}, Lw0/i;->b0(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-nez v3, :cond_11

    const v1, 0x7f0f029b

    invoke-static {v2, v1, v2, v7}, LM/d0;->l(Lcom/ex/auto/MainActivity;ILcom/ex/auto/MainActivity;I)V

    goto :goto_2

    :cond_11
    const/16 v7, 0x2f

    invoke-static {v3, v7}, LO0/j;->S0(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v7

    invoke-static {v3}, Lcom/ex/auto/MainActivity;->Y1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v8, "/vendor/etc/carlock/yuedongyinghe.wav"

    invoke-static {v8}, Lcom/ex/auto/MainActivity;->Y1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "\n            echo \"== apagando \u00e1udio: "

    const-string v10, " ==\"\n            TGT_INO=$(stat -c %i "

    const-string v11, " 2>/dev/null)\n            SRC_INO=$(stat -c %i "

    invoke-static {v9, v7, v10, v8, v11}, LM/d0;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " 2>/dev/null)\n            if [ -n \"$SRC_INO\" ] && [ \"$TGT_INO\" = \"$SRC_INO\" ] && grep -F \" /vendor/etc/carlock/yuedongyinghe.wav \" /proc/mounts >/dev/null 2>&1; then\n              umount "

    const-string v11, " 2>/dev/null || umount -l "

    invoke-static {v9, v3, v10, v8, v11}, LM/d0;->q(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, " 2>/dev/null || true\n              restorecon -v "

    const-string v11, " 2>/dev/null || true\n              echo \"unbind_deste_audio\"\n            else\n              echo \"unbind_nao_necessario\"\n            fi\n            rm -f "

    invoke-static {v9, v8, v10, v8, v11}, LM/d0;->q(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " 2>&1 || exit 41\n            sync 2>/dev/null || true\n            if [ -f "

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ]; then echo \"FALHA_REMOVER\"; exit 42; else echo \"REMOVIDO_OK\"; fi\n        "

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, LO0/l;->n0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iget-object v3, v2, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v3, :cond_13

    iget-object v8, v3, LU/a;->r:Landroid/widget/Button;

    if-eqz v3, :cond_12

    iget-object v5, v3, LU/a;->M2:Landroid/widget/TextView;

    const v3, 0x7f0f0142

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v4}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v12, LT/W1;

    invoke-direct {v12, v1, v2}, LT/W1;-><init>(ILcom/ex/auto/MainActivity;)V

    const/4 v10, 0x0

    const/16 v13, 0x2c0

    const-wide/16 v14, 0xbb8

    const/16 v1, 0x3a98

    const/4 v11, 0x0

    move-object v3, v8

    move-object v4, v5

    move-object v5, v6

    move-wide v6, v14

    move v8, v1

    invoke-static/range {v2 .. v13}, Lcom/ex/auto/MainActivity;->F1(Lcom/ex/auto/MainActivity;Landroid/widget/Button;Landroid/widget/TextView;Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;LH0/l;LH0/l;I)V

    :goto_2
    return-void

    :cond_12
    invoke-static {v5}, LI0/f;->h(Ljava/lang/String;)V

    throw v6

    :cond_13
    invoke-static {v5}, LI0/f;->h(Ljava/lang/String;)V

    throw v6

    :cond_14
    invoke-static {v5}, LI0/f;->h(Ljava/lang/String;)V

    throw v6

    :pswitch_17
    sget v1, Lcom/ex/auto/MainActivity;->u0:I

    iget-object v1, v0, LT/X1;->b:Lcom/ex/auto/MainActivity;

    invoke-virtual {v1}, Lcom/ex/auto/MainActivity;->B0()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "speed_auto_lock_enabled"

    invoke-interface {v2, v3, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-virtual {v1, v7}, Lcom/ex/auto/MainActivity;->x(Z)V

    return-void

    :pswitch_18
    sget v1, Lcom/ex/auto/MainActivity;->u0:I

    iget-object v1, v0, LT/X1;->b:Lcom/ex/auto/MainActivity;

    invoke-virtual {v1}, Lcom/ex/auto/MainActivity;->B0()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "keyserver_first_activate_warned"

    invoke-interface {v2, v3, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-virtual {v1}, Lcom/ex/auto/MainActivity;->D1()V

    return-void

    :pswitch_19
    sget v1, Lcom/ex/auto/MainActivity;->u0:I

    iget-object v1, v0, LT/X1;->b:Lcom/ex/auto/MainActivity;

    invoke-virtual {v1}, Lcom/ex/auto/MainActivity;->B0()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "device_banned"

    invoke-interface {v2, v3, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_15

    goto/16 :goto_5

    :cond_15
    sget-object v2, LT/Y0;->a:LT/Y0;

    invoke-virtual {v1}, Lcom/ex/auto/MainActivity;->B0()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "<get-prefs>(...)"

    invoke-static {v2, v3}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/Thread;

    new-instance v4, LT/V0;

    const/4 v5, 0x3

    invoke-direct {v4, v2, v5}, LT/V0;-><init>(Landroid/content/SharedPreferences;I)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    const-string v14, "app_pip_enabled"

    const-string v15, "phone_sync_enabled"

    const-string v8, "quick_access_enabled"

    const-string v9, "media_bar_floater_enabled"

    const-string v10, "widget_float_apps_enabled"

    const-string v11, "widget_float_drive_regen_enabled"

    const-string v12, "lyrics_floater_enabled"

    const-string v13, "temp_batt_pill_enabled"

    filled-new-array/range {v8 .. v15}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lw0/j;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1}, Lcom/ex/auto/MainActivity;->B0()Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_16

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3, v4, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_3

    :cond_16
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-class v21, Lcom/ex/auto/VhalProviderService;

    const-class v22, Lcom/ex/auto/CentralWatchdogService;

    const-class v8, Lcom/ex/auto/QuickAccessFloaterService;

    const-class v9, Lcom/ex/auto/MediaBarFloaterService;

    const-class v10, Lcom/ex/auto/HomeFloatingWidgetsService;

    const-class v11, Lcom/ex/auto/HomeWidgetsPollService;

    const-class v12, Lcom/ex/auto/LyricsFloaterService;

    const-class v13, Lcom/ex/auto/TempBattPillFloaterService;

    const-class v14, Lcom/ex/auto/AppPipFloaterService;

    const-class v15, Lcom/ex/auto/BlackoutFloaterService;

    const-class v16, Lcom/ex/auto/DpadFloaterService;

    const-class v17, Lcom/ex/auto/SplitFloaterService;

    const-class v18, Lcom/ex/auto/WifiFloaterService;

    const-class v19, Lcom/ex/auto/ExSapoCastFloaterService;

    const-class v20, Lcom/ex/auto/PhoneSyncService;

    filled-new-array/range {v8 .. v22}, [Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lw0/j;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :catchall_0
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_17

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    :try_start_0
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v4}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :cond_17
    sget-object v2, LT/L3;->a:LT/L3;

    const-string v3, "Ban"

    const-string v4, "bloqueio aplicado \u2014 servi\u00e7os parados e recursos desligados"

    invoke-virtual {v2, v3, v4}, LT/L3;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/app/Activity;->finishAffinity()V

    :goto_5
    return-void

    :pswitch_data_0
    .packed-switch 0x0
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
