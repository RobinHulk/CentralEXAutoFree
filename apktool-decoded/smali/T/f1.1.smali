.class public final synthetic LT/f1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LH0/a;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/content/ContextWrapper;


# direct methods
.method public synthetic constructor <init>(Landroid/content/ContextWrapper;I)V
    .locals 0

    iput p2, p0, LT/f1;->a:I

    iput-object p1, p0, LT/f1;->b:Landroid/content/ContextWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 4

    iget v0, p0, LT/f1;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LT/f1;->b:Landroid/content/ContextWrapper;

    check-cast v0, Lcom/ex/auto/WifiFloaterService;

    iget-object v1, v0, Lcom/ex/auto/WifiFloaterService;->e:Landroid/os/Handler;

    new-instance v2, LT/Q4;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v3}, LT/Q4;-><init>(Lcom/ex/auto/WifiFloaterService;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    sget-object v0, Lv0/e;->c:Lv0/e;

    return-object v0

    :pswitch_0
    iget-object v0, p0, LT/f1;->b:Landroid/content/ContextWrapper;

    check-cast v0, Lcom/ex/auto/ExSapoCastFloaterService;

    sget v1, Lcom/ex/auto/ExSapoCastFloaterService;->j:I

    sget-object v1, LT/m;->i:LT/n1;

    if-eqz v1, :cond_0

    const-string v2, "pip-close"

    invoke-virtual {v1, v2}, LT/n1;->g(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Landroid/app/Service;->stopSelf()V

    sget-object v0, Lv0/e;->c:Lv0/e;

    return-object v0

    :pswitch_1
    iget-object v0, p0, LT/f1;->b:Landroid/content/ContextWrapper;

    check-cast v0, Lcom/ex/auto/ExSapoCastActivity;

    sget v1, Lcom/ex/auto/ExSapoCastActivity;->e:I

    sget-object v1, LT/m;->i:LT/n1;

    if-eqz v1, :cond_1

    const-string v2, "user"

    invoke-virtual {v1, v2}, LT/n1;->g(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    sget-object v0, Lv0/e;->c:Lv0/e;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
