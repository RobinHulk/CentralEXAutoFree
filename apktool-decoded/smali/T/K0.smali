.class public final synthetic LT/K0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LH0/a;


# instance fields
.field public final synthetic a:Lcom/ex/auto/CentralWatchdogService;

.field public final synthetic b:I

.field public final synthetic c:LT/D0;


# direct methods
.method public synthetic constructor <init>(Lcom/ex/auto/CentralWatchdogService;ILT/D0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LT/K0;->a:Lcom/ex/auto/CentralWatchdogService;

    iput p2, p0, LT/K0;->b:I

    iput-object p3, p0, LT/K0;->c:LT/D0;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 10

    sget-object v0, Lcom/ex/auto/CentralWatchdogService;->d2:[I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "grep "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, LT/K0;->a:Lcom/ex/auto/CentralWatchdogService;

    iget-object v1, v3, Lcom/ex/auto/CentralWatchdogService;->j0:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " /proc/interrupts"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xbb8

    invoke-static {v1, v0}, Lcom/ex/auto/CentralWatchdogService;->c(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, v3, Lcom/ex/auto/CentralWatchdogService;->q0:LI0/l;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "input"

    invoke-static {v0, v2}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ltz v2, :cond_2

    new-instance v2, LO0/f;

    const/4 v4, 0x0

    invoke-direct {v2, v1, v0, v4}, LO0/f;-><init>(LI0/l;Ljava/lang/String;I)V

    new-instance v0, LF0/b;

    invoke-direct {v0, v2}, LF0/b;-><init>(LO0/f;)V

    new-instance v1, LN0/e;

    invoke-direct {v1, v0}, LN0/e;-><init>(LF0/b;)V

    const-wide/16 v4, 0x0

    move-wide v6, v4

    :goto_0
    invoke-virtual {v1}, LN0/e;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v1}, LN0/e;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LO0/e;

    iget-object v0, v0, LO0/e;->a:Ljava/util/regex/Matcher;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    const-string v2, "group(...)"

    invoke-static {v0, v2}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, LO0/r;->q0(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    goto :goto_1

    :cond_0
    move-wide v8, v4

    :goto_1
    add-long/2addr v6, v8

    goto :goto_0

    :cond_1
    iget-object v0, v3, Lcom/ex/auto/CentralWatchdogService;->a:Landroid/os/Handler;

    new-instance v1, LT/L0;

    iget v8, p0, LT/K0;->b:I

    iget-object v9, p0, LT/K0;->c:LT/D0;

    move-object v2, v1

    move-wide v4, v6

    move v6, v8

    move-object v7, v9

    invoke-direct/range {v2 .. v7}, LT/L0;-><init>(Lcom/ex/auto/CentralWatchdogService;JILT/D0;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    sget-object v0, Lv0/e;->c:Lv0/e;

    return-object v0

    :cond_2
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Start index out of bounds: 0, input length: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
