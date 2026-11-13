.class public final synthetic LT/P1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic a:LI0/j;

.field public final synthetic b:LI0/j;

.field public final synthetic c:LI0/k;

.field public final synthetic d:Landroid/view/WindowManager$LayoutParams;

.field public final synthetic e:LI0/k;

.field public final synthetic f:LI0/i;

.field public final synthetic g:LI0/i;

.field public final synthetic h:Lcom/ex/auto/LyricsFloaterService;

.field public final synthetic i:LT/H;

.field public final synthetic j:Landroid/widget/FrameLayout;


# direct methods
.method public synthetic constructor <init>(LI0/j;LI0/j;LI0/k;Landroid/view/WindowManager$LayoutParams;LI0/k;LI0/i;LI0/i;Lcom/ex/auto/LyricsFloaterService;LT/H;Landroid/widget/FrameLayout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LT/P1;->a:LI0/j;

    iput-object p2, p0, LT/P1;->b:LI0/j;

    iput-object p3, p0, LT/P1;->c:LI0/k;

    iput-object p4, p0, LT/P1;->d:Landroid/view/WindowManager$LayoutParams;

    iput-object p5, p0, LT/P1;->e:LI0/k;

    iput-object p6, p0, LT/P1;->f:LI0/i;

    iput-object p7, p0, LT/P1;->g:LI0/i;

    iput-object p8, p0, LT/P1;->h:Lcom/ex/auto/LyricsFloaterService;

    iput-object p9, p0, LT/P1;->i:LT/H;

    iput-object p10, p0, LT/P1;->j:Landroid/widget/FrameLayout;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 24

    move-object/from16 v1, p0

    const/4 v0, 0x3

    const/4 v2, 0x2

    iget-object v3, v1, LT/P1;->j:Landroid/widget/FrameLayout;

    sget-object v4, Lcom/ex/auto/LyricsFloaterService;->v:Ljava/util/Set;

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    iget-object v5, v1, LT/P1;->a:LI0/j;

    iget-object v6, v1, LT/P1;->b:LI0/j;

    iget-object v7, v1, LT/P1;->c:LI0/k;

    iget-object v8, v1, LT/P1;->d:Landroid/view/WindowManager$LayoutParams;

    iget-object v9, v1, LT/P1;->e:LI0/k;

    iget-object v10, v1, LT/P1;->f:LI0/i;

    iget-object v11, v1, LT/P1;->g:LI0/i;

    iget-object v12, v1, LT/P1;->i:LT/H;

    iget-object v13, v1, LT/P1;->h:Lcom/ex/auto/LyricsFloaterService;

    const/4 v14, 0x0

    const/4 v15, 0x1

    if-eqz v4, :cond_a

    const/16 v16, 0x0

    const-string v17, "wm"

    if-eq v4, v15, :cond_5

    if-eq v4, v2, :cond_0

    if-eq v4, v0, :cond_5

    goto/16 :goto_2

    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget v2, v5, LI0/j;->a:F

    sub-float/2addr v0, v2

    float-to-int v0, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iget v4, v6, LI0/j;->a:F

    sub-float/2addr v2, v4

    float-to-int v2, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v4

    const/4 v5, 0x6

    invoke-virtual {v13, v5}, Lcom/ex/auto/LyricsFloaterService;->d(I)I

    move-result v6

    if-gt v4, v6, :cond_1

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v4

    invoke-virtual {v13, v5}, Lcom/ex/auto/LyricsFloaterService;->d(I)I

    move-result v5

    if-le v4, v5, :cond_2

    :cond_1
    iput-boolean v15, v10, LI0/i;->a:Z

    iget-object v4, v13, Lcom/ex/auto/LyricsFloaterService;->c:Landroid/os/Handler;

    invoke-virtual {v4, v12}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_2
    iget-boolean v4, v10, LI0/i;->a:Z

    if-eqz v4, :cond_4

    iget v4, v7, LI0/k;->a:I

    add-int/2addr v4, v0

    iput v4, v8, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v0, v9, LI0/k;->a:I

    add-int/2addr v0, v2

    iput v0, v8, Landroid/view/WindowManager$LayoutParams;->y:I

    :try_start_0
    iget-object v0, v13, Lcom/ex/auto/LyricsFloaterService;->a:Landroid/view/WindowManager;

    if-eqz v0, :cond_3

    invoke-interface {v0, v3, v8}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_3
    invoke-static/range {v17 .. v17}, LI0/f;->h(Ljava/lang/String;)V

    throw v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_4
    :goto_0
    move v14, v15

    goto/16 :goto_2

    :cond_5
    iget-object v3, v13, Lcom/ex/auto/LyricsFloaterService;->c:Landroid/os/Handler;

    invoke-virtual {v3, v12}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-boolean v3, v10, LI0/i;->a:Z

    if-eqz v3, :cond_6

    iget v0, v8, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget v2, v8, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v3, v8, Landroid/view/WindowManager$LayoutParams;->y:I

    const-string v4, "lyrics_line"

    invoke-static {v13, v4, v0, v2, v3}, LT/Y;->d0(Landroid/content/Context;Ljava/lang/String;III)V

    goto :goto_0

    :cond_6
    iget-boolean v3, v11, LI0/i;->a:Z

    if-nez v3, :cond_4

    iget-boolean v3, v13, Lcom/ex/auto/LyricsFloaterService;->q:Z

    if-eqz v3, :cond_7

    invoke-virtual {v13}, Lcom/ex/auto/LyricsFloaterService;->c()V

    goto :goto_0

    :cond_7
    iget-object v3, v13, Lcom/ex/auto/LyricsFloaterService;->n:Landroid/widget/FrameLayout;

    if-nez v3, :cond_4

    iget-object v3, v13, Lcom/ex/auto/LyricsFloaterService;->h:Ljava/util/List;

    if-eqz v3, :cond_4

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_8

    goto :goto_0

    :cond_8
    new-instance v3, Landroid/widget/ScrollView;

    invoke-direct {v3, v13}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v14}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, v13}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v15}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v5, 0x28

    invoke-virtual {v4, v5, v5, v5, v5}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {v3, v4}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v13}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v6, "\u2715"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v6, -0x655c57

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v7, 0x41b00000    # 22.0f

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 v8, 0x18

    const/16 v9, 0xc

    invoke-virtual {v5, v8, v9, v8, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    new-instance v10, LT/N1;

    invoke-direct {v10, v13, v2}, LT/N1;-><init>(Lcom/ex/auto/LyricsFloaterService;I)V

    invoke-virtual {v5, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v13}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v10, "\u2699"

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v2, v8, v9, v8, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    new-instance v6, LT/N1;

    invoke-direct {v6, v13, v0}, LT/N1;-><init>(Lcom/ex/auto/LyricsFloaterService;I)V

    invoke-virtual {v2, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, v13}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v6, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v6}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/high16 v7, 0x41a00000    # 20.0f

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    const-string v7, "lyrics_style_config"

    invoke-virtual {v13, v7, v14}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    const-string v10, "bg"

    const v11, -0xedebe9

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    const v10, 0xffffff

    and-int/2addr v9, v10

    invoke-virtual {v13, v7, v14}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    const-string v10, "alpha"

    const/16 v11, 0xcc

    invoke-interface {v7, v10, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    const/16 v10, 0xff

    invoke-static {v7, v14, v10}, LA/b;->o(III)I

    move-result v7

    shl-int/2addr v7, v8

    or-int/2addr v7, v9

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    invoke-virtual {v0, v6}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v7, -0x1

    invoke-direct {v6, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v7, -0x2

    invoke-direct {v6, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const v8, 0x800035

    iput v8, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/16 v9, 0x34

    invoke-virtual {v13, v9}, Lcom/ex/auto/LyricsFloaterService;->d(I)I

    move-result v9

    invoke-virtual {v6, v9}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    invoke-virtual {v0, v2, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput v8, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {v0, v5, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    const/16 v22, 0x108

    const/16 v23, -0x3

    const/16 v19, 0x2f8

    const/16 v20, 0x208

    const/16 v21, 0x7f6

    move-object/from16 v18, v2

    invoke-direct/range {v18 .. v23}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    const/16 v5, 0x11

    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/16 v5, -0x3c

    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    :try_start_1
    iget-object v5, v13, Lcom/ex/auto/LyricsFloaterService;->a:Landroid/view/WindowManager;

    if-eqz v5, :cond_9

    invoke-interface {v5, v0, v2}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput-object v0, v13, Lcom/ex/auto/LyricsFloaterService;->n:Landroid/widget/FrameLayout;

    iput-object v4, v13, Lcom/ex/auto/LyricsFloaterService;->o:Landroid/widget/LinearLayout;

    iput-object v3, v13, Lcom/ex/auto/LyricsFloaterService;->p:Landroid/widget/ScrollView;

    iput-boolean v15, v13, Lcom/ex/auto/LyricsFloaterService;->q:Z

    invoke-virtual {v13}, Lcom/ex/auto/LyricsFloaterService;->g()V

    iget v0, v13, Lcom/ex/auto/LyricsFloaterService;->i:I

    invoke-virtual {v13, v0}, Lcom/ex/auto/LyricsFloaterService;->f(I)V

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    goto :goto_1

    :cond_9
    invoke-static/range {v17 .. v17}, LI0/f;->h(Ljava/lang/String;)V

    throw v16
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "addView painel: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "LyricsFloater"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_a
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, v5, LI0/j;->a:F

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, v6, LI0/j;->a:F

    iget v0, v8, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v0, v7, LI0/k;->a:I

    iget v0, v8, Landroid/view/WindowManager$LayoutParams;->y:I

    iput v0, v9, LI0/k;->a:I

    iput-boolean v14, v10, LI0/i;->a:Z

    iput-boolean v14, v11, LI0/i;->a:Z

    iget-object v0, v13, Lcom/ex/auto/LyricsFloaterService;->c:Landroid/os/Handler;

    const-wide/16 v2, 0x226

    invoke-virtual {v0, v12, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    :goto_2
    return v14
.end method
