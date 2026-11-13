.class public final LT/I0;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/ex/auto/CentralWatchdogService;


# direct methods
.method public constructor <init>(Lcom/ex/auto/CentralWatchdogService;)V
    .locals 0

    iput-object p1, p0, LT/I0;->a:Lcom/ex/auto/CentralWatchdogService;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAvailable(Landroid/net/Network;)V
    .locals 4

    const-string v0, "network"

    invoke-static {p1, v0}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/ex/auto/CentralWatchdogService;->d2:[I

    sget-boolean p1, Lcom/ex/auto/CentralWatchdogService;->f2:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, LT/I0;->a:Lcom/ex/auto/CentralWatchdogService;

    iget-object v0, p1, Lcom/ex/auto/CentralWatchdogService;->a:Landroid/os/Handler;

    new-instance v1, LT/z0;

    const/16 v2, 0x12

    invoke-direct {v1, p1, v2}, LT/z0;-><init>(Lcom/ex/auto/CentralWatchdogService;I)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
