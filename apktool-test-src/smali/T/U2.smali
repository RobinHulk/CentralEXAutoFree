.class public final synthetic LT/U2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/ex/auto/MainActivity;

.field public final synthetic c:LT/p3;


# direct methods
.method public synthetic constructor <init>(Lcom/ex/auto/MainActivity;LT/p3;I)V
    .locals 0

    iput p3, p0, LT/U2;->a:I

    iput-object p1, p0, LT/U2;->b:Lcom/ex/auto/MainActivity;

    iput-object p2, p0, LT/U2;->c:LT/p3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget-object v0, p0, LT/U2;->c:LT/p3;

    iget-object v1, p0, LT/U2;->b:Lcom/ex/auto/MainActivity;

    iget v2, p0, LT/U2;->a:I

    packed-switch v2, :pswitch_data_0

    iget-object v2, v1, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v2, :cond_0

    iget-object v0, v0, LT/p3;->b:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const v3, 0x7f0f01db

    invoke-virtual {v1, v3, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, v2, LU/a;->R2:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    const-string v0, "binding"

    invoke-static {v0}, LI0/f;->h(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :pswitch_0
    sget v2, Lcom/ex/auto/MainActivity;->u0:I

    :try_start_0
    new-instance v2, LT/E2;

    const/16 v3, 0xa

    invoke-direct {v2, v3, v1}, LT/E2;-><init>(ILcom/ex/auto/MainActivity;)V

    invoke-virtual {v1, v0, v2}, Lcom/ex/auto/MainActivity;->i0(LT/p3;LT/E2;)V

    iget-object v2, v1, Lcom/ex/auto/MainActivity;->v:Landroid/os/Handler;

    new-instance v3, LT/U2;

    const/4 v4, 0x1

    invoke-direct {v3, v1, v0, v4}, LT/U2;-><init>(Lcom/ex/auto/MainActivity;LT/p3;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {v1}, Lcom/ex/auto/MainActivity;->H0()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    const-string v4, "/data/local/tmp/CentralEXAuto-update.apk"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "SHA-256"

    invoke-static {v3, v4}, Lcom/ex/auto/MainActivity;->t0(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x10

    invoke-static {v5, v4}, LO0/j;->V0(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_1
    const-string v4, "?"

    :goto_0
    iget-object v5, v0, LT/p3;->b:Ljava/lang/String;

    iget-wide v6, v0, LT/p3;->a:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    filled-new-array {v5, v0, v4, v3, v2}, [Ljava/lang/Object;

    move-result-object v0

    const v2, 0x7f0f0333

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    :cond_2
    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v0

    const v2, 0x7f0f032e

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-static {v0}, LI0/f;->b(Ljava/lang/Object;)V

    iget-object v2, v1, Lcom/ex/auto/MainActivity;->v:Landroid/os/Handler;

    new-instance v3, LT/V1;

    const/16 v4, 0x11

    invoke-direct {v3, v1, v0, v4}, LT/V1;-><init>(Lcom/ex/auto/MainActivity;Ljava/lang/String;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
