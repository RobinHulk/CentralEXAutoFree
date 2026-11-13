.class public final synthetic LT/h3;
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

    iput p1, p0, LT/h3;->a:I

    iput-object p2, p0, LT/h3;->b:Lcom/ex/auto/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 35

    move-object/from16 v1, p0

    const v0, 0x7f0f029c

    const/16 v2, 0x20

    const/16 v3, 0xe

    const/4 v4, 0x3

    const/4 v5, 0x2

    const v6, 0x7f0f002f

    const/16 v7, 0x2f

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget v11, v1, LT/h3;->a:I

    packed-switch v11, :pswitch_data_0

    sget v0, Lcom/ex/auto/MainActivity;->u0:I

    iget-object v0, v1, LT/h3;->b:Lcom/ex/auto/MainActivity;

    const v2, 0x7f0f02ec

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "getString(...)"

    invoke-static {v2, v4}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, LT/j1;

    invoke-direct {v4, v0}, LT/j1;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0f02f1

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v4, LT/j1;->b:Ljava/lang/Object;

    check-cast v6, Le/e;

    iput-object v5, v6, Le/e;->d:Ljava/lang/CharSequence;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const v7, 0x7f0f02ed

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\n\n"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v6, Le/e;->f:Ljava/lang/CharSequence;

    const v2, 0x104000a

    invoke-virtual {v4, v2, v10}, LT/j1;->g(ILandroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v4}, LT/j1;->j()Le/i;

    move-result-object v2

    new-instance v4, LT/H;

    invoke-direct {v4, v0, v3, v2}, LT/H;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    iget-object v0, v0, Lcom/ex/auto/MainActivity;->w:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :pswitch_0
    iget-object v5, v1, LT/h3;->b:Lcom/ex/auto/MainActivity;

    iget-object v0, v5, Lcom/ex/auto/MainActivity;->t:LU/a;

    const-string v2, "binding"

    if-eqz v0, :cond_4

    iget-object v0, v0, LU/a;->F1:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v0

    if-ltz v0, :cond_3

    iget-object v4, v5, Lcom/ex/auto/MainActivity;->y:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lt v0, v6, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/ex/auto/MainActivity;->Y1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "\n            echo \"== apagando APK ==\"\n            ls -l "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " 2>&1 || exit 40\n            rm -f "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " 2>&1\n            code=$?\n            echo \"exit_code=$code\"\n            exit $code\n        "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, LO0/l;->n0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iget-object v4, v5, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v4, :cond_2

    iget-object v6, v4, LU/a;->s:Landroid/widget/Button;

    if-eqz v4, :cond_1

    iget-object v2, v4, LU/a;->M2:Landroid/widget/TextView;

    invoke-static {v0, v7}, LO0/j;->S0(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const v4, 0x7f0f0143

    invoke-virtual {v5, v4, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const-string v0, "getString(...)"

    invoke-static {v8, v0}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v15, LT/W1;

    invoke-direct {v15, v3, v5}, LT/W1;-><init>(ILcom/ex/auto/MainActivity;)V

    const/4 v13, 0x0

    const/16 v16, 0x2c0

    const-wide/16 v9, 0x7d0

    const/16 v11, 0x3a98

    const/4 v14, 0x0

    move-object v7, v2

    invoke-static/range {v5 .. v16}, Lcom/ex/auto/MainActivity;->F1(Lcom/ex/auto/MainActivity;Landroid/widget/Button;Landroid/widget/TextView;Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;LH0/l;LH0/l;I)V

    goto :goto_0

    :cond_1
    invoke-static {v2}, LI0/f;->h(Ljava/lang/String;)V

    throw v10

    :cond_2
    invoke-static {v2}, LI0/f;->h(Ljava/lang/String;)V

    throw v10

    :cond_3
    :goto_0
    return-void

    :cond_4
    invoke-static {v2}, LI0/f;->h(Ljava/lang/String;)V

    throw v10

    :pswitch_1
    sget v0, Lcom/ex/auto/MainActivity;->u0:I

    iget-object v0, v1, LT/h3;->b:Lcom/ex/auto/MainActivity;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, LT/j1;

    invoke-direct {v2, v0}, LT/j1;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0f0133

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v2, LT/j1;->b:Ljava/lang/Object;

    check-cast v4, Le/e;

    iput-object v3, v4, Le/e;->d:Ljava/lang/CharSequence;

    const v3, 0x7f0f0132

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Le/e;->f:Ljava/lang/CharSequence;

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v10}, LT/j1;->f(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    const v3, 0x7f0f0134

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, LT/X1;

    const/16 v5, 0xd

    invoke-direct {v4, v5, v0}, LT/X1;-><init>(ILcom/ex/auto/MainActivity;)V

    invoke-virtual {v2, v3, v4}, LT/j1;->h(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v2}, LT/j1;->j()Le/i;

    return-void

    :pswitch_2
    sget v0, Lcom/ex/auto/MainActivity;->u0:I

    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/ex/auto/FavoriteAppsActivity;

    iget-object v3, v1, LT/h3;->b:Lcom/ex/auto/MainActivity;

    invoke-direct {v0, v3, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :pswitch_3
    sget v0, Lcom/ex/auto/MainActivity;->u0:I

    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/ex/auto/BackgroundKeepAliveActivity;

    iget-object v3, v1, LT/h3;->b:Lcom/ex/auto/MainActivity;

    invoke-direct {v0, v3, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :pswitch_4
    sget v0, Lcom/ex/auto/MainActivity;->u0:I

    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/ex/auto/FavoriteAppsActivity;

    iget-object v3, v1, LT/h3;->b:Lcom/ex/auto/MainActivity;

    invoke-direct {v0, v3, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :pswitch_5
    sget v0, Lcom/ex/auto/MainActivity;->u0:I

    iget-object v11, v1, LT/h3;->b:Lcom/ex/auto/MainActivity;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "/sdcard/Download"

    invoke-static {v0}, Lcom/ex/auto/MainActivity;->Y1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\n            "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, LT/Y;->C()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n            echo \"== copiar APKs do pen-drive para Downloads ==\"\n            mkdir -p "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " 2>&1 || exit 20\n            chmod 755 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " 2>&1 || true\n            copied=0\n            for root in /storage/* /mnt/media_rw/* /mnt/usb* /mnt/media_rw/usb*; do\n              [ -d \"$root\" ] || continue\n              case \"$root\" in\n                /storage/emulated|/storage/self) continue ;;\n              esac\n              echo \"-- procurando em $root\"\n              for f in \"$root\"/*.apk \"$root\"/*.xapk \"$root\"/*.apkm \"$root\"/*/*.apk \"$root\"/*/*.xapk \"$root\"/*/*.apkm \"$root\"/*/*/*.apk \"$root\"/*/*/*.xapk \"$root\"/*/*/*.apkm; do\n                [ -f \"$f\" ] || continue\n                base=${f##*/}\n                echo \"copiando $f -> /sdcard/Download/$base\"\n                cp -f \"$f\" "

    const-string v4, "/\"$base\" 2>&1 && copied=$((copied + 1))\n              done\n            done\n            echo \"copiados=$copied\"\n            ls -l "

    invoke-static {v2, v3, v0, v4, v0}, LM/d0;->q(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, " 2>&1 || true\n        "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LO0/l;->n0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    iget-object v0, v11, Lcom/ex/auto/MainActivity;->t:LU/a;

    const-string v2, "binding"

    if-eqz v0, :cond_6

    iget-object v12, v0, LU/a;->p:Landroid/widget/Button;

    if-eqz v0, :cond_5

    iget-object v13, v0, LU/a;->M2:Landroid/widget/TextView;

    const v0, 0x7f0f0137

    invoke-virtual {v11, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    const-string v0, "getString(...)"

    invoke-static {v14, v0}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, LT/W1;

    const/16 v2, 0xb

    invoke-direct {v0, v2, v11}, LT/W1;-><init>(ILcom/ex/auto/MainActivity;)V

    const/16 v19, 0x0

    const/16 v22, 0x2c0

    const-wide/16 v15, 0xbb8

    const v17, 0xea60

    const/16 v20, 0x0

    move-object/from16 v21, v0

    invoke-static/range {v11 .. v22}, Lcom/ex/auto/MainActivity;->F1(Lcom/ex/auto/MainActivity;Landroid/widget/Button;Landroid/widget/TextView;Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;LH0/l;LH0/l;I)V

    return-void

    :cond_5
    invoke-static {v2}, LI0/f;->h(Ljava/lang/String;)V

    throw v10

    :cond_6
    invoke-static {v2}, LI0/f;->h(Ljava/lang/String;)V

    throw v10

    :pswitch_6
    iget-object v0, v1, LT/h3;->b:Lcom/ex/auto/MainActivity;

    iget v3, v0, Lcom/ex/auto/MainActivity;->C:I

    iget v11, v0, Lcom/ex/auto/MainActivity;->B:I

    const-string v12, "binding"

    if-ne v3, v11, :cond_9

    iget-object v2, v0, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v2, :cond_8

    iget-object v2, v2, LU/a;->F1:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v2

    if-ltz v2, :cond_17

    iget-object v3, v0, Lcom/ex/auto/MainActivity;->z:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v2, v4, :cond_7

    goto/16 :goto_2

    :cond_7
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v2, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-object v3, v2

    :goto_1
    new-instance v4, LT/j1;

    invoke-direct {v4, v0}, LT/j1;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0f0320

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v7, v4, LT/j1;->b:Ljava/lang/Object;

    check-cast v7, Le/e;

    iput-object v5, v7, Le/e;->d:Ljava/lang/CharSequence;

    const v5, 0x7f0f031f

    filled-new-array {v3, v2}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v5, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v7, Le/e;->f:Ljava/lang/CharSequence;

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3, v10}, LT/j1;->f(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    const v3, 0x7f0f0321

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v5, LT/a2;

    invoke-direct {v5, v0, v2, v9}, LT/a2;-><init>(Lcom/ex/auto/MainActivity;Ljava/lang/String;I)V

    invoke-virtual {v4, v3, v5}, LT/j1;->h(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v4}, LT/j1;->j()Le/i;

    goto/16 :goto_2

    :cond_8
    invoke-static {v12}, LI0/f;->h(Ljava/lang/String;)V

    throw v10

    :cond_9
    iget-object v3, v0, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v3, :cond_18

    iget-object v3, v3, LU/a;->F1:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v3

    if-ltz v3, :cond_17

    iget-object v6, v0, Lcom/ex/auto/MainActivity;->y:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lt v3, v11, :cond_a

    goto/16 :goto_2

    :cond_a
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v6, "/data/data/com.aurora.store/cache/Downloads"

    invoke-static {v3, v6}, LO0/s;->w0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    const v11, 0x7f0f01dd

    const-string v13, "\n        "

    const-string v14, "getString(...)"

    const-string v15, "\n            "

    if-eqz v6, :cond_e

    new-array v2, v8, [C

    aput-char v7, v2, v9

    invoke-static {v3, v2}, LO0/j;->Z0(Ljava/lang/String;[C)Ljava/lang/String;

    move-result-object v2

    new-array v4, v8, [C

    aput-char v7, v4, v9

    invoke-static {v2, v4}, LO0/j;->N0(Ljava/lang/String;[C)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v5

    invoke-static {v2, v4}, Lw0/i;->b0(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_b

    const-string v2, "app"

    :cond_b
    invoke-static {v3}, Lcom/ex/auto/MainActivity;->Y1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "/data/local/tmp/aurora_work"

    invoke-static {v4}, Lcom/ex/auto/MainActivity;->Y1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, LT/Y;->C()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\n            echo \"== Aurora ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "): preparando ==\"\n            rm -rf "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "; mkdir -p "

    const-string v7, " || exit 10\n            ls -l "

    invoke-static {v5, v6, v4, v7, v3}, LM/d0;->q(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "/*.apk 2>&1 || { echo \"ERRO: sem APKs na pasta da Aurora\"; exit 11; }\n            cp -f "

    const-string v7, "/*.apk "

    invoke-static {v5, v6, v3, v7, v4}, LM/d0;->q(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "/ 2>&1 || exit 12\n            chown root:root "

    const-string v6, "/*.apk 2>/dev/null || true\n            chmod 644 "

    invoke-static {v5, v3, v4, v6, v4}, LM/d0;->q(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "/*.apk 2>/dev/null || true\n            restorecon -v "

    const-string v6, "/*.apk 2>/dev/null || true\n            ls -1 "

    invoke-static {v5, v3, v4, v6, v4}, LM/d0;->q(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "/*.apk > "

    const-string v6, "/filtered_apks.txt\n            N=$(wc -l < "

    invoke-static {v5, v3, v4, v6, v4}, LM/d0;->q(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "/filtered_apks.txt)\n            echo \"== Aurora ("

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "): $N split(s), instalando ==\"\n            if [ \"$N\" -gt 1 ]; then\n              "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/ex/auto/MainActivity;->I0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n            else\n              pm install -r -g -d \"$(head -1 "

    const-string v6, "/filtered_apks.txt)\" 2>&1\n            fi\n            echo \"exit_code=$?\"\n            rm -rf "

    invoke-static {v5, v3, v4, v6, v4}, LM/d0;->q(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, LO0/l;->n0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    iget-object v3, v0, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v3, :cond_d

    iget-object v4, v3, LU/a;->H:Landroid/widget/Button;

    if-eqz v3, :cond_c

    iget-object v3, v3, LU/a;->M2:Landroid/widget/TextView;

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v11, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v14}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v6, LT/l2;

    invoke-direct {v6, v0, v2, v8}, LT/l2;-><init>(Lcom/ex/auto/MainActivity;Ljava/lang/String;I)V

    const/16 v31, 0x0

    const/16 v34, 0x240

    const-wide/16 v27, 0x1388

    const v29, 0x2bf20

    const/16 v32, 0x0

    move-object/from16 v23, v0

    move-object/from16 v24, v4

    move-object/from16 v25, v3

    move-object/from16 v26, v5

    move-object/from16 v33, v6

    invoke-static/range {v23 .. v34}, Lcom/ex/auto/MainActivity;->F1(Lcom/ex/auto/MainActivity;Landroid/widget/Button;Landroid/widget/TextView;Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;LH0/l;LH0/l;I)V

    goto/16 :goto_2

    :cond_c
    invoke-static {v12}, LI0/f;->h(Ljava/lang/String;)V

    throw v10

    :cond_d
    invoke-static {v12}, LI0/f;->h(Ljava/lang/String;)V

    throw v10

    :cond_e
    const-string v6, ".xapk"

    invoke-static {v3, v6, v8}, LO0/s;->r0(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    const-string v9, "\n            FILTERED_COUNT=$(wc -l < "

    const-string v5, "/extracted -maxdepth 2 -name \"*.apk\" | sort\n            APK_COUNT=$(find "

    if-eqz v6, :cond_11

    invoke-static {v3, v7}, LO0/j;->S0(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3}, Lcom/ex/auto/MainActivity;->Y1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v7, "/data/local/tmp/xapk_work"

    invoke-static {v7}, Lcom/ex/auto/MainActivity;->Y1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, LT/Y;->C()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "\n            echo \"== XAPK: preparando ==\"\n            rm -rf "

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "\n            mkdir -p "

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "/extracted || exit 10\n            ls -l "

    const-string v10, " 2>&1 || exit 11\n            cp -f "

    invoke-static {v8, v15, v3, v10, v3}, LM/d0;->q(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/pkg.xapk 2>&1 || exit 12\n            echo \"== XAPK: descomprimindo ==\"\n            unzip -q "

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/pkg.xapk -d "

    const-string v3, "/extracted/ 2>&1\n            unzip_code=$?\n            if [ $unzip_code -ne 0 ]; then\n              echo \"ERRO: unzip falhou (code=$unzip_code)\"; rm -rf "

    invoke-static {v8, v2, v7, v3, v7}, LM/d0;->q(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "; exit 13\n            fi\n            echo \"== XAPK: identificando pacote ==\"\n            PKG=\"\"\n            if [ -f "

    const-string v3, "/extracted/manifest.json ]; then\n              PKG=$(grep -o \'\"package_name\" *: *\"[^\"]*\"\' "

    invoke-static {v8, v2, v7, v3, v7}, LM/d0;->q(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "/extracted/manifest.json | sed \'s/.*\"\\([^\"]*\\)\"/\\1/\' | head -1)\n            fi\n            echo \"Pacote: $PKG\"\n            echo \"== XAPK: APKs encontrados ==\"\n            find "

    invoke-static {v8, v2, v7, v5, v7}, LM/d0;->q(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "/extracted -maxdepth 2 -name \"*.apk\" | wc -l)\n            echo \"Total APKs: $APK_COUNT\"\n            if [ \"$APK_COUNT\" -eq 0 ]; then\n              echo \"ERRO: nenhum APK encontrado no XAPK\"; rm -rf "

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "; exit 14\n            fi\n            echo \"== XAPK: filtrando por arquitetura/densidade ==\"\n            "

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Lcom/ex/auto/MainActivity;->e2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/filtered_apks.txt)\n            echo \"APKs apos filtro: $FILTERED_COUNT\"\n            echo \"== XAPK: instalando ==\"\n            if [ \"$FILTERED_COUNT\" -gt 1 ]; then\n              echo \"Modo: sessao pm (split APKs)\"\n              "

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Lcom/ex/auto/MainActivity;->I0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n            else\n              BASE=$(head -1 "

    const-string v3, "/filtered_apks.txt)\n              echo \"Modo: pm install\"\n              pm install -r -g -d \"${BASE}\" 2>&1\n            fi\n            code=$?\n            echo \"exit_code=$code\"\n            if [ $code -eq 0 ] && [ -n \"$PKG\" ]; then\n              OBB_SRC=\"/data/local/tmp/xapk_work/extracted/Android/obb/$PKG\"\n              if [ -d \"$OBB_SRC\" ]; then\n                echo \"== XAPK: copiando OBBs ==\"\n                mkdir -p \"/sdcard/Android/obb/$PKG\"\n                cp -f \"$OBB_SRC/\"* \"/sdcard/Android/obb/$PKG/\" 2>&1\n                chmod 644 \"/sdcard/Android/obb/$PKG/\"* 2>/dev/null || true\n                echo \"OBBs copiados.\"\n              fi\n            fi\n            rm -rf "

    invoke-static {v8, v2, v7, v3, v7}, LM/d0;->q(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, LO0/l;->n0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    iget-object v2, v0, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v2, :cond_10

    iget-object v3, v2, LU/a;->H:Landroid/widget/Button;

    if-eqz v2, :cond_f

    iget-object v2, v2, LU/a;->M2:Landroid/widget/TextView;

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v11, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v14}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v7, LT/l2;

    invoke-direct {v7, v0, v6, v4}, LT/l2;-><init>(Lcom/ex/auto/MainActivity;Ljava/lang/String;I)V

    const/16 v31, 0x0

    const/16 v34, 0x240

    const-wide/16 v27, 0x1388

    const v29, 0x2bf20

    const/16 v32, 0x0

    move-object/from16 v23, v0

    move-object/from16 v24, v3

    move-object/from16 v25, v2

    move-object/from16 v26, v5

    move-object/from16 v33, v7

    invoke-static/range {v23 .. v34}, Lcom/ex/auto/MainActivity;->F1(Lcom/ex/auto/MainActivity;Landroid/widget/Button;Landroid/widget/TextView;Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;LH0/l;LH0/l;I)V

    goto/16 :goto_2

    :cond_f
    invoke-static {v12}, LI0/f;->h(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_10
    const/4 v0, 0x0

    invoke-static {v12}, LI0/f;->h(Ljava/lang/String;)V

    throw v0

    :cond_11
    const-string v4, ".apkm"

    invoke-static {v3, v4, v8}, LO0/s;->r0(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    const v6, 0x7f0f01da

    if-eqz v4, :cond_14

    invoke-static {v3, v7}, LO0/j;->S0(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3}, Lcom/ex/auto/MainActivity;->Y1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v7, "/data/local/tmp/apkm_work"

    invoke-static {v7}, Lcom/ex/auto/MainActivity;->Y1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, LT/Y;->C()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "\n            echo \"== instalando APKM ==\"\n            rm -rf "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " 2>&1 || true\n            mkdir -p "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "/extracted 2>&1 || exit 10\n            cp -f "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/pkg.apkm 2>&1 || exit 12\n            unzip -q "

    const-string v3, "/pkg.apkm -d "

    invoke-static {v8, v2, v7, v3, v7}, LM/d0;->q(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "/extracted/ 2>&1\n            UNZIP_EXIT=$?\n            if [ \"$UNZIP_EXIT\" -ne 0 ]; then\n              echo \"INSTALL_FAILURE: apkm_corrompido (unzip exit=$UNZIP_EXIT)\"\n              exit 15\n            fi\n            echo \"-- conteudo extraido --\"\n            find "

    invoke-static {v8, v2, v7, v5, v7}, LM/d0;->q(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "/extracted -maxdepth 2 -name \"*.apk\" | wc -l)\n            echo \"APKs encontrados: $APK_COUNT\"\n            if [ \"$APK_COUNT\" -eq 0 ]; then\n              echo \"INSTALL_FAILURE: nenhum APK encontrado no APKM\"\n              exit 1\n            fi\n            echo \"-- filtrando por arquitetura/densidade --\"\n            "

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Lcom/ex/auto/MainActivity;->e2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/filtered_apks.txt)\n            echo \"APKs apos filtro: $FILTERED_COUNT\"\n            if [ \"$FILTERED_COUNT\" -eq 1 ]; then\n              BASE=$(head -1 "

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/filtered_apks.txt)\n              pm install -r -g -d \"$BASE\" 2>&1\n            else\n              "

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Lcom/ex/auto/MainActivity;->I0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n            fi\n            EXIT=$?\n            rm -rf "

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " 2>&1 || true\n            echo \"exit_code=$EXIT\"\n        "

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, LO0/l;->n0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    iget-object v2, v0, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v2, :cond_13

    iget-object v3, v2, LU/a;->H:Landroid/widget/Button;

    if-eqz v2, :cond_12

    iget-object v2, v2, LU/a;->M2:Landroid/widget/TextView;

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v6, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v14}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v6, LT/l2;

    const/4 v7, 0x2

    invoke-direct {v6, v0, v4, v7}, LT/l2;-><init>(Lcom/ex/auto/MainActivity;Ljava/lang/String;I)V

    const/16 v31, 0x0

    const/16 v34, 0x240

    const-wide/16 v27, 0xbb8

    const v29, 0x1d4c0

    const/16 v32, 0x0

    move-object/from16 v23, v0

    move-object/from16 v24, v3

    move-object/from16 v25, v2

    move-object/from16 v26, v5

    move-object/from16 v33, v6

    invoke-static/range {v23 .. v34}, Lcom/ex/auto/MainActivity;->F1(Lcom/ex/auto/MainActivity;Landroid/widget/Button;Landroid/widget/TextView;Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;LH0/l;LH0/l;I)V

    goto/16 :goto_2

    :cond_12
    invoke-static {v12}, LI0/f;->h(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_13
    const/4 v0, 0x0

    invoke-static {v12}, LI0/f;->h(Ljava/lang/String;)V

    throw v0

    :cond_14
    invoke-static {v3, v7}, LO0/j;->S0(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v4

    const-string v5, "/data/local/tmp/"

    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3}, Lcom/ex/auto/MainActivity;->Y1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v5}, Lcom/ex/auto/MainActivity;->Y1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, LT/Y;->C()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\n            echo \"== instalando APK ==\"\n            ls -l "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " 2>&1 || exit 40\n            echo \"copiando para "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\"\n            cp -f "

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " 2>&1 || exit 41\n            chown root:root "

    const-string v3, " 2>&1 || true\n            chmod 644 "

    invoke-static {v8, v2, v7, v3, v7}, LM/d0;->q(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, " 2>&1 || true\n            restorecon -v "

    const-string v3, " 2>/dev/null || true\n            echo \"== pm install ==\"\n            pm install -r -g -d "

    invoke-static {v8, v2, v7, v3, v7}, LM/d0;->q(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, " 2>&1\n            code=$?\n            rm -f "

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " 2>/dev/null || true\n            echo \"exit_code=$code\"\n        "

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, LO0/l;->n0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    iget-object v2, v0, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v2, :cond_16

    iget-object v3, v2, LU/a;->H:Landroid/widget/Button;

    if-eqz v2, :cond_15

    iget-object v2, v2, LU/a;->M2:Landroid/widget/TextView;

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v6, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v14}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v6, LT/l2;

    const/4 v7, 0x0

    invoke-direct {v6, v0, v4, v7}, LT/l2;-><init>(Lcom/ex/auto/MainActivity;Ljava/lang/String;I)V

    const/16 v31, 0x0

    const/16 v32, 0x0

    const-wide/16 v27, 0x1388

    const v29, 0xea60

    const/16 v34, 0x240

    move-object/from16 v23, v0

    move-object/from16 v24, v3

    move-object/from16 v25, v2

    move-object/from16 v26, v5

    move-object/from16 v33, v6

    invoke-static/range {v23 .. v34}, Lcom/ex/auto/MainActivity;->F1(Lcom/ex/auto/MainActivity;Landroid/widget/Button;Landroid/widget/TextView;Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;LH0/l;LH0/l;I)V

    goto :goto_2

    :cond_15
    invoke-static {v12}, LI0/f;->h(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_16
    const/4 v0, 0x0

    invoke-static {v12}, LI0/f;->h(Ljava/lang/String;)V

    throw v0

    :cond_17
    :goto_2
    return-void

    :cond_18
    move-object v0, v10

    invoke-static {v12}, LI0/f;->h(Ljava/lang/String;)V

    throw v0

    :pswitch_7
    sget v0, Lcom/ex/auto/MainActivity;->u0:I

    iget-object v0, v1, LT/h3;->b:Lcom/ex/auto/MainActivity;

    invoke-virtual {v0}, Lcom/ex/auto/MainActivity;->o1()V

    return-void

    :pswitch_8
    sget v0, Lcom/ex/auto/MainActivity;->u0:I

    iget-object v0, v1, LT/h3;->b:Lcom/ex/auto/MainActivity;

    invoke-virtual {v0, v4}, Lcom/ex/auto/MainActivity;->L1(I)V

    return-void

    :pswitch_9
    iget-object v0, v1, LT/h3;->b:Lcom/ex/auto/MainActivity;

    iget-object v2, v0, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v2, :cond_1a

    iget-object v2, v2, LU/a;->E1:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v2

    iget-object v3, v0, Lcom/ex/auto/MainActivity;->x:Ljava/util/ArrayList;

    invoke-static {v3, v2}, Lw0/i;->b0(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_19

    const v2, 0x7f0f0247

    const/4 v3, 0x0

    invoke-static {v0, v2, v0, v3}, LM/d0;->l(Lcom/ex/auto/MainActivity;ILcom/ex/auto/MainActivity;I)V

    goto :goto_3

    :cond_19
    invoke-virtual {v0, v2}, Lcom/ex/auto/MainActivity;->X0(Ljava/lang/String;)V

    :goto_3
    return-void

    :cond_1a
    const-string v0, "binding"

    invoke-static {v0}, LI0/f;->h(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :pswitch_a
    iget-object v0, v1, LT/h3;->b:Lcom/ex/auto/MainActivity;

    iget-object v2, v0, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v2, :cond_1c

    iget-object v2, v2, LU/a;->E1:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v2

    iget-object v3, v0, Lcom/ex/auto/MainActivity;->x:Ljava/util/ArrayList;

    invoke-static {v3, v2}, Lw0/i;->b0(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_1b

    const v2, 0x7f0f029b

    const/4 v3, 0x0

    invoke-static {v0, v2, v0, v3}, LM/d0;->l(Lcom/ex/auto/MainActivity;ILcom/ex/auto/MainActivity;I)V

    goto :goto_4

    :cond_1b
    invoke-static {v2, v7}, LO0/j;->S0(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v2

    new-instance v3, LT/j1;

    invoke-direct {v3, v0}, LT/j1;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0f0140

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v7, v3, LT/j1;->b:Ljava/lang/Object;

    check-cast v7, Le/e;

    iput-object v5, v7, Le/e;->d:Ljava/lang/CharSequence;

    const v5, 0x7f0f013f

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v5, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v7, Le/e;->f:Ljava/lang/CharSequence;

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    invoke-virtual {v3, v2, v5}, LT/j1;->f(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    const v2, 0x7f0f0141

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v5, LT/X1;

    invoke-direct {v5, v4, v0}, LT/X1;-><init>(ILcom/ex/auto/MainActivity;)V

    invoke-virtual {v3, v2, v5}, LT/j1;->h(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v3}, LT/j1;->j()Le/i;

    :goto_4
    return-void

    :cond_1c
    const/4 v5, 0x0

    const-string v0, "binding"

    invoke-static {v0}, LI0/f;->h(Ljava/lang/String;)V

    throw v5

    :pswitch_b
    sget v0, Lcom/ex/auto/MainActivity;->u0:I

    iget-object v2, v1, LT/h3;->b:Lcom/ex/auto/MainActivity;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "/vendor/etc/carlock/yuedongyinghe.wav"

    invoke-static {v0}, Lcom/ex/auto/MainActivity;->Y1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "\n            echo \"== restaurando som de travamento original ==\"\n            if grep -F \" /vendor/etc/carlock/yuedongyinghe.wav \" /proc/mounts >/dev/null 2>&1; then\n              umount "

    const-string v4, " 2>&1 || exit 21\n              echo \"unbind_ok\"\n            else\n              echo \"sem_bind_ativo\"\n            fi\n            restorecon -v "

    const-string v5, " 2>&1 || true\n            CURRENT_PATH=$(settings get system lock_car_audio_path)\n            if [ \"$CURRENT_PATH\" != \"/vendor/etc/carlock/yuedongyinghe.wav\" ]; then\n              settings put system lock_car_audio_path "

    invoke-static {v3, v0, v4, v0, v5}, LM/d0;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n              echo \"settings_restaurado (era: $CURRENT_PATH)\"\n            else\n              echo \"settings_ja_original\"\n            fi\n            cat /proc/mounts | grep -F "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " || echo \"BIND_REMOVIDO\"\n        "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LO0/l;->n0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iget-object v0, v2, Lcom/ex/auto/MainActivity;->t:LU/a;

    const-string v3, "binding"

    if-eqz v0, :cond_1e

    iget-object v4, v0, LU/a;->e0:Landroid/widget/Button;

    if-eqz v0, :cond_1d

    iget-object v0, v0, LU/a;->M2:Landroid/widget/TextView;

    const v3, 0x7f0f02a6

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v3, "getString(...)"

    invoke-static {v5, v3}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v11, 0x0

    const/16 v13, 0x3c0

    const-wide/16 v6, 0x1388

    const/16 v8, 0x3a98

    const/4 v10, 0x0

    const/4 v12, 0x0

    move-object v3, v4

    move-object v4, v0

    invoke-static/range {v2 .. v13}, Lcom/ex/auto/MainActivity;->F1(Lcom/ex/auto/MainActivity;Landroid/widget/Button;Landroid/widget/TextView;Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;LH0/l;LH0/l;I)V

    return-void

    :cond_1d
    invoke-static {v3}, LI0/f;->h(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_1e
    const/4 v0, 0x0

    invoke-static {v3}, LI0/f;->h(Ljava/lang/String;)V

    throw v0

    :pswitch_c
    iget-object v2, v1, LT/h3;->b:Lcom/ex/auto/MainActivity;

    iget-object v3, v2, Lcom/ex/auto/MainActivity;->t:LU/a;

    const-string v4, "binding"

    if-eqz v3, :cond_22

    iget-object v3, v3, LU/a;->E1:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v3

    iget-object v5, v2, Lcom/ex/auto/MainActivity;->x:Ljava/util/ArrayList;

    invoke-static {v5, v3}, Lw0/i;->b0(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-nez v3, :cond_1f

    const/4 v5, 0x0

    invoke-static {v2, v0, v2, v5}, LM/d0;->l(Lcom/ex/auto/MainActivity;ILcom/ex/auto/MainActivity;I)V

    goto :goto_5

    :cond_1f
    iget-object v0, v2, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v0, :cond_21

    iget-object v5, v0, LU/a;->j:Landroid/widget/Button;

    if-eqz v0, :cond_20

    iget-object v4, v0, LU/a;->M2:Landroid/widget/TextView;

    invoke-static {v3, v7}, LO0/j;->S0(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const v6, 0x7f0f00a4

    invoke-virtual {v2, v6, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v6, "getString(...)"

    invoke-static {v0, v6}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, LT/Y;->t(Ljava/lang/String;)LT/V;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "\n            echo \"== aplicando som de trava persistente ==\"\n            "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v3, LT/V;->a:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\n            ls -l "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v3, LT/V;->b:Ljava/lang/String;

    const-string v7, " 2>&1 || { echo \"ERRO: arquivo nao encontrado: "

    const-string v8, "\"; exit 10; }\n            chown root:root "

    invoke-static {v6, v3, v7, v3, v8}, LM/d0;->q(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, " 2>&1 || true\n            chmod 664 "

    const-string v8, " 2>&1 || exit 13\n            restorecon -v "

    invoke-static {v6, v3, v7, v3, v8}, LM/d0;->q(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, " 2>&1 || true\n            chcon u:object_r:vendor_configs_file:s0 "

    const-string v8, " 2>&1 || true\n            settings put system lock_car_audio_path "

    invoke-static {v6, v3, v7, v3, v8}, LM/d0;->q(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\n            settings put system lock_car_audio_enable 1\n            settings get system lock_car_audio_path\n            ls -Z "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " 2>&1 || true\n            echo \"exit_code=0\"\n        "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, LO0/l;->n0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    new-instance v12, LT/W1;

    const/16 v3, 0x11

    invoke-direct {v12, v3, v2}, LT/W1;-><init>(ILcom/ex/auto/MainActivity;)V

    const/4 v10, 0x0

    const/16 v13, 0x2c0

    const-wide/16 v6, 0x1388

    const/16 v8, 0x3a98

    const/4 v11, 0x0

    move-object v3, v5

    move-object v5, v0

    invoke-static/range {v2 .. v13}, Lcom/ex/auto/MainActivity;->F1(Lcom/ex/auto/MainActivity;Landroid/widget/Button;Landroid/widget/TextView;Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;LH0/l;LH0/l;I)V

    :goto_5
    return-void

    :cond_20
    invoke-static {v4}, LI0/f;->h(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_21
    const/4 v0, 0x0

    invoke-static {v4}, LI0/f;->h(Ljava/lang/String;)V

    throw v0

    :cond_22
    const/4 v0, 0x0

    invoke-static {v4}, LI0/f;->h(Ljava/lang/String;)V

    throw v0

    :pswitch_d
    iget-object v3, v1, LT/h3;->b:Lcom/ex/auto/MainActivity;

    iget-object v4, v3, Lcom/ex/auto/MainActivity;->t:LU/a;

    const-string v5, "binding"

    if-eqz v4, :cond_26

    iget-object v4, v4, LU/a;->E1:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v4

    iget-object v6, v3, Lcom/ex/auto/MainActivity;->x:Ljava/util/ArrayList;

    invoke-static {v6, v4}, Lw0/i;->b0(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-nez v4, :cond_23

    const/4 v6, 0x0

    invoke-static {v3, v0, v3, v6}, LM/d0;->l(Lcom/ex/auto/MainActivity;ILcom/ex/auto/MainActivity;I)V

    goto/16 :goto_6

    :cond_23
    iget-object v0, v3, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v0, :cond_25

    iget-object v6, v0, LU/a;->i:Landroid/widget/Button;

    if-eqz v0, :cond_24

    iget-object v0, v0, LU/a;->M2:Landroid/widget/TextView;

    invoke-static {v4, v7}, LO0/j;->S0(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    const v7, 0x7f0f00a3

    invoke-virtual {v3, v7, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "getString(...)"

    invoke-static {v5, v7}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, LT/Y;->t(Ljava/lang/String;)LT/V;

    move-result-object v4

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "\'"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "/vendor/etc/carlock/yuedongyinghe.wav"

    const-string v10, "\'\\\'\'"

    invoke-static {v9, v8, v10}, LO0/s;->v0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v8, 0x27

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "\n            echo \"== diagnostico carlock bind ==\"\n            "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, v4, LT/V;->a:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\n            ls -l "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v4, LT/V;->b:Ljava/lang/String;

    const-string v9, " 2>&1 || { echo \"ERRO: arquivo nao encontrado: "

    const-string v10, "\"; exit 10; }\n            ls -l "

    invoke-static {v8, v4, v9, v4, v10}, LM/d0;->q(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, " 2>&1 || exit 11\n            if grep \" /vendor/etc/carlock/yuedongyinghe.wav \" /proc/mounts | grep -qF \"/data/local/tmp/sons/\"; then\n              umount "

    const-string v10, " 2>&1 || exit 12\n            fi\n            chown root:root "

    invoke-static {v8, v7, v9, v7, v10}, LM/d0;->q(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, " 2>&1 || true\n            chmod 664 "

    const-string v10, " 2>&1 || exit 13\n            restorecon -v "

    invoke-static {v8, v4, v9, v4, v10}, LM/d0;->q(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, " 2>&1 || true\n            chcon u:object_r:vendor_configs_file:s0 "

    const-string v10, " 2>&1 || true\n            restorecon -v "

    invoke-static {v8, v4, v9, v4, v10}, LM/d0;->q(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " 2>&1 || true\n            mount --bind "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, " 2>&1 || exit 14\n            restorecon -v "

    const-string v4, " 2>&1 || true\n            cat /proc/mounts | grep -F "

    invoke-static {v8, v7, v2, v7, v4}, LM/d0;->q(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " || echo \"BIND_NAO_CONFIRMADO\"\n            echo \"exit_code=0\"\n        "

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, LO0/l;->n0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    new-instance v12, LT/W1;

    const/16 v2, 0x10

    invoke-direct {v12, v2, v3}, LT/W1;-><init>(ILcom/ex/auto/MainActivity;)V

    const/4 v10, 0x0

    const/16 v13, 0x2c0

    const-wide/16 v7, 0x1388

    const/16 v11, 0x4e20

    const/4 v14, 0x0

    move-object v2, v3

    move-object v3, v6

    move-object v4, v0

    move-wide v6, v7

    move v8, v11

    move-object v11, v14

    invoke-static/range {v2 .. v13}, Lcom/ex/auto/MainActivity;->F1(Lcom/ex/auto/MainActivity;Landroid/widget/Button;Landroid/widget/TextView;Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;LH0/l;LH0/l;I)V

    :goto_6
    return-void

    :cond_24
    invoke-static {v5}, LI0/f;->h(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_25
    const/4 v0, 0x0

    invoke-static {v5}, LI0/f;->h(Ljava/lang/String;)V

    throw v0

    :cond_26
    const/4 v0, 0x0

    invoke-static {v5}, LI0/f;->h(Ljava/lang/String;)V

    throw v0

    :pswitch_e
    iget-object v2, v1, LT/h3;->b:Lcom/ex/auto/MainActivity;

    sget v0, Lcom/ex/auto/MainActivity;->u0:I

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "Ficheiro guardado: "

    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyyMMdd-HHmmss"

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v3, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "centralexauto-"

    const-string v5, ".txt"

    invoke-static {v4, v3, v5}, LM/d0;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v4}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_27

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    move-result v5

    if-nez v5, :cond_27

    const v0, 0x7f0f0157

    const/4 v3, 0x0

    invoke-static {v2, v0, v2, v3}, LM/d0;->l(Lcom/ex/auto/MainActivity;ILcom/ex/auto/MainActivity;I)V

    goto/16 :goto_8

    :cond_27
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_1
    iget-object v4, v2, Lcom/ex/auto/MainActivity;->O:Ljava/lang/Object;

    monitor-enter v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    iget-object v6, v2, Lcom/ex/auto/MainActivity;->N:Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    monitor-exit v4

    const-string v4, "synchronized(...)"

    invoke-static {v6, v4}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Ljava/io/FileOutputStream;

    const/4 v7, 0x0

    invoke-direct {v4, v5, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :try_start_4
    sget-object v7, LO0/a;->a:Ljava/nio/charset/Charset;

    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v6

    const-string v7, "getBytes(...)"

    invoke-static {v6, v7}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/4 v6, 0x0

    :try_start_5
    invoke-static {v4, v6}, LA/b;->m(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    const-string v4, "Log"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v4, v0}, Lcom/ex/auto/MainActivity;->v(Ljava/lang/String;Ljava/lang/String;)V

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v0

    const v3, 0x7f0f02b8

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_8

    :catch_1
    move-exception v0

    goto :goto_7

    :catchall_0
    move-exception v0

    move-object v3, v0

    :try_start_6
    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v0

    move-object v5, v0

    :try_start_7
    invoke-static {v4, v3}, LA/b;->m(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v5

    :catchall_2
    move-exception v0

    monitor-exit v4

    throw v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    :goto_7
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_28

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    :cond_28
    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v0

    const v3, 0x7f0f02b7

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_8
    return-void

    :pswitch_f
    iget-object v0, v1, LT/h3;->b:Lcom/ex/auto/MainActivity;

    iget-object v2, v0, Lcom/ex/auto/MainActivity;->O:Ljava/lang/Object;

    monitor-enter v2

    :try_start_8
    iget-object v3, v0, Lcom/ex/auto/MainActivity;->N:Ljava/lang/StringBuilder;

    const-string v4, "<this>"

    invoke-static {v3, v4}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->setLength(I)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    monitor-exit v2

    iget-object v2, v0, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v2, :cond_29

    iget-object v2, v2, LU/a;->N2:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f0f0200

    invoke-static {v0, v2, v0, v4}, LM/d0;->l(Lcom/ex/auto/MainActivity;ILcom/ex/auto/MainActivity;I)V

    return-void

    :cond_29
    const-string v0, "binding"

    invoke-static {v0}, LI0/f;->h(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :catchall_3
    move-exception v0

    monitor-exit v2

    throw v0

    :pswitch_10
    iget-object v0, v1, LT/h3;->b:Lcom/ex/auto/MainActivity;

    iget-boolean v2, v0, Lcom/ex/auto/MainActivity;->P:Z

    xor-int/lit8 v3, v2, 0x1

    iput-boolean v3, v0, Lcom/ex/auto/MainActivity;->P:Z

    iget-object v3, v0, Lcom/ex/auto/MainActivity;->t:LU/a;

    const-string v4, "binding"

    if-eqz v3, :cond_2e

    if-nez v2, :cond_2a

    const/4 v9, 0x0

    goto :goto_9

    :cond_2a
    const/16 v9, 0x8

    :goto_9
    iget-object v2, v3, LU/a;->s1:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, v0, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v2, :cond_2d

    iget-boolean v3, v0, Lcom/ex/auto/MainActivity;->P:Z

    if-eqz v3, :cond_2b

    const-string v3, "\ud83d\udccb  Ocultar log"

    goto :goto_a

    :cond_2b
    const-string v3, "\ud83d\udccb  Mostrar log"

    :goto_a
    iget-object v2, v2, LU/a;->x0:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean v2, v0, Lcom/ex/auto/MainActivity;->P:Z

    if-eqz v2, :cond_2c

    invoke-virtual {v0}, Lcom/ex/auto/MainActivity;->u1()V

    :cond_2c
    return-void

    :cond_2d
    invoke-static {v4}, LI0/f;->h(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_2e
    const/4 v0, 0x0

    invoke-static {v4}, LI0/f;->h(Ljava/lang/String;)V

    throw v0

    :pswitch_11
    iget-object v0, v1, LT/h3;->b:Lcom/ex/auto/MainActivity;

    iget-object v2, v0, Lcom/ex/auto/MainActivity;->t:LU/a;

    const-string v3, "binding"

    if-eqz v2, :cond_30

    iget-object v2, v2, LU/a;->l:Landroid/widget/Button;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/view/View;->setEnabled(Z)V

    iget-object v2, v0, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v2, :cond_2f

    const v3, 0x7f0f0024

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v2, v2, LU/a;->w2:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v2, LT/U1;

    invoke-direct {v2, v8, v0}, LT/U1;-><init>(ILcom/ex/auto/MainActivity;)V

    iget-object v0, v0, Lcom/ex/auto/MainActivity;->w:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_2f
    invoke-static {v3}, LI0/f;->h(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_30
    const/4 v0, 0x0

    invoke-static {v3}, LI0/f;->h(Ljava/lang/String;)V

    throw v0

    :pswitch_12
    sget v0, Lcom/ex/auto/MainActivity;->u0:I

    iget-object v0, v1, LT/h3;->b:Lcom/ex/auto/MainActivity;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/ex/auto/MainActivity;->L1(I)V

    return-void

    :pswitch_13
    sget v0, Lcom/ex/auto/MainActivity;->u0:I

    iget-object v0, v1, LT/h3;->b:Lcom/ex/auto/MainActivity;

    invoke-virtual {v0}, Lcom/ex/auto/MainActivity;->V()V

    return-void

    :pswitch_14
    sget v0, Lcom/ex/auto/MainActivity;->u0:I

    iget-object v0, v1, LT/h3;->b:Lcom/ex/auto/MainActivity;

    invoke-virtual {v0}, Lcom/ex/auto/MainActivity;->W()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
