.class public final synthetic LT/O4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/ex/auto/VhalProviderService;


# direct methods
.method public synthetic constructor <init>(Lcom/ex/auto/VhalProviderService;I)V
    .locals 0

    iput p2, p0, LT/O4;->a:I

    iput-object p1, p0, LT/O4;->b:Lcom/ex/auto/VhalProviderService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget v0, p0, LT/O4;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LT/O4;->b:Lcom/ex/auto/VhalProviderService;

    :goto_0
    iget-boolean v1, v0, Lcom/ex/auto/VhalProviderService;->d:Z

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, v0, Lcom/ex/auto/VhalProviderService;->b:LT/G4;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, LT/G4;->a()LT/F4;

    move-result-object v1

    iput-object v1, v0, Lcom/ex/auto/VhalProviderService;->i:LT/F4;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, v0, Lcom/ex/auto/VhalProviderService;->f:LT/L4;

    invoke-virtual {v4, v1, v2, v3}, LT/L4;->b(LT/F4;J)V

    iget-object v4, v0, Lcom/ex/auto/VhalProviderService;->h:LT/R0;

    invoke-virtual {v4, v1, v2, v3}, LT/R0;->c(LT/F4;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    const-wide/16 v1, 0x5dc

    :try_start_1
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    :cond_1
    return-void

    :pswitch_0
    iget-object v0, p0, LT/O4;->b:Lcom/ex/auto/VhalProviderService;

    sget-boolean v1, Lcom/ex/auto/VhalProviderService;->j:Z

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_2
    new-instance v1, Ljava/net/ServerSocket;

    invoke-direct {v1}, Ljava/net/ServerSocket;-><init>()V

    iput-object v1, v0, Lcom/ex/auto/VhalProviderService;->c:Ljava/net/ServerSocket;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/net/ServerSocket;->setReuseAddress(Z)V

    iget-object v1, v0, Lcom/ex/auto/VhalProviderService;->c:Ljava/net/ServerSocket;

    new-instance v2, Ljava/net/InetSocketAddress;

    const v3, 0xbab8

    invoke-direct {v2, v3}, Ljava/net/InetSocketAddress;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;)V

    invoke-virtual {v0}, Lcom/ex/auto/VhalProviderService;->d()V

    :goto_1
    iget-boolean v1, v0, Lcom/ex/auto/VhalProviderService;->d:Z

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/ex/auto/VhalProviderService;->c:Ljava/net/ServerSocket;

    invoke-virtual {v1}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v1

    new-instance v2, Ljava/lang/Thread;

    new-instance v3, LT/P4;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4, v1}, LT/P4;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    const-string v1, "vhal-client"

    invoke-direct {v2, v3, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "serve end: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "VhalProvider"

    invoke-static {v0, v1, v2}, LM/d0;->n(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
