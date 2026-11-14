.class public final LT/k4;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/ex/auto/QuickAccessFloaterService;


# direct methods
.method public synthetic constructor <init>(Lcom/ex/auto/QuickAccessFloaterService;I)V
    .locals 0

    iput p2, p0, LT/k4;->a:I

    iput-object p1, p0, LT/k4;->b:Lcom/ex/auto/QuickAccessFloaterService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 24

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    const-string v4, "dlg"

    const-string v6, "getString(...)"

    const/4 v10, -0x1

    const-string v11, "null cannot be cast to non-null type android.media.AudioManager"

    const-string v12, "audio"

    const/4 v13, 0x4

    const/4 v14, 0x1

    const-string v15, "direction"

    const-string v2, "QuickAccessFloater"

    const/4 v3, 0x0

    iget v5, v1, LT/k4;->a:I

    packed-switch v5, :pswitch_data_0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v15, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "threeVSwipeReceiver: broadcast recebido, direction="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_4

    sget-object v4, Lcom/ex/auto/QuickAccessFloaterService;->j0:Ljava/util/List;

    iget-object v4, v1, LT/k4;->b:Lcom/ex/auto/QuickAccessFloaterService;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v5, "Gesto 3 dedos: volume "

    :try_start_0
    invoke-virtual {v4, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6, v11}, LI0/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Landroid/media/AudioManager;

    if-lez v0, :cond_1

    move v10, v14

    :cond_1
    const/4 v7, 0x5

    const/4 v8, 0x3

    invoke-virtual {v6, v8, v10, v7}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    invoke-virtual {v6, v8}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v7

    invoke-virtual {v6, v8}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    if-lez v0, :cond_2

    const-string v9, "\ud83d\udd0a"

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_3

    :cond_2
    const-string v9, "\ud83d\udd09"

    :goto_1
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " Volume: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v9, 0x2f

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-lez v0, :cond_3

    const-string v0, "+"

    goto :goto_2

    :cond_3
    const-string v0, "-"

    :goto_2
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ("

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v0, 0x29

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :goto_3
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "adjustMediaVolume: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v3, v2}, LM/d0;->n(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_4
    :goto_4
    return-void

    :pswitch_0
    if-eqz v0, :cond_5

    invoke-virtual {v0, v15, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    goto :goto_5

    :cond_5
    move v0, v3

    :goto_5
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "threeHSwipeReceiver: broadcast recebido, direction="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_9

    sget-object v4, Lcom/ex/auto/QuickAccessFloaterService;->j0:Ljava/util/List;

    iget-object v4, v1, LT/k4;->b:Lcom/ex/auto/QuickAccessFloaterService;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v5, "Gesto 3 dedos: "

    :try_start_1
    invoke-virtual {v4, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6, v11}, LI0/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Landroid/media/AudioManager;

    if-lez v0, :cond_6

    const/16 v7, 0x57

    goto :goto_6

    :cond_6
    const/16 v7, 0x58

    :goto_6
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    new-instance v15, Landroid/view/KeyEvent;

    const/4 v13, 0x0

    const/16 v18, 0x0

    move-object v8, v15

    move-wide/from16 v9, v16

    move-wide/from16 v11, v16

    move v14, v7

    move-object v3, v15

    move/from16 v15, v18

    invoke-direct/range {v8 .. v15}, Landroid/view/KeyEvent;-><init>(JJIII)V

    invoke-virtual {v6, v3}, Landroid/media/AudioManager;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;)V

    new-instance v3, Landroid/view/KeyEvent;

    const/4 v13, 0x1

    const/4 v15, 0x0

    move-object v8, v3

    move-wide/from16 v9, v16

    move-wide/from16 v11, v16

    move v14, v7

    invoke-direct/range {v8 .. v15}, Landroid/view/KeyEvent;-><init>(JJIII)V

    invoke-virtual {v6, v3}, Landroid/media/AudioManager;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;)V

    if-lez v0, :cond_7

    const-string v3, "\u23ed Pr\u00f3xima faixa"

    :goto_7
    const/4 v6, 0x0

    goto :goto_8

    :catch_1
    move-exception v0

    goto :goto_a

    :cond_7
    const-string v3, "\u23ee Faixa anterior"

    goto :goto_7

    :goto_8
    invoke-static {v4, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    if-lez v0, :cond_8

    const-string v0, "pr\u00f3xima faixa"

    goto :goto_9

    :cond_8
    const-string v0, "faixa anterior"

    :goto_9
    invoke-virtual {v5, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_b

    :goto_a
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "skipTrack: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v3, v2}, LM/d0;->n(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_9
    :goto_b
    return-void

    :pswitch_1
    if-eqz v0, :cond_a

    const/4 v3, 0x0

    invoke-virtual {v0, v15, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    goto :goto_c

    :cond_a
    const/4 v0, 0x0

    :goto_c
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "tempSwipeReceiver: broadcast recebido, direction="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_f

    iget-object v3, v1, LT/k4;->b:Lcom/ex/auto/QuickAccessFloaterService;

    const-string v4, "Gesto 2 dedos: temperatura "

    iget-object v5, v3, Lcom/ex/auto/QuickAccessFloaterService;->K:Landroid/car/hardware/property/CarPropertyManager;

    if-nez v5, :cond_b

    invoke-virtual {v3}, Lcom/ex/auto/QuickAccessFloaterService;->z()V

    const v0, 0x7f0f00e6

    invoke-virtual {v3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v3, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_10

    :cond_b
    :try_start_2
    iget-object v6, v3, Lcom/ex/auto/QuickAccessFloaterService;->i0:Ljava/lang/Float;

    if-eqz v6, :cond_c

    :goto_d
    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    goto :goto_e

    :catch_2
    move-exception v0

    goto :goto_f

    :cond_c
    invoke-static {v5}, LT/H1;->k(Landroid/car/hardware/property/CarPropertyManager;)Ljava/lang/Float;

    move-result-object v6

    if-eqz v6, :cond_d

    goto :goto_d

    :cond_d
    const/high16 v6, 0x41b00000    # 22.0f

    :goto_e
    int-to-float v0, v0

    add-float/2addr v0, v6

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    const/high16 v7, 0x41880000    # 17.0f

    const/high16 v8, 0x42000000    # 32.0f

    invoke-static {v0, v7, v8}, LA/b;->n(FFF)F

    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    cmpg-float v7, v0, v6

    if-nez v7, :cond_e

    goto :goto_10

    :cond_e
    const v7, 0x25401036

    :try_start_3
    invoke-virtual {v5, v7, v14, v0}, Landroid/car/hardware/property/CarPropertyManager;->setFloatProperty(IIF)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    :try_start_4
    invoke-virtual {v5, v7, v13, v0}, Landroid/car/hardware/property/CarPropertyManager;->setFloatProperty(IIF)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    :try_start_5
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    iput-object v5, v3, Lcom/ex/auto/QuickAccessFloaterService;->i0:Ljava/lang/Float;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, " -> "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const v4, 0x7f0f01a8

    invoke-virtual {v3, v4, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    invoke-static {v3, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_10

    :goto_f
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "adjustHvacTemp: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v3, v2}, LM/d0;->n(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_f
    :goto_10
    return-void

    :pswitch_2
    const-string v0, "screenOffCommandReceiver: broadcast recebido (Ei Sapo)"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/ex/auto/QuickAccessFloaterService;->j0:Ljava/util/List;

    iget-object v0, v1, LT/k4;->b:Lcom/ex/auto/QuickAccessFloaterService;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/ex/auto/QuickAccessFloaterService;->S(Z)V

    return-void

    :pswitch_3
    iget-object v0, v1, LT/k4;->b:Lcom/ex/auto/QuickAccessFloaterService;

    iget-boolean v2, v0, Lcom/ex/auto/QuickAccessFloaterService;->L:Z

    if-eqz v2, :cond_10

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, v0, Lcom/ex/auto/QuickAccessFloaterService;->P:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x5dc

    cmp-long v2, v2, v4

    if-ltz v2, :cond_10

    invoke-virtual {v0}, Lcom/ex/auto/QuickAccessFloaterService;->Z()V

    :cond_10
    return-void

    :pswitch_4
    const-string v0, "rearCameraReceiver: broadcast recebido (4 dedos)"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/ex/auto/QuickAccessFloaterService;->j0:Ljava/util/List;

    iget-object v0, v1, LT/k4;->b:Lcom/ex/auto/QuickAccessFloaterService;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_6
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    new-instance v4, Landroid/content/ComponentName;

    const-string v5, "com.ecarx.parking"

    const-string v6, "com.ecarx.parking.MainAvmActivity"

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v4, 0x10000000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const-string v0, "Gesto 4 dedos: abrindo c\u00e2mera de r\u00e9 (com.ecarx.parking/.MainAvmActivity)"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_11

    :catch_3
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "openRearCamera: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v3, v2}, LM/d0;->n(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_11
    return-void

    :pswitch_5
    const-string v0, "openFavoritesReceiver: broadcast recebido (5 dedos)"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/ex/auto/QuickAccessFloaterService;->j0:Ljava/util/List;

    iget-object v0, v1, LT/k4;->b:Lcom/ex/auto/QuickAccessFloaterService;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "showFavoriteAppsPicker: "

    :try_start_7
    invoke-static {v0}, LT/Y;->Y(Landroid/content/Context;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_12
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_12

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    const/4 v13, 0x0

    :try_start_8
    invoke-virtual {v11, v15, v13}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    const-string v13, "getApplicationInfo(...)"

    invoke-static {v7, v13}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v13, LT/m4;

    invoke-virtual {v11, v7}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v11, v7}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    const-string v9, "getApplicationIcon(...)"

    invoke-static {v7, v9}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v13, v15, v8, v7}, LT/m4;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_13

    :catch_4
    const/4 v13, 0x0

    :goto_13
    if-eqz v13, :cond_11

    :try_start_9
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_14

    :catch_5
    move-exception v0

    goto/16 :goto_18

    :cond_11
    :goto_14
    const/4 v13, 0x4

    goto :goto_12

    :cond_12
    new-instance v5, LT/E;

    const/16 v7, 0xd

    invoke-direct {v5, v7}, LT/E;-><init>(I)V

    invoke-static {v12, v5}, Lw0/i;->f0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v5

    new-instance v7, LI0/l;

    const/4 v8, 0x0

    invoke-direct {v7, v8}, LI0/l;-><init>(I)V

    new-instance v8, Landroid/widget/LinearLayout;

    invoke-direct {v8, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v14}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v9, Landroid/widget/Button;

    invoke-direct {v9, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "\u2b50 "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v13, 0x7f0f0434

    invoke-virtual {v0, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v12, 0x0

    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setAllCaps(Z)V

    const/high16 v12, 0x41800000    # 16.0f

    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setTextSize(F)V

    const v13, 0x7f05002e

    invoke-virtual {v0, v13}, Landroid/content/Context;->getColor(I)I

    move-result v13

    invoke-static {v13}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v13

    invoke-virtual {v9, v13}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    const v13, 0x7f050038

    invoke-virtual {v0, v13}, Landroid/content/Context;->getColor(I)I

    move-result v13

    invoke-virtual {v9, v13}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v13, LT/a4;

    const/4 v14, 0x0

    invoke-direct {v13, v0, v7, v14}, LT/a4;-><init>(Lcom/ex/auto/QuickAccessFloaterService;LI0/l;I)V

    invoke-virtual {v9, v13}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v14, 0x30

    invoke-virtual {v0, v14}, Lcom/ex/auto/QuickAccessFloaterService;->p(I)I

    move-result v14

    invoke-direct {v13, v10, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v10, 0xe

    invoke-virtual {v0, v10}, Lcom/ex/auto/QuickAccessFloaterService;->p(I)I

    move-result v10

    iput v10, v13, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v8, v9, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_13

    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v9, 0x7f0f018d

    invoke-virtual {v0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v9, 0x7f050042

    invoke-virtual {v0, v9}, Landroid/content/Context;->getColor(I)I

    move-result v9

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v5, v12}, Landroid/widget/TextView;->setTextSize(F)V

    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v10, 0x1da

    invoke-virtual {v0, v10}, Lcom/ex/auto/QuickAccessFloaterService;->p(I)I

    move-result v10

    const/4 v11, -0x2

    invoke-direct {v9, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v5, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_16

    :cond_13
    new-instance v9, Ljava/util/ArrayList;

    invoke-static {v5}, Lw0/k;->V(Ljava/lang/Iterable;)I

    move-result v10

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_15
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_14

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, LT/m4;

    iget-object v12, v10, LT/m4;->c:Landroid/graphics/drawable/Drawable;

    iget-object v13, v10, LT/m4;->b:Ljava/lang/String;

    new-instance v14, LT/b4;

    invoke-direct {v14, v11, v10, v0, v7}, LT/b4;-><init>(Landroid/content/pm/PackageManager;LT/m4;Lcom/ex/auto/QuickAccessFloaterService;LI0/l;)V

    const/4 v10, 0x0

    invoke-virtual {v0, v12, v13, v10, v14}, Lcom/ex/auto/QuickAccessFloaterService;->w(Landroid/graphics/drawable/Drawable;Ljava/lang/String;LH0/a;LH0/a;)Landroid/view/ViewGroup;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_15

    :cond_14
    invoke-virtual {v0, v9}, Lcom/ex/auto/QuickAccessFloaterService;->h(Ljava/util/ArrayList;)Landroid/widget/LinearLayout;

    move-result-object v5

    invoke-virtual {v8, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :goto_16
    new-instance v5, Landroid/widget/ScrollView;

    invoke-direct {v5, v0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v8}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    const/16 v8, 0x14

    invoke-virtual {v0, v8}, Lcom/ex/auto/QuickAccessFloaterService;->p(I)I

    move-result v9

    const/16 v10, 0xc

    invoke-virtual {v0, v10}, Lcom/ex/auto/QuickAccessFloaterService;->p(I)I

    move-result v10

    invoke-virtual {v0, v8}, Lcom/ex/auto/QuickAccessFloaterService;->p(I)I

    move-result v8

    const/4 v11, 0x4

    invoke-virtual {v0, v11}, Lcom/ex/auto/QuickAccessFloaterService;->p(I)I

    move-result v11

    invoke-virtual {v5, v9, v10, v8, v11}, Landroid/view/View;->setPadding(IIII)V

    new-instance v8, Landroid/app/AlertDialog$Builder;

    invoke-direct {v8, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v9, 0x7f0f018b

    invoke-virtual {v0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v6}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Lcom/ex/auto/QuickAccessFloaterService;->o(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v8, v6}, Landroid/app/AlertDialog$Builder;->setCustomTitle(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0f0032

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x0

    invoke-virtual {v5, v0, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, v7, LI0/l;->b:Ljava/lang/Object;

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_15

    const/16 v5, 0x7f6

    invoke-virtual {v0, v5}, Landroid/view/Window;->setType(I)V

    :cond_15
    iget-object v0, v7, LI0/l;->b:Ljava/lang/Object;

    if-eqz v0, :cond_19

    check-cast v0, Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_16

    const v5, 0x7f070059

    invoke-virtual {v0, v5}, Landroid/view/Window;->setBackgroundDrawableResource(I)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    :cond_16
    :try_start_a
    iget-object v0, v7, LI0/l;->b:Ljava/lang/Object;

    if-eqz v0, :cond_18

    check-cast v0, Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    iget-object v0, v7, LI0/l;->b:Ljava/lang/Object;

    if-eqz v0, :cond_17

    check-cast v0, Landroid/app/AlertDialog;

    invoke-static {v0}, Lcom/ex/auto/QuickAccessFloaterService;->n(Landroid/app/AlertDialog;)V

    goto :goto_19

    :catch_6
    move-exception v0

    goto :goto_17

    :cond_17
    invoke-static {v4}, LI0/f;->h(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_18
    invoke-static {v4}, LI0/f;->h(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6

    :goto_17
    :try_start_b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_19

    :cond_19
    invoke-static {v4}, LI0/f;->h(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_1a
    invoke-static {v4}, LI0/f;->h(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5

    :goto_18
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v4, v2}, LM/d0;->n(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_19
    return-void

    :pswitch_6
    const-string v0, "goToLastAppReceiver: broadcast recebido (3 dedos)"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/ex/auto/QuickAccessFloaterService;->j0:Ljava/util/List;

    iget-object v0, v1, LT/k4;->b:Lcom/ex/auto/QuickAccessFloaterService;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "goToLastApp: "

    :try_start_c
    const-string v5, "activity"

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    const-string v7, "null cannot be cast to non-null type android.app.ActivityManager"

    invoke-static {v5, v7}, LI0/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Landroid/app/ActivityManager;

    const-class v7, Landroid/app/ActivityManager;

    const-string v8, "getRecentTasks"

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v9, v9}, [Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    const/16 v8, 0xf

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    filled-new-array {v8, v10}, [Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v5, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    const-string v8, "null cannot be cast to non-null type kotlin.collections.List<kotlin.Any>"

    invoke-static {v7, v8}, LI0/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Ljava/util/List;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "com.flyme.auto.launcher"

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1a
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_25

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    const-string v14, "baseIntent"

    invoke-virtual {v15, v14}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    instance-of v15, v14, Landroid/content/Intent;

    if-eqz v15, :cond_1b

    check-cast v14, Landroid/content/Intent;

    goto :goto_1b

    :catch_7
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto/16 :goto_26

    :cond_1b
    const/4 v14, 0x0

    :goto_1b
    if-nez v14, :cond_1d

    :cond_1c
    :goto_1c
    const/4 v14, 0x1

    goto :goto_1a

    :cond_1d
    invoke-virtual {v14}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v14

    if-eqz v14, :cond_1e

    invoke-virtual {v14}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v14

    if-nez v14, :cond_1f

    :cond_1e
    move-object/from16 p2, v7

    goto :goto_21

    :cond_1f
    invoke-virtual {v14, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_1c

    invoke-virtual {v14, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_1c

    invoke-virtual {v11, v14}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v15
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_7

    if-nez v15, :cond_20

    goto :goto_1c

    :cond_20
    :try_start_d
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15
    :try_end_d
    .catch Ljava/lang/NoSuchFieldException; {:try_start_d .. :try_end_d} :catch_8
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_7

    move-object/from16 p2, v7

    :try_start_e
    const-string v7, "id"

    invoke-virtual {v15, v7}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7
    :try_end_e
    .catch Ljava/lang/NoSuchFieldException; {:try_start_e .. :try_end_e} :catch_9
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_7

    goto :goto_1d

    :catch_8
    move-object/from16 p2, v7

    :catch_9
    :try_start_f
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    const-string v15, "taskId"

    invoke-virtual {v7, v15}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    :goto_1d
    invoke-virtual {v7, v13}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v7
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_7

    if-ltz v7, :cond_24

    const/4 v13, 0x0

    :try_start_10
    invoke-virtual {v10, v14, v13}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v15
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_a

    goto :goto_1e

    :catch_a
    const/4 v15, 0x0

    :goto_1e
    if-eqz v15, :cond_22

    :try_start_11
    invoke-virtual {v10, v15}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_b

    if-nez v13, :cond_21

    goto :goto_1f

    :cond_21
    move-object v14, v13

    :catch_b
    :cond_22
    :goto_1f
    if-eqz v15, :cond_23

    :try_start_12
    invoke-virtual {v10, v15}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v13
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_c

    goto :goto_20

    :catch_c
    :cond_23
    const/4 v13, 0x0

    :goto_20
    :try_start_13
    new-instance v15, LT/l4;

    invoke-direct {v15, v7, v14, v13}, LT/l4;-><init>(ILjava/lang/String;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_24
    :goto_21
    move-object/from16 v7, p2

    goto :goto_1c

    :cond_25
    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_26

    const-string v4, "Gesto 3 dedos: nenhum app recente encontrado"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v4, 0x7f0f0246

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v0, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_27

    :cond_26
    new-instance v7, LI0/l;

    const/4 v8, 0x0

    invoke-direct {v7, v8}, LI0/l;-><init>(I)V

    new-instance v14, LI0/k;

    invoke-direct {v14}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v8

    iput v8, v14, LI0/k;->a:I

    new-instance v8, LT/E;

    const/16 v9, 0xb

    invoke-direct {v8, v9}, LT/E;-><init>(I)V

    invoke-static {v12, v8}, Lw0/i;->f0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v8

    new-instance v15, Ljava/util/ArrayList;

    invoke-static {v8}, Lw0/k;->V(Ljava/lang/Iterable;)I

    move-result v9

    invoke-direct {v15, v9}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :goto_22
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v8
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_7

    if-eqz v8, :cond_27

    :try_start_14
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v13, v8

    check-cast v13, LT/l4;

    new-instance v12, LI0/l;

    const/4 v8, 0x0

    invoke-direct {v12, v8}, LI0/l;-><init>(I)V

    iget-object v11, v13, LT/l4;->c:Landroid/graphics/drawable/Drawable;

    iget-object v10, v13, LT/l4;->b:Ljava/lang/String;

    new-instance v9, LT/W3;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_e

    move-object v8, v9

    move-object v1, v9

    move-object v9, v5

    move-object/from16 v21, v2

    move-object v2, v10

    move-object v10, v13

    move-object/from16 p2, v3

    move-object v3, v11

    move-object v11, v12

    move-object/from16 v22, v4

    move-object v4, v12

    move-object v12, v14

    move-object/from16 v23, v14

    move-object v14, v13

    move-object v13, v7

    :try_start_15
    invoke-direct/range {v8 .. v13}, LT/W3;-><init>(Landroid/app/ActivityManager;LT/l4;LI0/l;LI0/k;LI0/l;)V

    new-instance v8, LT/O1;

    const/4 v9, 0x1

    invoke-direct {v8, v5, v14, v7, v9}, LT/O1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/io/Serializable;I)V

    invoke-virtual {v0, v3, v2, v1, v8}, Lcom/ex/auto/QuickAccessFloaterService;->w(Landroid/graphics/drawable/Drawable;Ljava/lang/String;LH0/a;LH0/a;)Landroid/view/ViewGroup;

    move-result-object v1

    iput-object v1, v4, LI0/l;->b:Ljava/lang/Object;

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    move-object/from16 v2, v21

    move-object/from16 v4, v22

    move-object/from16 v14, v23

    goto :goto_22

    :catch_d
    move-exception v0

    :goto_23
    move-object/from16 v2, p2

    :goto_24
    move-object/from16 v1, v21

    goto/16 :goto_26

    :catch_e
    move-exception v0

    move-object/from16 v21, v2

    move-object/from16 p2, v3

    goto :goto_23

    :cond_27
    move-object/from16 v21, v2

    move-object/from16 p2, v3

    move-object/from16 v22, v4

    new-instance v1, Landroid/widget/ScrollView;

    invoke-direct {v1, v0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v15}, Lcom/ex/auto/QuickAccessFloaterService;->h(Ljava/util/ArrayList;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    const/16 v2, 0x14

    invoke-virtual {v0, v2}, Lcom/ex/auto/QuickAccessFloaterService;->p(I)I

    move-result v3

    const/16 v4, 0xc

    invoke-virtual {v0, v4}, Lcom/ex/auto/QuickAccessFloaterService;->p(I)I

    move-result v4

    invoke-virtual {v0, v2}, Lcom/ex/auto/QuickAccessFloaterService;->p(I)I

    move-result v2

    const/4 v5, 0x4

    invoke-virtual {v0, v5}, Lcom/ex/auto/QuickAccessFloaterService;->p(I)I

    move-result v5

    invoke-virtual {v1, v3, v4, v2, v5}, Landroid/view/View;->setPadding(IIII)V

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0f0296

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v6}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/ex/auto/QuickAccessFloaterService;->o(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCustomTitle(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0f0032

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, v7, LI0/l;->b:Ljava/lang/Object;

    if-eqz v0, :cond_2d

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_28

    const/16 v1, 0x7f6

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    :cond_28
    iget-object v0, v7, LI0/l;->b:Ljava/lang/Object;

    if-eqz v0, :cond_2c

    check-cast v0, Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_29

    const v1, 0x7f070059

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_d

    :cond_29
    :try_start_16
    iget-object v0, v7, LI0/l;->b:Ljava/lang/Object;

    if-eqz v0, :cond_2b

    check-cast v0, Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    iget-object v0, v7, LI0/l;->b:Ljava/lang/Object;

    if-eqz v0, :cond_2a

    check-cast v0, Landroid/app/AlertDialog;

    invoke-static {v0}, Lcom/ex/auto/QuickAccessFloaterService;->n(Landroid/app/AlertDialog;)V

    goto :goto_27

    :catch_f
    move-exception v0

    goto :goto_25

    :cond_2a
    invoke-static/range {v22 .. v22}, LI0/f;->h(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_2b
    invoke-static/range {v22 .. v22}, LI0/f;->h(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_f

    :goto_25
    :try_start_17
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_d

    move-object/from16 v2, p2

    :try_start_18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_11

    move-object/from16 v1, v21

    :try_start_19
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_27

    :catch_10
    move-exception v0

    goto :goto_26

    :catch_11
    move-exception v0

    goto/16 :goto_24

    :cond_2c
    move-object/from16 v2, p2

    move-object/from16 v1, v21

    invoke-static/range {v22 .. v22}, LI0/f;->h(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_2d
    move-object/from16 v2, p2

    move-object/from16 v1, v21

    invoke-static/range {v22 .. v22}, LI0/f;->h(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_10

    :goto_26
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v3, v1}, LM/d0;->n(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_27
    return-void

    :pswitch_7
    move-object v1, v2

    const/4 v2, 0x0

    if-eqz v0, :cond_2e

    invoke-virtual {v0, v15, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    goto :goto_28

    :cond_2e
    move v3, v2

    :goto_28
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "fanSwipeReceiver: broadcast recebido, direction="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_2f

    sget-object v0, Lcom/ex/auto/QuickAccessFloaterService;->j0:Ljava/util/List;

    move-object/from16 v1, p0

    iget-object v0, v1, LT/k4;->b:Lcom/ex/auto/QuickAccessFloaterService;

    invoke-virtual {v0, v3}, Lcom/ex/auto/QuickAccessFloaterService;->c(I)V

    goto :goto_29

    :cond_2f
    move-object/from16 v1, p0

    :goto_29
    return-void

    :pswitch_8
    sget-object v0, Lcom/ex/auto/QuickAccessFloaterService;->j0:Ljava/util/List;

    iget-object v0, v1, LT/k4;->b:Lcom/ex/auto/QuickAccessFloaterService;

    invoke-virtual {v0}, Lcom/ex/auto/QuickAccessFloaterService;->I()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
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
