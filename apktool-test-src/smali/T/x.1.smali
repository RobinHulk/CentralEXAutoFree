.class public final synthetic LT/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/ex/auto/AppPipFloaterService;


# direct methods
.method public synthetic constructor <init>(Lcom/ex/auto/AppPipFloaterService;I)V
    .locals 0

    iput p2, p0, LT/x;->a:I

    iput-object p1, p0, LT/x;->b:Lcom/ex/auto/AppPipFloaterService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 11

    const/16 p1, 0x8

    const/4 v0, 0x0

    iget v1, p0, LT/x;->a:I

    packed-switch v1, :pswitch_data_0

    sget-object v1, Lcom/ex/auto/AppPipFloaterService;->u:Lcom/ex/auto/AppPipFloaterService;

    iget-object v1, p0, LT/x;->b:Lcom/ex/auto/AppPipFloaterService;

    iget-object v2, v1, Lcom/ex/auto/AppPipFloaterService;->e:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_0

    invoke-virtual {v2, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iput-boolean v0, v1, Lcom/ex/auto/AppPipFloaterService;->m:Z

    return-void

    :pswitch_0
    iget-object v1, p0, LT/x;->b:Lcom/ex/auto/AppPipFloaterService;

    iget-boolean v2, v1, Lcom/ex/auto/AppPipFloaterService;->n:Z

    const-string v3, "getString(...)"

    if-eqz v2, :cond_1

    const p1, 0x7f0f030f

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v3}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lcom/ex/auto/AppPipFloaterService;->h(Ljava/lang/String;)Z

    goto/16 :goto_2

    :cond_1
    iget-boolean v2, v1, Lcom/ex/auto/AppPipFloaterService;->m:Z

    if-eqz v2, :cond_3

    iget-object v2, v1, Lcom/ex/auto/AppPipFloaterService;->e:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_2

    invoke-virtual {v2, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iput-boolean v0, v1, Lcom/ex/auto/AppPipFloaterService;->m:Z

    goto/16 :goto_2

    :cond_3
    iget-object p1, v1, Lcom/ex/auto/AppPipFloaterService;->i:LT/x4;

    if-eqz p1, :cond_4

    const p1, 0x7f0f0264

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v3}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lcom/ex/auto/AppPipFloaterService;->h(Ljava/lang/String;)Z

    goto/16 :goto_2

    :cond_4
    iget-object p1, v1, Lcom/ex/auto/AppPipFloaterService;->f:Landroid/widget/LinearLayout;

    if-nez p1, :cond_5

    goto/16 :goto_1

    :cond_5
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-static {v1}, LT/z4;->g(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    const/16 v4, 0xa

    if-eqz v3, :cond_6

    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0f0240

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v3, -0x333334

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v3, 0x6

    invoke-virtual {v1, v3}, Lcom/ex/auto/AppPipFloaterService;->c(I)I

    move-result v5

    invoke-virtual {v1, v4}, Lcom/ex/auto/AppPipFloaterService;->c(I)I

    move-result v6

    invoke-virtual {v1, v3}, Lcom/ex/auto/AppPipFloaterService;->c(I)I

    move-result v3

    invoke-virtual {v1, v4}, Lcom/ex/auto/AppPipFloaterService;->c(I)I

    move-result v4

    invoke-virtual {v2, v5, v6, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_1

    :cond_6
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lv0/a;

    iget-object v5, v3, Lv0/a;->a:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v3, v3, Lv0/a;->b:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v5, 0x41600000    # 14.0f

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 v5, -0x1

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v7, 0xc

    invoke-virtual {v1, v7}, Lcom/ex/auto/AppPipFloaterService;->c(I)I

    move-result v8

    invoke-virtual {v1, v7}, Lcom/ex/auto/AppPipFloaterService;->c(I)I

    move-result v9

    invoke-virtual {v1, v7}, Lcom/ex/auto/AppPipFloaterService;->c(I)I

    move-result v10

    invoke-virtual {v1, v7}, Lcom/ex/auto/AppPipFloaterService;->c(I)I

    move-result v7

    invoke-virtual {v6, v8, v9, v10, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    const v7, -0xcfcecc

    invoke-virtual {v1, v7, v4}, Lcom/ex/auto/AppPipFloaterService;->f(II)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v7, LT/u;

    invoke-direct {v7, v1, v0, v3}, LT/u;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x2

    invoke-direct {v3, v5, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v5, 0x4

    invoke-virtual {v1, v5}, Lcom/ex/auto/AppPipFloaterService;->c(I)I

    move-result v5

    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {p1, v6, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_7
    :goto_1
    iget-object p1, v1, Lcom/ex/auto/AppPipFloaterService;->e:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_8
    const/4 p1, 0x1

    iput-boolean p1, v1, Lcom/ex/auto/AppPipFloaterService;->m:Z

    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
