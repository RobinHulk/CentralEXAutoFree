.class public final synthetic LT/x2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/ex/auto/MainActivity;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(ILcom/ex/auto/MainActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput p1, p0, LT/x2;->a:I

    iput-object p2, p0, LT/x2;->b:Lcom/ex/auto/MainActivity;

    iput-object p3, p0, LT/x2;->c:Ljava/lang/String;

    iput-object p4, p0, LT/x2;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    const-string p1, " -> "

    iget-object p2, p0, LT/x2;->d:Ljava/lang/String;

    iget-object v0, p0, LT/x2;->c:Ljava/lang/String;

    iget-object v1, p0, LT/x2;->b:Lcom/ex/auto/MainActivity;

    iget v2, p0, LT/x2;->a:I

    packed-switch v2, :pswitch_data_0

    sget v2, Lcom/ex/auto/MainActivity;->u0:I

    invoke-virtual {v1}, Lcom/ex/auto/MainActivity;->B0()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "connadaptor_modo"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    sget-object v2, LT/L3;->a:LT/L3;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "modo de proje\u00e7\u00e3o: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Modo"

    invoke-virtual {v2, p2, p1}, LT/L3;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, LT/q;->d(Ljava/lang/String;)Z

    move-result p1

    const-string p2, "aa"

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "ambos"

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    :cond_0
    invoke-virtual {v1, v0}, Lcom/ex/auto/MainActivity;->b0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const v2, 0x7f0f021c

    invoke-virtual {v1, v2, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const/4 v2, 0x0

    invoke-static {v1, p2, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/Toast;->show()V

    invoke-virtual {v1}, Lcom/ex/auto/MainActivity;->Y()Z

    move-result p2

    if-eqz p2, :cond_1

    new-instance p2, LT/j1;

    invoke-direct {p2, v1}, LT/j1;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0f022e

    invoke-virtual {p2, v2}, LT/j1;->i(I)V

    invoke-virtual {v1, v0}, Lcom/ex/auto/MainActivity;->b0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const v3, 0x7f0f022c

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p2, LT/j1;->b:Ljava/lang/Object;

    check-cast v3, Le/e;

    iput-object v2, v3, Le/e;->f:Ljava/lang/CharSequence;

    new-instance v2, LT/X1;

    const/16 v3, 0x17

    invoke-direct {v2, v3, v1}, LT/X1;-><init>(ILcom/ex/auto/MainActivity;)V

    const v3, 0x7f0f022d

    invoke-virtual {p2, v3, v2}, LT/j1;->g(ILandroid/content/DialogInterface$OnClickListener;)V

    const/high16 v2, 0x1040000

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, LT/j1;->e(ILandroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {p2}, LT/j1;->j()Le/i;

    :cond_1
    iget-object p2, v1, Lcom/ex/auto/MainActivity;->w:Ljava/util/concurrent/ExecutorService;

    if-eqz p1, :cond_2

    :try_start_0
    sget-object p1, LT/b0;->a:LT/b0;

    invoke-virtual {p1}, LT/b0;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    new-instance p1, Landroid/content/Intent;

    const-class v2, Lcom/ex/auto/CentralWatchdogService;

    invoke-direct {p1, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "reaplicar_patch_monitor"

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    :cond_2
    :try_start_1
    sget-object p1, LT/b0;->a:LT/b0;

    invoke-virtual {p1}, LT/b0;->c()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    new-instance p1, LT/G2;

    const/16 v2, 0xa

    invoke-direct {p1, v2, v1}, LT/G2;-><init>(ILcom/ex/auto/MainActivity;)V

    invoke-interface {p2, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_0
    invoke-virtual {v1}, Lcom/ex/auto/MainActivity;->e1()V

    new-instance p1, LT/V1;

    const/16 v2, 0xc

    invoke-direct {p1, v1, v0, v2}, LT/V1;-><init>(Lcom/ex/auto/MainActivity;Ljava/lang/String;I)V

    invoke-interface {p2, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :pswitch_0
    sget v2, Lcom/ex/auto/MainActivity;->u0:I

    invoke-virtual {v1}, Lcom/ex/auto/MainActivity;->B0()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "connadaptor_versao_alvo"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ConnAdaptor: vers\u00e3o alvo "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Update"

    invoke-virtual {v1, p2, p1}, Lcom/ex/auto/MainActivity;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/ex/auto/MainActivity;->z()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
