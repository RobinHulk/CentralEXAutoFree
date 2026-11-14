.class public final synthetic LT/N0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Lcom/ex/auto/CentralWatchdogService;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(ILcom/ex/auto/CentralWatchdogService;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p3, p0, LT/N0;->a:Z

    iput-object p2, p0, LT/N0;->b:Lcom/ex/auto/CentralWatchdogService;

    iput p1, p0, LT/N0;->c:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-boolean v0, p0, LT/N0;->a:Z

    iget-object v1, p0, LT/N0;->b:Lcom/ex/auto/CentralWatchdogService;

    iget v2, p0, LT/N0;->c:I

    sget-object v3, Lcom/ex/auto/CentralWatchdogService;->d2:[I

    sget-boolean v3, Lcom/ex/auto/CentralWatchdogService;->f2:Z

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v3, "Descanso de Tela: "

    const-string v4, "CentralWatchdog"

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/ex/auto/CentralWatchdogService;->p0:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "s sem toque f\u00edsico na tela principal \u2014 acionando overlay"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/ex/auto/QuickAccessFloaterService;->j0:Ljava/util/List;

    sget-object v1, Lcom/ex/auto/QuickAccessFloaterService;->l0:Lcom/ex/auto/QuickAccessFloaterService;

    if-eqz v1, :cond_2

    invoke-virtual {v1, v0}, Lcom/ex/auto/QuickAccessFloaterService;->S(Z)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "s sem toque, mas fora da tela principal \u2014 n\u00e3o aciona"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method
