.class public final synthetic LT/C3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Landroid/content/SharedPreferences;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:I

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Landroid/content/SharedPreferences;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LT/C3;->a:Landroid/content/Context;

    iput-object p2, p0, LT/C3;->b:Landroid/content/SharedPreferences;

    iput-object p3, p0, LT/C3;->c:Ljava/lang/String;

    iput p4, p0, LT/C3;->d:I

    iput-object p5, p0, LT/C3;->e:Ljava/lang/String;

    iput-object p6, p0, LT/C3;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 21

    move-object/from16 v1, p0

    iget-object v8, v1, LT/C3;->a:Landroid/content/Context;

    iget-object v5, v1, LT/C3;->b:Landroid/content/SharedPreferences;

    iget-object v6, v1, LT/C3;->c:Ljava/lang/String;

    iget v7, v1, LT/C3;->d:I

    iget-object v0, v1, LT/C3;->e:Ljava/lang/String;

    iget-object v2, v1, LT/C3;->f:Ljava/lang/String;

    sget-boolean v3, LT/E3;->a:Z

    invoke-static {v8}, LI0/f;->b(Ljava/lang/Object;)V

    invoke-static {v0}, LI0/f;->b(Ljava/lang/Object;)V

    sget-boolean v3, LT/E3;->b:Z

    if-eqz v3, :cond_0

    goto/16 :goto_0

    :cond_0
    const/4 v3, 0x1

    sput-boolean v3, LT/E3;->b:Z

    const-string v4, "window"

    invoke-virtual {v8, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    const-string v9, "null cannot be cast to non-null type android.view.WindowManager"

    invoke-static {v4, v9}, LI0/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v9, v4

    check-cast v9, Landroid/view/WindowManager;

    new-instance v10, Landroid/widget/LinearLayout;

    invoke-direct {v10, v8}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/16 v4, 0x11

    invoke-virtual {v10, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    const-string v4, "#CC000000"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v10, v4}, Landroid/view/View;->setBackgroundColor(I)V

    const/16 v4, 0x18

    invoke-static {v8, v4}, LT/E3;->b(Landroid/content/Context;I)I

    move-result v11

    invoke-static {v8, v4}, LT/E3;->b(Landroid/content/Context;I)I

    move-result v12

    invoke-static {v8, v4}, LT/E3;->b(Landroid/content/Context;I)I

    move-result v13

    invoke-static {v8, v4}, LT/E3;->b(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v10, v11, v12, v13, v4}, Landroid/view/View;->setPadding(IIII)V

    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, v8}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const-string v11, "#F20B131E"

    invoke-static {v11}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v11

    const-string v12, "#0F1722"

    invoke-static {v12}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/16 v13, 0x12

    invoke-static {v8, v11, v13, v12, v3}, LT/E3;->d(Landroid/content/Context;IILjava/lang/Integer;I)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v11

    invoke-virtual {v4, v11}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/16 v11, 0x16

    invoke-static {v8, v11}, LT/E3;->b(Landroid/content/Context;I)I

    move-result v12

    const/16 v14, 0x14

    invoke-static {v8, v14}, LT/E3;->b(Landroid/content/Context;I)I

    move-result v14

    invoke-static {v8, v11}, LT/E3;->b(Landroid/content/Context;I)I

    move-result v11

    invoke-static {v8, v13}, LT/E3;->b(Landroid/content/Context;I)I

    move-result v13

    invoke-virtual {v4, v12, v14, v11, v13}, Landroid/view/View;->setPadding(IIII)V

    new-instance v11, Landroid/widget/TextView;

    invoke-direct {v11, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v0, 0x41900000    # 18.0f

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setTextSize(F)V

    const-string v0, "#1C68EF"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v11}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v12

    invoke-virtual {v11, v12, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    invoke-virtual {v4, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v11, Landroid/widget/TextView;

    invoke-direct {v11, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v11, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v2, 0x41700000    # 15.0f

    invoke-virtual {v11, v2}, Landroid/widget/TextView;->setTextSize(F)V

    const-string v2, "#EAF2F8"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v11, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v2, 0x0

    const v12, 0x3f933333    # 1.15f

    invoke-virtual {v11, v2, v12}, Landroid/widget/TextView;->setLineSpacing(FF)V

    const/16 v2, 0xc

    invoke-static {v8, v2}, LT/E3;->b(Landroid/content/Context;I)I

    move-result v12

    const/16 v13, 0x10

    invoke-static {v8, v13}, LT/E3;->b(Landroid/content/Context;I)I

    move-result v13

    const/4 v14, 0x0

    invoke-virtual {v11, v14, v12, v14, v13}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {v4, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v11, Landroid/widget/Button;

    invoke-direct {v11, v8}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const v12, 0x7f0f0034

    invoke-virtual {v8, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v12, "#FFFFFF"

    invoke-static {v12}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v11}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v12

    invoke-virtual {v11, v12, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    const/4 v3, 0x0

    invoke-static {v8, v0, v2, v3, v14}, LT/E3;->d(Landroid/content/Context;IILjava/lang/Integer;I)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {v11, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v0, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const v3, 0x800005

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {v4, v11, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v3, 0x21c

    invoke-static {v8, v3}, LT/E3;->b(Landroid/content/Context;I)I

    move-result v3

    invoke-direct {v0, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v10, v4, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v19, 0x100

    const/16 v20, -0x3

    const/16 v16, -0x1

    const/16 v17, -0x1

    const/16 v18, 0x7f6

    move-object v15, v0

    invoke-direct/range {v15 .. v20}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    new-instance v12, LT/D3;

    move-object v2, v12

    move-object v3, v9

    move-object v4, v10

    invoke-direct/range {v2 .. v8}, LT/D3;-><init>(Landroid/view/WindowManager;Landroid/widget/LinearLayout;Landroid/content/SharedPreferences;Ljava/lang/String;ILandroid/content/Context;)V

    invoke-virtual {v11, v12}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :try_start_0
    invoke-interface {v9, v10, v0}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v2, v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "addView: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "MsgMgr"

    invoke-static {v2, v0, v3}, LM/d0;->n(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    sput-boolean v14, LT/E3;->b:Z

    :goto_0
    return-void
.end method
