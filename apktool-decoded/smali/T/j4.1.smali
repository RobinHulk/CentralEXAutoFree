.class public final synthetic LT/j4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/ex/auto/QuickAccessFloaterService;

.field public final synthetic c:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lcom/ex/auto/QuickAccessFloaterService;Ljava/util/ArrayList;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput v0, p0, LT/j4;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LT/j4;->b:Lcom/ex/auto/QuickAccessFloaterService;

    iput-object p2, p0, LT/j4;->c:Ljava/util/ArrayList;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/ArrayList;Lcom/ex/auto/QuickAccessFloaterService;)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    iput v0, p0, LT/j4;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LT/j4;->c:Ljava/util/ArrayList;

    iput-object p2, p0, LT/j4;->b:Lcom/ex/auto/QuickAccessFloaterService;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget-object v0, p0, LT/j4;->b:Lcom/ex/auto/QuickAccessFloaterService;

    iget v1, p0, LT/j4;->a:I

    packed-switch v1, :pswitch_data_0

    sget-object v1, Lcom/ex/auto/QuickAccessFloaterService;->j0:Ljava/util/List;

    iget-object v1, p0, LT/j4;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const v2, 0x7f0f00f3

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    :pswitch_0
    sget-object v1, Lcom/ex/auto/QuickAccessFloaterService;->j0:Ljava/util/List;

    new-instance v6, LT/a3;

    const/16 v1, 0xa

    invoke-direct {v6, v1}, LT/a3;-><init>(I)V

    iget-object v1, p0, LT/j4;->c:Ljava/util/ArrayList;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v3, "\n"

    const/16 v7, 0x1e

    move-object v2, v1

    invoke-static/range {v2 .. v7}, Lw0/i;->d0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;LH0/l;I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x3a98

    invoke-virtual {v0, v3, v2}, Lcom/ex/auto/QuickAccessFloaterService;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "doCloseUserApps ("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "QuickAccessFloater"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v0, Lcom/ex/auto/QuickAccessFloaterService;->a:Landroid/os/Handler;

    new-instance v3, LT/j4;

    invoke-direct {v3, v0, v1}, LT/j4;-><init>(Lcom/ex/auto/QuickAccessFloaterService;Ljava/util/ArrayList;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
