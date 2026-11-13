.class public final synthetic LT/r0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Lcom/ex/auto/CentralWatchdogService;

.field public final synthetic c:I

.field public final synthetic d:I

.field public final synthetic e:I


# direct methods
.method public synthetic constructor <init>(IIILcom/ex/auto/CentralWatchdogService;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p5, p0, LT/r0;->a:Z

    iput-object p4, p0, LT/r0;->b:Lcom/ex/auto/CentralWatchdogService;

    iput p1, p0, LT/r0;->c:I

    iput p2, p0, LT/r0;->d:I

    iput p3, p0, LT/r0;->e:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    sget-object v0, Lcom/ex/auto/CentralWatchdogService;->d2:[I

    iget-boolean v0, p0, LT/r0;->a:Z

    iget-object v1, p0, LT/r0;->b:Lcom/ex/auto/CentralWatchdogService;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    :try_start_0
    new-instance v2, Ljava/io/File;

    const-string v3, "/sys/class/leds/lcd-backlight/brightness"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, LA/b;->b0(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, LO0/j;->X0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, LO0/r;->p0(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-object v2, v0

    :goto_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v3

    if-lez v3, :cond_0

    move-object v0, v2

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1

    :cond_1
    const/16 v0, 0xa6

    :goto_1
    iput v0, v1, Lcom/ex/auto/CentralWatchdogService;->u0:I

    :cond_2
    iget v0, p0, LT/r0;->c:I

    invoke-static {v0}, LT/Y;->b(I)V

    iget-object v0, v1, Lcom/ex/auto/CentralWatchdogService;->a:Landroid/os/Handler;

    new-instance v2, LT/x0;

    iget v3, p0, LT/r0;->d:I

    iget v4, p0, LT/r0;->e:I

    const/4 v5, 0x0

    invoke-direct {v2, v1, v3, v4, v5}, LT/x0;-><init>(Landroid/app/Service;III)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
