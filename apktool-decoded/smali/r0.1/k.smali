.class public final Lr0/k;
.super Lr0/l;
.source "SourceFile"


# instance fields
.field public final d:Lj/Q0;

.field public final e:Lj/S0;

.field public final f:Lr0/h;

.field public final g:Lr0/a;

.field public final h:Lr0/b;

.field public i:Z

.field public j:Z

.field public k:J

.field public l:Landroid/graphics/drawable/StateListDrawable;

.field public m:Lp0/g;

.field public n:Landroid/view/accessibility/AccessibilityManager;

.field public o:Landroid/animation/ValueAnimator;

.field public p:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(Lcom/google/android/material/textfield/TextInputLayout;)V
    .locals 2

    invoke-direct {p0, p1}, Lr0/l;-><init>(Lcom/google/android/material/textfield/TextInputLayout;)V

    new-instance v0, Lj/Q0;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lj/Q0;-><init>(Ljava/lang/Object;I)V

    iput-object v0, p0, Lr0/k;->d:Lj/Q0;

    new-instance v0, Lj/S0;

    invoke-direct {v0, p0, v1}, Lj/S0;-><init>(Ljava/lang/Object;I)V

    iput-object v0, p0, Lr0/k;->e:Lj/S0;

    new-instance v0, Lr0/h;

    invoke-direct {v0, p0, p1}, Lr0/h;-><init>(Lr0/k;Lcom/google/android/material/textfield/TextInputLayout;)V

    iput-object v0, p0, Lr0/k;->f:Lr0/h;

    new-instance p1, Lr0/a;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Lr0/a;-><init>(Lr0/l;I)V

    iput-object p1, p0, Lr0/k;->g:Lr0/a;

    new-instance p1, Lr0/b;

    invoke-direct {p1, p0, v0}, Lr0/b;-><init>(Lr0/l;I)V

    iput-object p1, p0, Lr0/k;->h:Lr0/b;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lr0/k;->i:Z

    iput-boolean p1, p0, Lr0/k;->j:Z

    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lr0/k;->k:J

    return-void
.end method

.method public static d(Lr0/k;Landroid/widget/EditText;)Landroid/widget/AutoCompleteTextView;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p0, p1, Landroid/widget/AutoCompleteTextView;

    if-eqz p0, :cond_0

    check-cast p1, Landroid/widget/AutoCompleteTextView;

    return-object p1

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "EditText needs to be an AutoCompleteTextView if an Exposed Dropdown Menu is being used."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static e(Lr0/k;Landroid/widget/AutoCompleteTextView;)V
    .locals 7

    if-nez p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_2

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lr0/k;->k:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ltz v2, :cond_2

    const-wide/16 v5, 0x12c

    cmp-long v0, v0, v5

    if-lez v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v4

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v3

    :goto_1
    if-eqz v0, :cond_3

    iput-boolean v4, p0, Lr0/k;->i:Z

    :cond_3
    iget-boolean v0, p0, Lr0/k;->i:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lr0/k;->j:Z

    xor-int/2addr v0, v3

    invoke-virtual {p0, v0}, Lr0/k;->g(Z)V

    iget-boolean p0, p0, Lr0/k;->j:Z

    if-eqz p0, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->showDropDown()V

    goto :goto_2

    :cond_4
    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->dismissDropDown()V

    goto :goto_2

    :cond_5
    iput-boolean v4, p0, Lr0/k;->i:Z

    :goto_2
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 7

    const/4 v0, 0x2

    iget-object v1, p0, Lr0/l;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060136

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f06010c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f06010e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    invoke-virtual {p0, v2, v2, v3, v4}, Lr0/k;->f(FFFI)Lp0/g;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {p0, v6, v2, v3, v4}, Lr0/k;->f(FFFI)Lp0/g;

    move-result-object v2

    iput-object v5, p0, Lr0/k;->m:Lp0/g;

    new-instance v3, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    iput-object v3, p0, Lr0/k;->l:Landroid/graphics/drawable/StateListDrawable;

    const v4, 0x10100aa

    filled-new-array {v4}, [I

    move-result-object v4

    invoke-virtual {v3, v4, v5}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    iget-object v3, p0, Lr0/k;->l:Landroid/graphics/drawable/StateListDrawable;

    const/4 v4, 0x0

    new-array v4, v4, [I

    invoke-virtual {v3, v4, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    const v2, 0x7f0700c4

    invoke-static {v1, v2}, Le/a;->A(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, p0, Lr0/l;->a:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v3, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0f0041

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconContentDescription(Ljava/lang/CharSequence;)V

    new-instance v2, Lcom/google/android/material/datepicker/j;

    const/4 v4, 0x6

    invoke-direct {v2, p0, v4}, Lcom/google/android/material/datepicker/j;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v3, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, v3, Lcom/google/android/material/textfield/TextInputLayout;->b0:Ljava/util/LinkedHashSet;

    iget-object v4, p0, Lr0/k;->g:Lr0/a;

    invoke-virtual {v2, v4}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    iget-object v2, v3, Lcom/google/android/material/textfield/TextInputLayout;->e:Landroid/widget/EditText;

    if-eqz v2, :cond_0

    invoke-virtual {v4, v3}, Lr0/a;->a(Lcom/google/android/material/textfield/TextInputLayout;)V

    :cond_0
    iget-object v2, v3, Lcom/google/android/material/textfield/TextInputLayout;->f0:Ljava/util/LinkedHashSet;

    iget-object v3, p0, Lr0/k;->h:Lr0/b;

    invoke-virtual {v2, v3}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-array v2, v0, [F

    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    sget-object v3, LZ/a;->a:Landroid/view/animation/LinearInterpolator;

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/16 v4, 0x43

    int-to-long v4, v4

    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v4, LM/n;

    invoke-direct {v4, p0, v0}, LM/n;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v2, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iput-object v2, p0, Lr0/k;->p:Landroid/animation/ValueAnimator;

    new-array v2, v0, [F

    fill-array-data v2, :array_1

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/16 v3, 0x32

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v3, LM/n;

    invoke-direct {v3, p0, v0}, LM/n;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iput-object v2, p0, Lr0/k;->o:Landroid/animation/ValueAnimator;

    new-instance v3, Lb0/a;

    invoke-direct {v3, p0, v0}, Lb0/a;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    sget-object v2, Ly/N;->a:Ljava/util/WeakHashMap;

    iget-object v2, p0, Lr0/l;->c:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-static {v2, v0}, Ly/y;->s(Landroid/view/View;I)V

    const-string v0, "accessibility"

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lr0/k;->n:Landroid/view/accessibility/AccessibilityManager;

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public final b(I)Z
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final f(FFFI)Lp0/g;
    .locals 11

    new-instance v0, Lp0/i;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lp0/i;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    new-instance v2, Lp0/i;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    new-instance v3, Lp0/i;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    new-instance v4, Lp0/e;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    new-instance v5, Lp0/e;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    new-instance v6, Lp0/e;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    new-instance v7, Lp0/e;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    new-instance v8, Lp0/a;

    invoke-direct {v8, p1}, Lp0/a;-><init>(F)V

    new-instance v9, Lp0/a;

    invoke-direct {v9, p1}, Lp0/a;-><init>(F)V

    new-instance p1, Lp0/a;

    invoke-direct {p1, p2}, Lp0/a;-><init>(F)V

    new-instance v10, Lp0/a;

    invoke-direct {v10, p2}, Lp0/a;-><init>(F)V

    new-instance p2, Lp0/k;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object v0, p2, Lp0/k;->a:Le/a;

    iput-object v1, p2, Lp0/k;->b:Le/a;

    iput-object v2, p2, Lp0/k;->c:Le/a;

    iput-object v3, p2, Lp0/k;->d:Le/a;

    iput-object v8, p2, Lp0/k;->e:Lp0/c;

    iput-object v9, p2, Lp0/k;->f:Lp0/c;

    iput-object v10, p2, Lp0/k;->g:Lp0/c;

    iput-object p1, p2, Lp0/k;->h:Lp0/c;

    iput-object v4, p2, Lp0/k;->i:Lp0/e;

    iput-object v5, p2, Lp0/k;->j:Lp0/e;

    iput-object v6, p2, Lp0/k;->k:Lp0/e;

    iput-object v7, p2, Lp0/k;->l:Lp0/e;

    sget-object p1, Lp0/g;->w:Landroid/graphics/Paint;

    const-class p1, Lp0/g;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lr0/l;->b:Landroid/content/Context;

    const v1, 0x7f0300c2

    invoke-static {v0, v1, p1}, Le/a;->O(Landroid/content/Context;ILjava/lang/String;)I

    move-result p1

    new-instance v1, Lp0/g;

    invoke-direct {v1}, Lp0/g;-><init>()V

    invoke-virtual {v1, v0}, Lp0/g;->f(Landroid/content/Context;)V

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {v1, p1}, Lp0/g;->h(Landroid/content/res/ColorStateList;)V

    invoke-virtual {v1, p3}, Lp0/g;->g(F)V

    invoke-virtual {v1, p2}, Lp0/g;->setShapeAppearanceModel(Lp0/k;)V

    iget-object p1, v1, Lp0/g;->a:Lp0/f;

    iget-object p2, p1, Lp0/f;->g:Landroid/graphics/Rect;

    if-nez p2, :cond_0

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p1, Lp0/f;->g:Landroid/graphics/Rect;

    :cond_0
    iget-object p1, v1, Lp0/g;->a:Lp0/f;

    iget-object p1, p1, Lp0/f;->g:Landroid/graphics/Rect;

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p4, p2, p4}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {v1}, Lp0/g;->invalidateSelf()V

    return-object v1
.end method

.method public final g(Z)V
    .locals 1

    iget-boolean v0, p0, Lr0/k;->j:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lr0/k;->j:Z

    iget-object p1, p0, Lr0/k;->p:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    iget-object p1, p0, Lr0/k;->o:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_0
    return-void
.end method
