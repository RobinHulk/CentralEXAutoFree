.class public final synthetic LT/w1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/ex/auto/HomeFloatingWidgetsService;


# direct methods
.method public synthetic constructor <init>(Lcom/ex/auto/HomeFloatingWidgetsService;I)V
    .locals 0

    iput p2, p0, LT/w1;->a:I

    iput-object p1, p0, LT/w1;->b:Lcom/ex/auto/HomeFloatingWidgetsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, LT/w1;->b:Lcom/ex/auto/HomeFloatingWidgetsService;

    iget v1, p0, LT/w1;->a:I

    packed-switch v1, :pswitch_data_0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, LT/q4;->f()Ljava/lang/Double;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-object v2, v1

    :goto_0
    :try_start_1
    invoke-static {}, LT/q4;->g()Ljava/lang/Integer;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    iget-object v3, v0, Lcom/ex/auto/HomeFloatingWidgetsService;->c:Landroid/os/Handler;

    new-instance v4, LT/z;

    const/4 v5, 0x5

    invoke-direct {v4, v0, v2, v1, v5}, LT/z;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_0
    invoke-static {v0}, Lcom/ex/auto/HomeFloatingWidgetsService;->a(Lcom/ex/auto/HomeFloatingWidgetsService;)V

    return-void

    :pswitch_1
    sget-object v1, Lcom/ex/auto/HomeFloatingWidgetsService;->Q:Ljava/util/List;

    invoke-virtual {v0}, Lcom/ex/auto/HomeFloatingWidgetsService;->r()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
