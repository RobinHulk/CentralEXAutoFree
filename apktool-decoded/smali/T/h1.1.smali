.class public final synthetic LT/h1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic a:LI0/j;

.field public final synthetic b:LI0/j;

.field public final synthetic c:LI0/k;

.field public final synthetic d:Lcom/ex/auto/ExSapoCastFloaterService;

.field public final synthetic e:LI0/k;

.field public final synthetic f:LI0/i;


# direct methods
.method public synthetic constructor <init>(LI0/j;LI0/j;LI0/k;Lcom/ex/auto/ExSapoCastFloaterService;LI0/k;LI0/i;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LT/h1;->a:LI0/j;

    iput-object p2, p0, LT/h1;->b:LI0/j;

    iput-object p3, p0, LT/h1;->c:LI0/k;

    iput-object p4, p0, LT/h1;->d:Lcom/ex/auto/ExSapoCastFloaterService;

    iput-object p5, p0, LT/h1;->e:LI0/k;

    iput-object p6, p0, LT/h1;->f:LI0/i;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 11

    sget p1, Lcom/ex/auto/ExSapoCastFloaterService;->j:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x0

    iget-object v1, p0, LT/h1;->a:LI0/j;

    iget-object v2, p0, LT/h1;->b:LI0/j;

    iget-object v3, p0, LT/h1;->c:LI0/k;

    iget-object v4, p0, LT/h1;->d:Lcom/ex/auto/ExSapoCastFloaterService;

    iget-object v5, p0, LT/h1;->e:LI0/k;

    iget-object v6, p0, LT/h1;->f:LI0/i;

    const/4 v7, 0x0

    const/4 v8, 0x1

    const-string v9, "lp"

    if-eqz p1, :cond_8

    if-eq p1, v8, :cond_6

    const/4 v10, 0x2

    if-eq p1, v10, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iget v1, v1, LI0/j;->a:F

    sub-float/2addr p1, v1

    float-to-int p1, p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    iget v1, v2, LI0/j;->a:F

    sub-float/2addr p2, v1

    float-to-int p2, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/4 v2, 0x6

    invoke-virtual {v4, v2}, Lcom/ex/auto/ExSapoCastFloaterService;->h(I)I

    move-result v7

    if-gt v1, v7, :cond_1

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-virtual {v4, v2}, Lcom/ex/auto/ExSapoCastFloaterService;->h(I)I

    move-result v2

    if-le v1, v2, :cond_2

    :cond_1
    iput-boolean v8, v6, LI0/i;->a:Z

    :cond_2
    iget-object v1, v4, Lcom/ex/auto/ExSapoCastFloaterService;->d:Landroid/view/WindowManager$LayoutParams;

    if-eqz v1, :cond_5

    iget v2, v3, LI0/k;->a:I

    add-int/2addr v2, p1

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    iget p1, v5, LI0/k;->a:I

    add-int/2addr p1, p2

    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    :try_start_0
    iget-object p1, v4, Lcom/ex/auto/ExSapoCastFloaterService;->a:Landroid/view/WindowManager;

    if-eqz p1, :cond_3

    iget-object p2, v4, Lcom/ex/auto/ExSapoCastFloaterService;->b:Landroid/widget/LinearLayout;

    invoke-interface {p1, p2, v1}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_3
    const-string p1, "wm"

    invoke-static {p1}, LI0/f;->h(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_4
    :goto_0
    move v7, v8

    goto :goto_1

    :cond_5
    invoke-static {v9}, LI0/f;->h(Ljava/lang/String;)V

    throw v0

    :cond_6
    iget-boolean p1, v6, LI0/i;->a:Z

    if-eqz p1, :cond_4

    iget-object p1, v4, Lcom/ex/auto/ExSapoCastFloaterService;->d:Landroid/view/WindowManager$LayoutParams;

    if-eqz p1, :cond_7

    iget p2, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    const-string v1, "exsapocast_pip"

    invoke-static {v4, v1, p2, v0, p1}, LT/Y;->d0(Landroid/content/Context;Ljava/lang/String;III)V

    goto :goto_0

    :cond_7
    invoke-static {v9}, LI0/f;->h(Ljava/lang/String;)V

    throw v0

    :cond_8
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iput p1, v1, LI0/j;->a:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, v2, LI0/j;->a:F

    iget-object p1, v4, Lcom/ex/auto/ExSapoCastFloaterService;->d:Landroid/view/WindowManager$LayoutParams;

    if-eqz p1, :cond_9

    iget p2, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    iput p2, v3, LI0/k;->a:I

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    iput p1, v5, LI0/k;->a:I

    iput-boolean v7, v6, LI0/i;->a:Z

    goto :goto_0

    :goto_1
    return v7

    :cond_9
    invoke-static {v9}, LI0/f;->h(Ljava/lang/String;)V

    throw v0
.end method
