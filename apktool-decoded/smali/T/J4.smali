.class public final synthetic LT/J4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic a:Lcom/ex/auto/TimerFloaterService;

.field public final synthetic b:LI0/k;

.field public final synthetic c:LI0/k;

.field public final synthetic d:LI0/j;

.field public final synthetic e:LI0/j;


# direct methods
.method public synthetic constructor <init>(Lcom/ex/auto/TimerFloaterService;LI0/k;LI0/k;LI0/j;LI0/j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LT/J4;->a:Lcom/ex/auto/TimerFloaterService;

    iput-object p2, p0, LT/J4;->b:LI0/k;

    iput-object p3, p0, LT/J4;->c:LI0/k;

    iput-object p4, p0, LT/J4;->d:LI0/j;

    iput-object p5, p0, LT/J4;->e:LI0/j;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9

    iget-object p1, p0, LT/J4;->a:Lcom/ex/auto/TimerFloaterService;

    iget-object v0, p1, Lcom/ex/auto/TimerFloaterService;->c:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    iget-object v3, p0, LT/J4;->b:LI0/k;

    iget-object v4, p0, LT/J4;->c:LI0/k;

    iget-object v5, p0, LT/J4;->d:LI0/j;

    iget-object v6, p0, LT/J4;->e:LI0/j;

    const/4 v7, 0x1

    if-eqz v2, :cond_3

    const/4 v8, 0x2

    if-eq v2, v8, :cond_1

    goto :goto_1

    :cond_1
    iget v1, v3, LI0/k;->a:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    iget v3, v5, LI0/j;->a:F

    sub-float/2addr v2, v3

    float-to-int v2, v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v1, v4, LI0/k;->a:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    iget v2, v6, LI0/j;->a:F

    sub-float/2addr p2, v2

    float-to-int p2, p2

    add-int/2addr v1, p2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    :try_start_0
    iget-object p2, p1, Lcom/ex/auto/TimerFloaterService;->a:Landroid/view/WindowManager;

    if-eqz p2, :cond_2

    iget-object p1, p1, Lcom/ex/auto/TimerFloaterService;->b:Landroid/widget/LinearLayout;

    invoke-interface {p2, p1, v0}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_2
    const-string p1, "wm"

    invoke-static {p1}, LI0/f;->h(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :goto_0
    move v1, v7

    goto :goto_1

    :cond_3
    iget p1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iput p1, v3, LI0/k;->a:I

    iget p1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iput p1, v4, LI0/k;->a:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iput p1, v5, LI0/j;->a:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, v6, LI0/j;->a:F

    goto :goto_0

    :goto_1
    return v1
.end method
