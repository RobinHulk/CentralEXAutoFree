.class public final synthetic LT/M1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LH0/a;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/ex/auto/LyricsFloaterService;


# direct methods
.method public synthetic constructor <init>(Lcom/ex/auto/LyricsFloaterService;I)V
    .locals 0

    iput p2, p0, LT/M1;->a:I

    iput-object p1, p0, LT/M1;->b:Lcom/ex/auto/LyricsFloaterService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, LT/M1;->b:Lcom/ex/auto/LyricsFloaterService;

    iget v1, p0, LT/M1;->a:I

    packed-switch v1, :pswitch_data_0

    iget-object v1, v0, Lcom/ex/auto/LyricsFloaterService;->c:Landroid/os/Handler;

    new-instance v2, LT/L1;

    const/4 v3, 0x3

    invoke-direct {v2, v0, v3}, LT/L1;-><init>(Lcom/ex/auto/LyricsFloaterService;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    sget-object v0, Lv0/e;->c:Lv0/e;

    return-object v0

    :pswitch_0
    iget-wide v1, v0, Lcom/ex/auto/LyricsFloaterService;->u:J

    invoke-virtual {v0, v1, v2}, Lcom/ex/auto/LyricsFloaterService;->a(J)V

    sget-object v0, Lv0/e;->c:Lv0/e;

    return-object v0

    :pswitch_1
    iget-object v1, v0, Lcom/ex/auto/LyricsFloaterService;->f:Ljava/lang/String;

    invoke-static {v1}, LO0/j;->E0(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, LT/K1;->a:Ljava/util/concurrent/ExecutorService;

    iget-object v1, v0, Lcom/ex/auto/LyricsFloaterService;->f:Ljava/lang/String;

    iget-object v2, v0, Lcom/ex/auto/LyricsFloaterService;->g:Ljava/lang/String;

    const-string v3, "title"

    invoke-static {v1, v3}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "artist"

    invoke-static {v2, v3}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    const-string v3, "lyrics_sync_offsets"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-static {v1, v2}, LT/K1;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    const/4 v1, -0x1

    iput v1, v0, Lcom/ex/auto/LyricsFloaterService;->i:I

    iget-object v1, v0, Lcom/ex/auto/LyricsFloaterService;->k:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    const-string v2, "\u23f1 0 ms"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v1, v0, Lcom/ex/auto/LyricsFloaterService;->c:Landroid/os/Handler;

    new-instance v2, LT/L1;

    const/4 v3, 0x4

    invoke-direct {v2, v0, v3}, LT/L1;-><init>(Lcom/ex/auto/LyricsFloaterService;I)V

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    sget-object v0, Lv0/e;->c:Lv0/e;

    return-object v0

    :pswitch_2
    iget-wide v1, v0, Lcom/ex/auto/LyricsFloaterService;->u:J

    neg-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/ex/auto/LyricsFloaterService;->a(J)V

    sget-object v0, Lv0/e;->c:Lv0/e;

    return-object v0

    :pswitch_3
    iget-object v1, v0, Lcom/ex/auto/LyricsFloaterService;->c:Landroid/os/Handler;

    new-instance v2, LT/L1;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v3}, LT/L1;-><init>(Lcom/ex/auto/LyricsFloaterService;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    sget-object v0, Lv0/e;->c:Lv0/e;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
