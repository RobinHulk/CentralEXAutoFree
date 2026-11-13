.class public final Lcom/ex/auto/ExSapoCastFloaterService;
.super Landroid/app/Service;
.source "SourceFile"

# interfaces
.implements LT/k1;


# static fields
.field public static final synthetic j:I


# instance fields
.field public a:Landroid/view/WindowManager;

.field public b:Landroid/widget/LinearLayout;

.field public c:Landroid/view/SurfaceView;

.field public d:Landroid/view/WindowManager$LayoutParams;

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const v0, 0x3f19999a    # 0.6f

    iput v0, p0, Lcom/ex/auto/ExSapoCastFloaterService;->i:F

    return-void
.end method

.method public static final e(Lcom/ex/auto/ExSapoCastFloaterService;Ljava/lang/String;LH0/a;)Landroid/widget/TextView;
    .locals 2

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, -0x1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 p1, 0x41880000    # 17.0f

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 p1, 0x11

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setGravity(I)V

    const/16 p1, 0x1e

    invoke-virtual {p0, p1}, Lcom/ex/auto/ExSapoCastFloaterService;->h(I)I

    move-result p1

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, p1, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/ex/auto/ExSapoCastFloaterService;->h(I)I

    move-result p0

    invoke-virtual {v1, p0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p0, LT/A;

    invoke-direct {p0, p2, p1}, LT/A;-><init>(LH0/a;I)V

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method


# virtual methods
.method public final a(II)V
    .locals 1

    if-lez p1, :cond_2

    if-gtz p2, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/ex/auto/ExSapoCastFloaterService;->g:I

    if-ne p1, v0, :cond_1

    iget v0, p0, Lcom/ex/auto/ExSapoCastFloaterService;->h:I

    if-ne p2, v0, :cond_1

    return-void

    :cond_1
    iput p1, p0, Lcom/ex/auto/ExSapoCastFloaterService;->g:I

    iput p2, p0, Lcom/ex/auto/ExSapoCastFloaterService;->h:I

    invoke-virtual {p0}, Lcom/ex/auto/ExSapoCastFloaterService;->c()V

    :cond_2
    :goto_0
    return-void
.end method

.method public final b()V
    .locals 0

    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    return-void
.end method

.method public final c()V
    .locals 8

    iget v0, p0, Lcom/ex/auto/ExSapoCastFloaterService;->g:I

    iget v1, p0, Lcom/ex/auto/ExSapoCastFloaterService;->h:I

    invoke-virtual {p0, v0, v1}, Lcom/ex/auto/ExSapoCastFloaterService;->g(II)Lv0/a;

    move-result-object v0

    iget-object v1, v0, Lv0/a;->a:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    iget-object v0, v0, Lv0/a;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    iget-object v2, p0, Lcom/ex/auto/ExSapoCastFloaterService;->c:Landroid/view/SurfaceView;

    if-eqz v2, :cond_0

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v1, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    iget-object v2, p0, Lcom/ex/auto/ExSapoCastFloaterService;->c:Landroid/view/SurfaceView;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/view/View;->requestLayout()V

    :cond_1
    iget-object v2, p0, Lcom/ex/auto/ExSapoCastFloaterService;->d:Landroid/view/WindowManager$LayoutParams;

    const-string v3, "lp"

    const/4 v4, 0x0

    if-eqz v2, :cond_5

    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    if-eqz v2, :cond_4

    iget v5, p0, Lcom/ex/auto/ExSapoCastFloaterService;->e:I

    add-int v6, v5, v0

    iget v7, p0, Lcom/ex/auto/ExSapoCastFloaterService;->f:I

    add-int/2addr v6, v7

    iput v6, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    add-int/2addr v5, v0

    add-int/2addr v5, v7

    invoke-virtual {p0, v1, v5}, Lcom/ex/auto/ExSapoCastFloaterService;->f(II)V

    :try_start_0
    iget-object v0, p0, Lcom/ex/auto/ExSapoCastFloaterService;->a:Landroid/view/WindowManager;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/ex/auto/ExSapoCastFloaterService;->b:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/ex/auto/ExSapoCastFloaterService;->d:Landroid/view/WindowManager$LayoutParams;

    if-eqz v2, :cond_2

    invoke-interface {v0, v1, v2}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_2
    invoke-static {v3}, LI0/f;->h(Ljava/lang/String;)V

    throw v4

    :cond_3
    const-string v0, "wm"

    invoke-static {v0}, LI0/f;->h(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :goto_0
    return-void

    :cond_4
    invoke-static {v3}, LI0/f;->h(Ljava/lang/String;)V

    throw v4

    :cond_5
    invoke-static {v3}, LI0/f;->h(Ljava/lang/String;)V

    throw v4
.end method

.method public final d()V
    .locals 13

    iget-object v0, p0, Lcom/ex/auto/ExSapoCastFloaterService;->b:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/ex/auto/ExSapoCastFloaterService;->g:I

    iget v1, p0, Lcom/ex/auto/ExSapoCastFloaterService;->h:I

    invoke-virtual {p0, v0, v1}, Lcom/ex/auto/ExSapoCastFloaterService;->g(II)Lv0/a;

    move-result-object v0

    iget-object v1, v0, Lv0/a;->a:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v8

    iget-object v0, v0, Lv0/a;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    new-instance v9, Landroid/widget/LinearLayout;

    invoke-direct {v9, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v9, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/16 v3, 0xc

    invoke-virtual {p0, v3}, Lcom/ex/auto/ExSapoCastFloaterService;->h(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    const v3, -0x11f1eeec

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    invoke-virtual {v9, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v10, Landroid/widget/LinearLayout;

    invoke-direct {v10, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    invoke-virtual {v10, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v3, 0x10

    invoke-virtual {v10, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    iget v5, p0, Lcom/ex/auto/ExSapoCastFloaterService;->e:I

    const/4 v6, -0x1

    invoke-direct {v4, v6, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v10, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v4, 0x8

    invoke-virtual {p0, v4}, Lcom/ex/auto/ExSapoCastFloaterService;->h(I)I

    move-result v4

    const/4 v5, 0x4

    invoke-virtual {p0, v5}, Lcom/ex/auto/ExSapoCastFloaterService;->h(I)I

    move-result v5

    invoke-virtual {v10, v4, v2, v5, v2}, Landroid/view/View;->setPadding(IIII)V

    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v5, "\u283f  ExSapoCast"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v5, -0x66000001

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v5, 0x41400000    # 12.0f

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v5, v2, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v10, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v4, LT/b1;

    const/4 v5, 0x4

    invoke-direct {v4, v5}, LT/b1;-><init>(I)V

    const-string v5, "\u2039"

    invoke-static {p0, v5, v4}, Lcom/ex/auto/ExSapoCastFloaterService;->e(Lcom/ex/auto/ExSapoCastFloaterService;Ljava/lang/String;LH0/a;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v10, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v4, LT/b1;

    const/4 v5, 0x5

    invoke-direct {v4, v5}, LT/b1;-><init>(I)V

    const-string v5, "\u25cb"

    invoke-static {p0, v5, v4}, Lcom/ex/auto/ExSapoCastFloaterService;->e(Lcom/ex/auto/ExSapoCastFloaterService;Ljava/lang/String;LH0/a;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v10, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v4, LT/b1;

    const/4 v5, 0x6

    invoke-direct {v4, v5}, LT/b1;-><init>(I)V

    const-string v5, "\u25a2"

    invoke-static {p0, v5, v4}, Lcom/ex/auto/ExSapoCastFloaterService;->e(Lcom/ex/auto/ExSapoCastFloaterService;Ljava/lang/String;LH0/a;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v10, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v4, LT/f1;

    const/4 v5, 0x1

    invoke-direct {v4, p0, v5}, LT/f1;-><init>(Landroid/content/ContextWrapper;I)V

    const-string v5, "\u2715"

    invoke-static {p0, v5, v4}, Lcom/ex/auto/ExSapoCastFloaterService;->e(Lcom/ex/auto/ExSapoCastFloaterService;Ljava/lang/String;LH0/a;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v10, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v4, Landroid/view/SurfaceView;

    invoke-direct {v4, p0}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v8, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v4, v1}, Landroid/view/SurfaceView;->setZOrderOnTop(Z)V

    invoke-virtual {v4}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v5

    new-instance v11, LT/g1;

    const/4 v12, 0x1

    invoke-direct {v11, v12}, LT/g1;-><init>(I)V

    invoke-interface {v5, v11}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    new-instance v5, LT/t;

    const/4 v11, 0x3

    invoke-direct {v5, p0, v11}, LT/t;-><init>(Landroid/content/ContextWrapper;I)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {v9, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iput-object v4, p0, Lcom/ex/auto/ExSapoCastFloaterService;->c:Landroid/view/SurfaceView;

    new-instance v11, Landroid/widget/LinearLayout;

    invoke-direct {v11, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v11, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v11, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    iget v4, p0, Lcom/ex/auto/ExSapoCastFloaterService;->f:I

    invoke-direct {v3, v6, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v11, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/view/View;

    invoke-direct {v3, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, v1}, Lcom/ex/auto/ExSapoCastFloaterService;->h(I)I

    move-result v1

    invoke-direct {v4, v2, v1, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v11, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v7, Landroid/widget/TextView;

    invoke-direct {v7, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v1, "\u25e2"

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, -0x33000001    # -1.3421772E8f

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v1, 0x41800000    # 16.0f

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 v1, 0x11

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v2, 0x34

    invoke-virtual {p0, v2}, Lcom/ex/auto/ExSapoCastFloaterService;->h(I)I

    move-result v2

    iget v3, p0, Lcom/ex/auto/ExSapoCastFloaterService;->f:I

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, LI0/j;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    new-instance v3, LI0/j;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    new-instance v4, LI0/j;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    new-instance v12, LT/i1;

    const/4 v6, 0x0

    move-object v1, v12

    move-object v5, p0

    invoke-direct/range {v1 .. v6}, LT/i1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v7, v12}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {v11, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v9, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const/16 v1, 0x3c

    invoke-virtual {p0, v1}, Lcom/ex/auto/ExSapoCastFloaterService;->h(I)I

    move-result v2

    invoke-virtual {p0, v1}, Lcom/ex/auto/ExSapoCastFloaterService;->h(I)I

    move-result v1

    const-string v3, "exsapocast_pip"

    const v4, 0x800033

    invoke-static {p0, v3, v4, v2, v1}, LT/Y;->U(Landroid/content/Context;Ljava/lang/String;III)LT/K3;

    move-result-object v1

    new-instance v11, Landroid/view/WindowManager$LayoutParams;

    iget v2, p0, Lcom/ex/auto/ExSapoCastFloaterService;->e:I

    add-int/2addr v2, v0

    iget v3, p0, Lcom/ex/auto/ExSapoCastFloaterService;->f:I

    add-int v4, v2, v3

    const/4 v7, -0x3

    const/16 v5, 0x7f6

    const/16 v6, 0x108

    move-object v2, v11

    move v3, v8

    invoke-direct/range {v2 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iget v2, v1, LT/K3;->a:I

    iput v2, v11, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget v2, v1, LT/K3;->b:I

    iput v2, v11, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v1, v1, LT/K3;->c:I

    iput v1, v11, Landroid/view/WindowManager$LayoutParams;->y:I

    iput-object v11, p0, Lcom/ex/auto/ExSapoCastFloaterService;->d:Landroid/view/WindowManager$LayoutParams;

    new-instance v2, LI0/j;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    new-instance v3, LI0/j;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    new-instance v4, LI0/k;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    new-instance v6, LI0/k;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    new-instance v7, LI0/i;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    new-instance v11, LT/h1;

    move-object v1, v11

    move-object v5, p0

    invoke-direct/range {v1 .. v7}, LT/h1;-><init>(LI0/j;LI0/j;LI0/k;Lcom/ex/auto/ExSapoCastFloaterService;LI0/k;LI0/i;)V

    invoke-virtual {v10, v11}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget v1, p0, Lcom/ex/auto/ExSapoCastFloaterService;->e:I

    add-int/2addr v1, v0

    iget v0, p0, Lcom/ex/auto/ExSapoCastFloaterService;->f:I

    add-int/2addr v1, v0

    invoke-virtual {p0, v8, v1}, Lcom/ex/auto/ExSapoCastFloaterService;->f(II)V

    iput-object v9, p0, Lcom/ex/auto/ExSapoCastFloaterService;->b:Landroid/widget/LinearLayout;

    :try_start_0
    iget-object v0, p0, Lcom/ex/auto/ExSapoCastFloaterService;->a:Landroid/view/WindowManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/ex/auto/ExSapoCastFloaterService;->d:Landroid/view/WindowManager$LayoutParams;

    if-eqz v2, :cond_1

    invoke-interface {v0, v9, v2}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_1
    const-string v0, "lp"

    invoke-static {v0}, LI0/f;->h(Ljava/lang/String;)V

    throw v1

    :cond_2
    const-string v0, "wm"

    invoke-static {v0}, LI0/f;->h(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "addView: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "ExSapoCast"

    invoke-static {v0, v1, v2}, LM/d0;->r(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public final f(II)V
    .locals 6

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget-object v1, p0, Lcom/ex/auto/ExSapoCastFloaterService;->d:Landroid/view/WindowManager$LayoutParams;

    const/4 v2, 0x0

    const-string v3, "lp"

    if-eqz v1, :cond_5

    if-eqz v1, :cond_4

    iget v4, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v5, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    sub-int/2addr v5, p1

    const/4 p1, 0x0

    if-gez v5, :cond_0

    move v5, p1

    :cond_0
    invoke-static {v4, p1, v5}, LA/b;->o(III)I

    move-result v4

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v1, p0, Lcom/ex/auto/ExSapoCastFloaterService;->d:Landroid/view/WindowManager$LayoutParams;

    if-eqz v1, :cond_3

    if-eqz v1, :cond_2

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    sub-int/2addr v0, p2

    if-gez v0, :cond_1

    move v0, p1

    :cond_1
    invoke-static {v2, p1, v0}, LA/b;->o(III)I

    move-result p1

    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    return-void

    :cond_2
    invoke-static {v3}, LI0/f;->h(Ljava/lang/String;)V

    throw v2

    :cond_3
    invoke-static {v3}, LI0/f;->h(Ljava/lang/String;)V

    throw v2

    :cond_4
    invoke-static {v3}, LI0/f;->h(Ljava/lang/String;)V

    throw v2

    :cond_5
    invoke-static {v3}, LI0/f;->h(Ljava/lang/String;)V

    throw v2
.end method

.method public final g(II)Lv0/a;
    .locals 2

    invoke-virtual {p0, p1, p2}, Lcom/ex/auto/ExSapoCastFloaterService;->i(II)Lv0/a;

    move-result-object p1

    iget-object p2, p1, Lv0/a;->a:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p2

    iget-object p1, p1, Lv0/a;->b:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    iget v0, p0, Lcom/ex/auto/ExSapoCastFloaterService;->i:F

    mul-float/2addr p2, v0

    float-to-int p2, p2

    const/16 v0, 0x78

    invoke-virtual {p0, v0}, Lcom/ex/auto/ExSapoCastFloaterService;->h(I)I

    move-result v1

    if-ge p2, v1, :cond_0

    move p2, v1

    :cond_0
    iget v1, p0, Lcom/ex/auto/ExSapoCastFloaterService;->i:F

    mul-float/2addr p1, v1

    float-to-int p1, p1

    invoke-virtual {p0, v0}, Lcom/ex/auto/ExSapoCastFloaterService;->h(I)I

    move-result v0

    if-ge p1, v0, :cond_1

    move p1, v0

    :cond_1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance v0, Lv0/a;

    invoke-direct {v0, p2, p1}, Lv0/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public final h(I)I
    .locals 1

    int-to-float p1, p1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, v0

    float-to-int p1, p1

    return p1
.end method

.method public final i(II)Lv0/a;
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    const v2, 0x3f6b851f    # 0.92f

    mul-float/2addr v1, v2

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v0, v0

    const v2, 0x3f666666    # 0.9f

    mul-float/2addr v0, v2

    iget v2, p0, Lcom/ex/auto/ExSapoCastFloaterService;->e:I

    int-to-float v2, v2

    sub-float/2addr v0, v2

    iget v2, p0, Lcom/ex/auto/ExSapoCastFloaterService;->f:I

    int-to-float v2, v2

    sub-float/2addr v0, v2

    int-to-float p1, p1

    div-float/2addr v1, p1

    int-to-float p2, p2

    div-float/2addr v0, p2

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    mul-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    mul-float/2addr p2, v0

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    new-instance v0, Lv0/a;

    invoke-direct {v0, p1, p2}, Lv0/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public final onCreate()V
    .locals 6

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.view.WindowManager"

    invoke-static {v0, v1}, LI0/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/ex/auto/ExSapoCastFloaterService;->a:Landroid/view/WindowManager;

    const/16 v0, 0x22

    invoke-virtual {p0, v0}, Lcom/ex/auto/ExSapoCastFloaterService;->h(I)I

    move-result v1

    iput v1, p0, Lcom/ex/auto/ExSapoCastFloaterService;->e:I

    invoke-virtual {p0, v0}, Lcom/ex/auto/ExSapoCastFloaterService;->h(I)I

    move-result v0

    iput v0, p0, Lcom/ex/auto/ExSapoCastFloaterService;->f:I

    const-string v0, "tela_preta_prefs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "exsapocast_pip_scale"

    const v3, 0x3f19999a    # 0.6f

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    const v2, 0x3e99999a    # 0.3f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v0, v2, v3}, LA/b;->n(FFF)F

    move-result v0

    iput v0, p0, Lcom/ex/auto/ExSapoCastFloaterService;->i:F

    sget-object v0, LT/m;->i:LT/n1;

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    iget v5, v0, LT/n1;->g:I

    if-lez v5, :cond_0

    iget v5, v0, LT/n1;->h:I

    if-lez v5, :cond_0

    new-array v4, v2, [I

    iget v5, v0, LT/n1;->g:I

    aput v5, v4, v1

    iget v0, v0, LT/n1;->h:I

    aput v0, v4, v3

    :cond_0
    if-nez v4, :cond_1

    new-array v4, v2, [I

    const/16 v0, 0x9

    aput v0, v4, v1

    const/16 v0, 0x14

    aput v0, v4, v3

    :cond_1
    aget v0, v4, v1

    iput v0, p0, Lcom/ex/auto/ExSapoCastFloaterService;->g:I

    aget v0, v4, v3

    iput v0, p0, Lcom/ex/auto/ExSapoCastFloaterService;->h:I

    invoke-virtual {p0}, Lcom/ex/auto/ExSapoCastFloaterService;->d()V

    sput-object p0, LT/m;->c:Landroid/content/ContextWrapper;

    return-void
.end method

.method public final onDestroy()V
    .locals 3

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    sget-object v0, LT/m;->c:Landroid/content/ContextWrapper;

    const/4 v1, 0x0

    if-ne v0, p0, :cond_0

    sput-object v1, LT/m;->c:Landroid/content/ContextWrapper;

    :cond_0
    sget-object v0, LT/m;->i:LT/n1;

    if-eqz v0, :cond_1

    iput-object v1, v0, LT/n1;->e:Landroid/view/Surface;

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/ex/auto/ExSapoCastFloaterService;->b:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/ex/auto/ExSapoCastFloaterService;->a:Landroid/view/WindowManager;

    if-eqz v2, :cond_2

    invoke-interface {v2, v0}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    goto :goto_0

    :cond_2
    const-string v0, "wm"

    invoke-static {v0}, LI0/f;->h(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_3
    :goto_0
    iput-object v1, p0, Lcom/ex/auto/ExSapoCastFloaterService;->b:Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/ex/auto/ExSapoCastFloaterService;->c:Landroid/view/SurfaceView;

    return-void
.end method

.method public final onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    iget-object p1, p0, Lcom/ex/auto/ExSapoCastFloaterService;->b:Landroid/widget/LinearLayout;

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/ex/auto/ExSapoCastFloaterService;->d()V

    :cond_0
    const/4 p1, 0x2

    return p1
.end method
