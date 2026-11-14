.class public final Lj0/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Z

.field public final b:I

.field public final c:I

.field public final d:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f030121

    invoke-static {p1, v0}, Le/a;->N(Landroid/content/Context;I)Landroid/util/TypedValue;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget v2, v0, Landroid/util/TypedValue;->type:I

    const/16 v3, 0x12

    if-ne v2, v3, :cond_0

    iget v0, v0, Landroid/util/TypedValue;->data:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lj0/a;->a:Z

    const v0, 0x7f030120

    invoke-static {p1, v0}, Le/a;->N(Landroid/content/Context;I)Landroid/util/TypedValue;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v0, v0, Landroid/util/TypedValue;->data:I

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    iput v0, p0, Lj0/a;->b:I

    const v0, 0x7f0300c2

    invoke-static {p1, v0}, Le/a;->N(Landroid/content/Context;I)Landroid/util/TypedValue;

    move-result-object v0

    if-eqz v0, :cond_2

    iget v1, v0, Landroid/util/TypedValue;->data:I

    :cond_2
    iput v1, p0, Lj0/a;->c:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    iput p1, p0, Lj0/a;->d:F

    return-void
.end method


# virtual methods
.method public final a(IF)I
    .locals 4

    iget-boolean v0, p0, Lj0/a;->a:Z

    if-eqz v0, :cond_2

    const/16 v0, 0xff

    invoke-static {p1, v0}, Lr/a;->d(II)I

    move-result v1

    iget v2, p0, Lj0/a;->c:I

    if-ne v1, v2, :cond_2

    iget v1, p0, Lj0/a;->d:F

    const/4 v2, 0x0

    cmpg-float v3, v1, v2

    if-lez v3, :cond_1

    cmpg-float v3, p2, v2

    if-gtz v3, :cond_0

    goto :goto_0

    :cond_0
    div-float/2addr p2, v1

    float-to-double v1, p2

    invoke-static {v1, v2}, Ljava/lang/Math;->log1p(D)D

    move-result-wide v1

    double-to-float p2, v1

    const/high16 v1, 0x40900000    # 4.5f

    mul-float/2addr p2, v1

    const/high16 v1, 0x40000000    # 2.0f

    add-float/2addr p2, v1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr p2, v1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v2

    :cond_1
    :goto_0
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result p2

    invoke-static {p1, v0}, Lr/a;->d(II)I

    move-result p1

    iget v0, p0, Lj0/a;->b:I

    invoke-static {p1, v0, v2}, Le/a;->F(IIF)I

    move-result p1

    invoke-static {p1, p2}, Lr/a;->d(II)I

    move-result p1

    :cond_2
    return p1
.end method
