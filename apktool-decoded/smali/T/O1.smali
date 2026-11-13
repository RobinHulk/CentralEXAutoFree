.class public final synthetic LT/O1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LH0/a;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/io/Serializable;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/io/Serializable;I)V
    .locals 0

    iput p4, p0, LT/O1;->a:I

    iput-object p1, p0, LT/O1;->b:Ljava/lang/Object;

    iput-object p2, p0, LT/O1;->c:Ljava/lang/Object;

    iput-object p3, p0, LT/O1;->d:Ljava/io/Serializable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, LT/O1;->d:Ljava/io/Serializable;

    iget-object v1, p0, LT/O1;->c:Ljava/lang/Object;

    iget-object v2, p0, LT/O1;->b:Ljava/lang/Object;

    iget v3, p0, LT/O1;->a:I

    packed-switch v3, :pswitch_data_0

    check-cast v2, Landroid/app/ActivityManager;

    check-cast v1, LT/l4;

    sget-object v3, Lcom/ex/auto/QuickAccessFloaterService;->j0:Ljava/util/List;

    const-string v3, "QuickAccessFloater"

    const-string v4, "Gesto 3 dedos: indo para "

    :try_start_0
    iget v5, v1, LT/l4;->a:I

    const/4 v6, 0x1

    invoke-virtual {v2, v5, v6}, Landroid/app/ActivityManager;->moveTaskToFront(II)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v1, LT/l4;->b:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " (taskId="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, LT/l4;->a:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "goToLastApp: moveTaskToFront falhou: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2, v3}, LM/d0;->n(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_0
    check-cast v0, LI0/l;

    iget-object v0, v0, LI0/l;->b:Ljava/lang/Object;

    if-eqz v0, :cond_0

    check-cast v0, Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    sget-object v0, Lv0/e;->c:Lv0/e;

    return-object v0

    :cond_0
    const-string v0, "dlg"

    invoke-static {v0}, LI0/f;->h(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :pswitch_0
    check-cast v2, Lcom/ex/auto/LyricsFloaterService;

    iget-object v3, v2, Lcom/ex/auto/LyricsFloaterService;->c:Landroid/os/Handler;

    new-instance v4, LT/z;

    check-cast v1, Ljava/lang/String;

    check-cast v0, Ljava/lang/String;

    const/4 v5, 0x6

    invoke-direct {v4, v2, v1, v0, v5}, LT/z;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    sget-object v0, Lv0/e;->c:Lv0/e;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
