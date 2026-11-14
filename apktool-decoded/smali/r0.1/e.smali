.class public final Lr0/e;
.super Lr0/l;
.source "SourceFile"


# instance fields
.field public final d:Lj/Q0;

.field public final e:Lj/S0;

.field public final f:Lr0/a;

.field public final g:Lr0/b;

.field public h:Landroid/animation/AnimatorSet;

.field public i:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(Lcom/google/android/material/textfield/TextInputLayout;)V
    .locals 1

    invoke-direct {p0, p1}, Lr0/l;-><init>(Lcom/google/android/material/textfield/TextInputLayout;)V

    new-instance p1, Lj/Q0;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Lj/Q0;-><init>(Ljava/lang/Object;I)V

    iput-object p1, p0, Lr0/e;->d:Lj/Q0;

    new-instance p1, Lj/S0;

    invoke-direct {p1, p0, v0}, Lj/S0;-><init>(Ljava/lang/Object;I)V

    iput-object p1, p0, Lr0/e;->e:Lj/S0;

    new-instance p1, Lr0/a;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lr0/a;-><init>(Lr0/l;I)V

    iput-object p1, p0, Lr0/e;->f:Lr0/a;

    new-instance p1, Lr0/b;

    invoke-direct {p1, p0, v0}, Lr0/b;-><init>(Lr0/l;I)V

    iput-object p1, p0, Lr0/e;->g:Lr0/b;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 10

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    iget-object v3, p0, Lr0/l;->b:Landroid/content/Context;

    const v4, 0x7f0700c7

    invoke-static {v3, v4}, Le/a;->A(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget-object v4, p0, Lr0/l;->a:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v4, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0f002c

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconContentDescription(Ljava/lang/CharSequence;)V

    new-instance v3, Lcom/google/android/material/datepicker/j;

    const/4 v5, 0x5

    invoke-direct {v3, p0, v5}, Lcom/google/android/material/datepicker/j;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v4, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, v4, Lcom/google/android/material/textfield/TextInputLayout;->b0:Ljava/util/LinkedHashSet;

    iget-object v5, p0, Lr0/e;->f:Lr0/a;

    invoke-virtual {v3, v5}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    iget-object v3, v4, Lcom/google/android/material/textfield/TextInputLayout;->e:Landroid/widget/EditText;

    if-eqz v3, :cond_0

    invoke-virtual {v5, v4}, Lr0/a;->a(Lcom/google/android/material/textfield/TextInputLayout;)V

    :cond_0
    iget-object v3, v4, Lcom/google/android/material/textfield/TextInputLayout;->f0:Ljava/util/LinkedHashSet;

    iget-object v4, p0, Lr0/e;->g:Lr0/b;

    invoke-virtual {v3, v4}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-array v3, v2, [F

    fill-array-data v3, :array_0

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    sget-object v4, LZ/a;->d:LI/a;

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v4, 0x96

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v4, Lr0/d;

    invoke-direct {v4, p0, v0}, Lr0/d;-><init>(Lr0/e;I)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v4, v2, [F

    fill-array-data v4, :array_1

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    sget-object v5, LZ/a;->a:Landroid/view/animation/LinearInterpolator;

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v6, 0x64

    invoke-virtual {v4, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v8, Lr0/d;

    invoke-direct {v8, p0, v1}, Lr0/d;-><init>(Lr0/e;I)V

    invoke-virtual {v4, v8}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v8, Landroid/animation/AnimatorSet;

    invoke-direct {v8}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v8, p0, Lr0/e;->h:Landroid/animation/AnimatorSet;

    new-array v9, v2, [Landroid/animation/Animator;

    aput-object v3, v9, v1

    aput-object v4, v9, v0

    invoke-virtual {v8, v9}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v3, p0, Lr0/e;->h:Landroid/animation/AnimatorSet;

    new-instance v4, Lr0/c;

    invoke-direct {v4, p0, v1}, Lr0/c;-><init>(Lr0/e;I)V

    invoke-virtual {v3, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-array v2, v2, [F

    fill-array-data v2, :array_2

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v2, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v3, Lr0/d;

    invoke-direct {v3, p0, v1}, Lr0/d;-><init>(Lr0/e;I)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iput-object v2, p0, Lr0/e;->i:Landroid/animation/ValueAnimator;

    new-instance v1, Lr0/c;

    invoke-direct {v1, p0, v0}, Lr0/c;-><init>(Lr0/e;I)V

    invoke-virtual {v2, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public final c(Z)V
    .locals 1

    iget-object v0, p0, Lr0/l;->a:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getSuffixText()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lr0/e;->d(Z)V

    return-void
.end method

.method public final d(Z)V
    .locals 1

    iget-object v0, p0, Lr0/l;->a:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->g()Z

    move-result v0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz p1, :cond_1

    iget-object p1, p0, Lr0/e;->i:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    iget-object p1, p0, Lr0/e;->h:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    if-eqz v0, :cond_2

    iget-object p1, p0, Lr0/e;->h:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->end()V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lr0/e;->h:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->cancel()V

    iget-object p1, p0, Lr0/e;->i:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    if-eqz v0, :cond_2

    iget-object p1, p0, Lr0/e;->i:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->end()V

    :cond_2
    :goto_1
    return-void
.end method
