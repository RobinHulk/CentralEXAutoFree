.class public final synthetic LT/u1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LH0/a;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/ex/auto/HomeFloatingWidgetsService;


# direct methods
.method public synthetic constructor <init>(Lcom/ex/auto/HomeFloatingWidgetsService;I)V
    .locals 0

    iput p2, p0, LT/u1;->a:I

    iput-object p1, p0, LT/u1;->b:Lcom/ex/auto/HomeFloatingWidgetsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 12

    iget v0, p0, LT/u1;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LT/u1;->b:Lcom/ex/auto/HomeFloatingWidgetsService;

    iget-object v1, v0, Lcom/ex/auto/HomeFloatingWidgetsService;->c:Landroid/os/Handler;

    new-instance v2, LT/w1;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, LT/w1;-><init>(Lcom/ex/auto/HomeFloatingWidgetsService;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    sget-object v0, Lv0/e;->c:Lv0/e;

    return-object v0

    :pswitch_0
    iget-object v0, p0, LT/u1;->b:Lcom/ex/auto/HomeFloatingWidgetsService;

    iget-object v1, v0, Lcom/ex/auto/HomeFloatingWidgetsService;->D:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_0

    goto/16 :goto_1

    :cond_0
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/high16 v2, -0x4d000000

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v4, 0x14

    invoke-virtual {v0, v4}, Lcom/ex/auto/HomeFloatingWidgetsService;->q(I)I

    move-result v5

    const/16 v6, 0x12

    invoke-virtual {v0, v6}, Lcom/ex/auto/HomeFloatingWidgetsService;->q(I)I

    move-result v6

    invoke-virtual {v0, v4}, Lcom/ex/auto/HomeFloatingWidgetsService;->q(I)I

    move-result v7

    invoke-virtual {v0, v4}, Lcom/ex/auto/HomeFloatingWidgetsService;->q(I)I

    move-result v4

    invoke-virtual {v2, v5, v6, v7, v4}, Landroid/view/View;->setPadding(IIII)V

    new-instance v4, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/16 v5, 0x16

    invoke-virtual {v0, v5}, Lcom/ex/auto/HomeFloatingWidgetsService;->q(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    const v5, 0x7f05003d

    invoke-virtual {v0, v5}, Landroid/content/Context;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    invoke-virtual {v0, v3}, Lcom/ex/auto/HomeFloatingWidgetsService;->q(I)I

    move-result v5

    const v6, 0x22ffffff

    invoke-virtual {v4, v5, v6}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v5, 0x1cc

    invoke-virtual {v0, v5}, Lcom/ex/auto/HomeFloatingWidgetsService;->q(I)I

    move-result v5

    const/4 v6, -0x2

    const/16 v7, 0x11

    invoke-direct {v4, v5, v6, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, LT/x1;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, LT/x1;-><init>(I)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v8, 0x10

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, -0x1

    invoke-direct {v8, v9, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v8, Landroid/widget/TextView;

    invoke-direct {v8, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v10, "Apps por uso de CPU"

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v10, 0x7f05003f

    invoke-virtual {v0, v10}, Landroid/content/Context;->getColor(I)I

    move-result v10

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v10, 0x41980000    # 19.0f

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v8}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v10

    invoke-virtual {v8, v10, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-direct {v10, v5, v6, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v8, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v4, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v8, Landroid/widget/TextView;

    invoke-direct {v8, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v10, "\u2715"

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v10, 0x41900000    # 18.0f

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setGravity(I)V

    const/16 v7, 0x22

    invoke-virtual {v0, v7}, Lcom/ex/auto/HomeFloatingWidgetsService;->q(I)I

    move-result v7

    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v10, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v7, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v7}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-virtual {v7, v3}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    const v10, 0x7f05003e

    invoke-virtual {v0, v10}, Landroid/content/Context;->getColor(I)I

    move-result v10

    invoke-virtual {v7, v10}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    invoke-virtual {v8, v7}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v7, LT/t1;

    const/16 v10, 0x18

    invoke-direct {v7, v0, v10}, LT/t1;-><init>(Lcom/ex/auto/HomeFloatingWidgetsService;I)V

    invoke-virtual {v8, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v4, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v9, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v6, 0xe

    invoke-virtual {v0, v6}, Lcom/ex/auto/HomeFloatingWidgetsService;->q(I)I

    move-result v6

    iput v6, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v4, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v6, "Lendo processos\u2026"

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v6, 0x7f050040

    invoke-virtual {v0, v6}, Landroid/content/Context;->getColor(I)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v6, 0x41700000    # 15.0f

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 v6, 0xa

    invoke-virtual {v0, v6}, Lcom/ex/auto/HomeFloatingWidgetsService;->q(I)I

    move-result v7

    invoke-virtual {v0, v6}, Lcom/ex/auto/HomeFloatingWidgetsService;->q(I)I

    move-result v6

    invoke-virtual {v3, v5, v7, v5, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v2, LT/t1;

    const/16 v3, 0x19

    invoke-direct {v2, v0, v3}, LT/t1;-><init>(Lcom/ex/auto/HomeFloatingWidgetsService;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    const/16 v9, 0x108

    const/4 v10, -0x3

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/16 v8, 0x7f6

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v1, v0, Lcom/ex/auto/HomeFloatingWidgetsService;->D:Landroid/widget/FrameLayout;

    const/4 v3, 0x0

    :try_start_0
    iget-object v5, v0, Lcom/ex/auto/HomeFloatingWidgetsService;->a:Landroid/view/WindowManager;

    if-eqz v5, :cond_2

    invoke-interface {v5, v1, v2}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, v0, Lcom/ex/auto/HomeFloatingWidgetsService;->E:LT/G1;

    iget-object v3, v0, Lcom/ex/auto/HomeFloatingWidgetsService;->c:Landroid/os/Handler;

    if-eqz v2, :cond_1

    invoke-virtual {v3, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    new-instance v2, LT/G1;

    invoke-direct {v2, v0, v1, v4}, LT/G1;-><init>(Lcom/ex/auto/HomeFloatingWidgetsService;Landroid/widget/FrameLayout;Landroid/widget/LinearLayout;)V

    iput-object v2, v0, Lcom/ex/auto/HomeFloatingWidgetsService;->E:LT/G1;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_0

    :cond_2
    :try_start_1
    const-string v1, "wm"

    invoke-static {v1}, LI0/f;->h(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "cpuPanel: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "HomeFloatingWidgets"

    invoke-static {v1, v2, v4}, LM/d0;->r(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    iput-object v3, v0, Lcom/ex/auto/HomeFloatingWidgetsService;->D:Landroid/widget/FrameLayout;

    :goto_1
    sget-object v0, Lv0/e;->c:Lv0/e;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
