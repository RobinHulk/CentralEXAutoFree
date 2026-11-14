.class public final LT/N4;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field public a:LT/M4;

.field public b:F

.field public c:Z

.field public d:F

.field public e:F


# virtual methods
.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, LT/N4;->c:Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v4, 0x0

    move v5, v2

    move v6, v4

    :goto_0
    if-ge v5, v3, :cond_0

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    add-float/2addr v6, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    int-to-float v3, v3

    div-float/2addr v6, v3

    iput v6, p0, LT/N4;->d:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    :goto_1
    if-ge v2, v1, :cond_1

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    add-float/2addr v4, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    int-to-float p1, v1

    div-float/2addr v4, p1

    iput v4, p0, LT/N4;->e:F

    return v0

    :cond_2
    return v2
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    const/4 v0, 0x1

    iget-boolean v1, p0, LT/N4;->c:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-eq v1, v0, :cond_9

    const/4 v3, 0x2

    if-eq v1, v3, :cond_3

    const/4 v4, 0x3

    if-eq v1, v4, :cond_9

    const/4 v4, 0x6

    if-eq v1, v4, :cond_1

    return v0

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p1

    if-gt p1, v3, :cond_2

    iput-boolean v2, p0, LT/N4;->c:Z

    :cond_2
    return v0

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-lt v1, v3, :cond_8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v4, 0x0

    move v5, v2

    move v6, v4

    :goto_0
    if-ge v5, v1, :cond_4

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    add-float/2addr v6, v7

    add-int/2addr v5, v0

    goto :goto_0

    :cond_4
    int-to-float v1, v1

    div-float/2addr v6, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    move v3, v4

    :goto_1
    if-ge v2, v1, :cond_5

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    add-float/2addr v3, v5

    add-int/2addr v2, v0

    goto :goto_1

    :cond_5
    int-to-float p1, v1

    div-float/2addr v3, p1

    iget p1, p0, LT/N4;->d:F

    sub-float p1, v6, p1

    iget v1, p0, LT/N4;->e:F

    sub-float v1, v3, v1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v5, p0, LT/N4;->b:F

    cmpl-float v2, v2, v5

    if-ltz v2, :cond_8

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v2, v1

    if-lez v1, :cond_8

    iget-object v1, p0, LT/N4;->a:LT/M4;

    if-eqz v1, :cond_7

    cmpl-float p1, p1, v4

    if-lez p1, :cond_6

    move p1, v0

    goto :goto_2

    :cond_6
    const/4 p1, -0x1

    :goto_2
    check-cast v1, LT/U3;

    sget-object v2, Lcom/ex/auto/QuickAccessFloaterService;->j0:Ljava/util/List;

    iget-object v1, v1, LT/U3;->a:Lcom/ex/auto/QuickAccessFloaterService;

    invoke-virtual {v1, p1}, Lcom/ex/auto/QuickAccessFloaterService;->c(I)V

    :cond_7
    iput v6, p0, LT/N4;->d:F

    iput v3, p0, LT/N4;->e:F

    :cond_8
    return v0

    :cond_9
    iput-boolean v2, p0, LT/N4;->c:Z

    return v0
.end method

.method public setOnTwoFingerHorizontalSwipeListener(LT/M4;)V
    .locals 0

    iput-object p1, p0, LT/N4;->a:LT/M4;

    return-void
.end method

.method public setStepPx(F)V
    .locals 0

    iput p1, p0, LT/N4;->b:F

    return-void
.end method
