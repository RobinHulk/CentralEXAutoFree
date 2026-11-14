.class public final synthetic LT/d3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Landroid/widget/TextView;

.field public final synthetic e:Landroid/content/ContextWrapper;

.field public final synthetic f:Ljava/lang/Object;

.field public final synthetic g:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/TextView;Ljava/lang/String;Lcom/ex/auto/MainActivity;Ljava/lang/String;Landroid/widget/Button;Landroid/widget/Button;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput v0, p0, LT/d3;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LT/d3;->d:Landroid/widget/TextView;

    iput-object p2, p0, LT/d3;->b:Ljava/lang/String;

    iput-object p3, p0, LT/d3;->e:Landroid/content/ContextWrapper;

    iput-object p4, p0, LT/d3;->c:Ljava/lang/String;

    iput-object p5, p0, LT/d3;->f:Ljava/lang/Object;

    iput-object p6, p0, LT/d3;->g:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/ex/auto/QuickAccessFloaterService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 1

    .line 2
    const/4 v0, 0x1

    iput v0, p0, LT/d3;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LT/d3;->e:Landroid/content/ContextWrapper;

    iput-object p2, p0, LT/d3;->b:Ljava/lang/String;

    iput-object p3, p0, LT/d3;->c:Ljava/lang/String;

    iput-object p4, p0, LT/d3;->f:Ljava/lang/Object;

    iput-object p5, p0, LT/d3;->d:Landroid/widget/TextView;

    iput-object p6, p0, LT/d3;->g:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    iget-object v0, p0, LT/d3;->g:Ljava/lang/Object;

    const/4 v1, 0x1

    iget-object v2, p0, LT/d3;->e:Landroid/content/ContextWrapper;

    iget-object v3, p0, LT/d3;->f:Ljava/lang/Object;

    iget-object v4, p0, LT/d3;->c:Ljava/lang/String;

    iget-object v5, p0, LT/d3;->b:Ljava/lang/String;

    iget v6, p0, LT/d3;->a:I

    packed-switch v6, :pswitch_data_0

    sget-object v6, Lcom/ex/auto/QuickAccessFloaterService;->j0:Ljava/util/List;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "\n                setenforce 0\n                ls -l "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, " 2>&1 || { echo \"ERRO_falta_ca_fix\"; exit 30; }\n                chown root:root "

    const-string v8, "; chmod 644 "

    invoke-static {v6, v5, v7, v5, v8}, LM/d0;->q(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "\n                chcon u:object_r:system_app_file:s0 "

    const-string v8, "\n                umount "

    invoke-static {v6, v5, v7, v5, v8}, LM/d0;->q(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " 2>/dev/null || true\n                mount --bind "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x20

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v5, "\n                restorecon -v "

    const-string v7, " 2>/dev/null || true\n                rm -rf /data/dalvik-cache/*/system@app@ConnAdaptor*\n                ip link set ap0 down 2>/dev/null || true\n                am force-stop com.njda.adapter; am force-stop com.njda.aauto\n                for i in 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15; do\n                  _s=$(getprop init.svc.AAutoMonitor); [ \"$_s\" != \"running\" ] && break; sleep 1; done\n                setprop ctl.restart AAutoMonitor\n                if grep -F "

    invoke-static {v6, v4, v5, v4, v7}, LM/d0;->q(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " /proc/mounts >/dev/null 2>&1; then echo \"MOUNT_OK\"; else echo \"MOUNT_FAIL\"; fi\n            "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, LO0/l;->n0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v7, v2

    check-cast v7, Lcom/ex/auto/QuickAccessFloaterService;

    const v2, 0x11170

    invoke-virtual {v7, v2, v3}, Lcom/ex/auto/QuickAccessFloaterService;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "MOUNT_OK"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, LO0/j;->x0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "ERRO"

    invoke-static {v2, v3, v4}, LO0/j;->x0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v2

    if-nez v2, :cond_0

    move v6, v1

    goto :goto_0

    :cond_0
    move v6, v4

    :goto_0
    iget-object v1, v7, Lcom/ex/auto/QuickAccessFloaterService;->a:Landroid/os/Handler;

    new-instance v2, LT/g4;

    iget-object v5, p0, LT/d3;->d:Landroid/widget/TextView;

    move-object v8, v0

    check-cast v8, Ljava/lang/String;

    const/4 v9, 0x0

    move-object v4, v2

    invoke-direct/range {v4 .. v9}, LT/g4;-><init>(Landroid/widget/TextView;ZLcom/ex/auto/QuickAccessFloaterService;Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_0
    sget v6, Lcom/ex/auto/MainActivity;->u0:I

    iget-object v6, p0, LT/d3;->d:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    check-cast v2, Lcom/ex/auto/MainActivity;

    invoke-static {v2, v5, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    const-string v5, "Apps"

    invoke-virtual {v2, v5, v4}, Lcom/ex/auto/MainActivity;->v(Ljava/lang/String;Ljava/lang/String;)V

    check-cast v3, Landroid/widget/Button;

    invoke-virtual {v3, v1}, Landroid/view/View;->setEnabled(Z)V

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    new-instance v0, LT/U1;

    const/16 v1, 0x17

    invoke-direct {v0, v1, v2}, LT/U1;-><init>(ILcom/ex/auto/MainActivity;)V

    iget-object v1, v2, Lcom/ex/auto/MainActivity;->w:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
