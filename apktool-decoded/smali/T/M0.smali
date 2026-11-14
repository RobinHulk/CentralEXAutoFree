.class public final synthetic LT/M0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LH0/a;


# instance fields
.field public final synthetic a:Lcom/ex/auto/CentralWatchdogService;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/ex/auto/CentralWatchdogService;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LT/M0;->a:Lcom/ex/auto/CentralWatchdogService;

    iput p2, p0, LT/M0;->b:I

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, LT/M0;->a:Lcom/ex/auto/CentralWatchdogService;

    iget-object v1, v0, Lcom/ex/auto/CentralWatchdogService;->m0:Ljava/lang/String;

    iget-object v2, v0, Lcom/ex/auto/CentralWatchdogService;->l0:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x1

    :try_start_0
    const-string v5, "activity"

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    const-string v6, "null cannot be cast to non-null type android.app.ActivityManager"

    invoke-static {v5, v6}, LI0/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Landroid/app/ActivityManager;

    invoke-virtual {v5, v4}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v5

    const-string v6, "getRunningTasks(...)"

    invoke-static {v5, v6}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5}, Lw0/i;->a0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v5, :cond_0

    invoke-static {v5}, LM/D;->b(Landroid/app/ActivityManager$RunningTaskInfo;)Landroid/content/ComponentName;

    move-result-object v5

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "flattenToShortString(...)"

    invoke-static {v5, v6}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5, v2, v3}, LO0/j;->x0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {v5, v1, v3}, LO0/j;->x0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_2

    :goto_1
    move v3, v4

    goto :goto_2

    :catchall_0
    :cond_1
    const-string v5, "dumpsys activity activities 2>/dev/null | grep mResumedActivity"

    const/16 v6, 0xbb8

    invoke-static {v6, v5}, Lcom/ex/auto/CentralWatchdogService;->c(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v2, v3}, LO0/j;->x0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v5, v1, v3}, LO0/j;->x0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    :goto_2
    iget-object v1, v0, Lcom/ex/auto/CentralWatchdogService;->a:Landroid/os/Handler;

    new-instance v2, LT/N0;

    iget v4, p0, LT/M0;->b:I

    invoke-direct {v2, v4, v0, v3}, LT/N0;-><init>(ILcom/ex/auto/CentralWatchdogService;Z)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    sget-object v0, Lv0/e;->c:Lv0/e;

    return-object v0
.end method
