.class public final synthetic LT/L;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/ex/auto/BlackoutFloaterService;


# direct methods
.method public synthetic constructor <init>(Lcom/ex/auto/BlackoutFloaterService;I)V
    .locals 0

    iput p2, p0, LT/L;->a:I

    iput-object p1, p0, LT/L;->b:Lcom/ex/auto/BlackoutFloaterService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget v2, p0, LT/L;->a:I

    packed-switch v2, :pswitch_data_0

    iget-object v0, p0, LT/L;->b:Lcom/ex/auto/BlackoutFloaterService;

    iput-boolean v1, v0, Lcom/ex/auto/BlackoutFloaterService;->d:Z

    sget-boolean v1, Lcom/ex/auto/BlackoutFloaterService;->p:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/ex/auto/BlackoutFloaterService;->b()V

    :cond_0
    return-void

    :pswitch_0
    iget-object v0, p0, LT/L;->b:Lcom/ex/auto/BlackoutFloaterService;

    iput-boolean v1, v0, Lcom/ex/auto/BlackoutFloaterService;->d:Z

    sget-boolean v1, Lcom/ex/auto/BlackoutFloaterService;->p:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/ex/auto/BlackoutFloaterService;->b()V

    :cond_1
    return-void

    :pswitch_1
    sget-boolean v2, Lcom/ex/auto/BlackoutFloaterService;->p:Z

    iget-object v2, p0, LT/L;->b:Lcom/ex/auto/BlackoutFloaterService;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/ex/auto/BlackoutFloaterService;->a()Z

    move-result v3

    iget-object v4, v2, Lcom/ex/auto/BlackoutFloaterService;->h:Landroid/os/Handler;

    const-string v5, "BlackoutFloater"

    if-nez v3, :cond_2

    const-string v1, "SELinux enforcing \u2014 n\u00e3o foi poss\u00edvel garantir permiss\u00e3o; abortando blackout"

    invoke-static {v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, LT/L;

    invoke-direct {v1, v2, v0}, LT/L;-><init>(Lcom/ex/auto/BlackoutFloaterService;I)V

    invoke-virtual {v4, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_2
    :try_start_0
    new-instance v3, Ljava/io/File;

    const-string v6, "/sys/class/leds/lcd-backlight/brightness"

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, LA/b;->b0(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, LO0/j;->X0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/16 v6, 0xff

    invoke-static {v3, v0, v6}, LA/b;->o(III)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/16 v3, 0xa6

    :goto_0
    invoke-static {v1}, Lcom/ex/auto/BlackoutFloaterService;->f(I)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v0, "Escrita do backlight falhou \u2014 n\u00e3o fazendo toggle"

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, LT/L;

    const/4 v1, 0x2

    invoke-direct {v0, v2, v1}, LT/L;-><init>(Lcom/ex/auto/BlackoutFloaterService;I)V

    invoke-virtual {v4, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_3
    new-instance v1, LT/K;

    invoke-direct {v1, v2, v3, v0}, LT/K;-><init>(Lcom/ex/auto/BlackoutFloaterService;II)V

    invoke-virtual {v4, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
