.class public final synthetic LT/q2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LH0/l;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/ex/auto/MainActivity;

.field public final synthetic c:Landroid/widget/LinearLayout;

.field public final synthetic d:F


# direct methods
.method public synthetic constructor <init>(Landroid/widget/LinearLayout;Lcom/ex/auto/MainActivity;F)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput v0, p0, LT/q2;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LT/q2;->c:Landroid/widget/LinearLayout;

    iput-object p2, p0, LT/q2;->b:Lcom/ex/auto/MainActivity;

    iput p3, p0, LT/q2;->d:F

    return-void
.end method

.method public synthetic constructor <init>(Lcom/ex/auto/MainActivity;Landroid/widget/LinearLayout;F)V
    .locals 1

    .line 2
    const/4 v0, 0x1

    iput v0, p0, LT/q2;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LT/q2;->b:Lcom/ex/auto/MainActivity;

    iput-object p2, p0, LT/q2;->c:Landroid/widget/LinearLayout;

    iput p3, p0, LT/q2;->d:F

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    iget-object v0, p0, LT/q2;->c:Landroid/widget/LinearLayout;

    const/4 v1, -0x2

    const/4 v2, -0x1

    iget v3, p0, LT/q2;->d:F

    const-string v4, "getString(...)"

    iget-object v5, p0, LT/q2;->b:Lcom/ex/auto/MainActivity;

    const-string v6, "$this$addCard"

    iget v7, p0, LT/q2;->a:I

    check-cast p1, Landroid/widget/LinearLayout;

    packed-switch v7, :pswitch_data_0

    sget v7, Lcom/ex/auto/MainActivity;->u0:I

    invoke-static {p1, v6}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const v6, 0x7f0f0284

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v4}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5, v6}, Lcom/ex/auto/MainActivity;->G(Lcom/ex/auto/MainActivity;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const v6, 0x7f0f0192

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v4}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5, v3, v6}, Lcom/ex/auto/MainActivity;->F(Lcom/ex/auto/MainActivity;FLjava/lang/String;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xc

    int-to-float v1, v1

    mul-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, v6, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {p1, v0, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const v0, 0x7f0f0285

    invoke-virtual {v5, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5, v3, v0}, Lcom/ex/auto/MainActivity;->F(Lcom/ex/auto/MainActivity;FLjava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    int-to-float v1, v1

    mul-float/2addr v1, v3

    float-to-int v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    sget-object p1, Lv0/e;->c:Lv0/e;

    return-object p1

    :pswitch_0
    sget v7, Lcom/ex/auto/MainActivity;->u0:I

    invoke-static {p1, v6}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const v0, 0x7f0f015f

    invoke-virtual {v5, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5, v3, v0}, Lcom/ex/auto/MainActivity;->F(Lcom/ex/auto/MainActivity;FLjava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    sget-object p1, Lv0/e;->c:Lv0/e;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
