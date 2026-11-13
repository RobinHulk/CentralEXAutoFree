.class public final synthetic LT/K;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/ex/auto/BlackoutFloaterService;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/ex/auto/BlackoutFloaterService;II)V
    .locals 0

    iput p3, p0, LT/K;->a:I

    iput-object p1, p0, LT/K;->b:Lcom/ex/auto/BlackoutFloaterService;

    iput p2, p0, LT/K;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget v2, p0, LT/K;->a:I

    packed-switch v2, :pswitch_data_0

    iget-object v2, p0, LT/K;->b:Lcom/ex/auto/BlackoutFloaterService;

    iget v3, p0, LT/K;->c:I

    iput-boolean v1, v2, Lcom/ex/auto/BlackoutFloaterService;->d:Z

    sget-boolean v4, Lcom/ex/auto/BlackoutFloaterService;->p:Z

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    iput v3, v2, Lcom/ex/auto/BlackoutFloaterService;->e:I

    iput-boolean v0, v2, Lcom/ex/auto/BlackoutFloaterService;->c:Z

    sput-boolean v0, Lcom/ex/auto/BlackoutFloaterService;->q:Z

    invoke-virtual {v2}, Lcom/ex/auto/BlackoutFloaterService;->d()V

    iget-object v3, v2, Lcom/ex/auto/BlackoutFloaterService;->h:Landroid/os/Handler;

    new-instance v4, LC/a;

    invoke-direct {v4, v2, v3, v0}, LC/a;-><init>(Landroid/app/Service;Landroid/os/Handler;I)V

    iput-object v4, v2, Lcom/ex/auto/BlackoutFloaterService;->i:LC/a;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v5, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v5, v0, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    new-instance v0, LT/N;

    invoke-direct {v0, v2, v1}, LT/N;-><init>(Ljava/lang/Object;I)V

    iput-object v0, v2, Lcom/ex/auto/BlackoutFloaterService;->j:LT/N;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v3, "android.media.VOLUME_CHANGED_ACTION"

    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :goto_0
    return-void

    :pswitch_0
    sget-boolean v0, Lcom/ex/auto/BlackoutFloaterService;->p:Z

    iget-object v0, p0, LT/K;->b:Lcom/ex/auto/BlackoutFloaterService;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, LT/K;->c:I

    invoke-static {v0}, Lcom/ex/auto/BlackoutFloaterService;->f(I)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/ex/auto/BlackoutFloaterService;->a()Z

    invoke-static {v0}, Lcom/ex/auto/BlackoutFloaterService;->f(I)Z

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
