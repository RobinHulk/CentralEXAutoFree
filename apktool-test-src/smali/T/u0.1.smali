.class public final synthetic LT/u0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Z


# direct methods
.method public synthetic constructor <init>(IZ)V
    .locals 0

    iput p1, p0, LT/u0;->a:I

    iput-boolean p2, p0, LT/u0;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    const/4 v0, 0x0

    iget-boolean v1, p0, LT/u0;->b:Z

    iget v2, p0, LT/u0;->a:I

    packed-switch v2, :pswitch_data_0

    sget-object v0, LT/B3;->a:LT/B3;

    if-eqz v1, :cond_0

    const-string v1, "CarPlay conectado"

    goto :goto_0

    :cond_0
    const-string v1, "CarPlay desconectado"

    :goto_0
    invoke-virtual {v0, v1}, LT/B3;->a(Ljava/lang/String;)V

    return-void

    :pswitch_0
    sget-object v2, Lcom/ex/auto/CentralWatchdogService;->d2:[I

    const-string v2, "cmd"

    const-string v3, "keepAlive: launcher app_monitor_disabled="

    const-string v4, "setprop persist.launcher.app_monitor_disabled "

    const-string v5, "CentralWatchdog"

    if-eqz v1, :cond_1

    :try_start_0
    const-string v1, "true"

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_1
    const-string v1, "false"

    :goto_1
    const-string v6, "getprop persist.launcher.app_monitor_disabled"

    new-instance v7, LT/n;

    invoke-direct {v7, v0}, LT/n;-><init>(I)V

    const/16 v8, 0xbb8

    const/4 v9, 0x0

    invoke-static {v6, v8, v9, v7}, LT/m;->v(Ljava/lang/String;ILH0/l;LH0/p;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, LO0/j;->X0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v1}, LI0/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_3

    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\nam force-stop com.flyme.auto.launcher"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, LT/n;

    invoke-direct {v2, v0}, LT/n;-><init>(I)V

    const/16 v0, 0x1770

    invoke-static {v4, v0, v9, v2}, LT/m;->v(Ljava/lang/String;ILH0/l;LH0/p;)Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (launcher reiniciado p/ reler)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "keepAlive app_monitor prop: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v5}, LM/d0;->n(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
