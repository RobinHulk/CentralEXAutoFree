.class public final LT/G1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x2

    iput v0, p0, LT/G1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/h;Ljava/util/ArrayList;Landroidx/fragment/app/P;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, LT/G1;->a:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LT/G1;->d:Ljava/lang/Object;

    iput-object p2, p0, LT/G1;->b:Ljava/lang/Object;

    iput-object p3, p0, LT/G1;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/ex/auto/HomeFloatingWidgetsService;Landroid/widget/FrameLayout;Landroid/widget/LinearLayout;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, LT/G1;->a:I

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, LT/G1;->b:Ljava/lang/Object;

    iput-object p2, p0, LT/G1;->c:Ljava/lang/Object;

    iput-object p3, p0, LT/G1;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget v0, p0, LT/G1;->a:I

    packed-switch v0, :pswitch_data_0

    :try_start_0
    iget-object v0, p0, LT/G1;->b:Ljava/lang/Object;

    check-cast v0, Lv/d;

    invoke-virtual {v0}, Lv/d;->call()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Lb0/c;

    iget-object v2, p0, LT/G1;->c:Ljava/lang/Object;

    check-cast v2, Lv/e;

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3, v0}, Lb0/c;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    iget-object v0, p0, LT/G1;->d:Ljava/lang/Object;

    check-cast v0, Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_0
    iget-object v0, p0, LT/G1;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    iget-object v1, p0, LT/G1;->c:Ljava/lang/Object;

    check-cast v1, Landroidx/fragment/app/P;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, LT/G1;->d:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/h;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v1, Landroidx/fragment/app/P;->c:Landroidx/fragment/app/o;

    iget-object v0, v0, Landroidx/fragment/app/o;->E:Landroid/view/View;

    iget v1, v1, Landroidx/fragment/app/P;->a:I

    invoke-static {v0, v1}, Landroidx/fragment/app/Q;->a(Landroid/view/View;I)V

    :cond_0
    return-void

    :pswitch_1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, LT/z;

    iget-object v2, p0, LT/G1;->c:Ljava/lang/Object;

    check-cast v2, Landroid/widget/FrameLayout;

    iget-object v3, p0, LT/G1;->d:Ljava/lang/Object;

    check-cast v3, Landroid/widget/LinearLayout;

    iget-object v4, p0, LT/G1;->b:Ljava/lang/Object;

    check-cast v4, Lcom/ex/auto/HomeFloatingWidgetsService;

    const/4 v5, 0x4

    invoke-direct {v1, v4, v2, v3, v5}, LT/z;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    iget-object v0, v4, Lcom/ex/auto/HomeFloatingWidgetsService;->c:Landroid/os/Handler;

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
