.class public final Lcom/ex/auto/TimerFloaterService;
.super Landroid/app/Service;
.source "SourceFile"


# static fields
.field public static volatile o:Z


# instance fields
.field public a:Landroid/view/WindowManager;

.field public b:Landroid/widget/LinearLayout;

.field public c:Landroid/view/WindowManager$LayoutParams;

.field public final d:Landroid/os/Handler;

.field public e:Ljava/lang/String;

.field public f:Landroid/widget/TextView;

.field public g:Landroid/widget/Button;

.field public h:Landroid/widget/LinearLayout;

.field public i:J

.field public j:J

.field public k:Z

.field public l:J

.field public m:F

.field public final n:LB/b;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/ex/auto/TimerFloaterService;->d:Landroid/os/Handler;

    const-string v0, "crono"

    iput-object v0, p0, Lcom/ex/auto/TimerFloaterService;->e:Ljava/lang/String;

    const-wide/32 v0, 0x493e0

    iput-wide v0, p0, Lcom/ex/auto/TimerFloaterService;->l:J

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/ex/auto/TimerFloaterService;->m:F

    new-instance v0, LB/b;

    const/16 v1, 0xb

    invoke-direct {v0, p0, v1}, LB/b;-><init>(Ljava/lang/Object;I)V

    iput-object v0, p0, Lcom/ex/auto/TimerFloaterService;->n:LB/b;

    return-void
.end method

.method public static final g(Lcom/ex/auto/TimerFloaterService;Ljava/lang/String;J)V
    .locals 5

    iget-object v0, p0, Lcom/ex/auto/TimerFloaterService;->h:Landroid/widget/LinearLayout;

    const/4 v1, 0x6

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/ex/auto/TimerFloaterService;->e(I)I

    move-result v2

    new-instance v3, LT/K4;

    const/4 v4, 0x0

    invoke-direct {v3, p0, p2, p3, v4}, LT/K4;-><init>(Lcom/ex/auto/TimerFloaterService;JI)V

    const-string v4, "\u2212"

    invoke-virtual {p0, v4, v2, v3}, Lcom/ex/auto/TimerFloaterService;->c(Ljava/lang/String;ILH0/a;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/ex/auto/TimerFloaterService;->h:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, -0x4f4740

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 p1, 0x41800000    # 16.0f

    iget v3, p0, Lcom/ex/auto/TimerFloaterService;->m:F

    mul-float/2addr v3, p1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Lcom/ex/auto/TimerFloaterService;->e(I)I

    move-result v3

    invoke-virtual {p0, p1}, Lcom/ex/auto/TimerFloaterService;->e(I)I

    move-result p1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, p1, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_1
    iget-object p1, p0, Lcom/ex/auto/TimerFloaterService;->h:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_2

    invoke-virtual {p0, v1}, Lcom/ex/auto/TimerFloaterService;->e(I)I

    move-result v0

    new-instance v1, LT/K4;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p2, p3, v2}, LT/K4;-><init>(Lcom/ex/auto/TimerFloaterService;JI)V

    const-string p2, "+"

    invoke-virtual {p0, p2, v0, v1}, Lcom/ex/auto/TimerFloaterService;->c(Ljava/lang/String;ILH0/a;)Landroid/widget/Button;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public final a()J
    .locals 7

    iget-boolean v0, p0, Lcom/ex/auto/TimerFloaterService;->k:Z

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/ex/auto/TimerFloaterService;->j:J

    sub-long/2addr v3, v5

    goto :goto_0

    :cond_0
    move-wide v3, v1

    :goto_0
    iget-object v0, p0, Lcom/ex/auto/TimerFloaterService;->e:Ljava/lang/String;

    const-string v5, "regressiva"

    invoke-static {v0, v5}, LI0/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-wide v5, p0, Lcom/ex/auto/TimerFloaterService;->i:J

    sub-long/2addr v5, v3

    cmp-long v0, v5, v1

    if-gez v0, :cond_1

    goto :goto_1

    :cond_1
    move-wide v1, v5

    goto :goto_1

    :cond_2
    iget-wide v0, p0, Lcom/ex/auto/TimerFloaterService;->i:J

    add-long v1, v0, v3

    :goto_1
    return-wide v1
.end method

.method public final b()V
    .locals 14

    invoke-virtual {p0}, Lcom/ex/auto/TimerFloaterService;->a()J

    move-result-wide v0

    const/16 v2, 0x3e8

    int-to-long v2, v2

    div-long v4, v0, v2

    const/16 v6, 0xe10

    int-to-long v6, v6

    div-long v8, v4, v6

    rem-long v6, v4, v6

    const/16 v10, 0x3c

    int-to-long v10, v10

    div-long/2addr v6, v10

    rem-long/2addr v4, v10

    rem-long v2, v0, v2

    const/16 v10, 0xa

    int-to-long v10, v10

    div-long/2addr v2, v10

    iget-object v10, p0, Lcom/ex/auto/TimerFloaterService;->f:Landroid/widget/TextView;

    const-wide/16 v11, 0x0

    if-eqz v10, :cond_1

    cmp-long v13, v8, v11

    if-lez v13, :cond_0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {v8, v6, v4, v2}, [Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x4

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    const-string v3, "%d:%02d:%02d.%02d"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {v6, v4, v2}, [Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    const-string v3, "%02d:%02d.%02d"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v2, p0, Lcom/ex/auto/TimerFloaterService;->e:Ljava/lang/String;

    const-string v3, "regressiva"

    invoke-static {v2, v3}, LI0/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-boolean v2, p0, Lcom/ex/auto/TimerFloaterService;->k:Z

    if-eqz v2, :cond_5

    cmp-long v0, v0, v11

    if-nez v0, :cond_5

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ex/auto/TimerFloaterService;->k:Z

    iput-wide v11, p0, Lcom/ex/auto/TimerFloaterService;->i:J

    iget-object v1, p0, Lcom/ex/auto/TimerFloaterService;->g:Landroid/widget/Button;

    if-eqz v1, :cond_2

    const v2, 0x7f0f0308

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object v1, p0, Lcom/ex/auto/TimerFloaterService;->h:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_3

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    iget-object v0, p0, Lcom/ex/auto/TimerFloaterService;->f:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    const v1, -0xadae

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_4
    const v0, 0x7f0f030d

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_5
    return-void
.end method

.method public final c(Ljava/lang/String;ILH0/a;)Landroid/widget/Button;
    .locals 3

    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 p1, 0x41900000    # 18.0f

    iget v1, p0, Lcom/ex/auto/TimerFloaterService;->m:F

    mul-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setAllCaps(Z)V

    const/4 p1, -0x1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance p1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/16 v1, 0xc

    invoke-virtual {p0, v1}, Lcom/ex/auto/TimerFloaterService;->e(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    const v1, -0xe0dad0

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {p1, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/ex/auto/TimerFloaterService;->e(I)I

    move-result v2

    invoke-virtual {p0, v1}, Lcom/ex/auto/TimerFloaterService;->e(I)I

    move-result v1

    invoke-virtual {p1, p2, v2, p2, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p1, LT/A;

    const/4 p2, 0x6

    invoke-direct {p1, p3, p2}, LT/A;-><init>(LH0/a;I)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method public final d()V
    .locals 3

    iget-object v0, p0, Lcom/ex/auto/TimerFloaterService;->b:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/ex/auto/TimerFloaterService;->a:Landroid/view/WindowManager;

    if-eqz v2, :cond_1

    invoke-interface {v2, v0}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    const-string v0, "wm"

    invoke-static {v0}, LI0/f;->h(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :goto_0
    iput-object v1, p0, Lcom/ex/auto/TimerFloaterService;->b:Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/ex/auto/TimerFloaterService;->c:Landroid/view/WindowManager$LayoutParams;

    iput-object v1, p0, Lcom/ex/auto/TimerFloaterService;->f:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/ex/auto/TimerFloaterService;->g:Landroid/widget/Button;

    iput-object v1, p0, Lcom/ex/auto/TimerFloaterService;->h:Landroid/widget/LinearLayout;

    return-void
.end method

.method public final e(I)I
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

.method public final f()V
    .locals 18

    move-object/from16 v7, p0

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/16 v1, 0x12

    invoke-virtual {v7, v1}, Lcom/ex/auto/TimerFloaterService;->e(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    const v2, -0x19edebe9

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/ex/auto/TimerFloaterService;->e(I)I

    move-result v2

    const v3, 0x33ffffff

    invoke-virtual {v0, v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    new-instance v9, Landroid/widget/LinearLayout;

    invoke-direct {v9, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v9, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v9, v8}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual {v9, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v7, v1}, Lcom/ex/auto/TimerFloaterService;->e(I)I

    move-result v0

    const/16 v2, 0xc

    invoke-virtual {v7, v2}, Lcom/ex/auto/TimerFloaterService;->e(I)I

    move-result v3

    invoke-virtual {v7, v1}, Lcom/ex/auto/TimerFloaterService;->e(I)I

    move-result v1

    invoke-virtual {v7, v2}, Lcom/ex/auto/TimerFloaterService;->e(I)I

    move-result v2

    invoke-virtual {v9, v0, v3, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    iget-object v0, v7, Lcom/ex/auto/TimerFloaterService;->e:Ljava/lang/String;

    const-string v1, "regressiva"

    invoke-static {v0, v1}, LI0/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/16 v10, 0x11

    const/4 v1, 0x0

    const-string v2, "getString(...)"

    if-eqz v0, :cond_0

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->setGravity(I)V

    iput-object v0, v7, Lcom/ex/auto/TimerFloaterService;->h:Landroid/widget/LinearLayout;

    const v0, 0x7f0f0307

    invoke-virtual {v7, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/32 v3, 0x36ee80

    invoke-static {v7, v0, v3, v4}, Lcom/ex/auto/TimerFloaterService;->g(Lcom/ex/auto/TimerFloaterService;Ljava/lang/String;J)V

    const v0, 0x7f0f0309

    invoke-virtual {v7, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/32 v3, 0xea60

    invoke-static {v7, v0, v3, v4}, Lcom/ex/auto/TimerFloaterService;->g(Lcom/ex/auto/TimerFloaterService;Ljava/lang/String;J)V

    const v0, 0x7f0f030c

    invoke-virtual {v7, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v3, 0x3e8

    invoke-static {v7, v0, v3, v4}, Lcom/ex/auto/TimerFloaterService;->g(Lcom/ex/auto/TimerFloaterService;Ljava/lang/String;J)V

    iget-object v0, v7, Lcom/ex/auto/TimerFloaterService;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v3, 0x42800000    # 64.0f

    iget v4, v7, Lcom/ex/auto/TimerFloaterService;->m:F

    mul-float/2addr v4, v3

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextSize(F)V

    sget-object v3, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/4 v3, 0x4

    invoke-virtual {v7, v3}, Lcom/ex/auto/TimerFloaterService;->e(I)I

    move-result v4

    invoke-virtual {v7, v3}, Lcom/ex/auto/TimerFloaterService;->e(I)I

    move-result v3

    invoke-virtual {v0, v1, v4, v1, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setGravity(I)V

    iput-object v0, v7, Lcom/ex/auto/TimerFloaterService;->f:Landroid/widget/TextView;

    invoke-virtual {v9, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->setGravity(I)V

    const v1, 0x7f0f0308

    invoke-virtual {v7, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v3, 0xa

    invoke-virtual {v7, v3}, Lcom/ex/auto/TimerFloaterService;->e(I)I

    move-result v4

    new-instance v5, LT/I4;

    const/4 v6, 0x0

    invoke-direct {v5, v7, v6}, LT/I4;-><init>(Lcom/ex/auto/TimerFloaterService;I)V

    invoke-virtual {v7, v1, v4, v5}, Lcom/ex/auto/TimerFloaterService;->c(Ljava/lang/String;ILH0/a;)Landroid/widget/Button;

    move-result-object v1

    iput-object v1, v7, Lcom/ex/auto/TimerFloaterService;->g:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const v1, 0x7f0f030b

    invoke-virtual {v7, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Lcom/ex/auto/TimerFloaterService;->e(I)I

    move-result v2

    new-instance v4, LT/I4;

    const/4 v5, 0x1

    invoke-direct {v4, v7, v5}, LT/I4;-><init>(Lcom/ex/auto/TimerFloaterService;I)V

    invoke-virtual {v7, v1, v2, v4}, Lcom/ex/auto/TimerFloaterService;->c(Ljava/lang/String;ILH0/a;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v7, v3}, Lcom/ex/auto/TimerFloaterService;->e(I)I

    move-result v1

    new-instance v2, LT/I4;

    const/4 v4, 0x2

    invoke-direct {v2, v7, v4}, LT/I4;-><init>(Lcom/ex/auto/TimerFloaterService;I)V

    const-string v4, "A\u2212"

    invoke-virtual {v7, v4, v1, v2}, Lcom/ex/auto/TimerFloaterService;->c(Ljava/lang/String;ILH0/a;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v7, v3}, Lcom/ex/auto/TimerFloaterService;->e(I)I

    move-result v1

    new-instance v2, LT/I4;

    const/4 v4, 0x3

    invoke-direct {v2, v7, v4}, LT/I4;-><init>(Lcom/ex/auto/TimerFloaterService;I)V

    const-string v4, "A+"

    invoke-virtual {v7, v4, v1, v2}, Lcom/ex/auto/TimerFloaterService;->c(Ljava/lang/String;ILH0/a;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v7, v3}, Lcom/ex/auto/TimerFloaterService;->e(I)I

    move-result v1

    new-instance v2, LT/I4;

    const/4 v3, 0x4

    invoke-direct {v2, v7, v3}, LT/I4;-><init>(Lcom/ex/auto/TimerFloaterService;I)V

    const-string v3, "\u2715"

    invoke-virtual {v7, v3, v1, v2}, Lcom/ex/auto/TimerFloaterService;->c(Ljava/lang/String;ILH0/a;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v9, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v3, LI0/k;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    new-instance v4, LI0/k;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    new-instance v5, LI0/j;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    new-instance v6, LI0/j;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    iget-object v0, v7, Lcom/ex/auto/TimerFloaterService;->f:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    new-instance v11, LT/J4;

    move-object v1, v11

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, LT/J4;-><init>(Lcom/ex/auto/TimerFloaterService;LI0/k;LI0/k;LI0/j;LI0/j;)V

    invoke-virtual {v0, v11}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_1
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v14, -0x2

    const/16 v15, 0x7f6

    const/4 v13, -0x2

    const/16 v16, 0x108

    const/16 v17, -0x3

    move-object v12, v0

    invoke-direct/range {v12 .. v17}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput v10, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iput-object v9, v7, Lcom/ex/auto/TimerFloaterService;->b:Landroid/widget/LinearLayout;

    iput-object v0, v7, Lcom/ex/auto/TimerFloaterService;->c:Landroid/view/WindowManager$LayoutParams;

    :try_start_0
    iget-object v1, v7, Lcom/ex/auto/TimerFloaterService;->a:Landroid/view/WindowManager;

    if-eqz v1, :cond_2

    invoke-interface {v1, v9, v0}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual/range {p0 .. p0}, Lcom/ex/auto/TimerFloaterService;->b()V

    iget-object v0, v7, Lcom/ex/auto/TimerFloaterService;->d:Landroid/os/Handler;

    iget-object v1, v7, Lcom/ex/auto/TimerFloaterService;->n:LB/b;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_2
    :try_start_1
    const-string v0, "wm"

    invoke-static {v0}, LI0/f;->h(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    const-string v0, ""

    :cond_3
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const v1, 0x7f0f0250

    invoke-virtual {v7, v1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual/range {p0 .. p0}, Landroid/app/Service;->stopSelf()V

    return-void
.end method

.method public final h(F)V
    .locals 4

    iget v0, p0, Lcom/ex/auto/TimerFloaterService;->m:F

    add-float/2addr v0, p1

    const p1, 0x3f19999a    # 0.6f

    const/high16 v1, 0x40400000    # 3.0f

    invoke-static {v0, p1, v1}, LA/b;->n(FFF)F

    move-result p1

    iput p1, p0, Lcom/ex/auto/TimerFloaterService;->m:F

    const-string p1, "timer_floater"

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "escala"

    iget v1, p0, Lcom/ex/auto/TimerFloaterService;->m:F

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-boolean p1, p0, Lcom/ex/auto/TimerFloaterService;->k:Z

    iget-wide v0, p0, Lcom/ex/auto/TimerFloaterService;->i:J

    iget-wide v2, p0, Lcom/ex/auto/TimerFloaterService;->j:J

    invoke-virtual {p0}, Lcom/ex/auto/TimerFloaterService;->d()V

    invoke-virtual {p0}, Lcom/ex/auto/TimerFloaterService;->f()V

    iput-wide v0, p0, Lcom/ex/auto/TimerFloaterService;->i:J

    iput-wide v2, p0, Lcom/ex/auto/TimerFloaterService;->j:J

    iput-boolean p1, p0, Lcom/ex/auto/TimerFloaterService;->k:Z

    iget-object v0, p0, Lcom/ex/auto/TimerFloaterService;->g:Landroid/widget/Button;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const p1, 0x7f0f030a

    goto :goto_0

    :cond_0
    const p1, 0x7f0f0308

    :goto_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object p1, p0, Lcom/ex/auto/TimerFloaterService;->e:Ljava/lang/String;

    const-string v0, "regressiva"

    invoke-static {p1, v0}, LI0/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/ex/auto/TimerFloaterService;->k:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/ex/auto/TimerFloaterService;->h:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_2

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    invoke-virtual {p0}, Lcom/ex/auto/TimerFloaterService;->b()V

    return-void
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public final onCreate()V
    .locals 3

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.view.WindowManager"

    invoke-static {v0, v1}, LI0/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/ex/auto/TimerFloaterService;->a:Landroid/view/WindowManager;

    const-string v0, "timer_floater"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "escala"

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/ex/auto/TimerFloaterService;->m:F

    return-void
.end method

.method public final onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/ex/auto/TimerFloaterService;->d:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/ex/auto/TimerFloaterService;->d()V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/ex/auto/TimerFloaterService;->o:Z

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public final onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    if-eqz p1, :cond_0

    const-string p2, "modo"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    :cond_0
    const-string p1, "crono"

    :cond_1
    iget-object p2, p0, Lcom/ex/auto/TimerFloaterService;->b:Landroid/widget/LinearLayout;

    const/4 p3, 0x2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/ex/auto/TimerFloaterService;->e:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    return p3

    :cond_2
    iget-object p2, p0, Lcom/ex/auto/TimerFloaterService;->b:Landroid/widget/LinearLayout;

    if-eqz p2, :cond_3

    invoke-virtual {p0}, Lcom/ex/auto/TimerFloaterService;->d()V

    :cond_3
    iput-object p1, p0, Lcom/ex/auto/TimerFloaterService;->e:Ljava/lang/String;

    const-string p2, "regressiva"

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-wide p1, p0, Lcom/ex/auto/TimerFloaterService;->l:J

    goto :goto_0

    :cond_4
    const-wide/16 p1, 0x0

    :goto_0
    iput-wide p1, p0, Lcom/ex/auto/TimerFloaterService;->i:J

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/ex/auto/TimerFloaterService;->k:Z

    invoke-virtual {p0}, Lcom/ex/auto/TimerFloaterService;->f()V

    const/4 p1, 0x1

    sput-boolean p1, Lcom/ex/auto/TimerFloaterService;->o:Z

    return p3
.end method
