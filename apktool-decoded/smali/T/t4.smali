.class public final synthetic LT/t4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/ex/auto/SplitFloaterService;


# direct methods
.method public synthetic constructor <init>(Lcom/ex/auto/SplitFloaterService;I)V
    .locals 0

    iput p2, p0, LT/t4;->a:I

    iput-object p1, p0, LT/t4;->b:Lcom/ex/auto/SplitFloaterService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x6

    const-string v3, "getString(...)"

    iget v4, p0, LT/t4;->a:I

    packed-switch v4, :pswitch_data_0

    sget-object v3, Lcom/ex/auto/SplitFloaterService;->v:Lcom/ex/auto/SplitFloaterService;

    iget-object v3, p0, LT/t4;->b:Lcom/ex/auto/SplitFloaterService;

    invoke-virtual {v3}, Lcom/ex/auto/SplitFloaterService;->h()V

    iget-object v4, v3, Lcom/ex/auto/SplitFloaterService;->f:Landroid/widget/TextView;

    if-eqz v4, :cond_0

    const v5, 0x7f0f024e

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v4, v3, Lcom/ex/auto/SplitFloaterService;->g:Landroid/widget/LinearLayout;

    if-nez v4, :cond_1

    goto/16 :goto_1

    :cond_1
    invoke-virtual {v4}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-static {v3}, LT/z4;->g(Landroid/content/Context;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    const/16 v7, 0xa

    if-eqz v6, :cond_2

    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v6, 0x7f0f0240

    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v6, -0x333334

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v3, v2}, Lcom/ex/auto/SplitFloaterService;->b(I)I

    move-result v6

    invoke-virtual {v3, v7}, Lcom/ex/auto/SplitFloaterService;->b(I)I

    move-result v8

    invoke-virtual {v3, v2}, Lcom/ex/auto/SplitFloaterService;->b(I)I

    move-result v2

    invoke-virtual {v3, v7}, Lcom/ex/auto/SplitFloaterService;->b(I)I

    move-result v7

    invoke-virtual {v5, v6, v8, v2, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_1

    :cond_2
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lv0/a;

    iget-object v8, v6, Lv0/a;->a:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    iget-object v6, v6, Lv0/a;->b:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    new-instance v9, Landroid/widget/TextView;

    invoke-direct {v9, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v8, 0x41600000    # 14.0f

    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 v8, -0x1

    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v10, 0xc

    invoke-virtual {v3, v10}, Lcom/ex/auto/SplitFloaterService;->b(I)I

    move-result v11

    invoke-virtual {v3, v10}, Lcom/ex/auto/SplitFloaterService;->b(I)I

    move-result v12

    invoke-virtual {v3, v10}, Lcom/ex/auto/SplitFloaterService;->b(I)I

    move-result v13

    invoke-virtual {v3, v10}, Lcom/ex/auto/SplitFloaterService;->b(I)I

    move-result v10

    invoke-virtual {v9, v11, v12, v13, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    const v10, -0xcfcecc

    invoke-virtual {v3, v10, v7}, Lcom/ex/auto/SplitFloaterService;->f(II)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v10, LT/u;

    invoke-direct {v10, v3, v2, v6}, LT/u;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {v9, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v10, -0x2

    invoke-direct {v6, v8, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v8, 0x4

    invoke-virtual {v3, v8}, Lcom/ex/auto/SplitFloaterService;->b(I)I

    move-result v8

    iput v8, v6, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v4, v9, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_3
    :goto_1
    iget-object v2, v3, Lcom/ex/auto/SplitFloaterService;->e:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_4

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    iput-boolean v0, v3, Lcom/ex/auto/SplitFloaterService;->n:Z

    return-void

    :pswitch_0
    sget-object v0, Lcom/ex/auto/SplitFloaterService;->v:Lcom/ex/auto/SplitFloaterService;

    iget-object v0, p0, LT/t4;->b:Lcom/ex/auto/SplitFloaterService;

    const v1, 0x7f0f02e6

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/ex/auto/SplitFloaterService;->g(Ljava/lang/String;)V

    return-void

    :pswitch_1
    sget-object v0, Lcom/ex/auto/SplitFloaterService;->v:Lcom/ex/auto/SplitFloaterService;

    iget-object v0, p0, LT/t4;->b:Lcom/ex/auto/SplitFloaterService;

    invoke-virtual {v0}, Landroid/app/Service;->stopSelf()V

    return-void

    :pswitch_2
    iget-object v2, p0, LT/t4;->b:Lcom/ex/auto/SplitFloaterService;

    sget-object v4, Lcom/ex/auto/SplitFloaterService;->v:Lcom/ex/auto/SplitFloaterService;

    const-string v4, "id"

    const/16 v5, 0x1388

    invoke-static {v5, v4}, LT/z4;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "uid=0"

    invoke-static {v4, v5, v1}, LO0/j;->x0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v4

    if-nez v4, :cond_5

    const v0, 0x7f0f0163

    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lcom/ex/auto/SplitFloaterService;->c(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_5
    invoke-static {}, LT/z4;->e()LT/y4;

    move-result-object v4

    if-nez v4, :cond_6

    sget-object v0, LT/z4;->f:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const v1, 0x7f0f016c

    invoke-virtual {v2, v1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lcom/ex/auto/SplitFloaterService;->c(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_6
    iput-object v4, v2, Lcom/ex/auto/SplitFloaterService;->l:LT/y4;

    const-string v5, "dumpsys activity activities"

    const/16 v6, 0x1f40

    invoke-static {v6, v5}, LT/z4;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "ADB_FAIL"

    invoke-static {v5, v6}, LO0/s;->w0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_7

    sput-object v5, LT/z4;->f:Ljava/lang/String;

    goto :goto_2

    :cond_7
    sget-object v6, LT/z4;->c:LI0/l;

    invoke-static {v6, v5}, LI0/l;->a(LI0/l;Ljava/lang/String;)LO0/e;

    move-result-object v5

    if-eqz v5, :cond_9

    invoke-virtual {v5}, LO0/e;->a()Ljava/util/List;

    move-result-object v5

    check-cast v5, LO0/d;

    invoke-virtual {v5, v0}, LO0/d;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_9

    invoke-static {v0}, LO0/r;->p0(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {}, LT/z4;->h()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv0/a;

    if-nez v0, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, "stack focada ("

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ") sem taskId/component"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, LT/z4;->f:Ljava/lang/String;

    goto :goto_2

    :cond_8
    iget-object v6, v0, Lv0/a;->a:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    iget-object v0, v0, Lv0/a;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    new-instance v7, LT/x4;

    const-string v8, "/"

    invoke-static {v0, v8}, LO0/j;->T0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v5, v6, v8, v0}, LT/x4;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_9
    const-string v0, "n\u00e3o achei mFocusedStack"

    sput-object v0, LT/z4;->f:Ljava/lang/String;

    :goto_2
    if-nez v7, :cond_a

    sget-object v0, LT/z4;->f:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const v1, 0x7f0f0166

    invoke-virtual {v2, v1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lcom/ex/auto/SplitFloaterService;->c(Ljava/lang/String;)V

    goto :goto_3

    :cond_a
    iget-object v0, v7, LT/x4;->c:Ljava/lang/String;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, LI0/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const v0, 0x7f0f0169

    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lcom/ex/auto/SplitFloaterService;->c(Ljava/lang/String;)V

    goto :goto_3

    :cond_b
    iget-object v0, v2, Lcom/ex/auto/SplitFloaterService;->i:Landroid/os/Handler;

    new-instance v5, LT/t4;

    const/16 v6, 0x8

    invoke-direct {v5, v2, v6}, LT/t4;-><init>(Lcom/ex/auto/SplitFloaterService;I)V

    invoke-virtual {v0, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, v7, LT/x4;->d:Ljava/lang/String;

    iget-object v5, v7, LT/x4;->c:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/ex/auto/SplitFloaterService;->d(LT/y4;)LT/w4;

    move-result-object v4

    invoke-static {v0, v5, v4}, LT/z4;->i(Ljava/lang/String;Ljava/lang/String;LT/w4;)LT/x4;

    move-result-object v0

    if-nez v0, :cond_c

    sget-object v0, LT/z4;->f:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const v1, 0x7f0f016b

    invoke-virtual {v2, v1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lcom/ex/auto/SplitFloaterService;->c(Ljava/lang/String;)V

    goto :goto_3

    :cond_c
    iput-object v0, v2, Lcom/ex/auto/SplitFloaterService;->j:LT/x4;

    iput-boolean v1, v2, Lcom/ex/auto/SplitFloaterService;->o:Z

    iget-object v0, v2, Lcom/ex/auto/SplitFloaterService;->i:Landroid/os/Handler;

    new-instance v1, LT/t4;

    const/16 v3, 0x9

    invoke-direct {v1, v2, v3}, LT/t4;-><init>(Lcom/ex/auto/SplitFloaterService;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_3
    return-void

    :pswitch_3
    sget-object v0, Lcom/ex/auto/SplitFloaterService;->v:Lcom/ex/auto/SplitFloaterService;

    iget-object v0, p0, LT/t4;->b:Lcom/ex/auto/SplitFloaterService;

    invoke-virtual {v0}, Lcom/ex/auto/SplitFloaterService;->h()V

    const v1, 0x7f0f02e2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/ex/auto/SplitFloaterService;->g(Ljava/lang/String;)V

    return-void

    :pswitch_4
    sget-object v0, Lcom/ex/auto/SplitFloaterService;->v:Lcom/ex/auto/SplitFloaterService;

    iget-object v0, p0, LT/t4;->b:Lcom/ex/auto/SplitFloaterService;

    invoke-virtual {v0}, Lcom/ex/auto/SplitFloaterService;->h()V

    return-void

    :pswitch_5
    sget-object v0, Lcom/ex/auto/SplitFloaterService;->v:Lcom/ex/auto/SplitFloaterService;

    iget-object v0, p0, LT/t4;->b:Lcom/ex/auto/SplitFloaterService;

    invoke-virtual {v0}, Lcom/ex/auto/SplitFloaterService;->h()V

    return-void

    :pswitch_6
    sget-object v0, Lcom/ex/auto/SplitFloaterService;->v:Lcom/ex/auto/SplitFloaterService;

    iget-object v0, p0, LT/t4;->b:Lcom/ex/auto/SplitFloaterService;

    invoke-virtual {v0}, Lcom/ex/auto/SplitFloaterService;->h()V

    return-void

    :pswitch_7
    sget-object v0, Lcom/ex/auto/SplitFloaterService;->v:Lcom/ex/auto/SplitFloaterService;

    iget-object v0, p0, LT/t4;->b:Lcom/ex/auto/SplitFloaterService;

    invoke-virtual {v0}, Lcom/ex/auto/SplitFloaterService;->h()V

    return-void

    :pswitch_8
    sget-object v0, Lcom/ex/auto/SplitFloaterService;->v:Lcom/ex/auto/SplitFloaterService;

    iget-object v0, p0, LT/t4;->b:Lcom/ex/auto/SplitFloaterService;

    invoke-virtual {v0}, Lcom/ex/auto/SplitFloaterService;->h()V

    return-void

    nop

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
