.class public final synthetic LT/K2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/ex/auto/MainActivity;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/ex/auto/MainActivity;Ljava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput v0, p0, LT/K2;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LT/K2;->b:Lcom/ex/auto/MainActivity;

    iput-object p2, p0, LT/K2;->c:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/ex/auto/MainActivity;)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    iput v0, p0, LT/K2;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LT/K2;->c:Ljava/lang/String;

    iput-object p2, p0, LT/K2;->b:Lcom/ex/auto/MainActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object p1, p0, LT/K2;->c:Ljava/lang/String;

    iget-object v0, p0, LT/K2;->b:Lcom/ex/auto/MainActivity;

    iget v1, p0, LT/K2;->a:I

    packed-switch v1, :pswitch_data_0

    sget v1, Lcom/ex/auto/MainActivity;->u0:I

    new-instance v1, LT/i2;

    const/16 v2, 0x9

    invoke-direct {v1, v2, v0}, LT/i2;-><init>(ILcom/ex/auto/MainActivity;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, LT/z;

    const/16 v3, 0xa

    invoke-direct {v2, v0, p1, v1, v3}, LT/z;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    iget-object p1, v0, Lcom/ex/auto/MainActivity;->w:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :pswitch_0
    sget v1, Lcom/ex/auto/MainActivity;->u0:I

    const-string v1, "split_screen"

    invoke-static {p1, v1}, LI0/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Lcom/ex/auto/MainActivity;->x0()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/ex/auto/MainActivity;->v0()V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
