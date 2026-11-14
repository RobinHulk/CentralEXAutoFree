.class public final synthetic LT/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/content/ContextWrapper;


# direct methods
.method public synthetic constructor <init>(Landroid/content/ContextWrapper;I)V
    .locals 0

    iput p2, p0, LT/t;->a:I

    iput-object p1, p0, LT/t;->b:Landroid/content/ContextWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 16

    move-object/from16 v0, p0

    const/16 v1, 0x10

    const/16 v2, 0x12

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/16 v5, 0xa

    const-string v6, "wm"

    const/4 v7, 0x5

    const/4 v8, 0x6

    const/4 v9, 0x0

    const/4 v10, 0x3

    const/16 v11, 0x8

    const/4 v12, 0x2

    const/4 v13, 0x0

    const/4 v14, 0x1

    iget v15, v0, LT/t;->a:I

    packed-switch v15, :pswitch_data_0

    iget-object v1, v0, LT/t;->b:Landroid/content/ContextWrapper;

    check-cast v1, Lcom/geely/hvacstepperv2/TempStepperService;

    iget-object v2, v1, Lcom/geely/hvacstepperv2/TempStepperService;->d:Landroid/view/View;

    if-eqz v2, :cond_7

    iget-object v3, v1, Lcom/geely/hvacstepperv2/TempStepperService;->c:Landroid/view/WindowManager;

    if-nez v3, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager$LayoutParams;

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    iput v3, v1, Lcom/geely/hvacstepperv2/TempStepperService;->G:F

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    iput v3, v1, Lcom/geely/hvacstepperv2/TempStepperService;->H:F

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    iget-object v4, v1, Lcom/geely/hvacstepperv2/TempStepperService;->n:Landroid/os/Handler;

    iget-object v5, v1, Lcom/geely/hvacstepperv2/TempStepperService;->K:LX/d;

    if-eqz v3, :cond_6

    if-eq v3, v14, :cond_5

    if-eq v3, v12, :cond_2

    if-eq v3, v10, :cond_5

    :cond_1
    :goto_0
    move v13, v14

    goto/16 :goto_1

    :cond_2
    iget-boolean v3, v1, Lcom/geely/hvacstepperv2/TempStepperService;->I:Z

    if-nez v3, :cond_4

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    iget v3, v1, Lcom/geely/hvacstepperv2/TempStepperService;->E:F

    sub-float/2addr v2, v3

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    iget v6, v1, Lcom/geely/hvacstepperv2/TempStepperService;->F:F

    sub-float/2addr v3, v6

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v6, v1, Lcom/geely/hvacstepperv2/TempStepperService;->J:I

    int-to-float v6, v6

    cmpl-float v2, v2, v6

    if-gtz v2, :cond_3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v1, v1, Lcom/geely/hvacstepperv2/TempStepperService;->J:I

    int-to-float v1, v1

    cmpl-float v1, v2, v1

    if-lez v1, :cond_1

    :cond_3
    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_4
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    iget v4, v1, Lcom/geely/hvacstepperv2/TempStepperService;->E:F

    sub-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    iget v5, v1, Lcom/geely/hvacstepperv2/TempStepperService;->F:F

    sub-float/2addr v4, v5

    float-to-int v4, v4

    iget v5, v1, Lcom/geely/hvacstepperv2/TempStepperService;->C:I

    add-int/2addr v5, v3

    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v3, v1, Lcom/geely/hvacstepperv2/TempStepperService;->D:I

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v3, v1, Lcom/geely/hvacstepperv2/TempStepperService;->c:Landroid/view/WindowManager;

    iget-object v1, v1, Lcom/geely/hvacstepperv2/TempStepperService;->d:Landroid/view/View;

    invoke-interface {v3, v1, v2}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_5
    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    const-string v5, "hvac_stepper"

    invoke-static {v1, v5, v3, v4, v2}, LT/Y;->d0(Landroid/content/Context;Ljava/lang/String;III)V

    iput-boolean v13, v1, Lcom/geely/hvacstepperv2/TempStepperService;->I:Z

    goto :goto_0

    :cond_6
    iput-boolean v13, v1, Lcom/geely/hvacstepperv2/TempStepperService;->I:Z

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v3, v1, Lcom/geely/hvacstepperv2/TempStepperService;->C:I

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    iput v2, v1, Lcom/geely/hvacstepperv2/TempStepperService;->D:I

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    iput v2, v1, Lcom/geely/hvacstepperv2/TempStepperService;->E:F

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iput v2, v1, Lcom/geely/hvacstepperv2/TempStepperService;->F:F

    const-wide/16 v1, 0x1c2

    invoke-virtual {v4, v5, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    :cond_7
    :goto_1
    return v13

    :pswitch_0
    sget-boolean v1, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->J:Z

    iget-object v1, v0, LT/t;->b:Landroid/content/ContextWrapper;

    check-cast v1, Lcom/geely/driveregenfloater/DriveRegenFloaterService;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-eqz v2, :cond_f

    if-eq v2, v14, :cond_c

    if-eq v2, v12, :cond_8

    goto :goto_3

    :cond_8
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    iget v3, v1, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->B:F

    sub-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    iget v4, v1, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->C:F

    sub-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-gt v4, v11, :cond_9

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-le v4, v11, :cond_a

    :cond_9
    iput-boolean v14, v1, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->D:Z

    :cond_a
    iget-object v4, v1, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->t:Landroid/view/WindowManager$LayoutParams;

    iget v5, v1, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->z:I

    add-int/2addr v5, v2

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v2, v1, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->A:I

    add-int/2addr v2, v3

    iput v2, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v2, v1, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->a:Landroid/view/WindowManager;

    iget-object v1, v1, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->b:Landroid/view/View;

    invoke-interface {v2, v1, v4}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_b
    :goto_2
    move v13, v14

    goto :goto_3

    :cond_c
    iget-boolean v2, v1, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->D:Z

    if-eqz v2, :cond_d

    iget-object v2, v1, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->t:Landroid/view/WindowManager$LayoutParams;

    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    const-string v5, "drive_regen"

    invoke-static {v1, v5, v3, v4, v2}, LT/Y;->d0(Landroid/content/Context;Ljava/lang/String;III)V

    :cond_d
    iget-boolean v2, v1, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->D:Z

    if-nez v2, :cond_b

    iget-boolean v2, v1, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->w:Z

    if-eqz v2, :cond_e

    invoke-virtual {v1}, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->d()V

    goto :goto_2

    :cond_e
    invoke-virtual {v1}, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->e()V

    goto :goto_2

    :cond_f
    iput-boolean v13, v1, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->D:Z

    iget-object v2, v1, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->t:Landroid/view/WindowManager$LayoutParams;

    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v3, v1, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->z:I

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    iput v2, v1, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->A:I

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    iput v2, v1, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->B:F

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iput v2, v1, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->C:F

    goto :goto_2

    :goto_3
    return v13

    :pswitch_1
    sget v1, Lcom/ex/auto/WifiFloaterService;->n:I

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    iget-object v2, v0, LT/t;->b:Landroid/content/ContextWrapper;

    check-cast v2, Lcom/ex/auto/WifiFloaterService;

    const-string v3, "lp"

    if-eqz v1, :cond_19

    if-eq v1, v14, :cond_15

    if-eq v1, v12, :cond_10

    goto/16 :goto_4

    :cond_10
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iget v4, v2, Lcom/ex/auto/WifiFloaterService;->h:F

    sub-float/2addr v1, v4

    float-to-int v1, v1

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    iget v5, v2, Lcom/ex/auto/WifiFloaterService;->i:F

    sub-float/2addr v4, v5

    float-to-int v4, v4

    iget-boolean v5, v2, Lcom/ex/auto/WifiFloaterService;->j:Z

    if-nez v5, :cond_12

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-gt v5, v11, :cond_11

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-le v5, v11, :cond_12

    :cond_11
    iput-boolean v14, v2, Lcom/ex/auto/WifiFloaterService;->j:Z

    iget-object v5, v2, Lcom/ex/auto/WifiFloaterService;->e:Landroid/os/Handler;

    iget-object v6, v2, Lcom/ex/auto/WifiFloaterService;->k:LT/Q4;

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_12
    iget-boolean v5, v2, Lcom/ex/auto/WifiFloaterService;->j:Z

    if-eqz v5, :cond_1a

    iget-object v5, v2, Lcom/ex/auto/WifiFloaterService;->d:Landroid/view/WindowManager$LayoutParams;

    if-eqz v5, :cond_14

    iget v3, v2, Lcom/ex/auto/WifiFloaterService;->f:I

    add-int/2addr v3, v1

    iput v3, v5, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v1, v2, Lcom/ex/auto/WifiFloaterService;->g:I

    add-int/2addr v1, v4

    iput v1, v5, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v1, v2, Lcom/ex/auto/WifiFloaterService;->a:Landroid/view/WindowManager;

    if-eqz v1, :cond_13

    iget-object v2, v2, Lcom/ex/auto/WifiFloaterService;->c:Landroid/widget/TextView;

    invoke-interface {v1, v2, v5}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_4

    :cond_13
    const-string v1, "windowManager"

    invoke-static {v1}, LI0/f;->h(Ljava/lang/String;)V

    throw v9

    :cond_14
    invoke-static {v3}, LI0/f;->h(Ljava/lang/String;)V

    throw v9

    :cond_15
    iget-object v1, v2, Lcom/ex/auto/WifiFloaterService;->e:Landroid/os/Handler;

    iget-object v4, v2, Lcom/ex/auto/WifiFloaterService;->k:LT/Q4;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-boolean v1, v2, Lcom/ex/auto/WifiFloaterService;->j:Z

    if-nez v1, :cond_17

    :try_start_0
    iget-object v1, v2, Lcom/ex/auto/WifiFloaterService;->b:Landroid/net/wifi/WifiManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "wifiManager"

    if-eqz v1, :cond_16

    :try_start_1
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v2

    xor-int/2addr v2, v14

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    goto :goto_4

    :cond_16
    invoke-static {v2}, LI0/f;->h(Ljava/lang/String;)V

    throw v9
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_17
    iget-object v1, v2, Lcom/ex/auto/WifiFloaterService;->d:Landroid/view/WindowManager$LayoutParams;

    if-eqz v1, :cond_18

    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget v4, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    const-string v5, "wifi_floater"

    invoke-static {v2, v5, v3, v4, v1}, LT/Y;->d0(Landroid/content/Context;Ljava/lang/String;III)V

    goto :goto_4

    :cond_18
    invoke-static {v3}, LI0/f;->h(Ljava/lang/String;)V

    throw v9

    :cond_19
    iput-boolean v13, v2, Lcom/ex/auto/WifiFloaterService;->j:Z

    iget-object v1, v2, Lcom/ex/auto/WifiFloaterService;->d:Landroid/view/WindowManager$LayoutParams;

    if-eqz v1, :cond_1b

    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v3, v2, Lcom/ex/auto/WifiFloaterService;->f:I

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    iput v1, v2, Lcom/ex/auto/WifiFloaterService;->g:I

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iput v1, v2, Lcom/ex/auto/WifiFloaterService;->h:F

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iput v1, v2, Lcom/ex/auto/WifiFloaterService;->i:F

    iget-object v1, v2, Lcom/ex/auto/WifiFloaterService;->e:Landroid/os/Handler;

    iget-object v2, v2, Lcom/ex/auto/WifiFloaterService;->k:LT/Q4;

    const-wide/16 v3, 0x258

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :catch_0
    :cond_1a
    :goto_4
    return v14

    :cond_1b
    invoke-static {v3}, LI0/f;->h(Ljava/lang/String;)V

    throw v9

    :pswitch_2
    iget-object v1, v0, LT/t;->b:Landroid/content/ContextWrapper;

    check-cast v1, Lcom/ex/auto/TempBattPillFloaterService;

    sget-object v2, Lcom/ex/auto/TempBattPillFloaterService;->u:Lcom/ex/auto/TempBattPillFloaterService;

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-eqz v2, :cond_28

    if-eq v2, v14, :cond_20

    if-eq v2, v12, :cond_1c

    goto/16 :goto_9

    :cond_1c
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    iget v3, v1, Lcom/ex/auto/TempBattPillFloaterService;->o:F

    sub-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    iget v4, v1, Lcom/ex/auto/TempBattPillFloaterService;->p:F

    sub-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v4

    invoke-virtual {v1, v8}, Lcom/ex/auto/TempBattPillFloaterService;->d(I)I

    move-result v5

    if-gt v4, v5, :cond_1d

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v4

    invoke-virtual {v1, v8}, Lcom/ex/auto/TempBattPillFloaterService;->d(I)I

    move-result v5

    if-le v4, v5, :cond_1e

    :cond_1d
    iput-boolean v14, v1, Lcom/ex/auto/TempBattPillFloaterService;->s:Z

    :cond_1e
    iget-object v4, v1, Lcom/ex/auto/TempBattPillFloaterService;->d:Landroid/view/WindowManager$LayoutParams;

    invoke-static {v4}, LI0/f;->b(Ljava/lang/Object;)V

    iget v5, v1, Lcom/ex/auto/TempBattPillFloaterService;->q:I

    add-int/2addr v5, v2

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v2, v1, Lcom/ex/auto/TempBattPillFloaterService;->d:Landroid/view/WindowManager$LayoutParams;

    invoke-static {v2}, LI0/f;->b(Ljava/lang/Object;)V

    iget v4, v1, Lcom/ex/auto/TempBattPillFloaterService;->r:I

    add-int/2addr v4, v3

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    :try_start_2
    iget-object v2, v1, Lcom/ex/auto/TempBattPillFloaterService;->a:Landroid/view/WindowManager;

    if-eqz v2, :cond_1f

    iget-object v3, v1, Lcom/ex/auto/TempBattPillFloaterService;->c:Landroid/widget/TextView;

    iget-object v1, v1, Lcom/ex/auto/TempBattPillFloaterService;->d:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v2, v3, v1}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_5

    :cond_1f
    invoke-static {v6}, LI0/f;->h(Ljava/lang/String;)V

    throw v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    :goto_5
    move v13, v14

    goto/16 :goto_9

    :cond_20
    iget-boolean v2, v1, Lcom/ex/auto/TempBattPillFloaterService;->s:Z

    if-eqz v2, :cond_21

    iget-object v2, v1, Lcom/ex/auto/TempBattPillFloaterService;->d:Landroid/view/WindowManager$LayoutParams;

    invoke-static {v2}, LI0/f;->b(Ljava/lang/Object;)V

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v3, v1, Lcom/ex/auto/TempBattPillFloaterService;->d:Landroid/view/WindowManager$LayoutParams;

    invoke-static {v3}, LI0/f;->b(Ljava/lang/Object;)V

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v4, v1, Lcom/ex/auto/TempBattPillFloaterService;->d:Landroid/view/WindowManager$LayoutParams;

    invoke-static {v4}, LI0/f;->b(Ljava/lang/Object;)V

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    const-string v5, "temp_batt_pill"

    invoke-static {v1, v5, v2, v3, v4}, LT/Y;->d0(Landroid/content/Context;Ljava/lang/String;III)V

    goto :goto_5

    :cond_21
    iget-object v2, v1, Lcom/ex/auto/TempBattPillFloaterService;->k:Ljava/lang/Integer;

    if-eqz v2, :cond_22

    invoke-virtual {v1}, Lcom/ex/auto/TempBattPillFloaterService;->e()V

    const v2, 0x7f0f0261

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_5

    :cond_22
    invoke-static {v13, v10}, LA/b;->i0(II)LL0/c;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-static {v2}, Lw0/k;->V(Ljava/lang/Iterable;)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v2}, LL0/a;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    move-object v4, v2

    check-cast v4, LL0/b;

    iget-boolean v4, v4, LL0/b;->c:Z

    if-eqz v4, :cond_23

    move-object v4, v2

    check-cast v4, LL0/b;

    invoke-virtual {v4}, LL0/b;->a()I

    move-result v4

    invoke-static {v1, v4}, LT/Y;->T(Landroid/content/Context;I)LT/k;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_23
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v6, v13

    :goto_7
    if-ge v6, v5, :cond_25

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, LT/k;

    if-nez v8, :cond_24

    goto :goto_8

    :cond_24
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v11, v6, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    filled-new-array {v11}, [Ljava/lang/Object;

    move-result-object v11

    const v12, 0x7f0f0076

    invoke-virtual {v1, v12, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ": "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8}, LT/Y;->i0(LT/k;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_8
    add-int/2addr v6, v14

    goto :goto_7

    :cond_25
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_26

    const v2, 0x7f0f025f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v14}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_5

    :cond_26
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0f0260

    invoke-virtual {v3, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-array v5, v13, [Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/CharSequence;

    new-instance v5, LT/f;

    invoke-direct {v5, v1, v7, v4}, LT/f;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {v3, v2, v5}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    invoke-virtual {v1, v2, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    :try_start_3
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    if-eqz v2, :cond_27

    const/16 v3, 0x7f6

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    :cond_27
    :try_start_4
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_5

    :cond_28
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    iput v2, v1, Lcom/ex/auto/TempBattPillFloaterService;->o:F

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iput v2, v1, Lcom/ex/auto/TempBattPillFloaterService;->p:F

    iget-object v2, v1, Lcom/ex/auto/TempBattPillFloaterService;->d:Landroid/view/WindowManager$LayoutParams;

    invoke-static {v2}, LI0/f;->b(Ljava/lang/Object;)V

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v2, v1, Lcom/ex/auto/TempBattPillFloaterService;->q:I

    iget-object v2, v1, Lcom/ex/auto/TempBattPillFloaterService;->d:Landroid/view/WindowManager$LayoutParams;

    invoke-static {v2}, LI0/f;->b(Ljava/lang/Object;)V

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    iput v2, v1, Lcom/ex/auto/TempBattPillFloaterService;->r:I

    iput-boolean v13, v1, Lcom/ex/auto/TempBattPillFloaterService;->s:Z

    goto/16 :goto_5

    :goto_9
    return v13

    :pswitch_3
    sget-object v1, Lcom/ex/auto/SplitFloaterService;->v:Lcom/ex/auto/SplitFloaterService;

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    iget-object v2, v0, LT/t;->b:Landroid/content/ContextWrapper;

    check-cast v2, Lcom/ex/auto/SplitFloaterService;

    if-eqz v1, :cond_2e

    if-eq v1, v14, :cond_2d

    if-eq v1, v12, :cond_29

    goto :goto_b

    :cond_29
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iget v3, v2, Lcom/ex/auto/SplitFloaterService;->p:F

    sub-float/2addr v1, v3

    float-to-int v1, v1

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    iget v4, v2, Lcom/ex/auto/SplitFloaterService;->q:F

    sub-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v4

    invoke-virtual {v2, v8}, Lcom/ex/auto/SplitFloaterService;->b(I)I

    move-result v5

    if-gt v4, v5, :cond_2a

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v4

    invoke-virtual {v2, v8}, Lcom/ex/auto/SplitFloaterService;->b(I)I

    move-result v5

    if-le v4, v5, :cond_2b

    :cond_2a
    iput-boolean v14, v2, Lcom/ex/auto/SplitFloaterService;->t:Z

    :cond_2b
    iget-object v4, v2, Lcom/ex/auto/SplitFloaterService;->h:Landroid/view/WindowManager$LayoutParams;

    invoke-static {v4}, LI0/f;->b(Ljava/lang/Object;)V

    iget v5, v2, Lcom/ex/auto/SplitFloaterService;->r:I

    add-int/2addr v5, v1

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v1, v2, Lcom/ex/auto/SplitFloaterService;->h:Landroid/view/WindowManager$LayoutParams;

    invoke-static {v1}, LI0/f;->b(Ljava/lang/Object;)V

    iget v4, v2, Lcom/ex/auto/SplitFloaterService;->s:I

    add-int/2addr v4, v3

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    :try_start_5
    iget-object v1, v2, Lcom/ex/auto/SplitFloaterService;->a:Landroid/view/WindowManager;

    if-eqz v1, :cond_2c

    iget-object v3, v2, Lcom/ex/auto/SplitFloaterService;->b:Landroid/widget/LinearLayout;

    iget-object v4, v2, Lcom/ex/auto/SplitFloaterService;->h:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v3, v4}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_a

    :cond_2c
    invoke-static {v6}, LI0/f;->h(Ljava/lang/String;)V

    throw v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    :goto_a
    iget-boolean v13, v2, Lcom/ex/auto/SplitFloaterService;->t:Z

    goto :goto_b

    :cond_2d
    iget-boolean v13, v2, Lcom/ex/auto/SplitFloaterService;->t:Z

    goto :goto_b

    :cond_2e
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iput v1, v2, Lcom/ex/auto/SplitFloaterService;->p:F

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iput v1, v2, Lcom/ex/auto/SplitFloaterService;->q:F

    iget-object v1, v2, Lcom/ex/auto/SplitFloaterService;->h:Landroid/view/WindowManager$LayoutParams;

    invoke-static {v1}, LI0/f;->b(Ljava/lang/Object;)V

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v1, v2, Lcom/ex/auto/SplitFloaterService;->r:I

    iget-object v1, v2, Lcom/ex/auto/SplitFloaterService;->h:Landroid/view/WindowManager$LayoutParams;

    invoke-static {v1}, LI0/f;->b(Ljava/lang/Object;)V

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    iput v1, v2, Lcom/ex/auto/SplitFloaterService;->s:I

    iput-boolean v13, v2, Lcom/ex/auto/SplitFloaterService;->t:Z

    :goto_b
    return v13

    :pswitch_4
    sget-object v1, Lcom/ex/auto/QuickAccessFloaterService;->j0:Ljava/util/List;

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    iget-object v2, v0, LT/t;->b:Landroid/content/ContextWrapper;

    check-cast v2, Lcom/ex/auto/QuickAccessFloaterService;

    if-eqz v1, :cond_35

    if-eq v1, v14, :cond_32

    if-eq v1, v12, :cond_2f

    goto/16 :goto_e

    :cond_2f
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iget v3, v2, Lcom/ex/auto/QuickAccessFloaterService;->F:F

    sub-float/2addr v1, v3

    iget-boolean v3, v2, Lcom/ex/auto/QuickAccessFloaterService;->H:Z

    if-nez v3, :cond_30

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-virtual {v2, v5}, Lcom/ex/auto/QuickAccessFloaterService;->p(I)I

    move-result v4

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_30

    iput-boolean v14, v2, Lcom/ex/auto/QuickAccessFloaterService;->H:Z

    :cond_30
    iget-boolean v3, v2, Lcom/ex/auto/QuickAccessFloaterService;->H:Z

    if-eqz v3, :cond_31

    iget-object v3, v2, Lcom/ex/auto/QuickAccessFloaterService;->c:Landroid/view/WindowManager$LayoutParams;

    invoke-static {v3}, LI0/f;->b(Ljava/lang/Object;)V

    iget v4, v2, Lcom/ex/auto/QuickAccessFloaterService;->G:I

    float-to-int v1, v1

    add-int/2addr v4, v1

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v1, v2, Lcom/ex/auto/QuickAccessFloaterService;->b:Landroid/view/WindowManager;

    invoke-static {v1}, LI0/f;->b(Ljava/lang/Object;)V

    iget-object v3, v2, Lcom/ex/auto/QuickAccessFloaterService;->d:LT/N4;

    iget-object v2, v2, Lcom/ex/auto/QuickAccessFloaterService;->c:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v3, v2}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_31
    :goto_c
    move v13, v14

    goto :goto_e

    :cond_32
    iget-boolean v1, v2, Lcom/ex/auto/QuickAccessFloaterService;->H:Z

    if-eqz v1, :cond_33

    invoke-virtual {v2}, Lcom/ex/auto/QuickAccessFloaterService;->t()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iget-object v3, v2, Lcom/ex/auto/QuickAccessFloaterService;->c:Landroid/view/WindowManager$LayoutParams;

    invoke-static {v3}, LI0/f;->b(Ljava/lang/Object;)V

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    const-string v4, "qa_y_pos"

    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_d

    :cond_33
    iget-boolean v1, v2, Lcom/ex/auto/QuickAccessFloaterService;->z:Z

    if-eqz v1, :cond_34

    invoke-virtual {v2}, Lcom/ex/auto/QuickAccessFloaterService;->m()V

    goto :goto_d

    :cond_34
    invoke-virtual {v2}, Lcom/ex/auto/QuickAccessFloaterService;->q()V

    :goto_d
    iput-boolean v13, v2, Lcom/ex/auto/QuickAccessFloaterService;->H:Z

    goto :goto_c

    :cond_35
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iput v1, v2, Lcom/ex/auto/QuickAccessFloaterService;->F:F

    iget-object v1, v2, Lcom/ex/auto/QuickAccessFloaterService;->c:Landroid/view/WindowManager$LayoutParams;

    invoke-static {v1}, LI0/f;->b(Ljava/lang/Object;)V

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    iput v1, v2, Lcom/ex/auto/QuickAccessFloaterService;->G:I

    iput-boolean v13, v2, Lcom/ex/auto/QuickAccessFloaterService;->H:Z

    goto :goto_c

    :goto_e
    return v13

    :pswitch_5
    iget-object v1, v0, LT/t;->b:Landroid/content/ContextWrapper;

    check-cast v1, Lcom/ex/auto/ModoOficinaTriggerService;

    sget-object v2, Lcom/ex/auto/ModoOficinaTriggerService;->f:Lcom/ex/auto/ModoOficinaTriggerService;

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_39

    iget-boolean v2, v1, Lcom/ex/auto/ModoOficinaTriggerService;->e:Z

    if-eqz v2, :cond_36

    goto :goto_f

    :cond_36
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, v1, Lcom/ex/auto/ModoOficinaTriggerService;->d:J

    sub-long v4, v2, v4

    const-wide/16 v8, 0x1770

    cmp-long v4, v4, v8

    if-lez v4, :cond_37

    iput-wide v2, v1, Lcom/ex/auto/ModoOficinaTriggerService;->d:J

    iput v13, v1, Lcom/ex/auto/ModoOficinaTriggerService;->c:I

    :cond_37
    iget v2, v1, Lcom/ex/auto/ModoOficinaTriggerService;->c:I

    add-int/2addr v2, v14

    iput v2, v1, Lcom/ex/auto/ModoOficinaTriggerService;->c:I

    if-ge v2, v7, :cond_38

    goto :goto_f

    :cond_38
    iput v13, v1, Lcom/ex/auto/ModoOficinaTriggerService;->c:I

    iput-boolean v14, v1, Lcom/ex/auto/ModoOficinaTriggerService;->e:Z

    const v2, 0x7f0f0229

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v14}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    sget-object v2, LT/L3;->a:LT/L3;

    const-string v3, "ModoOficinaTrigger"

    const-string v4, "gesto secreto reconhecido \u2014 restaurando"

    invoke-virtual {v2, v3, v4}, LT/L3;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Ljava/lang/Thread;

    new-instance v4, LT/H;

    const/16 v5, 0x17

    invoke-direct {v4, v2, v5, v1}, LT/H;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    :cond_39
    :goto_f
    return v14

    :pswitch_6
    sget v1, Lcom/ex/auto/MainActivity;->u0:I

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    iget-object v2, v0, LT/t;->b:Landroid/content/ContextWrapper;

    check-cast v2, Lcom/ex/auto/MainActivity;

    if-eqz v1, :cond_3c

    if-eq v1, v14, :cond_3a

    if-eq v1, v10, :cond_3a

    goto :goto_10

    :cond_3a
    iget-object v1, v2, Lcom/ex/auto/MainActivity;->c0:LT/U1;

    if-eqz v1, :cond_3b

    iget-object v3, v2, Lcom/ex/auto/MainActivity;->v:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_3b
    iput-object v9, v2, Lcom/ex/auto/MainActivity;->c0:LT/U1;

    goto :goto_10

    :cond_3c
    new-instance v1, LT/U1;

    const/16 v3, 0xd

    invoke-direct {v1, v3, v2}, LT/U1;-><init>(ILcom/ex/auto/MainActivity;)V

    iput-object v1, v2, Lcom/ex/auto/MainActivity;->c0:LT/U1;

    iget-object v2, v2, Lcom/ex/auto/MainActivity;->v:Landroid/os/Handler;

    const-wide/16 v3, 0x1388

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_10
    return v13

    :pswitch_7
    iget-object v6, v0, LT/t;->b:Landroid/content/ContextWrapper;

    check-cast v6, Lcom/ex/auto/ExSapoCastFloaterService;

    sget v9, Lcom/ex/auto/ExSapoCastFloaterService;->j:I

    invoke-static/range {p1 .. p1}, LI0/f;->b(Ljava/lang/Object;)V

    invoke-static/range {p2 .. p2}, LI0/f;->b(Ljava/lang/Object;)V

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v6

    if-ge v6, v14, :cond_3d

    move v6, v14

    :cond_3d
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v9

    if-ge v9, v14, :cond_3e

    move v9, v14

    :cond_3e
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v15

    int-to-float v6, v6

    div-float/2addr v15, v6

    invoke-static {v15, v4, v3}, LA/b;->n(FFF)F

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v15

    int-to-float v9, v9

    div-float/2addr v15, v9

    invoke-static {v15, v4, v3}, LA/b;->n(FFF)F

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    if-eqz v4, :cond_41

    if-eq v4, v14, :cond_40

    if-eq v4, v12, :cond_3f

    if-eq v4, v10, :cond_42

    if-eq v4, v7, :cond_41

    if-eq v4, v8, :cond_40

    goto :goto_13

    :cond_3f
    move v10, v14

    goto :goto_11

    :cond_40
    move v10, v12

    goto :goto_11

    :cond_41
    move v10, v13

    :cond_42
    :goto_11
    sget-object v4, LT/m;->i:LT/n1;

    if-eqz v4, :cond_45

    iget-boolean v7, v4, LT/n1;->d:Z

    if-nez v7, :cond_43

    goto :goto_13

    :cond_43
    new-array v2, v2, [B

    int-to-byte v7, v10

    aput-byte v7, v2, v13

    int-to-byte v7, v13

    aput-byte v7, v2, v14

    invoke-static {v2, v12, v6}, LT/n1;->d([BIF)V

    invoke-static {v2, v8, v3}, LT/n1;->d([BIF)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    :goto_12
    if-ge v13, v11, :cond_44

    add-int/lit8 v3, v13, 0xa

    mul-int/lit8 v8, v13, 0x8

    rsub-int/lit8 v8, v8, 0x38

    ushr-long v8, v6, v8

    long-to-int v8, v8

    int-to-byte v8, v8

    aput-byte v8, v2, v3

    add-int/2addr v13, v14

    goto :goto_12

    :cond_44
    invoke-virtual {v4, v2, v1}, LT/n1;->i([BI)V

    :cond_45
    :goto_13
    return v14

    :pswitch_8
    iget-object v6, v0, LT/t;->b:Landroid/content/ContextWrapper;

    check-cast v6, Lcom/ex/auto/ExSapoCastActivity;

    sget v9, Lcom/ex/auto/ExSapoCastActivity;->e:I

    invoke-static/range {p1 .. p1}, LI0/f;->b(Ljava/lang/Object;)V

    invoke-static/range {p2 .. p2}, LI0/f;->b(Ljava/lang/Object;)V

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v6

    if-ge v6, v14, :cond_46

    move v6, v14

    :cond_46
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v9

    if-ge v9, v14, :cond_47

    move v9, v14

    :cond_47
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v15

    int-to-float v6, v6

    div-float/2addr v15, v6

    invoke-static {v15, v4, v3}, LA/b;->n(FFF)F

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v15

    int-to-float v9, v9

    div-float/2addr v15, v9

    invoke-static {v15, v4, v3}, LA/b;->n(FFF)F

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    if-eqz v4, :cond_4a

    if-eq v4, v14, :cond_49

    if-eq v4, v12, :cond_48

    if-eq v4, v10, :cond_4b

    if-eq v4, v7, :cond_4a

    if-eq v4, v8, :cond_49

    goto :goto_16

    :cond_48
    move v10, v14

    goto :goto_14

    :cond_49
    move v10, v12

    goto :goto_14

    :cond_4a
    move v10, v13

    :cond_4b
    :goto_14
    sget-object v4, LT/m;->i:LT/n1;

    if-eqz v4, :cond_4e

    iget-boolean v7, v4, LT/n1;->d:Z

    if-nez v7, :cond_4c

    goto :goto_16

    :cond_4c
    new-array v2, v2, [B

    int-to-byte v7, v10

    aput-byte v7, v2, v13

    int-to-byte v7, v13

    aput-byte v7, v2, v14

    invoke-static {v2, v12, v6}, LT/n1;->d([BIF)V

    invoke-static {v2, v8, v3}, LT/n1;->d([BIF)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    :goto_15
    if-ge v13, v11, :cond_4d

    add-int/lit8 v3, v13, 0xa

    mul-int/lit8 v8, v13, 0x8

    rsub-int/lit8 v8, v8, 0x38

    ushr-long v8, v6, v8

    long-to-int v8, v8

    int-to-byte v8, v8

    aput-byte v8, v2, v3

    add-int/2addr v13, v14

    goto :goto_15

    :cond_4d
    invoke-virtual {v4, v2, v1}, LT/n1;->i([BI)V

    :cond_4e
    :goto_16
    return v14

    :pswitch_9
    sget v1, Lcom/ex/auto/BlackoutActivity;->t:I

    iget-object v1, v0, LT/t;->b:Landroid/content/ContextWrapper;

    check-cast v1, Lcom/ex/auto/BlackoutActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    return v14

    :pswitch_a
    sget-object v1, Lcom/ex/auto/AppPipFloaterService;->u:Lcom/ex/auto/AppPipFloaterService;

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    iget-object v2, v0, LT/t;->b:Landroid/content/ContextWrapper;

    check-cast v2, Lcom/ex/auto/AppPipFloaterService;

    if-eqz v1, :cond_54

    if-eq v1, v14, :cond_53

    if-eq v1, v12, :cond_4f

    goto :goto_18

    :cond_4f
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iget v3, v2, Lcom/ex/auto/AppPipFloaterService;->o:F

    sub-float/2addr v1, v3

    float-to-int v1, v1

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    iget v4, v2, Lcom/ex/auto/AppPipFloaterService;->p:F

    sub-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v4

    invoke-virtual {v2, v8}, Lcom/ex/auto/AppPipFloaterService;->c(I)I

    move-result v5

    if-gt v4, v5, :cond_50

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v4

    invoke-virtual {v2, v8}, Lcom/ex/auto/AppPipFloaterService;->c(I)I

    move-result v5

    if-le v4, v5, :cond_51

    :cond_50
    iput-boolean v14, v2, Lcom/ex/auto/AppPipFloaterService;->s:Z

    :cond_51
    iget-object v4, v2, Lcom/ex/auto/AppPipFloaterService;->g:Landroid/view/WindowManager$LayoutParams;

    invoke-static {v4}, LI0/f;->b(Ljava/lang/Object;)V

    iget v5, v2, Lcom/ex/auto/AppPipFloaterService;->q:I

    add-int/2addr v5, v1

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v1, v2, Lcom/ex/auto/AppPipFloaterService;->g:Landroid/view/WindowManager$LayoutParams;

    invoke-static {v1}, LI0/f;->b(Ljava/lang/Object;)V

    iget v4, v2, Lcom/ex/auto/AppPipFloaterService;->r:I

    add-int/2addr v4, v3

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    :try_start_6
    iget-object v1, v2, Lcom/ex/auto/AppPipFloaterService;->a:Landroid/view/WindowManager;

    if-eqz v1, :cond_52

    iget-object v3, v2, Lcom/ex/auto/AppPipFloaterService;->b:Landroid/widget/LinearLayout;

    iget-object v4, v2, Lcom/ex/auto/AppPipFloaterService;->g:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v3, v4}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_17

    :cond_52
    invoke-static {v6}, LI0/f;->h(Ljava/lang/String;)V

    throw v9
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :catchall_3
    :goto_17
    iget-boolean v13, v2, Lcom/ex/auto/AppPipFloaterService;->s:Z

    goto :goto_18

    :cond_53
    iget-boolean v13, v2, Lcom/ex/auto/AppPipFloaterService;->s:Z

    goto :goto_18

    :cond_54
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iput v1, v2, Lcom/ex/auto/AppPipFloaterService;->o:F

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iput v1, v2, Lcom/ex/auto/AppPipFloaterService;->p:F

    iget-object v1, v2, Lcom/ex/auto/AppPipFloaterService;->g:Landroid/view/WindowManager$LayoutParams;

    invoke-static {v1}, LI0/f;->b(Ljava/lang/Object;)V

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v1, v2, Lcom/ex/auto/AppPipFloaterService;->q:I

    iget-object v1, v2, Lcom/ex/auto/AppPipFloaterService;->g:Landroid/view/WindowManager$LayoutParams;

    invoke-static {v1}, LI0/f;->b(Ljava/lang/Object;)V

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    iput v1, v2, Lcom/ex/auto/AppPipFloaterService;->r:I

    iput-boolean v13, v2, Lcom/ex/auto/AppPipFloaterService;->s:Z

    :goto_18
    return v13

    :pswitch_data_0
    .packed-switch 0x0
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
