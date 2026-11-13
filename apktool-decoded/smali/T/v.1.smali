.class public final synthetic LT/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Z

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(LI0/i;Lcom/ex/auto/MainActivity;Z)V
    .locals 1

    .line 1
    const/4 v0, 0x4

    iput v0, p0, LT/v;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LT/v;->c:Ljava/lang/Object;

    iput-object p2, p0, LT/v;->d:Ljava/lang/Object;

    iput-boolean p3, p0, LT/v;->b:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;ZLjava/lang/Object;I)V
    .locals 0

    .line 2
    iput p4, p0, LT/v;->a:I

    iput-object p1, p0, LT/v;->c:Ljava/lang/Object;

    iput-boolean p2, p0, LT/v;->b:Z

    iput-object p3, p0, LT/v;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(ZLandroid/content/ContextWrapper;Ljava/lang/Object;I)V
    .locals 0

    .line 3
    iput p4, p0, LT/v;->a:I

    iput-boolean p1, p0, LT/v;->b:Z

    iput-object p2, p0, LT/v;->c:Ljava/lang/Object;

    iput-object p3, p0, LT/v;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget v2, p0, LT/v;->a:I

    packed-switch v2, :pswitch_data_0

    iget-boolean v0, p0, LT/v;->b:Z

    iget-object v1, p0, LT/v;->c:Ljava/lang/Object;

    check-cast v1, Lcom/ex/auto/MediaBarFloaterService;

    iget-object v2, p0, LT/v;->d:Ljava/lang/Object;

    check-cast v2, LB/b;

    iget-boolean v3, v1, Lcom/ex/auto/MediaBarFloaterService;->s:Z

    if-eq v0, v3, :cond_2

    iput-boolean v0, v1, Lcom/ex/auto/MediaBarFloaterService;->s:Z

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "smartbar escondida: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " \u2014 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_0

    const-string v4, "escondendo"

    goto :goto_0

    :cond_0
    const-string v4, "liberando"

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " o floater"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MediaBarFloater"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Lcom/ex/auto/MediaBarFloaterService;->b()V

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lcom/ex/auto/MediaBarFloaterService;->e()V

    :cond_2
    :goto_1
    iget-object v0, v1, Lcom/ex/auto/MediaBarFloaterService;->c:Landroid/os/Handler;

    const-wide/16 v3, 0xbb8

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :pswitch_0
    sget v0, Lcom/ex/auto/MainActivity;->u0:I

    iget-object v0, p0, LT/v;->c:Ljava/lang/Object;

    check-cast v0, LI0/i;

    iget-boolean v0, v0, LI0/i;->a:Z

    iget-object v2, p0, LT/v;->d:Ljava/lang/Object;

    check-cast v2, Lcom/ex/auto/MainActivity;

    if-eqz v0, :cond_4

    iget-boolean v0, p0, LT/v;->b:Z

    if-eqz v0, :cond_3

    const v0, 0x7f0f02db

    goto :goto_2

    :cond_3
    const v0, 0x7f0f02da

    :goto_2
    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_4
    const v0, 0x7f0f02d9

    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-static {v0}, LI0/f;->b(Ljava/lang/Object;)V

    invoke-static {v2, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    :pswitch_1
    sget v2, Lcom/ex/auto/MainActivity;->u0:I

    iget-boolean v2, p0, LT/v;->b:Z

    iget-object v3, p0, LT/v;->c:Ljava/lang/Object;

    check-cast v3, Lcom/ex/auto/MainActivity;

    if-eqz v2, :cond_5

    new-instance v2, LT/j1;

    invoke-direct {v2, v3}, LT/j1;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0f018e

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v2, LT/j1;->b:Ljava/lang/Object;

    check-cast v5, Le/e;

    iput-object v4, v5, Le/e;->d:Ljava/lang/CharSequence;

    const v4, 0x7f0f0196

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v5, Le/e;->f:Ljava/lang/CharSequence;

    const v4, 0x7f0f0034

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, LT/j1;->h(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    iput-boolean v1, v5, Le/e;->k:Z

    invoke-virtual {v2}, LT/j1;->j()Le/i;

    goto :goto_4

    :cond_5
    iget-object v0, p0, LT/v;->d:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v3, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_4
    return-void

    :pswitch_2
    iget-object v2, p0, LT/v;->c:Ljava/lang/Object;

    check-cast v2, Landroid/car/hardware/property/CarPropertyManager;

    iget-boolean v3, p0, LT/v;->b:Z

    sget v4, Lcom/ex/auto/MainActivity;->u0:I

    new-instance v4, LI0/i;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    new-instance v5, LI0/l;

    invoke-direct {v5, v1}, LI0/l;-><init>(I)V

    const v6, 0x2140403a

    :try_start_0
    invoke-virtual {v2, v6, v1, v3}, Landroid/car/hardware/property/CarPropertyManager;->setIntProperty(III)V

    const/4 v7, 0x1

    iput-boolean v7, v4, LI0/i;->a:Z

    const-wide/16 v8, 0x15e

    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V

    invoke-static {v2, v6, v1}, LT/U;->c(Landroid/car/hardware/property/CarPropertyManager;II)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v0

    if-eqz v0, :cond_6

    move v1, v7

    :cond_6
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_5

    :catchall_0
    move-exception v0

    goto :goto_6

    :cond_7
    :goto_5
    iput-object v0, v5, LI0/l;->b:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_7

    :goto_6
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setIntProperty AEB falhou: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "AEB"

    invoke-static {v0, v1, v2}, LM/d0;->r(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_7
    iget-object v0, v5, LI0/l;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    iget-object v1, p0, LT/v;->d:Ljava/lang/Object;

    check-cast v1, Lcom/ex/auto/MainActivity;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v2, "aeb_state_saved"

    invoke-static {v1, v2, v0}, LM/d0;->m(Lcom/ex/auto/MainActivity;Ljava/lang/String;Z)V

    :cond_8
    new-instance v0, LT/g4;

    invoke-direct {v0, v1, v5, v3, v4}, LT/g4;-><init>(Lcom/ex/auto/MainActivity;LI0/l;ZLI0/i;)V

    invoke-virtual {v1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :pswitch_3
    sget v0, Lcom/ex/auto/InstallerActivity;->u:I

    iget-object v0, p0, LT/v;->c:Ljava/lang/Object;

    check-cast v0, Lcom/ex/auto/InstallerActivity;

    iget-boolean v1, p0, LT/v;->b:Z

    iget-object v2, p0, LT/v;->d:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lcom/ex/auto/InstallerActivity;->u(Ljava/lang/String;Z)V

    return-void

    :pswitch_4
    iget-object v0, p0, LT/v;->c:Ljava/lang/Object;

    check-cast v0, Lcom/ex/auto/AppPipFloaterService;

    iget-boolean v1, p0, LT/v;->b:Z

    iget-object v2, p0, LT/v;->d:Ljava/lang/Object;

    check-cast v2, LT/w4;

    sget-object v3, Lcom/ex/auto/AppPipFloaterService;->u:Lcom/ex/auto/AppPipFloaterService;

    invoke-virtual {v0}, Lcom/ex/auto/AppPipFloaterService;->i()V

    if-nez v1, :cond_9

    if-nez v2, :cond_9

    sget-object v1, LT/z4;->a:LI0/l;

    sget-object v1, LT/z4;->f:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const v2, 0x7f0f0083

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getString(...)"

    invoke-static {v1, v2}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/ex/auto/AppPipFloaterService;->h(Ljava/lang/String;)Z

    :cond_9
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
