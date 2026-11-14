.class public final synthetic LT/M;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic a:Lcom/ex/auto/BlackoutFloaterService;

.field public final synthetic b:Landroid/view/WindowManager$LayoutParams;

.field public final synthetic c:Landroid/widget/ImageView;

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Lcom/ex/auto/BlackoutFloaterService;Landroid/view/WindowManager$LayoutParams;Landroid/widget/ImageView;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LT/M;->a:Lcom/ex/auto/BlackoutFloaterService;

    iput-object p2, p0, LT/M;->b:Landroid/view/WindowManager$LayoutParams;

    iput-object p3, p0, LT/M;->c:Landroid/widget/ImageView;

    iput p4, p0, LT/M;->d:I

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7

    sget-boolean p1, Lcom/ex/auto/BlackoutFloaterService;->p:Z

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    iget-object v0, p0, LT/M;->b:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, LT/M;->c:Landroid/widget/ImageView;

    iget-object v2, p0, LT/M;->a:Lcom/ex/auto/BlackoutFloaterService;

    const v3, 0x3f733333    # 0.95f

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz p1, :cond_a

    if-eq p1, v5, :cond_7

    const/4 v6, 0x2

    if-eq p1, v6, :cond_0

    const/4 p2, 0x3

    if-eq p1, p2, :cond_7

    goto/16 :goto_3

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iget v3, v2, Lcom/ex/auto/BlackoutFloaterService;->k:F

    sub-float/2addr p1, v3

    float-to-int p1, p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    iget v3, v2, Lcom/ex/auto/BlackoutFloaterService;->l:F

    sub-float/2addr p2, v3

    float-to-int p2, p2

    iget-boolean v3, v2, Lcom/ex/auto/BlackoutFloaterService;->o:Z

    if-nez v3, :cond_2

    int-to-float v3, p1

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v6, p0, LT/M;->d:I

    int-to-float v6, v6

    cmpl-float v3, v3, v6

    if-gtz v3, :cond_1

    int-to-float v3, p2

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v3, v3, v6

    if-lez v3, :cond_2

    :cond_1
    iput-boolean v5, v2, Lcom/ex/auto/BlackoutFloaterService;->o:Z

    :cond_2
    iget-boolean v3, v2, Lcom/ex/auto/BlackoutFloaterService;->o:Z

    if-eqz v3, :cond_6

    iget v3, v2, Lcom/ex/auto/BlackoutFloaterService;->m:I

    add-int/2addr v3, p1

    if-gez v3, :cond_3

    move v3, v4

    :cond_3
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget p1, v2, Lcom/ex/auto/BlackoutFloaterService;->n:I

    add-int/2addr p1, p2

    if-gez p1, :cond_4

    goto :goto_0

    :cond_4
    move v4, p1

    :goto_0
    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object p1, v2, Lcom/ex/auto/BlackoutFloaterService;->a:Landroid/view/WindowManager;

    if-eqz p1, :cond_5

    invoke-interface {p1, v1, v0}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_5
    const-string p1, "windowManager"

    invoke-static {p1}, LI0/f;->h(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1

    :cond_6
    :goto_1
    move v4, v5

    goto :goto_3

    :cond_7
    iget-boolean p1, v2, Lcom/ex/auto/BlackoutFloaterService;->c:Z

    if-eqz p1, :cond_8

    goto :goto_2

    :cond_8
    const v3, 0x3f59999a    # 0.85f

    :goto_2
    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    iget-boolean p1, v2, Lcom/ex/auto/BlackoutFloaterService;->o:Z

    if-eqz p1, :cond_9

    iget p1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget p2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    const-string v3, "blackout"

    invoke-static {v2, v3, p1, p2, v0}, LT/Y;->d0(Landroid/content/Context;Ljava/lang/String;III)V

    :cond_9
    iget-boolean p1, v2, Lcom/ex/auto/BlackoutFloaterService;->o:Z

    if-nez p1, :cond_6

    invoke-virtual {v1}, Landroid/view/View;->performClick()Z

    goto :goto_1

    :cond_a
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iput p1, v2, Lcom/ex/auto/BlackoutFloaterService;->k:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, v2, Lcom/ex/auto/BlackoutFloaterService;->l:F

    iget p1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iput p1, v2, Lcom/ex/auto/BlackoutFloaterService;->m:I

    iget p1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iput p1, v2, Lcom/ex/auto/BlackoutFloaterService;->n:I

    iput-boolean v4, v2, Lcom/ex/auto/BlackoutFloaterService;->o:Z

    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    goto :goto_1

    :goto_3
    return v4
.end method
