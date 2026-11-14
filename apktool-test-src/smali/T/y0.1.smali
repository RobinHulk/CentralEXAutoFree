.class public final synthetic LT/y0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/ex/auto/MainActivity;LT/k3;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x4

    iput v0, p0, LT/y0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LT/y0;->b:Ljava/lang/Object;

    iput-object p2, p0, LT/y0;->e:Ljava/lang/Object;

    iput-object p3, p0, LT/y0;->c:Ljava/lang/Object;

    iput-object p4, p0, LT/y0;->d:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 2
    iput p5, p0, LT/y0;->a:I

    iput-object p1, p0, LT/y0;->b:Ljava/lang/Object;

    iput-object p2, p0, LT/y0;->c:Ljava/lang/Object;

    iput-object p3, p0, LT/y0;->d:Ljava/lang/Object;

    iput-object p4, p0, LT/y0;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/ex/auto/MainActivity;Ljava/lang/String;LH0/a;)V
    .locals 1

    .line 3
    const/4 v0, 0x5

    iput v0, p0, LT/y0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LT/y0;->c:Ljava/lang/Object;

    iput-object p2, p0, LT/y0;->b:Ljava/lang/Object;

    iput-object p3, p0, LT/y0;->d:Ljava/lang/Object;

    iput-object p4, p0, LT/y0;->e:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 22

    move-object/from16 v1, p0

    const-string v0, "binding"

    const/16 v3, 0xc

    const-string v4, "getString(...)"

    const/16 v6, 0xe

    const/4 v7, 0x1

    const/4 v8, 0x0

    iget v9, v1, LT/y0;->a:I

    packed-switch v9, :pswitch_data_0

    iget-object v0, v1, LT/y0;->b:Ljava/lang/Object;

    check-cast v0, Lcom/ex/auto/TempBattPillFloaterService;

    iget-object v2, v1, LT/y0;->c:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Float;

    iput-object v2, v0, Lcom/ex/auto/TempBattPillFloaterService;->h:Ljava/lang/Float;

    iget-object v2, v1, LT/y0;->d:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Float;

    iput-object v2, v0, Lcom/ex/auto/TempBattPillFloaterService;->i:Ljava/lang/Float;

    invoke-virtual {v0}, Lcom/ex/auto/TempBattPillFloaterService;->f()V

    iget-object v0, v0, Lcom/ex/auto/TempBattPillFloaterService;->e:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    iget-object v4, v1, LT/y0;->e:Ljava/lang/Object;

    check-cast v4, LT/H4;

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :pswitch_0
    iget-object v0, v1, LT/y0;->b:Ljava/lang/Object;

    check-cast v0, LT/x4;

    iget-object v2, v1, LT/y0;->c:Ljava/lang/Object;

    check-cast v2, Lcom/ex/auto/SplitFloaterService;

    iget-object v3, v1, LT/y0;->d:Ljava/lang/Object;

    check-cast v3, LT/y4;

    iget-object v5, v1, LT/y0;->e:Ljava/lang/Object;

    check-cast v5, LT/x4;

    sget-object v6, Lcom/ex/auto/SplitFloaterService;->v:Lcom/ex/auto/SplitFloaterService;

    sget-object v6, LT/z4;->a:LI0/l;

    invoke-virtual {v2, v3}, Lcom/ex/auto/SplitFloaterService;->d(LT/y4;)LT/w4;

    move-result-object v6

    invoke-static {v0, v6}, LT/z4;->j(LT/x4;LT/w4;)Z

    move-result v0

    sget-object v6, LT/z4;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/ex/auto/SplitFloaterService;->e(LT/y4;)LT/w4;

    move-result-object v3

    invoke-static {v5, v3}, LT/z4;->j(LT/x4;LT/w4;)Z

    move-result v3

    sget-object v5, LT/z4;->f:Ljava/lang/String;

    iput-boolean v8, v2, Lcom/ex/auto/SplitFloaterService;->o:Z

    iget-object v7, v2, Lcom/ex/auto/SplitFloaterService;->i:Landroid/os/Handler;

    new-instance v9, LT/t4;

    invoke-direct {v9, v2, v8}, LT/t4;-><init>(Lcom/ex/auto/SplitFloaterService;I)V

    invoke-virtual {v7, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    if-eqz v0, :cond_0

    if-nez v3, :cond_2

    :cond_0
    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move-object v6, v5

    :goto_0
    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v0

    const v3, 0x7f0f02dd

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lcom/ex/auto/SplitFloaterService;->g(Ljava/lang/String;)V

    :cond_2
    return-void

    :pswitch_1
    iget-object v0, v1, LT/y0;->b:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lcom/ex/auto/MainActivity;

    iget-object v0, v1, LT/y0;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v3, v1, LT/y0;->d:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v4, v1, LT/y0;->e:Ljava/lang/Object;

    check-cast v4, Ljava/io/File;

    sget v5, Lcom/ex/auto/MainActivity;->u0:I

    const-string v5, "Update"

    const-string v6, "outra variante baixada e guardada em cache: "

    const-string v7, "ca_fix "

    :try_start_0
    invoke-virtual {v2, v0, v3}, Lcom/ex/auto/MainActivity;->p0(Ljava/lang/String;Ljava/lang/String;)LT/k3;

    move-result-object v9

    iget-object v10, v9, LT/k3;->a:Ljava/lang/String;

    invoke-static {v10}, Lcom/ex/auto/MainActivity;->V0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    if-nez v14, :cond_3

    goto :goto_1

    :cond_3
    new-instance v15, Ljava/io/File;

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v10

    const-string v11, "ca_fix-outra-variante"

    invoke-direct {v15, v10, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object v10, v9, LT/k3;->b:Ljava/lang/String;

    invoke-virtual {v7, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const/16 v17, 0x0

    const/16 v18, 0xc8

    const/4 v13, 0x0

    const/16 v16, 0x2

    const/16 v19, 0x0

    move-object v9, v2

    move-object v11, v15

    move-object/from16 v20, v15

    move/from16 v15, v16

    move-object/from16 v16, v19

    invoke-static/range {v9 .. v18}, Lcom/ex/auto/MainActivity;->j0(Lcom/ex/auto/MainActivity;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILH0/a;LH0/l;I)V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    const-string v9, "getAbsolutePath(...)"

    invoke-static {v4, v9}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v9, v20

    invoke-virtual {v2, v9, v4, v7, v8}, Lcom/ex/auto/MainActivity;->f2(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Z)V

    sget-object v4, LT/L3;->a:LT/L3;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0x2f

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, LT/L3;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v4, "outra variante ("

    const-string v6, ") n\u00e3o baixou: "

    invoke-static {v4, v3, v6}, LM/d0;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v5, v0}, Lcom/ex/auto/MainActivity;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    :pswitch_2
    sget v0, Lcom/ex/auto/MainActivity;->u0:I

    const-string v0, "Success"

    iget-object v2, v1, LT/y0;->c:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v2, v0, v7}, LO0/j;->x0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    iget-object v3, v1, LT/y0;->b:Ljava/lang/Object;

    check-cast v3, Lcom/ex/auto/MainActivity;

    if-eqz v0, :cond_4

    const v0, 0x7f0f009e

    invoke-virtual {v3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_4
    const v0, 0x7f0f009d

    invoke-virtual {v3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-static {v0}, LI0/f;->b(Ljava/lang/Object;)V

    invoke-static {v3, v0, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "pm uninstall "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v1, LT/y0;->d:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Apps"

    invoke-virtual {v3, v2, v0}, Lcom/ex/auto/MainActivity;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, LT/y0;->e:Ljava/lang/Object;

    check-cast v0, LH0/a;

    invoke-interface {v0}, LH0/a;->a()Ljava/lang/Object;

    return-void

    :pswitch_3
    const-string v0, "/data/local/tmp/ca_fix-update.apk"

    iget-object v4, v1, LT/y0;->b:Ljava/lang/Object;

    check-cast v4, Lcom/ex/auto/MainActivity;

    iget-object v9, v1, LT/y0;->e:Ljava/lang/Object;

    check-cast v9, LT/k3;

    iget-object v10, v1, LT/y0;->c:Ljava/lang/Object;

    move-object v15, v10

    check-cast v15, Ljava/lang/String;

    iget-object v10, v1, LT/y0;->d:Ljava/lang/Object;

    move-object v14, v10

    check-cast v14, Ljava/lang/String;

    sget v10, Lcom/ex/auto/MainActivity;->u0:I

    new-instance v13, LI0/i;

    invoke-direct {v13}, Ljava/lang/Object;-><init>()V

    :try_start_1
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, LT/Y;->C()Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x1f40

    invoke-virtual {v4, v11, v10}, Lcom/ex/auto/MainActivity;->C1(ILjava/lang/String;)Ljava/lang/String;

    iget-object v10, v9, LT/k3;->b:Ljava/lang/String;

    new-instance v12, LT/E2;

    const/16 v9, 0xb

    invoke-direct {v12, v9, v4}, LT/E2;-><init>(ILcom/ex/auto/MainActivity;)V

    new-instance v11, Ljava/io/File;

    invoke-virtual {v4}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v9

    const-string v5, "ca_fix-update-staging.apk"

    invoke-direct {v11, v9, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v5, LT/i2;

    invoke-direct {v5, v3, v4}, LT/i2;-><init>(ILcom/ex/auto/MainActivity;)V

    const-string v3, "ca_fix"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    const/16 v16, 0x0

    const/16 v18, 0x28

    const/16 v17, 0x0

    move-object v9, v4

    move-object/from16 v20, v11

    move-object/from16 v21, v12

    move-object v12, v3

    move-object v3, v13

    move-object/from16 v13, v17

    move-object v2, v14

    move-object v14, v15

    move-object v7, v15

    move/from16 v15, v16

    move-object/from16 v16, v5

    move-object/from16 v17, v21

    :try_start_2
    invoke-static/range {v9 .. v18}, Lcom/ex/auto/MainActivity;->j0(Lcom/ex/auto/MainActivity;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILH0/a;LH0/l;I)V

    const-string v5, "ca_fix"

    move-object/from16 v9, v20

    invoke-virtual {v4, v9, v0, v5, v8}, Lcom/ex/auto/MainActivity;->f2(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Z)V

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v0, "MD5"

    invoke-static {v5, v0}, Lcom/ex/auto/MainActivity;->t0(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-virtual {v4}, Lcom/ex/auto/MainActivity;->B0()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v5, "connadaptor_expected_md5"

    invoke-interface {v0, v5, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v5, "connadaptor_arquivo_versao"

    invoke-interface {v0, v5, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-virtual {v4}, Lcom/ex/auto/MainActivity;->a0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v2}, Lcom/ex/auto/MainActivity;->C0(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/ex/auto/MainActivity;->a0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v2}, Lcom/ex/auto/MainActivity;->A(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v4, Lcom/ex/auto/MainActivity;->v:Landroid/os/Handler;

    new-instance v5, LT/G2;

    invoke-direct {v5, v6, v4}, LT/G2;-><init>(ILcom/ex/auto/MainActivity;)V

    invoke-virtual {v0, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-static {}, Lcom/ex/auto/MainActivity;->a2()Ljava/lang/String;

    move-result-object v0

    const v5, 0x1d4c0

    invoke-virtual {v4, v5, v0}, Lcom/ex/auto/MainActivity;->C1(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "Falha no ADB local"

    invoke-static {v0, v5, v8}, LO0/j;->x0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v5

    if-nez v5, :cond_8

    const-string v5, "Failure \\[([A-Z_]+)"

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    const-string v7, "compile(...)"

    invoke-static {v5, v7}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    const-string v7, "matcher(...)"

    invoke-static {v5, v7}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5, v8, v0}, LA/b;->e(Ljava/util/regex/Matcher;ILjava/lang/CharSequence;)LO0/e;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-virtual {v5}, LO0/e;->a()Ljava/util/List;

    move-result-object v5

    check-cast v5, LO0/d;

    const/4 v7, 0x1

    invoke-virtual {v5, v7}, LO0/d;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    goto :goto_3

    :catch_1
    move-exception v0

    goto/16 :goto_5

    :cond_5
    const/4 v5, 0x0

    :goto_3
    if-eqz v5, :cond_7

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v7, "INSTALL_FAILED_VERSION_DOWNGRADE"

    invoke-virtual {v5, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-virtual {v4, v2}, Lcom/ex/auto/MainActivity;->d0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const v5, 0x7f0f0113

    invoke-virtual {v4, v5, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    :cond_6
    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v2

    const v5, 0x7f0f0114

    invoke-virtual {v4, v5, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_4
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    const/4 v2, 0x1

    iput-boolean v2, v3, LI0/i;->a:Z

    const-string v2, "BIND_ATIVO=1"

    invoke-static {v0, v2, v8}, LO0/j;->x0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v2

    iput-boolean v2, v4, Lcom/ex/auto/MainActivity;->n0:Z

    invoke-static {v0}, LO0/j;->X0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const v2, 0x7f0f00cb

    invoke-virtual {v4, v2, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_8
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-static {v0}, LO0/j;->X0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_9
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    new-instance v2, Ljava/lang/IllegalStateException;

    const/16 v5, 0x8

    invoke-static {v5, v7}, LO0/j;->V0(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v0}, LO0/j;->V0(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v7, v0}, [Ljava/lang/Object;

    move-result-object v0

    const v5, 0x7f0f0205

    invoke-virtual {v4, v5, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :catch_2
    move-exception v0

    move-object v3, v13

    :goto_5
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_a

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    :cond_a
    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v0

    const v2, 0x7f0f0112

    invoke-virtual {v4, v2, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_6
    invoke-static {v0}, LI0/f;->b(Ljava/lang/Object;)V

    iget-object v2, v4, Lcom/ex/auto/MainActivity;->v:Landroid/os/Handler;

    new-instance v5, LT/z;

    invoke-direct {v5, v4, v0, v3, v6}, LT/z;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v2, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_4
    iget-object v2, v1, LT/y0;->b:Ljava/lang/Object;

    check-cast v2, Lcom/ex/auto/MainActivity;

    iget-object v3, v2, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v3, :cond_f

    iget-object v3, v3, LU/a;->l:Landroid/widget/Button;

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/view/View;->setEnabled(Z)V

    iget-object v3, v1, LT/y0;->d:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v5, v1, LT/y0;->c:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    if-eqz v5, :cond_c

    invoke-virtual {v5, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    const v3, 0x7f0f0025

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v4}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, v2, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v4, :cond_b

    iget-object v0, v4, LU/a;->w2:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v2, v3, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_8

    :cond_b
    invoke-static {v0}, LI0/f;->h(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_c
    if-eqz v5, :cond_d

    const/16 v4, 0x8

    invoke-static {v4, v5}, LO0/j;->V0(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v4

    const v5, 0x7f0f01ff

    invoke-virtual {v2, v5, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_7

    :cond_d
    const v4, 0x7f0f00bc

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    :goto_7
    invoke-static {v4}, LI0/f;->b(Ljava/lang/Object;)V

    iget-object v5, v2, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v5, :cond_e

    const v0, 0x7f0f023e

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v2, v0, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v5, v5, LU/a;->w2:Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, LT/j1;

    invoke-direct {v0, v2}, LT/j1;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0f0327

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v0, LT/j1;->b:Ljava/lang/Object;

    check-cast v6, Le/e;

    iput-object v5, v6, Le/e;->d:Ljava/lang/CharSequence;

    const/16 v5, 0x8

    invoke-static {v5, v3}, LO0/j;->V0(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    filled-new-array {v5, v4}, [Ljava/lang/Object;

    move-result-object v4

    const v5, 0x7f0f00e4

    invoke-virtual {v2, v5, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v6, Le/e;->f:Ljava/lang/CharSequence;

    const v4, 0x7f0f0031

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, LT/h;

    iget-object v6, v1, LT/y0;->e:Ljava/lang/Object;

    check-cast v6, LT/j3;

    const/4 v7, 0x1

    invoke-direct {v5, v2, v6, v3, v7}, LT/h;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, v4, v5}, LT/j1;->h(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    const v3, 0x7f0f002f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, LT/j1;->f(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0}, LT/j1;->j()Le/i;

    :goto_8
    return-void

    :cond_e
    const/4 v3, 0x0

    invoke-static {v0}, LI0/f;->h(Ljava/lang/String;)V

    throw v3

    :cond_f
    const/4 v3, 0x0

    invoke-static {v0}, LI0/f;->h(Ljava/lang/String;)V

    throw v3

    :pswitch_5
    iget-object v2, v1, LT/y0;->b:Ljava/lang/Object;

    check-cast v2, Lcom/ex/auto/MainActivity;

    iget-object v3, v2, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v3, :cond_12

    iget-object v4, v1, LT/y0;->c:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Float;

    if-eqz v4, :cond_10

    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v4, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    const-string v5, "%.1fV"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_9

    :cond_10
    const-string v4, "n/d"

    :goto_9
    iget-object v3, v3, LU/a;->v2:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v2, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v3, :cond_11

    const v0, 0x7f0f00cc

    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v3, v3, LU/a;->S2:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v1, LT/y0;->d:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    iget-object v3, v1, LT/y0;->e:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v2, v0, v3}, Lcom/ex/auto/MainActivity;->j1(Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void

    :cond_11
    invoke-static {v0}, LI0/f;->h(Ljava/lang/String;)V

    const/4 v2, 0x0

    throw v2

    :cond_12
    const/4 v2, 0x0

    invoke-static {v0}, LI0/f;->h(Ljava/lang/String;)V

    throw v2

    :pswitch_6
    iget-object v0, v1, LT/y0;->b:Ljava/lang/Object;

    check-cast v0, Lcom/ex/auto/HomeFloatingWidgetsService;

    iget-object v2, v0, Lcom/ex/auto/HomeFloatingWidgetsService;->D:Landroid/widget/FrameLayout;

    iget-object v4, v1, LT/y0;->c:Ljava/lang/Object;

    check-cast v4, Landroid/widget/FrameLayout;

    if-eq v2, v4, :cond_13

    goto/16 :goto_e

    :cond_13
    iget-object v2, v1, LT/y0;->d:Ljava/lang/Object;

    check-cast v2, Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v4, v1, LT/y0;->e:Ljava/lang/Object;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    const/high16 v7, 0x41700000    # 15.0f

    if-eqz v5, :cond_14

    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v4, "N\u00e3o foi poss\u00edvel ler o uso de CPU."

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v4, 0x7f050040

    invoke-virtual {v0, v4}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto/16 :goto_e

    :cond_14
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LT/B1;

    new-instance v9, Landroid/widget/LinearLayout;

    invoke-direct {v9, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v11, -0x1

    const/4 v12, -0x2

    invoke-direct {v10, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v13, 0xa

    invoke-virtual {v0, v13}, Lcom/ex/auto/HomeFloatingWidgetsService;->q(I)I

    move-result v13

    iput v13, v10, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v9, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v10, Landroid/widget/LinearLayout;

    invoke-direct {v10, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v10, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v13, 0x10

    invoke-virtual {v10, v13}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v13, Landroid/widget/ImageView;

    invoke-direct {v13, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iget-object v14, v5, LT/B1;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 v14, 0x1e

    invoke-virtual {v0, v14}, Lcom/ex/auto/HomeFloatingWidgetsService;->q(I)I

    move-result v14

    new-instance v15, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v15, v14, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3}, Lcom/ex/auto/HomeFloatingWidgetsService;->q(I)I

    move-result v14

    invoke-virtual {v15, v14}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    invoke-virtual {v13, v15}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v10, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v13, Landroid/widget/TextView;

    invoke-direct {v13, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iget-object v14, v5, LT/B1;->b:Ljava/lang/String;

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v14, 0x7f05003f

    invoke-virtual {v0, v14}, Landroid/content/Context;->getColor(I)I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v13, v7}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setMaxLines(I)V

    sget-object v14, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    new-instance v14, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v15, 0x3f800000    # 1.0f

    invoke-direct {v14, v8, v12, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v13, v14}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v10, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v12, Landroid/widget/TextView;

    invoke-direct {v12, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iget v13, v5, LT/B1;->d:F

    const/high16 v14, 0x41200000    # 10.0f

    cmpl-float v14, v13, v14

    if-ltz v14, :cond_15

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v3, 0x25

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v14, 0x1

    goto :goto_b

    :cond_15
    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const/4 v14, 0x1

    invoke-static {v3, v14}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    const-string v8, "%.1f%%"

    invoke-static {v8, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :goto_b
    invoke-virtual {v12, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v3, 0x7f05002e

    invoke-virtual {v0, v3}, Landroid/content/Context;->getColor(I)I

    move-result v8

    invoke-virtual {v12, v8}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v8, 0x41800000    # 16.0f

    invoke-virtual {v12, v8}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v12}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v8

    invoke-virtual {v12, v8, v14}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    invoke-virtual {v10, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-boolean v8, v5, LT/B1;->e:Z

    const/16 v12, 0x1c

    if-nez v8, :cond_16

    new-instance v8, Landroid/widget/TextView;

    invoke-direct {v8, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v14, "\u2715"

    invoke-virtual {v8, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 v14, 0x11

    invoke-virtual {v8, v14}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v0, v12}, Lcom/ex/auto/HomeFloatingWidgetsService;->q(I)I

    move-result v12

    new-instance v14, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v14, v12, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v6}, Lcom/ex/auto/HomeFloatingWidgetsService;->q(I)I

    move-result v12

    invoke-virtual {v14, v12}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-virtual {v8, v14}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v12, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v12}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v14, 0x1

    invoke-virtual {v12, v14}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    const v7, -0x4cd9e2

    invoke-virtual {v12, v7}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    invoke-virtual {v8, v12}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v7, LT/u;

    invoke-direct {v7, v0, v14, v5}, LT/u;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {v8, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v10, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_c

    :cond_16
    const/4 v14, 0x1

    new-instance v5, Landroid/view/View;

    invoke-direct {v5, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v12}, Lcom/ex/auto/HomeFloatingWidgetsService;->q(I)I

    move-result v8

    invoke-virtual {v0, v6}, Lcom/ex/auto/HomeFloatingWidgetsService;->q(I)I

    move-result v12

    add-int/2addr v12, v8

    invoke-virtual {v0, v14}, Lcom/ex/auto/HomeFloatingWidgetsService;->q(I)I

    move-result v8

    invoke-direct {v7, v12, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v10, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :goto_c
    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const/4 v5, 0x0

    const/high16 v7, 0x42c80000    # 100.0f

    invoke-static {v13, v5, v7}, LA/b;->n(FFF)F

    move-result v8

    cmpl-float v10, v8, v5

    if-lez v10, :cond_18

    cmpg-float v5, v8, v15

    if-gez v5, :cond_17

    goto :goto_d

    :cond_17
    move v15, v8

    :goto_d
    move v5, v15

    :cond_18
    new-instance v8, Landroid/widget/LinearLayout;

    invoke-direct {v8, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v8, v7}, Landroid/widget/LinearLayout;->setWeightSum(F)V

    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v12, 0x6

    invoke-virtual {v0, v12}, Lcom/ex/auto/HomeFloatingWidgetsService;->q(I)I

    move-result v13

    invoke-direct {v10, v11, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v12}, Lcom/ex/auto/HomeFloatingWidgetsService;->q(I)I

    move-result v12

    iput v12, v10, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v8, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v10, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v10}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v12, 0x3

    invoke-virtual {v0, v12}, Lcom/ex/auto/HomeFloatingWidgetsService;->q(I)I

    move-result v13

    int-to-float v13, v13

    invoke-virtual {v10, v13}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    const v13, 0x7f05003e

    invoke-virtual {v0, v13}, Landroid/content/Context;->getColor(I)I

    move-result v13

    invoke-virtual {v10, v13}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    invoke-virtual {v8, v10}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v10, Landroid/view/View;

    invoke-direct {v10, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v13, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v13}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-virtual {v0, v12}, Lcom/ex/auto/HomeFloatingWidgetsService;->q(I)I

    move-result v12

    int-to-float v12, v12

    invoke-virtual {v13, v12}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    invoke-virtual {v0, v3}, Landroid/content/Context;->getColor(I)I

    move-result v3

    invoke-virtual {v13, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    invoke-virtual {v10, v13}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v12, 0x0

    invoke-direct {v3, v12, v11, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v10, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v8, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    cmpg-float v3, v5, v7

    if-gez v3, :cond_19

    new-instance v3, Landroid/view/View;

    invoke-direct {v3, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    sub-float/2addr v7, v5

    invoke-direct {v10, v12, v11, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v8, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_19
    invoke-virtual {v9, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v2, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    move v8, v12

    const/16 v3, 0xc

    const/high16 v7, 0x41700000    # 15.0f

    goto/16 :goto_a

    :cond_1a
    :goto_e
    return-void

    :pswitch_7
    sget-object v0, Lcom/ex/auto/CentralWatchdogService;->d2:[I

    sget-object v0, LT/Z;->a:Ljava/lang/String;

    iget-object v0, v1, LT/y0;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v2, v1, LT/y0;->b:Ljava/lang/Object;

    check-cast v2, Lcom/ex/auto/CentralWatchdogService;

    iget-object v3, v1, LT/y0;->d:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-static {v2, v0, v3}, LT/Z;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    sget-object v4, LT/L3;->a:LT/L3;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "CarPlay identity ("

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v1, LT/y0;->e:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    const-string v7, "): "

    const-string v8, " ("

    invoke-static {v5, v6, v7, v0, v8}, LM/d0;->q(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-nez v3, :cond_1b

    const-string v3, "?"

    :cond_1b
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ") \u2192 "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_1c

    const-string v0, "aceita"

    goto :goto_f

    :cond_1c
    const-string v0, "recusada"

    :goto_f
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "CentralWatchdog"

    invoke-virtual {v4, v2, v0}, LT/L3;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

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
