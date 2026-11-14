.class public final synthetic LT/r2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic a:LI0/j;

.field public final synthetic b:LI0/j;

.field public final synthetic c:LI0/i;

.field public final synthetic d:Ljava/util/LinkedHashMap;

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:F

.field public final synthetic g:I

.field public final synthetic h:Ljava/util/ArrayList;

.field public final synthetic i:Lcom/ex/auto/MainActivity;

.field public final synthetic j:Landroid/content/SharedPreferences;

.field public final synthetic k:F

.field public final synthetic l:Ljava/util/LinkedHashMap;

.field public final synthetic m:Landroid/widget/LinearLayout;

.field public final synthetic n:Landroid/widget/TextView;


# direct methods
.method public synthetic constructor <init>(LI0/j;LI0/j;LI0/i;Ljava/util/LinkedHashMap;Ljava/lang/String;FILjava/util/ArrayList;Lcom/ex/auto/MainActivity;Landroid/content/SharedPreferences;FLjava/util/LinkedHashMap;Landroid/widget/LinearLayout;Landroid/widget/TextView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LT/r2;->a:LI0/j;

    iput-object p2, p0, LT/r2;->b:LI0/j;

    iput-object p3, p0, LT/r2;->c:LI0/i;

    iput-object p4, p0, LT/r2;->d:Ljava/util/LinkedHashMap;

    iput-object p5, p0, LT/r2;->e:Ljava/lang/String;

    iput p6, p0, LT/r2;->f:F

    iput p7, p0, LT/r2;->g:I

    iput-object p8, p0, LT/r2;->h:Ljava/util/ArrayList;

    iput-object p9, p0, LT/r2;->i:Lcom/ex/auto/MainActivity;

    iput-object p10, p0, LT/r2;->j:Landroid/content/SharedPreferences;

    iput p11, p0, LT/r2;->k:F

    iput-object p12, p0, LT/r2;->l:Ljava/util/LinkedHashMap;

    iput-object p13, p0, LT/r2;->m:Landroid/widget/LinearLayout;

    iput-object p14, p0, LT/r2;->n:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, LT/r2;->a:LI0/j;

    iget-object v3, v0, LT/r2;->b:LI0/j;

    iget-object v4, v0, LT/r2;->c:LI0/i;

    iget-object v5, v0, LT/r2;->d:Ljava/util/LinkedHashMap;

    iget-object v6, v0, LT/r2;->e:Ljava/lang/String;

    iget v7, v0, LT/r2;->f:F

    iget v8, v0, LT/r2;->g:I

    iget-object v15, v0, LT/r2;->h:Ljava/util/ArrayList;

    iget-object v14, v0, LT/r2;->i:Lcom/ex/auto/MainActivity;

    iget-object v13, v0, LT/r2;->j:Landroid/content/SharedPreferences;

    iget v12, v0, LT/r2;->k:F

    iget-object v11, v0, LT/r2;->l:Ljava/util/LinkedHashMap;

    iget-object v10, v0, LT/r2;->m:Landroid/widget/LinearLayout;

    iget-object v9, v0, LT/r2;->n:Landroid/widget/TextView;

    sget v16, Lcom/ex/auto/MainActivity;->u0:I

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    move-object/from16 v16, v9

    move-object/from16 v17, v11

    const/4 v11, 0x1

    if-eqz v0, :cond_9

    if-eq v0, v11, :cond_0

    const/4 v9, 0x2

    if-eq v0, v9, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    const/4 v9, 0x0

    goto/16 :goto_4

    :cond_0
    move-object v0, v13

    goto/16 :goto_1

    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget v2, v2, LI0/j;->a:F

    sub-float/2addr v0, v2

    iget-boolean v2, v4, LI0/i;->a:Z

    if-nez v2, :cond_2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/16 v9, 0x8

    int-to-float v9, v9

    mul-float/2addr v9, v12

    float-to-int v9, v9

    int-to-float v9, v9

    cmpl-float v2, v2, v9

    if-lez v2, :cond_2

    iput-boolean v11, v4, LI0/i;->a:Z

    const v2, 0x3f933333    # 1.15f

    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleY(F)V

    const v2, 0x3f6b851f    # 0.92f

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v1, v9}, Landroid/view/View;->setElevation(F)V

    :cond_2
    iget-boolean v2, v4, LI0/i;->a:Z

    if-eqz v2, :cond_6

    iget v2, v3, LI0/j;->a:F

    add-float/2addr v2, v0

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationX(F)V

    invoke-static {v5, v6}, Lw0/u;->T(Ljava/util/LinkedHashMap;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    mul-float/2addr v0, v7

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTranslationX()F

    move-result v1

    add-float/2addr v1, v0

    int-to-float v0, v8

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    add-float/2addr v0, v1

    div-float/2addr v0, v7

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->rint(D)D

    move-result-wide v0

    double-to-float v0, v0

    float-to-int v0, v0

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v11

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, LA/b;->o(III)I

    move-result v0

    invoke-interface {v15, v6}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-eq v0, v1, :cond_6

    invoke-interface {v15, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-interface {v15, v0, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v13}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x3e

    const-string v3, ","

    const/4 v4, 0x0

    const/4 v8, 0x0

    move-object v9, v15

    move-object/from16 v18, v10

    move-object v10, v3

    move-object/from16 v3, v17

    move-object v11, v4

    move v4, v12

    move-object v12, v1

    move-object v1, v13

    move-object v13, v8

    move-object v8, v14

    move v14, v2

    invoke-static/range {v9 .. v14}, Lw0/i;->d0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;LH0/l;I)Ljava/lang/String;

    move-result-object v2

    const-string v9, "qa_icon_order"

    invoke-interface {v0, v9, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    sget-object v0, Lcom/ex/auto/QuickAccessFloaterService;->j0:Ljava/util/List;

    sget-object v0, Lcom/ex/auto/QuickAccessFloaterService;->l0:Lcom/ex/auto/QuickAccessFloaterService;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/ex/auto/QuickAccessFloaterService;->H()V

    :cond_3
    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-static {v3, v6}, LI0/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    invoke-static {v15, v5, v7, v3}, Lcom/ex/auto/MainActivity;->H(Ljava/util/ArrayList;Ljava/util/LinkedHashMap;FLjava/lang/String;)F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_0

    :cond_5
    move-object/from16 v9, v18

    move-object v10, v15

    move-object v11, v8

    move-object v12, v1

    move-object/from16 v13, v16

    move v14, v4

    invoke-static/range {v9 .. v14}, Lcom/ex/auto/MainActivity;->I(Landroid/widget/LinearLayout;Ljava/util/ArrayList;Lcom/ex/auto/MainActivity;Landroid/content/SharedPreferences;Landroid/widget/TextView;F)V

    :cond_6
    const/4 v9, 0x1

    goto :goto_4

    :goto_1
    iget-boolean v2, v4, LI0/i;->a:Z

    if-eqz v2, :cond_8

    const-string v2, "qa_visible_"

    invoke-virtual {v2, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x1

    invoke-interface {v0, v2, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleY(F)V

    if-eqz v0, :cond_7

    goto :goto_2

    :cond_7
    const v2, 0x3eb33333    # 0.35f

    :goto_2
    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/view/View;->setElevation(F)V

    invoke-static {v15, v5, v7, v6}, Lcom/ex/auto/MainActivity;->H(Ljava/util/ArrayList;Ljava/util/LinkedHashMap;FLjava/lang/String;)F

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_3

    :cond_8
    const/4 v8, 0x1

    :goto_3
    move v9, v8

    goto :goto_4

    :cond_9
    move v8, v11

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, v2, LI0/j;->a:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTranslationX()F

    move-result v0

    iput v0, v3, LI0/j;->a:F

    const/4 v0, 0x0

    iput-boolean v0, v4, LI0/i;->a:Z

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v8}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_3

    :goto_4
    return v9
.end method
