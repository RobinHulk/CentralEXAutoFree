.class public final synthetic LT/d4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/ex/auto/QuickAccessFloaterService;

.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:I

.field public final synthetic f:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/ex/auto/QuickAccessFloaterService;IILjava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LT/d4;->a:Lcom/ex/auto/QuickAccessFloaterService;

    iput p2, p0, LT/d4;->b:I

    iput p3, p0, LT/d4;->c:I

    iput-object p4, p0, LT/d4;->d:Ljava/lang/String;

    iput p5, p0, LT/d4;->e:I

    iput-object p6, p0, LT/d4;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    iget-object v7, p0, LT/d4;->a:Lcom/ex/auto/QuickAccessFloaterService;

    iget-object v8, v7, Lcom/ex/auto/QuickAccessFloaterService;->p:Landroid/widget/TextView;

    iget v9, p0, LT/d4;->c:I

    if-eqz v8, :cond_0

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget v1, p0, LT/d4;->b:I

    const/4 v3, 0x1

    const/4 v4, 0x1

    move-object v0, v7

    move v2, v9

    invoke-virtual/range {v0 .. v6}, Lcom/ex/auto/QuickAccessFloaterService;->L(IIZZZZ)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iget-object v0, v7, Lcom/ex/auto/QuickAccessFloaterService;->p:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v1, p0, LT/d4;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v8, v7, Lcom/ex/auto/QuickAccessFloaterService;->q:Landroid/widget/TextView;

    if-eqz v8, :cond_2

    const/4 v5, 0x1

    const/4 v6, 0x1

    iget v1, p0, LT/d4;->e:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, v7

    move v2, v9

    invoke-virtual/range {v0 .. v6}, Lcom/ex/auto/QuickAccessFloaterService;->L(IIZZZZ)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    iget-object v0, v7, Lcom/ex/auto/QuickAccessFloaterService;->q:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    iget-object v1, p0, LT/d4;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    return-void
.end method
