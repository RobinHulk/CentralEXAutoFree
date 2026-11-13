.class public final Lcom/ex/auto/AcProgramEditActivity;
.super Le/j;
.source "SourceFile"


# static fields
.field public static final synthetic y:I


# instance fields
.field public t:I

.field public final u:Ljava/util/ArrayList;

.field public v:Landroid/widget/LinearLayout;

.field public w:Landroid/widget/TextView;

.field public x:Landroid/widget/Switch;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Le/j;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ex/auto/AcProgramEditActivity;->u:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Le/j;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c001c

    invoke-virtual {p0, p1}, Le/j;->setContentView(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "slot"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/ex/auto/AcProgramEditActivity;->t:I

    const p1, 0x7f0900f4

    invoke-virtual {p0, p1}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/ex/auto/AcProgramEditActivity;->v:Landroid/widget/LinearLayout;

    const p1, 0x7f0902a9

    invoke-virtual {p0, p1}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/ex/auto/AcProgramEditActivity;->w:Landroid/widget/TextView;

    const p1, 0x7f090275

    invoke-virtual {p0, p1}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Switch;

    iput-object p1, p0, Lcom/ex/auto/AcProgramEditActivity;->x:Landroid/widget/Switch;

    iget p1, p0, Lcom/ex/auto/AcProgramEditActivity;->t:I

    invoke-static {p0, p1}, LT/Y;->T(Landroid/content/Context;I)LT/k;

    move-result-object p1

    const v0, 0x7f0902aa

    invoke-virtual {p0, v0}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const v2, 0x7f0f006c

    goto :goto_0

    :cond_0
    const v2, 0x7f0f006d

    :goto_0
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f09005e

    if-eqz p1, :cond_2

    iget-object v2, p0, Lcom/ex/auto/AcProgramEditActivity;->u:Ljava/util/ArrayList;

    iget-object v3, p1, LT/k;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v2, p0, Lcom/ex/auto/AcProgramEditActivity;->x:Landroid/widget/Switch;

    if-eqz v2, :cond_1

    iget-boolean p1, p1, LT/k;->b:Z

    invoke-virtual {v2, p1}, Landroid/widget/Switch;->setChecked(Z)V

    invoke-virtual {p0, v0}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_1
    const-string p1, "switchRepeat"

    invoke-static {p1}, LI0/f;->h(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1

    :cond_2
    :goto_1
    const p1, 0x7f09005b

    invoke-virtual {p0, p1}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    new-instance v1, LT/d;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, LT/d;-><init>(Lcom/ex/auto/AcProgramEditActivity;I)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f090059

    invoke-virtual {p0, p1}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    new-instance v1, LT/d;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, LT/d;-><init>(Lcom/ex/auto/AcProgramEditActivity;I)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f09005c

    invoke-virtual {p0, p1}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    new-instance v1, LT/d;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, LT/d;-><init>(Lcom/ex/auto/AcProgramEditActivity;I)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f09005a

    invoke-virtual {p0, p1}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    new-instance v1, LT/d;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, LT/d;-><init>(Lcom/ex/auto/AcProgramEditActivity;I)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f09005d

    invoke-virtual {p0, p1}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    new-instance v1, LT/d;

    const/4 v2, 0x4

    invoke-direct {v1, p0, v2}, LT/d;-><init>(Lcom/ex/auto/AcProgramEditActivity;I)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v0}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    new-instance v0, LT/d;

    const/4 v1, 0x5

    invoke-direct {v0, p0, v1}, LT/d;-><init>(Lcom/ex/auto/AcProgramEditActivity;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f09005f

    invoke-virtual {p0, p1}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    new-instance v0, LT/d;

    const/4 v1, 0x6

    invoke-direct {v0, p0, v1}, LT/d;-><init>(Lcom/ex/auto/AcProgramEditActivity;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/ex/auto/AcProgramEditActivity;->t()V

    return-void
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

.method public final t()V
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ex/auto/AcProgramEditActivity;->v:Landroid/widget/LinearLayout;

    const-string v3, "container"

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v1, v0, Lcom/ex/auto/AcProgramEditActivity;->w:Landroid/widget/TextView;

    if-eqz v1, :cond_9

    iget-object v4, v0, Lcom/ex/auto/AcProgramEditActivity;->u:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    const/16 v6, 0x8

    const/4 v7, 0x0

    if-eqz v5, :cond_0

    move v5, v7

    goto :goto_0

    :cond_0
    move v5, v6

    :goto_0
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v5, v7

    :goto_1
    if-ge v5, v1, :cond_8

    iget-object v8, v0, Lcom/ex/auto/AcProgramEditActivity;->v:Landroid/widget/LinearLayout;

    if-eqz v8, :cond_7

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, LT/l;

    new-instance v10, Landroid/widget/LinearLayout;

    invoke-direct {v10, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v10, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v11, 0x10

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setGravity(I)V

    const v11, 0x7f070059

    invoke-virtual {v10, v11}, Landroid/view/View;->setBackgroundResource(I)V

    const/16 v11, 0xe

    invoke-virtual {v0, v11}, Lcom/ex/auto/AcProgramEditActivity;->s(I)I

    move-result v12

    const/16 v13, 0xa

    invoke-virtual {v0, v13}, Lcom/ex/auto/AcProgramEditActivity;->s(I)I

    move-result v14

    invoke-virtual {v0, v11}, Lcom/ex/auto/AcProgramEditActivity;->s(I)I

    move-result v11

    invoke-virtual {v0, v13}, Lcom/ex/auto/AcProgramEditActivity;->s(I)I

    move-result v13

    invoke-virtual {v10, v12, v14, v11, v13}, Landroid/view/View;->setPadding(IIII)V

    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v12, -0x1

    const/4 v13, -0x2

    invoke-direct {v11, v12, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    if-nez v5, :cond_1

    move v12, v7

    goto :goto_2

    :cond_1
    invoke-virtual {v0, v6}, Lcom/ex/auto/AcProgramEditActivity;->s(I)I

    move-result v12

    :goto_2
    iput v12, v11, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v10, v11}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v11, Landroid/widget/TextView;

    invoke-direct {v11, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v14, v5, 0x1

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ". "

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v9, LT/l;->a:Ljava/lang/String;

    invoke-virtual {v15}, Ljava/lang/String;->hashCode()I

    move-result v16

    const-string v6, "getString(...)"

    move-object/from16 v17, v3

    iget-wide v2, v9, LT/l;->b:D

    sparse-switch v16, :sswitch_data_0

    goto :goto_3

    :sswitch_0
    const-string v9, "wait"

    invoke-virtual {v15, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    goto :goto_3

    :cond_2
    double-to-int v2, v2

    invoke-static {v2}, LT/Y;->G(I)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const v3, 0x7f0f006b

    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v6}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_5

    :sswitch_1
    const-string v9, "temp"

    invoke-virtual {v15, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    goto :goto_3

    :cond_3
    double-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const v3, 0x7f0f006a

    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v6}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_5

    :sswitch_2
    const-string v9, "fan"

    invoke-virtual {v15, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    goto :goto_3

    :cond_4
    double-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const v3, 0x7f0f0068

    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v6}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_5

    :sswitch_3
    const-string v9, "recirc"

    invoke-virtual {v15, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    :goto_3
    const-string v2, "?"

    goto :goto_5

    :cond_5
    const-wide/high16 v15, 0x3ff0000000000000L    # 1.0

    cmpg-double v2, v2, v15

    if-nez v2, :cond_6

    const v2, 0x7f0f0065

    goto :goto_4

    :cond_6
    const v2, 0x7f0f0063

    :goto_4
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const v3, 0x7f0f0069

    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v6}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_5
    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f050041

    invoke-virtual {v0, v2}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v11, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v2, 0x41800000    # 16.0f

    invoke-virtual {v11, v2}, Landroid/widget/TextView;->setTextSize(F)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v2, v7, v13, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v11, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v2, Landroid/widget/Button;

    invoke-direct {v2, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const-string v3, "\u2715"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setAllCaps(Z)V

    const v3, 0x7f050034

    invoke-virtual {v0, v3}, Landroid/content/Context;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const v3, 0x7f05003d

    invoke-virtual {v0, v3}, Landroid/content/Context;->getColor(I)I

    move-result v3

    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setMinWidth(I)V

    const/16 v3, 0x30

    invoke-virtual {v0, v3}, Lcom/ex/auto/AcProgramEditActivity;->s(I)I

    move-result v6

    invoke-virtual {v2, v6}, Landroid/view/View;->setMinimumWidth(I)V

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v3}, Lcom/ex/auto/AcProgramEditActivity;->s(I)I

    move-result v3

    const/16 v9, 0x2c

    invoke-virtual {v0, v9}, Lcom/ex/auto/AcProgramEditActivity;->s(I)I

    move-result v9

    invoke-direct {v6, v3, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, LT/i;

    const/4 v6, 0x0

    invoke-direct {v3, v0, v5, v6}, LT/i;-><init>(Landroid/content/ContextWrapper;II)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v10, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v8, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    move v5, v14

    move-object/from16 v3, v17

    const/16 v6, 0x8

    goto/16 :goto_1

    :cond_7
    move-object/from16 v17, v3

    invoke-static/range {v17 .. v17}, LI0/f;->h(Ljava/lang/String;)V

    const/4 v1, 0x0

    throw v1

    :cond_8
    return-void

    :cond_9
    const/4 v1, 0x0

    const-string v2, "emptyHint"

    invoke-static {v2}, LI0/f;->h(Ljava/lang/String;)V

    throw v1

    :cond_a
    move-object/from16 v17, v3

    const/4 v1, 0x0

    invoke-static/range {v17 .. v17}, LI0/f;->h(Ljava/lang/String;)V

    throw v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x37b9aa36 -> :sswitch_3
        0x18b13 -> :sswitch_2
        0x3643d4 -> :sswitch_1
        0x379175 -> :sswitch_0
    .end sparse-switch
.end method
