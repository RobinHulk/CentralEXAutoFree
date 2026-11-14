.class public final Lcom/ex/auto/FavoriteAppsActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# static fields
.field public static final synthetic a:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)I
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

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 18

    move-object/from16 v6, p0

    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v7, 0x0

    :try_start_0
    invoke-virtual {v0, v1, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    const-string v2, "queryIntentActivities(...)"

    invoke-static {v1, v2}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Landroid/content/pm/ResolveInfo;

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v3}, Lw0/k;->V(Ljava/lang/Iterable;)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    new-instance v4, Lv0/d;

    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v0}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v0}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-direct {v4, v5, v8, v3}, Lv0/d;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    new-instance v0, LT/E;

    const/4 v2, 0x3

    invoke-direct {v0, v2}, LT/E;-><init>(I)V

    invoke-static {v1, v0}, Lw0/i;->f0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    sget-object v0, Lw0/q;->a:Lw0/q;

    :goto_2
    invoke-static/range {p0 .. p0}, LT/Y;->Y(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lw0/i;->k0(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v8

    new-instance v9, Landroid/widget/LinearLayout;

    invoke-direct {v9, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const v1, 0x7f050031

    invoke-virtual {v6, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v9, v1}, Landroid/view/View;->setBackgroundColor(I)V

    const/16 v1, 0x18

    invoke-virtual {v6, v1}, Lcom/ex/auto/FavoriteAppsActivity;->a(I)I

    move-result v2

    invoke-virtual {v6, v1}, Lcom/ex/auto/FavoriteAppsActivity;->a(I)I

    move-result v3

    invoke-virtual {v6, v1}, Lcom/ex/auto/FavoriteAppsActivity;->a(I)I

    move-result v4

    invoke-virtual {v6, v1}, Lcom/ex/auto/FavoriteAppsActivity;->a(I)I

    move-result v1

    invoke-virtual {v9, v2, v3, v4, v1}, Landroid/view/View;->setPadding(IIII)V

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v11, 0x10

    invoke-virtual {v1, v11}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0f018a

    invoke-virtual {v6, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v12, 0x7f050041

    invoke-virtual {v6, v12}, Landroid/content/Context;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v3, 0x41c00000    # 24.0f

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v2}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3, v10}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v13, -0x2

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v3, v7, v13, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/widget/Button;

    invoke-direct {v3, v6}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0f006e

    invoke-virtual {v6, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setAllCaps(Z)V

    const v4, 0x7f05003f

    invoke-virtual {v6, v4}, Landroid/content/Context;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    const v4, 0x7f05003d

    invoke-virtual {v6, v4}, Landroid/content/Context;->getColor(I)I

    move-result v4

    invoke-static {v4}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    const/high16 v4, 0x41880000    # 17.0f

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v5, 0x96

    invoke-virtual {v6, v5}, Lcom/ex/auto/FavoriteAppsActivity;->a(I)I

    move-result v5

    const/16 v14, 0x34

    invoke-virtual {v6, v14}, Lcom/ex/auto/FavoriteAppsActivity;->a(I)I

    move-result v14

    invoke-direct {v4, v5, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, LT/j;

    const/4 v5, 0x4

    invoke-direct {v4, v6, v5}, LT/j;-><init>(Landroid/content/ContextWrapper;I)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v9, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0f0189

    invoke-virtual {v6, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f050042

    invoke-virtual {v6, v2}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v2, 0x41700000    # 15.0f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v14, -0x1

    invoke-direct {v2, v14, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v3, 0x6

    invoke-virtual {v6, v3}, Lcom/ex/auto/FavoriteAppsActivity;->a(I)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v6, v11}, Lcom/ex/auto/FavoriteAppsActivity;->a(I)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v9, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v15, Landroid/widget/LinearLayout;

    invoke-direct {v15, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v15, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_3
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv0/d;

    iget-object v1, v0, Lv0/d;->a:Ljava/lang/Object;

    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    iget-object v1, v0, Lv0/d;->b:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v0, v0, Lv0/d;->c:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/drawable/Drawable;

    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v5, v11}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual {v5, v10}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {v5, v10}, Landroid/view/View;->setFocusable(Z)V

    const v2, 0x7f070059

    invoke-virtual {v5, v2}, Landroid/view/View;->setBackgroundResource(I)V

    const/16 v2, 0xe

    invoke-virtual {v6, v2}, Lcom/ex/auto/FavoriteAppsActivity;->a(I)I

    move-result v4

    invoke-virtual {v6, v2}, Lcom/ex/auto/FavoriteAppsActivity;->a(I)I

    move-result v10

    invoke-virtual {v6, v2}, Lcom/ex/auto/FavoriteAppsActivity;->a(I)I

    move-result v11

    invoke-virtual {v6, v2}, Lcom/ex/auto/FavoriteAppsActivity;->a(I)I

    move-result v2

    invoke-virtual {v5, v4, v10, v11, v2}, Landroid/view/View;->setPadding(IIII)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v14, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0xa

    invoke-virtual {v6, v4}, Lcom/ex/auto/FavoriteAppsActivity;->a(I)I

    move-result v4

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v5, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v10, Landroid/widget/ImageView;

    invoke-direct {v10, v6}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v2, 0x2e

    invoke-virtual {v6, v2}, Lcom/ex/auto/FavoriteAppsActivity;->a(I)I

    move-result v4

    invoke-virtual {v6, v2}, Lcom/ex/auto/FavoriteAppsActivity;->a(I)I

    move-result v2

    invoke-direct {v0, v4, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x12

    invoke-virtual {v6, v2}, Lcom/ex/auto/FavoriteAppsActivity;->a(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    invoke-virtual {v10, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v11, Landroid/widget/TextView;

    invoke-direct {v11, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v11, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v6, v12}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v0, 0x41980000    # 19.0f

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setTextSize(F)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v13, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v11, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Landroid/widget/CheckBox;

    invoke-direct {v4, v6}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    invoke-interface {v8, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v4, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    invoke-virtual {v4, v7}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {v4, v7}, Landroid/view/View;->setFocusable(Z)V

    const v0, 0x7f05002e

    invoke-virtual {v6, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/CompoundButton;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    const v0, 0x3fa66666    # 1.3f

    invoke-virtual {v4, v0}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v4, v0}, Landroid/view/View;->setScaleY(F)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v13, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x14

    invoke-virtual {v6, v1}, Lcom/ex/auto/FavoriteAppsActivity;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-virtual {v4, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, LT/F;

    const/16 v17, 0x2

    move-object v0, v2

    move-object v1, v4

    move-object v7, v2

    move-object v2, v8

    move-object v12, v4

    move-object/from16 v4, p0

    move-object v13, v5

    move/from16 v5, v17

    invoke-direct/range {v0 .. v5}, LT/F;-><init>(Landroid/widget/CheckBox;Ljava/util/Set;Ljava/lang/String;Landroid/app/Activity;I)V

    invoke-virtual {v13, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v13, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v13, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v13, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v15, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const/4 v7, 0x0

    const/4 v10, 0x1

    const/16 v11, 0x10

    const v12, 0x7f050041

    const/4 v13, -0x2

    goto/16 :goto_3

    :cond_3
    invoke-virtual {v9, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/ScrollView;

    invoke-direct {v0, v6}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v9}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    invoke-virtual {v6, v0}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    return-void
.end method
