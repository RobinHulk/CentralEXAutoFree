.class public final Lcom/ex/auto/AcProgramListActivity;
.super Le/j;
.source "SourceFile"


# static fields
.field public static final synthetic u:I


# instance fields
.field public t:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Le/j;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Le/j;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c001d

    invoke-virtual {p0, p1}, Le/j;->setContentView(I)V

    const p1, 0x7f0900f3

    invoke-virtual {p0, p1}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/ex/auto/AcProgramListActivity;->t:Landroid/widget/LinearLayout;

    const p1, 0x7f090060

    invoke-virtual {p0, p1}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    new-instance v0, LT/j;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, LT/j;-><init>(Landroid/content/ContextWrapper;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final onResume()V
    .locals 17

    move-object/from16 v0, p0

    invoke-super/range {p0 .. p0}, Le/j;->onResume()V

    iget-object v1, v0, Lcom/ex/auto/AcProgramListActivity;->t:Landroid/widget/LinearLayout;

    const-string v3, "container"

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    const/4 v1, 0x3

    const/4 v4, 0x0

    invoke-static {v4, v1}, LA/b;->i0(II)LL0/c;

    move-result-object v1

    new-instance v5, Ljava/util/ArrayList;

    invoke-static {v1}, Lw0/k;->V(Ljava/lang/Iterable;)I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v1}, LL0/a;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    move-object v6, v1

    check-cast v6, LL0/b;

    iget-boolean v6, v6, LL0/b;->c:Z

    if-eqz v6, :cond_0

    move-object v6, v1

    check-cast v6, LL0/b;

    invoke-virtual {v6}, LL0/b;->a()I

    move-result v6

    invoke-static {v0, v6}, LT/Y;->T(Landroid/content/Context;I)LT/k;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v6, v4

    :goto_1
    if-ge v6, v1, :cond_5

    iget-object v7, v0, Lcom/ex/auto/AcProgramListActivity;->t:Landroid/widget/LinearLayout;

    if-eqz v7, :cond_4

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, LT/k;

    new-instance v9, Landroid/widget/LinearLayout;

    invoke-direct {v9, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const v11, 0x7f070059

    invoke-virtual {v9, v11}, Landroid/view/View;->setBackgroundResource(I)V

    const/16 v11, 0x10

    invoke-virtual {v0, v11}, Lcom/ex/auto/AcProgramListActivity;->s(I)I

    move-result v12

    invoke-virtual {v0, v11}, Lcom/ex/auto/AcProgramListActivity;->s(I)I

    move-result v13

    invoke-virtual {v0, v11}, Lcom/ex/auto/AcProgramListActivity;->s(I)I

    move-result v14

    invoke-virtual {v0, v11}, Lcom/ex/auto/AcProgramListActivity;->s(I)I

    move-result v15

    invoke-virtual {v9, v12, v13, v14, v15}, Landroid/view/View;->setPadding(IIII)V

    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v13, -0x1

    const/4 v14, -0x2

    invoke-direct {v12, v13, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v15, 0xc

    if-nez v6, :cond_1

    move v2, v4

    goto :goto_2

    :cond_1
    invoke-virtual {v0, v15}, Lcom/ex/auto/AcProgramListActivity;->s(I)I

    move-result v16

    move/from16 v2, v16

    :goto_2
    iput v2, v12, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v9, v12}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v2, v11}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v11, Landroid/widget/TextView;

    invoke-direct {v11, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    add-int/lit8 v12, v6, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    filled-new-array/range {v16 .. v16}, [Ljava/lang/Object;

    move-result-object v15

    const v13, 0x7f0f0076

    invoke-virtual {v0, v13, v15}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v13, 0x7f050041

    invoke-virtual {v0, v13}, Landroid/content/Context;->getColor(I)I

    move-result v13

    invoke-virtual {v11, v13}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v13, 0x41900000    # 18.0f

    invoke-virtual {v11, v13}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v11}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v13

    invoke-virtual {v11, v13, v10}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-direct {v10, v4, v14, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v11, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v9, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    if-eqz v8, :cond_2

    invoke-static {v8}, LT/Y;->i0(LT/k;)Ljava/lang/String;

    move-result-object v10

    goto :goto_3

    :cond_2
    const v10, 0x7f0f0071

    invoke-virtual {v0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string v11, "getString(...)"

    invoke-static {v10, v11}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_3
    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v10, 0x7f050042

    invoke-virtual {v0, v10}, Landroid/content/Context;->getColor(I)I

    move-result v10

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v10, 0x41700000    # 15.0f

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 v11, 0x6

    invoke-virtual {v0, v11}, Lcom/ex/auto/AcProgramListActivity;->s(I)I

    move-result v11

    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v15, -0x1

    invoke-direct {v13, v15, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v11, v13, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v2, v13}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v9, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v2, Landroid/widget/Button;

    invoke-direct {v2, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    if-eqz v8, :cond_3

    const v8, 0x7f0f0070

    goto :goto_4

    :cond_3
    const v8, 0x7f0f006f

    :goto_4
    invoke-virtual {v0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setAllCaps(Z)V

    const v8, 0x7f05003f

    invoke-virtual {v0, v8}, Landroid/content/Context;->getColor(I)I

    move-result v8

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setTextColor(I)V

    const v8, 0x7f05003d

    invoke-virtual {v0, v8}, Landroid/content/Context;->getColor(I)I

    move-result v8

    invoke-static {v8}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setTextSize(F)V

    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v10, 0x30

    invoke-virtual {v0, v10}, Lcom/ex/auto/AcProgramListActivity;->s(I)I

    move-result v10

    const/4 v11, -0x1

    invoke-direct {v8, v11, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v10, 0xc

    invoke-virtual {v0, v10}, Lcom/ex/auto/AcProgramListActivity;->s(I)I

    move-result v10

    iput v10, v8, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v2, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v8, LT/i;

    const/4 v10, 0x1

    invoke-direct {v8, v0, v6, v10}, LT/i;-><init>(Landroid/content/ContextWrapper;II)V

    invoke-virtual {v2, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v9, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v7, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    move v6, v12

    goto/16 :goto_1

    :cond_4
    invoke-static {v3}, LI0/f;->h(Ljava/lang/String;)V

    const/4 v1, 0x0

    throw v1

    :cond_5
    return-void

    :cond_6
    const/4 v1, 0x0

    invoke-static {v3}, LI0/f;->h(Ljava/lang/String;)V

    throw v1
.end method

.method public final s(I)I
    .locals 1

    int-to-float p1, p1

    invoke-virtual {p0}, Le/j;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, v0

    float-to-int p1, p1

    return p1
.end method
