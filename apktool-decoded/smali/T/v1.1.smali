.class public final synthetic LT/v1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/content/ContextWrapper;Ljava/lang/String;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p4, p0, LT/v1;->a:I

    iput-object p1, p0, LT/v1;->c:Ljava/lang/Object;

    iput-object p2, p0, LT/v1;->d:Ljava/lang/Object;

    iput-object p3, p0, LT/v1;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Landroid/app/Service;Ljava/lang/Object;I)V
    .locals 0

    .line 2
    iput p4, p0, LT/v1;->a:I

    iput-object p1, p0, LT/v1;->c:Ljava/lang/Object;

    iput-object p2, p0, LT/v1;->b:Ljava/lang/Object;

    iput-object p3, p0, LT/v1;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 18

    move-object/from16 v1, p0

    const/4 v0, 0x0

    const/4 v2, 0x1

    iget-object v3, v1, LT/v1;->d:Ljava/lang/Object;

    iget-object v4, v1, LT/v1;->b:Ljava/lang/Object;

    iget-object v5, v1, LT/v1;->c:Ljava/lang/Object;

    iget v6, v1, LT/v1;->a:I

    packed-switch v6, :pswitch_data_0

    sget-object v0, Lcom/ex/auto/QuickAccessFloaterService;->j0:Ljava/util/List;

    check-cast v5, LI0/l;

    iget-object v0, v5, LI0/l;->b:Ljava/lang/Object;

    if-eqz v0, :cond_0

    check-cast v0, Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const-wide/16 v5, 0x190

    check-cast v4, Lcom/ex/auto/QuickAccessFloaterService;

    invoke-virtual {v4, v5, v6}, Lcom/ex/auto/QuickAccessFloaterService;->M(J)V

    check-cast v3, LH0/a;

    invoke-interface {v3}, LH0/a;->a()Ljava/lang/Object;

    return-void

    :cond_0
    const-string v0, "dlg"

    invoke-static {v0}, LI0/f;->h(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :pswitch_0
    sget-object v0, Lcom/ex/auto/QuickAccessFloaterService;->j0:Ljava/util/List;

    check-cast v5, Lcom/ex/auto/QuickAccessFloaterService;

    check-cast v3, Ljava/lang/String;

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v5, v4, v3}, Lcom/ex/auto/QuickAccessFloaterService;->F(Landroid/widget/TextView;Ljava/lang/String;)V

    return-void

    :pswitch_1
    sget v6, Lcom/ex/auto/MainActivity;->u0:I

    check-cast v5, Lcom/ex/auto/MainActivity;

    invoke-virtual {v5}, Lcom/ex/auto/MainActivity;->B0()Landroid/content/SharedPreferences;

    move-result-object v6

    check-cast v3, Ljava/lang/String;

    invoke-interface {v6, v3, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    xor-int/2addr v0, v2

    invoke-static {v5, v3, v0}, LM/d0;->m(Lcom/ex/auto/MainActivity;Ljava/lang/String;Z)V

    check-cast v4, LI0/l;

    invoke-static {v5, v3, v4}, Lcom/ex/auto/MainActivity;->N(Lcom/ex/auto/MainActivity;Ljava/lang/String;LI0/l;)V

    sget-object v0, Lcom/ex/auto/HomeFloatingWidgetsService;->Q:Ljava/util/List;

    invoke-static {v5}, LT/Y;->E(Landroid/content/Context;)V

    return-void

    :pswitch_2
    sget-object v6, Lcom/ex/auto/HomeFloatingWidgetsService;->Q:Ljava/util/List;

    check-cast v5, Ly/f;

    invoke-virtual {v5}, Ly/f;->e()Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-virtual {v5}, Ly/f;->i()Z

    move-result v6

    xor-int/lit8 v8, v6, 0x1

    iget-object v9, v5, Ly/f;->f:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    if-nez v9, :cond_2

    :cond_1
    move v0, v2

    goto/16 :goto_4

    :cond_2
    const-string v12, "setGroupMute"

    const-string v13, "setGroupMuteState"

    filled-new-array {v12, v13}, [Ljava/lang/String;

    move-result-object v12

    move v13, v0

    :goto_0
    const/4 v14, 0x2

    if-ge v13, v14, :cond_1

    aget-object v15, v12, v13

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v11

    const-string v7, "array"

    invoke-static {v11, v7}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move v7, v0

    :goto_1
    array-length v0, v11

    if-ge v7, v0, :cond_3

    move v0, v2

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_8

    add-int/lit8 v0, v7, 0x1

    :try_start_0
    aget-object v7, v11, v7
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v15}, LI0/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v2

    move/from16 v17, v0

    :try_start_1
    array-length v0, v2

    if-ne v0, v14, :cond_4

    const/4 v0, 0x0

    aget-object v14, v2, v0

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v14, v0}, LI0/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    aget-object v14, v2, v0

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v14, v0}, LI0/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, v5, Ly/f;->c:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v7, v9, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_4
    array-length v0, v2

    const/4 v14, 0x3

    if-ne v0, v14, :cond_5

    const/4 v0, 0x2

    aget-object v14, v2, v0

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v14, v0}, LI0/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, v5, Ly/f;->c:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    filled-new-array {v10, v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v7, v9, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_5
    array-length v0, v2

    const/4 v14, 0x3

    if-ne v0, v14, :cond_6

    const/4 v0, 0x1

    aget-object v2, v2, v0

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v0}, LI0/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget v0, v5, Ly/f;->c:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    filled-new-array {v0, v2, v10}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v7, v9, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    if-eqz v6, :cond_e

    const/4 v0, -0x1

    iput v0, v5, Ly/f;->d:I

    goto :goto_7

    :catchall_0
    :cond_6
    move/from16 v7, v17

    const/4 v2, 0x1

    const/4 v14, 0x2

    goto/16 :goto_1

    :cond_7
    move/from16 v17, v0

    move/from16 v7, v17

    const/4 v2, 0x1

    goto/16 :goto_1

    :catch_0
    move-exception v0

    move-object v2, v0

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    move v0, v2

    add-int/2addr v13, v0

    const/4 v0, 0x0

    goto/16 :goto_0

    :goto_4
    if-eqz v6, :cond_b

    iget v2, v5, Ly/f;->d:I

    if-lez v2, :cond_a

    :cond_9
    :goto_5
    const/4 v0, -0x1

    goto :goto_6

    :cond_a
    invoke-virtual {v5}, Ly/f;->d()I

    move-result v2

    const/4 v6, 0x3

    div-int/2addr v2, v6

    if-ge v2, v0, :cond_9

    move v2, v0

    goto :goto_5

    :goto_6
    iput v0, v5, Ly/f;->d:I

    invoke-virtual {v5, v2}, Ly/f;->o(I)V

    goto :goto_7

    :cond_b
    invoke-virtual {v5}, Ly/f;->f()I

    move-result v2

    if-ge v2, v0, :cond_c

    move v2, v0

    :cond_c
    iput v2, v5, Ly/f;->d:I

    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Ly/f;->o(I)V

    goto :goto_7

    :cond_d
    :try_start_2
    iget-object v2, v5, Ly/f;->b:Ljava/lang/Object;

    check-cast v2, Landroid/media/AudioManager;

    const/16 v6, 0x65

    const/4 v7, 0x3

    invoke-virtual {v2, v7, v6, v0}, Landroid/media/AudioManager;->adjustStreamVolume(III)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    :cond_e
    :goto_7
    check-cast v3, Landroid/widget/ImageView;

    invoke-static {v5, v3}, Lcom/ex/auto/HomeFloatingWidgetsService;->l(Ly/f;Landroid/widget/ImageView;)V

    check-cast v4, Lcom/ex/auto/HomeFloatingWidgetsService;

    iget-object v0, v4, Lcom/ex/auto/HomeFloatingWidgetsService;->I:Landroid/widget/SeekBar;

    if-eqz v0, :cond_f

    invoke-virtual {v5}, Ly/f;->f()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    :cond_f
    return-void

    :pswitch_3
    check-cast v5, Landroid/content/Intent;

    check-cast v4, Lcom/ex/auto/HomeFloatingWidgetsService;

    sget-object v0, Lcom/ex/auto/HomeFloatingWidgetsService;->Q:Ljava/util/List;

    const/high16 v0, 0x10000000

    :try_start_3
    invoke-virtual {v5, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v4, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_8

    :catch_1
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "launch "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "HomeFloatingWidgets"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_8
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
