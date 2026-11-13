.class public final synthetic LT/S3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;II)V
    .locals 0

    iput p3, p0, LT/S3;->a:I

    iput-object p1, p0, LT/S3;->c:Ljava/lang/Object;

    iput p2, p0, LT/S3;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget v0, p0, LT/S3;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LT/S3;->c:Ljava/lang/Object;

    check-cast v0, Lq/b;

    iget v1, p0, LT/S3;->b:I

    invoke-virtual {v0, v1}, Lq/b;->d(I)V

    return-void

    :pswitch_0
    sget-object v0, Lcom/geely/hvacstepperv2/TempStepperService;->X:[I

    iget-object v0, p0, LT/S3;->c:Ljava/lang/Object;

    check-cast v0, Lcom/geely/hvacstepperv2/TempStepperService;

    iget v1, p0, LT/S3;->b:I

    invoke-virtual {v0, v1}, Lcom/geely/hvacstepperv2/TempStepperService;->c(I)V

    return-void

    :pswitch_1
    iget-object v0, p0, LT/S3;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget v1, p0, LT/S3;->b:I

    sget-boolean v2, Lcom/ex/auto/PhoneSyncService;->v:Z

    const-string v2, "PhoneSyncService"

    const-string v3, "a\u00e7\u00e3o shell conclu\u00edda: "

    :try_start_0
    new-instance v4, LT/n;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, LT/n;-><init>(I)V

    const/4 v5, 0x0

    invoke-static {v0, v1, v5, v4}, LT/m;->v(Ljava/lang/String;ILH0/l;LH0/p;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x190

    invoke-static {v1, v0}, LO0/j;->V0(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "a\u00e7\u00e3o shell falhou: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
