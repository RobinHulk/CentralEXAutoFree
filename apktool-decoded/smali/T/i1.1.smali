.class public final synthetic LT/i1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p5, p0, LT/i1;->a:I

    iput-object p1, p0, LT/i1;->b:Ljava/lang/Object;

    iput-object p2, p0, LT/i1;->c:Ljava/lang/Object;

    iput-object p3, p0, LT/i1;->d:Ljava/lang/Object;

    iput-object p4, p0, LT/i1;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8

    const/4 p1, 0x0

    iget-object v0, p0, LT/i1;->e:Ljava/lang/Object;

    iget-object v1, p0, LT/i1;->d:Ljava/lang/Object;

    iget-object v2, p0, LT/i1;->c:Ljava/lang/Object;

    iget-object v3, p0, LT/i1;->b:Ljava/lang/Object;

    const/4 v4, 0x1

    iget v5, p0, LT/i1;->a:I

    packed-switch v5, :pswitch_data_0

    sget v5, Lcom/ex/auto/MainActivity;->u0:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-eq v5, v4, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    const/4 v4, 0x3

    if-ne p2, v4, :cond_1

    :cond_0
    check-cast v3, Lcom/ex/auto/MainActivity;

    iget-object p2, v3, Lcom/ex/auto/MainActivity;->v:Landroid/os/Handler;

    check-cast v2, LT/u3;

    invoke-virtual {p2, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    check-cast v1, Landroid/widget/Button;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p2, 0x0

    invoke-virtual {v1, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_1
    return p1

    :pswitch_0
    sget v5, Lcom/ex/auto/ExSapoCastFloaterService;->j:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    check-cast v3, LI0/j;

    check-cast v2, LI0/j;

    check-cast v1, LI0/j;

    check-cast v0, Lcom/ex/auto/ExSapoCastFloaterService;

    if-eqz v5, :cond_4

    if-eq v5, v4, :cond_3

    const/4 v6, 0x2

    if-eq v5, v6, :cond_2

    goto :goto_1

    :cond_2
    iget p1, v0, Lcom/ex/auto/ExSapoCastFloaterService;->g:I

    iget v5, v0, Lcom/ex/auto/ExSapoCastFloaterService;->h:I

    invoke-virtual {v0, p1, v5}, Lcom/ex/auto/ExSapoCastFloaterService;->i(II)Lv0/a;

    move-result-object p1

    iget-object v5, p1, Lv0/a;->a:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->floatValue()F

    move-result v5

    iget-object p1, p1, Lv0/a;->b:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    iget v1, v1, LI0/j;->a:F

    mul-float v6, v5, v1

    mul-float/2addr v1, p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v7

    iget v3, v3, LI0/j;->a:F

    sub-float/2addr v7, v3

    add-float/2addr v7, v6

    div-float/2addr v7, v5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    iget v2, v2, LI0/j;->a:F

    sub-float/2addr p2, v2

    add-float/2addr p2, v1

    div-float/2addr p2, p1

    add-float/2addr p2, v7

    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr p2, p1

    const p1, 0x3e99999a    # 0.3f

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p2, p1, v1}, LA/b;->n(FFF)F

    move-result p1

    iput p1, v0, Lcom/ex/auto/ExSapoCastFloaterService;->i:F

    invoke-virtual {v0}, Lcom/ex/auto/ExSapoCastFloaterService;->c()V

    :goto_0
    move p1, v4

    goto :goto_1

    :cond_3
    const-string p2, "tela_preta_prefs"

    invoke-virtual {v0, p2, p1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p2, "exsapocast_pip_scale"

    iget v0, v0, Lcom/ex/auto/ExSapoCastFloaterService;->i:F

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    :cond_4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iput p1, v3, LI0/j;->a:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, v2, LI0/j;->a:F

    iget p1, v0, Lcom/ex/auto/ExSapoCastFloaterService;->i:F

    iput p1, v1, LI0/j;->a:F

    goto :goto_0

    :goto_1
    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
