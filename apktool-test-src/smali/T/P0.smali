.class public final synthetic LT/P0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/ex/auto/CentralWatchdogService;

.field public final synthetic b:Z

.field public final synthetic c:Ljava/lang/Float;

.field public final synthetic d:Z

.field public final synthetic e:Ljava/lang/Float;

.field public final synthetic f:Z

.field public final synthetic g:Ljava/lang/Float;

.field public final synthetic h:Z

.field public final synthetic i:LI0/l;

.field public final synthetic j:Z

.field public final synthetic k:LI0/k;

.field public final synthetic l:LI0/i;


# direct methods
.method public synthetic constructor <init>(Lcom/ex/auto/CentralWatchdogService;ZLjava/lang/Float;ZLjava/lang/Float;ZLjava/lang/Float;ZLI0/l;ZLI0/k;LI0/i;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LT/P0;->a:Lcom/ex/auto/CentralWatchdogService;

    iput-boolean p2, p0, LT/P0;->b:Z

    iput-object p3, p0, LT/P0;->c:Ljava/lang/Float;

    iput-boolean p4, p0, LT/P0;->d:Z

    iput-object p5, p0, LT/P0;->e:Ljava/lang/Float;

    iput-boolean p6, p0, LT/P0;->f:Z

    iput-object p7, p0, LT/P0;->g:Ljava/lang/Float;

    iput-boolean p8, p0, LT/P0;->h:Z

    iput-object p9, p0, LT/P0;->i:LI0/l;

    iput-boolean p10, p0, LT/P0;->j:Z

    iput-object p11, p0, LT/P0;->k:LI0/k;

    iput-object p12, p0, LT/P0;->l:LI0/i;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 29

    move-object/from16 v0, p0

    iget-object v13, v0, LT/P0;->a:Lcom/ex/auto/CentralWatchdogService;

    iget-boolean v4, v0, LT/P0;->b:Z

    iget-object v5, v0, LT/P0;->c:Ljava/lang/Float;

    iget-boolean v14, v0, LT/P0;->d:Z

    iget-object v15, v0, LT/P0;->e:Ljava/lang/Float;

    iget-boolean v12, v0, LT/P0;->f:Z

    iget-object v11, v0, LT/P0;->g:Ljava/lang/Float;

    iget-boolean v10, v0, LT/P0;->h:Z

    iget-object v9, v0, LT/P0;->i:LI0/l;

    iget-boolean v8, v0, LT/P0;->j:Z

    iget-object v7, v0, LT/P0;->k:LI0/k;

    iget-object v6, v0, LT/P0;->l:LI0/i;

    sget-object v16, LT/J3;->a:Ljava/util/List;

    sget-object v16, Lcom/ex/auto/CentralWatchdogService;->d2:[I

    invoke-virtual {v13}, Lcom/ex/auto/CentralWatchdogService;->M()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "modo_oficina"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_12

    :cond_0
    sget-boolean v1, Lcom/ex/auto/CentralWatchdogService;->f2:Z

    if-eqz v1, :cond_1d

    const-string v1, ""

    const-string v17, "?"

    const-string v3, "getApplicationContext(...)"

    move/from16 v18, v12

    const-string v12, "getString(...)"

    if-eqz v4, :cond_6

    sget-object v4, LT/A4;->a:Ljava/util/HashMap;

    invoke-static {v13}, LT/J3;->a(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object/from16 v20, v1

    move-object/from16 v25, v6

    move-object/from16 v26, v7

    move-object/from16 v27, v9

    move v1, v10

    move-object/from16 v21, v11

    move-object v2, v12

    move/from16 v0, v18

    move/from16 v18, v8

    goto/16 :goto_4

    :cond_1
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    const/16 v2, -0x64

    if-lt v4, v2, :cond_3

    const/16 v2, 0x64

    if-le v4, v2, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "\u00b0C"

    move-object/from16 v20, v1

    move-object v0, v4

    :goto_0
    const/4 v4, -0x1

    goto :goto_2

    :cond_3
    :goto_1
    const/high16 v2, -0x10000

    const-string v4, "X"

    move-object v0, v1

    move-object/from16 v20, v0

    move-object/from16 v28, v4

    move v4, v2

    move-object/from16 v2, v28

    goto :goto_2

    :cond_4
    move-object v0, v1

    move-object/from16 v20, v0

    move-object/from16 v2, v17

    goto :goto_0

    :goto_2
    const v1, 0x7f0f0306

    invoke-virtual {v13, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v12}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v5, :cond_5

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v21, v6

    const v6, 0x7f0f0305

    invoke-virtual {v13, v6, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v22, v5

    goto :goto_3

    :cond_5
    move-object/from16 v21, v6

    const v5, 0x7f0f02f8

    invoke-virtual {v13, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v22, v6

    :goto_3
    invoke-static/range {v22 .. v22}, LI0/f;->b(Ljava/lang/Object;)V

    invoke-virtual {v13}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v3}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5, v2, v0, v4}, LT/A4;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v0

    const/16 v6, 0xf

    const/16 v2, 0x16

    const/16 v5, 0x3aad

    const-string v23, "StatusIcon_OutsideTemperature"

    const/16 v24, 0x0

    move-object v4, v13

    move-object/from16 v25, v21

    move-object/from16 v26, v7

    move v7, v2

    move v2, v8

    move-object/from16 v8, v23

    move-object/from16 v27, v9

    move-object v9, v1

    move v1, v10

    move-object/from16 v10, v22

    move-object/from16 v21, v11

    move-object v11, v0

    move/from16 v0, v18

    move/from16 v18, v2

    move-object v2, v12

    move-object/from16 v12, v24

    invoke-static/range {v4 .. v12}, LT/A4;->j(Landroid/content/Context;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Icon;Landroid/app/PendingIntent;)V

    goto :goto_4

    :cond_6
    move-object/from16 v20, v1

    move-object/from16 v25, v6

    move-object/from16 v26, v7

    move-object/from16 v27, v9

    move v1, v10

    move-object/from16 v21, v11

    move-object v2, v12

    move/from16 v0, v18

    move/from16 v18, v8

    sget-object v4, LT/A4;->a:Ljava/util/HashMap;

    invoke-static {v13}, LT/A4;->e(Landroid/content/Context;)V

    :goto_4
    if-eqz v14, :cond_c

    sget-object v4, LT/A4;->a:Ljava/util/HashMap;

    invoke-static {v13}, LT/J3;->a(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_7

    goto/16 :goto_8

    :cond_7
    if-eqz v15, :cond_a

    invoke-virtual {v15}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-virtual {v15}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-static {v5}, LT/A4;->i(F)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x50

    if-lt v4, v6, :cond_8

    const v4, -0xe0408b

    goto :goto_5

    :cond_8
    const/16 v6, 0x14

    if-ge v4, v6, :cond_9

    const/16 v4, -0x7600

    goto :goto_5

    :cond_9
    const/4 v4, -0x1

    :goto_5
    const-string v6, "%"

    goto :goto_6

    :cond_a
    move-object/from16 v5, v17

    move-object/from16 v6, v20

    const/4 v4, -0x1

    :goto_6
    const v7, 0x7f0f00bb

    invoke-virtual {v13, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v2}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v15, :cond_b

    invoke-virtual {v15}, Ljava/lang/Float;->floatValue()F

    move-result v7

    invoke-static {v7}, LT/A4;->i(F)Ljava/lang/String;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    const v8, 0x7f0f00ba

    invoke-virtual {v13, v8, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    move-object v10, v7

    goto :goto_7

    :cond_b
    const v7, 0x7f0f02f8

    invoke-virtual {v13, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    move-object v10, v8

    :goto_7
    invoke-static {v10}, LI0/f;->b(Ljava/lang/Object;)V

    invoke-virtual {v13}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v3}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7, v5, v6, v4}, LT/A4;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v11

    const/16 v6, 0x61

    const/16 v7, 0x20

    const/16 v5, 0x3aac

    const-string v8, "StatusIcon_BatteryPercent"

    const/4 v12, 0x0

    move-object v4, v13

    invoke-static/range {v4 .. v12}, LT/A4;->j(Landroid/content/Context;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Icon;Landroid/app/PendingIntent;)V

    goto :goto_8

    :cond_c
    sget-object v4, LT/A4;->a:Ljava/util/HashMap;

    invoke-static {v13}, LT/A4;->d(Landroid/content/Context;)V

    :goto_8
    if-eqz v0, :cond_10

    sget-object v0, LT/A4;->a:Ljava/util/HashMap;

    invoke-static {v13}, LT/J3;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto/16 :goto_b

    :cond_d
    if-eqz v21, :cond_e

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    goto :goto_9

    :cond_e
    move-object/from16 v5, v17

    :goto_9
    const v0, 0x7f0f0312

    invoke-virtual {v13, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v21, :cond_f

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const v6, 0x7f0f0311

    invoke-virtual {v13, v6, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object v12, v4

    goto :goto_a

    :cond_f
    const v4, 0x7f0f02f8

    invoke-virtual {v13, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v12, v6

    :goto_a
    invoke-static {v12}, LI0/f;->b(Ljava/lang/Object;)V

    invoke-virtual {v13}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v3}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v10, 0x1

    const v11, 0x3f0ccccd    # 0.55f

    const-string v6, "km"

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v4 .. v11}, LT/A4;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIZZF)Landroid/graphics/drawable/Icon;

    move-result-object v11

    const/16 v6, 0x60

    const/16 v7, 0x21

    const/16 v5, 0x3ab4

    const-string v8, "StatusIcon_TotalMileage"

    const/4 v14, 0x0

    move-object v4, v13

    move-object v9, v0

    move-object v10, v12

    move-object v12, v14

    invoke-static/range {v4 .. v12}, LT/A4;->j(Landroid/content/Context;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Icon;Landroid/app/PendingIntent;)V

    goto :goto_b

    :cond_10
    sget-object v0, LT/A4;->a:Ljava/util/HashMap;

    invoke-static {v13}, LT/A4;->f(Landroid/content/Context;)V

    :goto_b
    const/high16 v0, 0xc000000

    if-eqz v1, :cond_14

    sget-object v1, LT/A4;->a:Ljava/util/HashMap;

    move-object/from16 v1, v27

    iget-object v1, v1, LI0/l;->b:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    invoke-static {v13}, LT/J3;->a(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_11

    goto/16 :goto_d

    :cond_11
    if-eqz v1, :cond_12

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v17

    :cond_12
    move-object/from16 v5, v17

    invoke-virtual {v13}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    new-instance v6, Landroid/content/Intent;

    invoke-virtual {v13}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const-class v8, Lcom/ex/auto/CentralWatchdogService;

    invoke-direct {v6, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v7, "zerar_viagem"

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v6

    const/16 v7, 0x5e

    invoke-static {v4, v7, v6, v0}, Landroid/app/PendingIntent;->getForegroundService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v12

    const v4, 0x7f0f0314

    invoke-virtual {v13, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14, v2}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_13

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const v4, 0x7f0f0313

    invoke-virtual {v13, v4, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_c

    :cond_13
    const v1, 0x7f0f02f8

    invoke-virtual {v13, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_c
    invoke-static {v1}, LI0/f;->b(Ljava/lang/Object;)V

    invoke-virtual {v13}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v3}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v10, 0x1

    const v11, 0x3f0ccccd    # 0.55f

    const-string v6, "km"

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v4 .. v11}, LT/A4;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIZZF)Landroid/graphics/drawable/Icon;

    move-result-object v11

    const/16 v5, 0x3ab2

    const/16 v6, 0x5e

    const/16 v7, 0x17

    const-string v8, "StatusIcon_TripMileage"

    move-object v4, v13

    move-object v9, v14

    move-object v10, v1

    invoke-static/range {v4 .. v12}, LT/A4;->j(Landroid/content/Context;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Icon;Landroid/app/PendingIntent;)V

    goto :goto_d

    :cond_14
    sget-object v1, LT/A4;->a:Ljava/util/HashMap;

    invoke-static {v13}, LT/A4;->g(Landroid/content/Context;)V

    :goto_d
    const-class v4, Landroid/app/NotificationManager;

    if-eqz v18, :cond_1c

    move-object/from16 v5, v26

    iget v5, v5, LI0/k;->a:I

    move-object/from16 v6, v25

    iget-boolean v6, v6, LI0/i;->a:Z

    invoke-static {v13}, LT/J3;->a(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_15

    goto/16 :goto_12

    :cond_15
    if-eqz v6, :cond_16

    const/4 v7, 0x0

    const/4 v8, 0x4

    invoke-static {v5, v7, v8}, LA/b;->o(III)I

    move-result v5

    goto :goto_e

    :cond_16
    const/4 v5, 0x0

    :goto_e
    invoke-virtual {v13}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v3}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v3, 0x38

    invoke-static {v7, v3}, LT/q4;->d(Landroid/content/Context;I)I

    move-result v3

    int-to-float v3, v3

    const v8, 0x3f1c28f6    # 0.61f

    div-float/2addr v3, v8

    float-to-int v3, v3

    const/4 v8, 0x1

    if-ge v3, v8, :cond_17

    const/4 v3, 0x1

    :cond_17
    const/16 v8, 0x8

    invoke-static {v7, v8}, LT/q4;->d(Landroid/content/Context;I)I

    move-result v8

    const/16 v9, 0xa

    invoke-static {v7, v9}, LT/q4;->d(Landroid/content/Context;I)I

    move-result v9

    const/4 v10, 0x6

    invoke-static {v7, v10}, LT/q4;->d(Landroid/content/Context;I)I

    move-result v10

    const/4 v11, 0x2

    mul-int/lit8 v12, v8, 0x2

    const/4 v11, 0x4

    mul-int/lit8 v14, v9, 0x4

    add-int/2addr v14, v12

    const/4 v11, 0x3

    mul-int/2addr v11, v10

    add-int/2addr v11, v14

    sget-object v12, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v11, v3, v12}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v11

    new-instance v12, Landroid/graphics/Canvas;

    invoke-direct {v12, v11}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v14, Landroid/graphics/Paint;

    const/4 v15, 0x1

    invoke-direct {v14, v15}, Landroid/graphics/Paint;-><init>(I)V

    const/4 v15, 0x2

    invoke-static {v7, v15}, LT/q4;->d(Landroid/content/Context;I)I

    move-result v7

    int-to-float v7, v7

    int-to-float v3, v3

    const v15, 0x3f6b851f    # 0.92f

    mul-float/2addr v15, v3

    const v17, 0x3f0ccccd    # 0.55f

    mul-float v17, v17, v3

    const v18, 0x3dcccccd    # 0.1f

    mul-float v3, v3, v18

    const/4 v0, 0x4

    const/4 v1, 0x0

    :goto_f
    if-ge v1, v0, :cond_19

    int-to-float v0, v8

    move/from16 v20, v8

    int-to-float v8, v1

    move-object/from16 v21, v4

    add-int v4, v9, v10

    int-to-float v4, v4

    mul-float/2addr v4, v8

    add-float/2addr v4, v0

    sub-float v0, v17, v3

    move/from16 v22, v3

    move/from16 v19, v10

    const/4 v3, 0x4

    int-to-float v10, v3

    const/high16 v23, 0x3f800000    # 1.0f

    sub-float v10, v10, v23

    div-float/2addr v8, v10

    mul-float/2addr v8, v0

    sub-float v0, v17, v8

    if-ge v1, v5, :cond_18

    const/4 v8, -0x1

    goto :goto_10

    :cond_18
    const v8, 0x40ffffff    # 7.9999995f

    :goto_10
    invoke-virtual {v14, v8}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v8, Landroid/graphics/RectF;

    int-to-float v10, v9

    add-float/2addr v10, v4

    invoke-direct {v8, v4, v0, v10, v15}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v12, v8, v7, v7, v14}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    const/4 v0, 0x1

    add-int/2addr v1, v0

    move v0, v3

    move/from16 v10, v19

    move/from16 v8, v20

    move-object/from16 v4, v21

    move/from16 v3, v22

    goto :goto_f

    :cond_19
    move-object/from16 v21, v4

    invoke-static {v11}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    const-string v1, "createWithBitmap(...)"

    invoke-static {v0, v1}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez v6, :cond_1a

    const v1, 0x7f0f02cd

    invoke-virtual {v13, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_11

    :cond_1a
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const v3, 0x7f0f02d0

    invoke-virtual {v13, v3, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_11
    invoke-static {v1}, LI0/f;->b(Ljava/lang/Object;)V

    const v3, 0x7f0f02d1

    invoke-virtual {v13, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v13}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v4, v21

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    if-nez v4, :cond_1b

    goto/16 :goto_12

    :cond_1b
    new-instance v5, Landroid/app/NotificationChannel;

    const v6, 0x7f0f02cc

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "central_ex_status_signal"

    const/4 v8, 0x2

    invoke-direct {v5, v7, v6, v8}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    invoke-virtual {v4, v5}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    new-instance v5, Landroid/content/Intent;

    const-class v6, Lcom/ex/auto/MainActivity;

    invoke-direct {v5, v2, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v6, 0x5d

    const/high16 v8, 0xc000000

    invoke-static {v2, v6, v5, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    new-instance v8, Landroid/app/Notification$Builder;

    invoke-direct {v8, v2, v7}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Landroid/app/Notification$Builder;->setSmallIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    const-string v3, "build(...)"

    invoke-static {v1, v3}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v5, "flag_status_icon_notification"

    invoke-virtual {v3, v5, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "flag_status_icon_id"

    invoke-virtual {v3, v2, v6}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "flag_status_icon_describe"

    const-string v5, "StatusIcon_PhoneSignal"

    invoke-virtual {v3, v2, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "flag_status_icon_icon"

    invoke-virtual {v3, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v2, "flag_status_icon_pressed_icon"

    invoke-virtual {v3, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "flag_status_icon_hide"

    const/4 v2, 0x0

    invoke-virtual {v3, v0, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "flag_status_icon_rank"

    const/16 v5, 0x21

    invoke-virtual {v3, v0, v5}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "flag_status_icon_space_x"

    const/4 v5, 0x1

    invoke-virtual {v3, v0, v5}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "flag_status_icon_is_pick_on"

    invoke-virtual {v3, v0, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "flag_status_icon_specific_width"

    invoke-virtual {v3, v0, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const/16 v0, 0x3ab6

    :try_start_0
    invoke-virtual {v4, v0, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_12

    :cond_1c
    const/16 v0, 0x3ab6

    invoke-virtual {v13}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    if-eqz v1, :cond_1d

    invoke-virtual {v1, v0}, Landroid/app/NotificationManager;->cancel(I)V

    :catchall_0
    :cond_1d
    :goto_12
    return-void
.end method
