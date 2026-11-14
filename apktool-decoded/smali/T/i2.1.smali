.class public final synthetic LT/i2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LH0/a;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/ex/auto/MainActivity;


# direct methods
.method public synthetic constructor <init>(ILcom/ex/auto/MainActivity;)V
    .locals 0

    iput p1, p0, LT/i2;->a:I

    iput-object p2, p0, LT/i2;->b:Lcom/ex/auto/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 33

    move-object/from16 v0, p0

    const-string v1, "binding"

    const/16 v4, 0x15

    const/16 v5, 0x17

    const/4 v6, 0x3

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-object v10, v0, LT/i2;->b:Lcom/ex/auto/MainActivity;

    iget v11, v0, LT/i2;->a:I

    packed-switch v11, :pswitch_data_0

    invoke-static {v10, v8, v6}, Lcom/ex/auto/MainActivity;->q0(Lcom/ex/auto/MainActivity;Ljava/lang/String;I)LT/k3;

    move-result-object v1

    iget-object v2, v1, LT/k3;->a:Ljava/lang/String;

    invoke-static {v2}, Lcom/ex/auto/MainActivity;->V0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v8, Lv0/a;

    iget-object v1, v1, LT/k3;->b:Ljava/lang/String;

    invoke-direct {v8, v1, v2}, Lv0/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-object v8

    :pswitch_0
    sget v1, Lcom/ex/auto/MainActivity;->u0:I

    invoke-virtual {v10}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "drive_regen_prefs"

    invoke-virtual {v1, v2, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    return-object v1

    :pswitch_1
    sget v1, Lcom/ex/auto/MainActivity;->u0:I

    invoke-virtual {v10}, Lcom/ex/auto/MainActivity;->s0()LT/p3;

    move-result-object v1

    iget-object v2, v1, LT/p3;->d:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-static {v2}, LO0/j;->E0(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    move-object v2, v8

    :goto_0
    if-eqz v2, :cond_2

    new-instance v8, Lv0/a;

    iget-object v1, v1, LT/p3;->c:Ljava/lang/String;

    invoke-direct {v8, v1, v2}, Lv0/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    return-object v8

    :pswitch_2
    sget v1, Lcom/ex/auto/MainActivity;->u0:I

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, LT/U1;

    invoke-direct {v1, v5, v10}, LT/U1;-><init>(ILcom/ex/auto/MainActivity;)V

    iget-object v2, v10, Lcom/ex/auto/MainActivity;->w:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v2, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    sget-object v1, Lv0/e;->c:Lv0/e;

    return-object v1

    :pswitch_3
    sget v1, Lcom/ex/auto/MainActivity;->u0:I

    const-string v1, "tela_preta_prefs"

    invoke-virtual {v10, v1, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    return-object v1

    :pswitch_4
    sget v1, Lcom/ex/auto/MainActivity;->u0:I

    sget-object v1, LT/J3;->a:Ljava/util/List;

    invoke-static {v10, v9}, LT/J3;->f(Landroid/content/Context;I)LT/I3;

    move-result-object v1

    return-object v1

    :pswitch_5
    sget v1, Lcom/ex/auto/MainActivity;->u0:I

    invoke-virtual {v10}, Lcom/ex/auto/MainActivity;->o1()V

    sget-object v1, Lv0/e;->c:Lv0/e;

    return-object v1

    :pswitch_6
    sget v1, Lcom/ex/auto/MainActivity;->u0:I

    sget-object v1, LT/J3;->a:Ljava/util/List;

    const-string v1, "bot\u00e3o"

    invoke-static {v10, v1}, LT/J3;->h(Landroid/content/Context;Ljava/lang/String;)LT/I3;

    move-result-object v1

    return-object v1

    :pswitch_7
    sget v1, Lcom/ex/auto/MainActivity;->u0:I

    invoke-virtual {v10}, Lcom/ex/auto/MainActivity;->T0()V

    sget-object v1, Lv0/e;->c:Lv0/e;

    return-object v1

    :pswitch_8
    sget v10, Lcom/ex/auto/MainActivity;->u0:I

    iget-object v10, v0, LT/i2;->b:Lcom/ex/auto/MainActivity;

    invoke-virtual {v10}, Lcom/ex/auto/MainActivity;->C()V

    iget-object v11, v10, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v11, :cond_8

    iget-object v1, v11, LU/a;->R0:LU/b;

    iget-object v1, v1, LU/b;->t:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {v10}, Le/j;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v8, v8, Landroid/util/DisplayMetrics;->density:F

    const v11, 0x7f0f0380

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    const-string v15, "getString(...)"

    invoke-static {v11, v15}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v10, v11}, Lcom/ex/auto/MainActivity;->L(Lcom/ex/auto/MainActivity;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v11

    invoke-virtual {v1, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const v11, 0x7f0f037d

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v15}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v10, v8, v11}, Lcom/ex/auto/MainActivity;->K(Lcom/ex/auto/MainActivity;FLjava/lang/String;)Landroid/widget/TextView;

    move-result-object v11

    const/4 v12, 0x6

    int-to-float v12, v12

    mul-float/2addr v12, v8

    float-to-int v14, v12

    const/4 v12, 0x4

    int-to-float v12, v12

    mul-float/2addr v12, v8

    float-to-int v13, v12

    invoke-virtual {v11, v9, v14, v9, v13}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {v1, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v12, Landroid/widget/LinearLayout;

    invoke-direct {v12, v10}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v12, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const v11, 0x7f070059

    invoke-virtual {v12, v11}, Landroid/view/View;->setBackgroundResource(I)V

    const/16 v6, 0x10

    int-to-float v11, v6

    mul-float/2addr v11, v8

    float-to-int v11, v11

    invoke-virtual {v12, v11, v11, v11, v11}, Landroid/view/View;->setPadding(IIII)V

    const v2, 0x7f0f0342

    invoke-virtual {v10, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v15}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v10}, Lcom/ex/auto/MainActivity;->B0()Landroid/content/SharedPreferences;

    move-result-object v7

    const-string v3, "widget_bg_opacity_pct"

    const/16 v6, 0x64

    invoke-interface {v7, v3, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    new-instance v7, LT/W1;

    invoke-direct {v7, v4, v10}, LT/W1;-><init>(ILcom/ex/auto/MainActivity;)V

    const/16 v17, 0x0

    const/16 v20, 0x64

    move v4, v11

    const v6, 0x7f070059

    move-object v11, v10

    move-object v6, v12

    move v12, v8

    move/from16 v22, v13

    move-object v13, v2

    move v2, v14

    move v14, v3

    move-object v3, v15

    move/from16 v15, v17

    move/from16 v16, v20

    move-object/from16 v17, v7

    invoke-static/range {v11 .. v17}, Lcom/ex/auto/MainActivity;->O(Lcom/ex/auto/MainActivity;FLjava/lang/String;IIILH0/l;)Landroid/widget/LinearLayout;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const v7, 0x7f0f0341

    invoke-virtual {v10, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v3}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v10, v8, v7}, Lcom/ex/auto/MainActivity;->K(Lcom/ex/auto/MainActivity;FLjava/lang/String;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const v7, 0x7f0f0381

    invoke-virtual {v10, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v3}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v10}, Lcom/ex/auto/MainActivity;->B0()Landroid/content/SharedPreferences;

    move-result-object v11

    const-string v12, "widgets_poslock_all"

    invoke-interface {v11, v12, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    new-instance v12, LT/W1;

    invoke-direct {v12, v5, v10}, LT/W1;-><init>(ILcom/ex/auto/MainActivity;)V

    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, v10}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v13, 0x10

    invoke-virtual {v5, v13}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/16 v13, 0x8

    int-to-float v13, v13

    invoke-virtual {v10}, Le/j;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v14

    iget v14, v14, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v14, v13

    float-to-int v14, v14

    invoke-virtual {v10, v11, v12}, Lcom/ex/auto/MainActivity;->j2(ZLH0/l;)Lcom/google/android/material/switchmaterial/SwitchMaterial;

    move-result-object v11

    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v15, -0x2

    invoke-direct {v12, v15, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v12, v14}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    invoke-virtual {v5, v11, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v11, Landroid/widget/TextView;

    invoke-direct {v11, v10}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v11, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v7, 0x7f05003f

    invoke-virtual {v10, v7}, Landroid/content/Context;->getColor(I)I

    move-result v7

    invoke-virtual {v11, v7}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v7, 0x41800000    # 16.0f

    invoke-virtual {v11, v7}, Landroid/widget/TextView;->setTextSize(F)V

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-direct {v7, v9, v15, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v5, v11, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v11, -0x1

    invoke-direct {v7, v11, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v2, v7, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v6, v5, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v11, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v7, 0xa

    int-to-float v7, v7

    mul-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v1, v6, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, v10}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const v6, 0x7f070059

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {v5, v4, v4, v4, v4}, Landroid/view/View;->setPadding(IIII)V

    new-instance v6, Landroid/widget/LinearLayout;

    invoke-direct {v6, v10}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v11, 0x10

    invoke-virtual {v6, v11}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual {v10}, Lcom/ex/auto/MainActivity;->B0()Landroid/content/SharedPreferences;

    move-result-object v11

    const-string v12, "widget_float_apps_enabled"

    invoke-interface {v11, v12, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    new-instance v12, LT/W1;

    const/16 v9, 0x18

    invoke-direct {v12, v9, v10}, LT/W1;-><init>(ILcom/ex/auto/MainActivity;)V

    invoke-virtual {v10, v11, v12}, Lcom/ex/auto/MainActivity;->j2(ZLH0/l;)Lcom/google/android/material/switchmaterial/SwitchMaterial;

    move-result-object v9

    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v11, v15, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    mul-float/2addr v13, v8

    float-to-int v13, v13

    invoke-virtual {v11, v13}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    invoke-virtual {v6, v9, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const v9, 0x7f0f0340

    invoke-virtual {v10, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v3}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v10, v9}, Lcom/ex/auto/MainActivity;->L(Lcom/ex/auto/MainActivity;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v9

    const/high16 v12, 0x41880000    # 17.0f

    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setTextSize(F)V

    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v11, v15, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v9, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v9, Landroid/view/View;

    invoke-direct {v9, v10}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v12, 0x0

    const/4 v15, 0x1

    invoke-direct {v11, v12, v15, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v6, v9, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const-string v9, "widget_float_apps_pinned"

    invoke-static {v10, v8, v9}, Lcom/ex/auto/MainActivity;->M(Lcom/ex/auto/MainActivity;FLjava/lang/String;)Landroid/widget/TextView;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v11, -0x2

    const/4 v12, -0x1

    invoke-direct {v9, v12, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v6, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const v6, 0x7f0f033d

    invoke-virtual {v10, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v3}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v10, v8, v6}, Lcom/ex/auto/MainActivity;->K(Lcom/ex/auto/MainActivity;FLjava/lang/String;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v6, Landroid/widget/Button;

    invoke-direct {v6, v10}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const v9, 0x7f0f033b

    invoke-virtual {v10, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setAllCaps(Z)V

    const/high16 v9, 0x41700000    # 15.0f

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setTextSize(F)V

    new-instance v11, LT/T1;

    const/16 v12, 0x15

    invoke-direct {v11, v12, v10}, LT/T1;-><init>(ILcom/ex/auto/MainActivity;)V

    invoke-virtual {v6, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v12, 0x30

    int-to-float v12, v12

    mul-float/2addr v12, v8

    float-to-int v15, v12

    const/4 v12, -0x1

    invoke-direct {v11, v12, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v7, v11, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v5, v6, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v6, Landroid/widget/LinearLayout;

    invoke-direct {v6, v10}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const v11, 0x7f0f033f

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v3}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v12, "widget_apps_rows"

    const/4 v9, 0x2

    invoke-static {v10, v8, v11, v12, v9}, Lcom/ex/auto/MainActivity;->P(Lcom/ex/auto/MainActivity;FLjava/lang/String;Ljava/lang/String;I)Landroid/widget/LinearLayout;

    move-result-object v11

    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v12, -0x2

    invoke-direct {v9, v7, v12, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v9, v13}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    invoke-virtual {v6, v11, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const v9, 0x7f0f033c

    invoke-virtual {v10, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v3}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "widget_apps_cols"

    const/4 v7, 0x3

    invoke-static {v10, v8, v9, v11, v7}, Lcom/ex/auto/MainActivity;->P(Lcom/ex/auto/MainActivity;FLjava/lang/String;Ljava/lang/String;I)Landroid/widget/LinearLayout;

    move-result-object v7

    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v11, 0x0

    invoke-direct {v9, v11, v12, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v9, v13}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-virtual {v6, v7, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, -0x1

    invoke-direct {v7, v9, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v9, 0xc

    int-to-float v9, v9

    mul-float/2addr v9, v8

    float-to-int v9, v9

    iput v9, v7, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v5, v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v6, Landroid/widget/LinearLayout;

    invoke-direct {v6, v10}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const v7, 0x7f0f0374

    invoke-virtual {v10, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v3}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v10}, Lcom/ex/auto/MainActivity;->B0()Landroid/content/SharedPreferences;

    move-result-object v12

    const-string v14, "widget_float_apps_size_pct"

    const/16 v7, 0x64

    invoke-interface {v12, v14, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v14

    new-instance v7, LT/W1;

    const/16 v12, 0x19

    invoke-direct {v7, v12, v10}, LT/W1;-><init>(ILcom/ex/auto/MainActivity;)V

    const/16 v23, 0x32

    const/16 v24, 0xc8

    move-object/from16 v25, v11

    move-object v11, v10

    const/16 v16, -0x2

    move v12, v8

    move/from16 v27, v13

    move-object/from16 v13, v25

    const/high16 v0, 0x3f800000    # 1.0f

    move/from16 v25, v2

    move/from16 v28, v15

    move/from16 v2, v16

    move/from16 v15, v23

    move/from16 v16, v24

    move-object/from16 v17, v7

    invoke-static/range {v11 .. v17}, Lcom/ex/auto/MainActivity;->O(Lcom/ex/auto/MainActivity;FLjava/lang/String;IIILH0/l;)Landroid/widget/LinearLayout;

    move-result-object v7

    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v12, 0x0

    invoke-direct {v11, v12, v2, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    move/from16 v15, v27

    invoke-virtual {v11, v15}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    invoke-virtual {v6, v7, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const v7, 0x7f0f033a

    invoke-virtual {v10, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13, v3}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v10}, Lcom/ex/auto/MainActivity;->B0()Landroid/content/SharedPreferences;

    move-result-object v11

    const-string v12, "widget_float_apps_alpha_pct"

    const/16 v14, 0x64

    invoke-interface {v11, v12, v14}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v16

    new-instance v14, LT/W1;

    const/16 v11, 0x1a

    invoke-direct {v14, v11, v10}, LT/W1;-><init>(ILcom/ex/auto/MainActivity;)V

    const/16 v17, 0x0

    const/16 v18, 0x64

    move-object v11, v10

    move v12, v8

    move-object/from16 v23, v14

    move/from16 v14, v16

    move v7, v15

    move/from16 v15, v17

    move/from16 v16, v18

    move-object/from16 v17, v23

    invoke-static/range {v11 .. v17}, Lcom/ex/auto/MainActivity;->O(Lcom/ex/auto/MainActivity;FLjava/lang/String;IIILH0/l;)Landroid/widget/LinearLayout;

    move-result-object v11

    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v13, 0x0

    invoke-direct {v12, v13, v2, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v12, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-virtual {v6, v11, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v12, -0x1

    invoke-direct {v11, v12, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v13, 0xe

    int-to-float v13, v13

    mul-float/2addr v13, v8

    float-to-int v15, v13

    iput v15, v11, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v5, v6, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v12, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v9, v6, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v1, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, v10}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const v6, 0x7f070059

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {v5, v4, v4, v4, v4}, Landroid/view/View;->setPadding(IIII)V

    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, v10}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v11, 0x10

    invoke-virtual {v4, v11}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual {v10}, Lcom/ex/auto/MainActivity;->B0()Landroid/content/SharedPreferences;

    move-result-object v11

    const-string v12, "widget_float_volume_enabled"

    invoke-interface {v11, v12, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    new-instance v6, LT/W1;

    const/16 v12, 0x1b

    invoke-direct {v6, v12, v10}, LT/W1;-><init>(ILcom/ex/auto/MainActivity;)V

    invoke-virtual {v10, v11, v6}, Lcom/ex/auto/MainActivity;->j2(ZLH0/l;)Lcom/google/android/material/switchmaterial/SwitchMaterial;

    move-result-object v6

    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v11, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v11, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    invoke-virtual {v4, v6, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const v6, 0x7f0f037b

    invoke-virtual {v10, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v3}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v10, v6}, Lcom/ex/auto/MainActivity;->L(Lcom/ex/auto/MainActivity;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v6

    const/high16 v11, 0x41880000    # 17.0f

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setTextSize(F)V

    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v11, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v6, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v6, Landroid/view/View;

    invoke-direct {v6, v10}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v12, 0x0

    const/4 v13, 0x1

    invoke-direct {v11, v12, v13, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v4, v6, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const-string v6, "widget_float_volume_pinned"

    invoke-static {v10, v8, v6}, Lcom/ex/auto/MainActivity;->M(Lcom/ex/auto/MainActivity;FLjava/lang/String;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v11, -0x1

    invoke-direct {v6, v11, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v4, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const v4, 0x7f0f0377

    invoke-virtual {v10, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v10, v8, v4}, Lcom/ex/auto/MainActivity;->K(Lcom/ex/auto/MainActivity;FLjava/lang/String;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, v10}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v11, Landroid/widget/Button;

    invoke-direct {v11, v10}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    invoke-virtual {v11, v6}, Landroid/widget/TextView;->setAllCaps(Z)V

    const/high16 v12, 0x41700000    # 15.0f

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v10}, Lcom/ex/auto/MainActivity;->B0()Landroid/content/SharedPreferences;

    move-result-object v12

    const-string v13, "widget_volume_vertical"

    invoke-interface {v12, v13, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    if-eqz v12, :cond_3

    const v12, 0x7f0f037c

    goto :goto_1

    :cond_3
    const v12, 0x7f0f0378

    :goto_1
    invoke-virtual {v10, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v12, 0x1

    invoke-virtual {v10, v11, v12}, Lcom/ex/auto/MainActivity;->i2(Landroid/widget/Button;Z)V

    new-instance v12, LT/s2;

    invoke-direct {v12, v10, v11, v6}, LT/s2;-><init>(Lcom/ex/auto/MainActivity;Landroid/widget/Button;I)V

    invoke-virtual {v11, v12}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v12, Landroid/widget/Button;

    invoke-direct {v12, v10}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    invoke-virtual {v12, v6}, Landroid/widget/TextView;->setAllCaps(Z)V

    const/high16 v13, 0x41700000    # 15.0f

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v10}, Lcom/ex/auto/MainActivity;->B0()Landroid/content/SharedPreferences;

    move-result-object v13

    const-string v14, "widget_volume_signs"

    invoke-interface {v13, v14, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v13

    if-eqz v13, :cond_4

    const v6, 0x7f0f0379

    goto :goto_2

    :cond_4
    const v6, 0x7f0f037a

    :goto_2
    invoke-virtual {v10, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v12, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v6, 0x1

    invoke-virtual {v10, v12, v6}, Lcom/ex/auto/MainActivity;->i2(Landroid/widget/Button;Z)V

    new-instance v13, LT/s2;

    invoke-direct {v13, v10, v12, v6}, LT/s2;-><init>(Lcom/ex/auto/MainActivity;Landroid/widget/Button;I)V

    invoke-virtual {v12, v13}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    move/from16 v13, v28

    const/4 v14, 0x0

    invoke-direct {v6, v14, v13, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    move/from16 v2, v22

    invoke-virtual {v6, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    invoke-virtual {v4, v11, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v14, v13, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v6, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-virtual {v4, v12, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x2

    const/4 v11, -0x1

    invoke-direct {v2, v11, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v9, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v5, v4, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v10}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v14}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const v4, 0x7f0f0374

    invoke-virtual {v10, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13, v3}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v10}, Lcom/ex/auto/MainActivity;->B0()Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v6, "widget_float_volume_size_pct"

    const/16 v11, 0x64

    invoke-interface {v4, v6, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v14

    new-instance v4, LT/W1;

    const/16 v6, 0x1c

    invoke-direct {v4, v6, v10}, LT/W1;-><init>(ILcom/ex/auto/MainActivity;)V

    const/16 v6, 0x32

    const/16 v16, 0xc8

    move-object v11, v10

    move v12, v8

    move/from16 v29, v15

    move v15, v6

    move-object/from16 v17, v4

    invoke-static/range {v11 .. v17}, Lcom/ex/auto/MainActivity;->O(Lcom/ex/auto/MainActivity;FLjava/lang/String;IIILH0/l;)Landroid/widget/LinearLayout;

    move-result-object v4

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v11, -0x2

    const/4 v12, 0x0

    invoke-direct {v6, v12, v11, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    invoke-virtual {v2, v4, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const v4, 0x7f0f033a

    invoke-virtual {v10, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13, v3}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v10}, Lcom/ex/auto/MainActivity;->B0()Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v6, "widget_float_volume_alpha_pct"

    const/16 v11, 0x64

    invoke-interface {v4, v6, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v14

    new-instance v4, LT/W1;

    const/16 v6, 0x16

    invoke-direct {v4, v6, v10}, LT/W1;-><init>(ILcom/ex/auto/MainActivity;)V

    const/4 v15, 0x0

    const/16 v16, 0x64

    move-object v11, v10

    move v12, v8

    move-object/from16 v17, v4

    invoke-static/range {v11 .. v17}, Lcom/ex/auto/MainActivity;->O(Lcom/ex/auto/MainActivity;FLjava/lang/String;IIILH0/l;)Landroid/widget/LinearLayout;

    move-result-object v4

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v11, -0x2

    const/4 v12, 0x0

    invoke-direct {v6, v12, v11, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-virtual {v2, v4, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x1

    invoke-direct {v4, v6, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move/from16 v7, v29

    iput v7, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v5, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v6, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v9, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v1, v5, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const v2, 0x7f0f0374

    invoke-virtual {v10, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const v4, 0x7f0f033a

    invoke-virtual {v10, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v18, "widget_float_drive_regen_alpha_pct"

    const-string v21, "drive_regen"

    const v13, 0x7f0f0348

    const v14, 0x7f0f0347

    const-string v15, "widget_float_drive_regen_enabled"

    const-string v16, "widget_float_drive_regen_pinned"

    const-string v17, "widget_float_drive_regen_size_pct"

    move-object v11, v10

    move v12, v8

    move-object/from16 v19, v2

    move-object/from16 v20, v4

    invoke-static/range {v11 .. v21}, Lcom/ex/auto/MainActivity;->S(Lcom/ex/auto/MainActivity;FIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v26

    const-string v18, "widget_float_fan_alpha_pct"

    const-string v21, "fan"

    const v13, 0x7f0f034a

    const v14, 0x7f0f0349

    const-string v15, "widget_float_fan_enabled"

    const-string v16, "widget_float_fan_pinned"

    const-string v17, "widget_float_fan_size_pct"

    invoke-static/range {v11 .. v21}, Lcom/ex/auto/MainActivity;->S(Lcom/ex/auto/MainActivity;FIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v27

    const-string v18, "widget_float_temp_alpha_pct"

    const-string v21, "temp"

    const v13, 0x7f0f0350

    const v14, 0x7f0f034f

    const-string v15, "widget_float_temp_enabled"

    const-string v16, "widget_float_temp_pinned"

    const-string v17, "widget_float_temp_size_pct"

    invoke-static/range {v11 .. v21}, Lcom/ex/auto/MainActivity;->S(Lcom/ex/auto/MainActivity;FIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v28

    const-string v18, "widget_float_vent_alpha_pct"

    const-string v21, "vent"

    const v13, 0x7f0f0354

    const v14, 0x7f0f0351

    const-string v15, "widget_float_vent_enabled"

    const-string v16, "widget_float_vent_pinned"

    const-string v17, "widget_float_vent_size_pct"

    invoke-static/range {v11 .. v21}, Lcom/ex/auto/MainActivity;->S(Lcom/ex/auto/MainActivity;FIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v29

    const-string v18, "widget_float_vent_fan_alpha_pct"

    const-string v21, "vent_fan"

    const v13, 0x7f0f0353

    const v14, 0x7f0f0352

    const-string v15, "widget_float_vent_fan_enabled"

    const-string v16, "widget_float_vent_fan_pinned"

    const-string v17, "widget_float_vent_fan_size_pct"

    invoke-static/range {v11 .. v21}, Lcom/ex/auto/MainActivity;->S(Lcom/ex/auto/MainActivity;FIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v30

    const-string v18, "widget_float_heating_alpha_pct"

    const-string v21, "heating"

    const v13, 0x7f0f034c

    const v14, 0x7f0f034b

    const-string v15, "widget_float_heating_enabled"

    const-string v16, "widget_float_heating_pinned"

    const-string v17, "widget_float_heating_size_pct"

    invoke-static/range {v11 .. v21}, Lcom/ex/auto/MainActivity;->S(Lcom/ex/auto/MainActivity;FIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v31

    const-string v18, "widget_float_sysinfo_alpha_pct"

    const-string v21, "sysinfo"

    const v13, 0x7f0f034e

    const v14, 0x7f0f034d

    const-string v15, "widget_float_sysinfo_enabled"

    const-string v16, "widget_float_sysinfo_pinned"

    const-string v17, "widget_float_sysinfo_size_pct"

    invoke-static/range {v11 .. v21}, Lcom/ex/auto/MainActivity;->S(Lcom/ex/auto/MainActivity;FIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v32

    filled-new-array/range {v26 .. v32}, [Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-static {v2}, Lw0/j;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lw0/i;->X(Ljava/util/List;I)Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, v10}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x2

    invoke-direct {v7, v5, v8, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    const/4 v8, 0x1

    if-le v5, v8, :cond_5

    move/from16 v14, v25

    goto :goto_4

    :cond_5
    const/4 v14, 0x0

    :goto_4
    invoke-virtual {v7, v14}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    invoke-virtual {v4, v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, v8, :cond_6

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x2

    const/4 v7, 0x0

    invoke-direct {v5, v7, v6, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    move/from16 v6, v25

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-virtual {v4, v3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_5

    :cond_6
    move/from16 v6, v25

    const/4 v7, 0x0

    new-instance v3, Landroid/view/View;

    invoke-direct {v3, v10}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v7, v7, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v4, v3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_5
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    const/4 v7, -0x1

    invoke-direct {v3, v7, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v9, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v1, v4, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move/from16 v25, v6

    goto :goto_3

    :cond_7
    sget-object v0, Lv0/e;->c:Lv0/e;

    return-object v0

    :cond_8
    invoke-static {v1}, LI0/f;->h(Ljava/lang/String;)V

    throw v8

    :pswitch_9
    sget v0, Lcom/ex/auto/MainActivity;->u0:I

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, LT/U1;

    invoke-direct {v0, v5, v10}, LT/U1;-><init>(ILcom/ex/auto/MainActivity;)V

    iget-object v1, v10, Lcom/ex/auto/MainActivity;->w:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iget v0, v10, Lcom/ex/auto/MainActivity;->C:I

    iget v1, v10, Lcom/ex/auto/MainActivity;->A:I

    if-eq v0, v1, :cond_9

    iget-object v0, v10, Lcom/ex/auto/MainActivity;->y:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {v10}, Lcom/ex/auto/MainActivity;->o1()V

    :cond_9
    sget-object v0, Lv0/e;->c:Lv0/e;

    return-object v0

    :pswitch_a
    const/4 v7, -0x1

    sget v0, Lcom/ex/auto/MainActivity;->u0:I

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, LT/c2;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v10, v3, v2}, LT/c2;-><init>(Lcom/ex/auto/MainActivity;ZI)V

    iget-object v3, v10, Lcom/ex/auto/MainActivity;->w:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v3, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    const-string v2, "getAVASMode"

    invoke-virtual {v10, v2, v0}, Lcom/ex/auto/MainActivity;->K0(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Ljava/lang/Integer;

    if-eqz v2, :cond_a

    check-cast v0, Ljava/lang/Integer;

    goto :goto_6

    :cond_a
    move-object v0, v8

    :goto_6
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_7

    :cond_b
    move v3, v7

    :goto_7
    if-lez v3, :cond_c

    iput v3, v10, Lcom/ex/auto/MainActivity;->L:I

    :cond_c
    if-nez v3, :cond_d

    const/4 v0, 0x1

    goto :goto_8

    :cond_d
    const/4 v0, 0x0

    :goto_8
    iput-boolean v0, v10, Lcom/ex/auto/MainActivity;->M:Z

    invoke-virtual {v10}, Lcom/ex/auto/MainActivity;->B0()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "avas_muted_saved"

    const/4 v4, 0x0

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const-string v2, "setAVASMode"

    if-ltz v3, :cond_e

    if-eqz v0, :cond_e

    if-eqz v3, :cond_e

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v10, v2, v0}, Lcom/ex/auto/MainActivity;->K0(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x1

    iput-boolean v4, v10, Lcom/ex/auto/MainActivity;->M:Z

    goto :goto_9

    :cond_e
    const/4 v4, 0x1

    if-ltz v3, :cond_10

    if-nez v0, :cond_10

    if-nez v3, :cond_10

    iget v0, v10, Lcom/ex/auto/MainActivity;->L:I

    if-ge v0, v4, :cond_f

    const/4 v0, 0x1

    :cond_f
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v10, v2, v0}, Lcom/ex/auto/MainActivity;->K0(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, v10, Lcom/ex/auto/MainActivity;->M:Z

    :cond_10
    :goto_9
    invoke-virtual {v10}, Lcom/ex/auto/MainActivity;->g1()V

    new-instance v0, LL0/c;

    const/4 v2, 0x1

    const/4 v3, 0x3

    invoke-direct {v0, v2, v3, v2}, LL0/a;-><init>(III)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v0}, Lw0/k;->V(Ljava/lang/Iterable;)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0}, LL0/a;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    move-object v3, v0

    check-cast v3, LL0/b;

    iget-boolean v3, v3, LL0/b;->c:Z

    if-eqz v3, :cond_11

    move-object v3, v0

    check-cast v3, LL0/b;

    invoke-virtual {v3}, LL0/b;->a()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const v4, 0x7f0f031c

    invoke-virtual {v10, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_11
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v3, 0x1090008

    invoke-direct {v0, v10, v3, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    const v2, 0x1090009

    invoke-virtual {v0, v2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    iget-object v2, v10, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v2, :cond_16

    iget-object v2, v2, LU/a;->D1:Landroid/widget/Spinner;

    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v0, v10, Lcom/ex/auto/MainActivity;->G:Landroid/car/hardware/property/CarPropertyManager;

    if-nez v0, :cond_12

    goto :goto_c

    :cond_12
    sget-object v2, LT/q;->a:[I

    array-length v3, v2

    move-object v4, v8

    const/4 v12, 0x0

    :goto_b
    if-ge v12, v3, :cond_13

    aget v4, v2, v12

    const v5, 0x21407057

    invoke-static {v0, v5, v4}, LT/U;->c(Landroid/car/hardware/property/CarPropertyManager;II)Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_13

    const/4 v5, 0x1

    add-int/2addr v12, v5

    goto :goto_b

    :cond_13
    const/4 v5, 0x1

    if-eqz v4, :cond_15

    iget-object v0, v10, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v0, :cond_14

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sub-int/2addr v1, v5

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v1, v2, v3}, LA/b;->o(III)I

    move-result v1

    iget-object v0, v0, LU/a;->D1:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setSelection(I)V

    invoke-virtual {v10}, Lcom/ex/auto/MainActivity;->B0()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "avas_sound_type_saved"

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_c

    :cond_14
    invoke-static {v1}, LI0/f;->h(Ljava/lang/String;)V

    throw v8

    :cond_15
    :goto_c
    sget-object v0, Lv0/e;->c:Lv0/e;

    return-object v0

    :cond_16
    invoke-static {v1}, LI0/f;->h(Ljava/lang/String;)V

    throw v8

    :pswitch_b
    sget v0, Lcom/ex/auto/MainActivity;->u0:I

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, LT/U1;

    const/16 v1, 0x15

    invoke-direct {v0, v1, v10}, LT/U1;-><init>(ILcom/ex/auto/MainActivity;)V

    iget-object v1, v10, Lcom/ex/auto/MainActivity;->w:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    sget-object v0, Lv0/e;->c:Lv0/e;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
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
