.class public final synthetic LT/N1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/ex/auto/LyricsFloaterService;


# direct methods
.method public synthetic constructor <init>(Lcom/ex/auto/LyricsFloaterService;I)V
    .locals 0

    iput p2, p0, LT/N1;->a:I

    iput-object p1, p0, LT/N1;->b:Lcom/ex/auto/LyricsFloaterService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    iget p1, p0, LT/N1;->a:I

    packed-switch p1, :pswitch_data_0

    sget-object p1, Lcom/ex/auto/LyricsFloaterService;->v:Ljava/util/Set;

    iget-object p1, p0, LT/N1;->b:Lcom/ex/auto/LyricsFloaterService;

    invoke-virtual {p1}, Lcom/ex/auto/LyricsFloaterService;->b()V

    return-void

    :pswitch_0
    sget-object p1, Lcom/ex/auto/LyricsFloaterService;->v:Ljava/util/Set;

    iget-object p1, p0, LT/N1;->b:Lcom/ex/auto/LyricsFloaterService;

    invoke-virtual {p1}, Lcom/ex/auto/LyricsFloaterService;->b()V

    return-void

    :pswitch_1
    sget-object p1, Lcom/ex/auto/LyricsFloaterService;->v:Ljava/util/Set;

    iget-object p1, p0, LT/N1;->b:Lcom/ex/auto/LyricsFloaterService;

    invoke-virtual {p1}, Lcom/ex/auto/LyricsFloaterService;->l()V

    return-void

    :pswitch_2
    sget-object p1, Lcom/ex/auto/LyricsFloaterService;->v:Ljava/util/Set;

    iget-object p1, p0, LT/N1;->b:Lcom/ex/auto/LyricsFloaterService;

    invoke-virtual {p1}, Lcom/ex/auto/LyricsFloaterService;->c()V

    return-void

    :pswitch_3
    iget-object p1, p0, LT/N1;->b:Lcom/ex/auto/LyricsFloaterService;

    sget-object v0, Lcom/ex/auto/LyricsFloaterService;->v:Ljava/util/Set;

    const-string v0, "tela_preta_prefs"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "lyrics_floater_enabled"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :try_start_0
    sget-object v0, Lcom/ex/auto/QuickAccessFloaterService;->j0:Ljava/util/List;

    sget-object v0, Lcom/ex/auto/QuickAccessFloaterService;->l0:Lcom/ex/auto/QuickAccessFloaterService;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ex/auto/QuickAccessFloaterService;->H()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    invoke-virtual {p1}, Landroid/app/Service;->stopSelf()V

    return-void

    :pswitch_4
    sget-object p1, Lcom/ex/auto/LyricsFloaterService;->v:Ljava/util/Set;

    sget-object p1, LT/K1;->a:Ljava/util/concurrent/ExecutorService;

    iget-object p1, p0, LT/N1;->b:Lcom/ex/auto/LyricsFloaterService;

    iget-object v0, p1, Lcom/ex/auto/LyricsFloaterService;->f:Ljava/lang/String;

    iget-object v1, p1, Lcom/ex/auto/LyricsFloaterService;->g:Ljava/lang/String;

    const-string v2, "title"

    invoke-static {v0, v2}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "artist"

    invoke-static {v1, v2}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v1}, LT/K1;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, LT/K1;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, LT/K1;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, LT/K1;->g:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object v0, p1, Lcom/ex/auto/LyricsFloaterService;->k:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    const-string v1, "\ud83c\udfa4 procurando de novo\u2026"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v0, p1, Lcom/ex/auto/LyricsFloaterService;->e:Landroid/media/session/MediaController;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getMetadata()Landroid/media/MediaMetadata;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/ex/auto/LyricsFloaterService;->r()V

    iget-object v1, p1, Lcom/ex/auto/LyricsFloaterService;->f:Ljava/lang/String;

    iget-object v2, p1, Lcom/ex/auto/LyricsFloaterService;->g:Ljava/lang/String;

    const-string v3, "android.media.metadata.DURATION"

    invoke-virtual {v0, v3}, Landroid/media/MediaMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    new-instance v0, LT/M1;

    const/4 v5, 0x4

    invoke-direct {v0, p1, v5}, LT/M1;-><init>(Lcom/ex/auto/LyricsFloaterService;I)V

    invoke-static {v1, v2, v3, v4, v0}, LT/K1;->d(Ljava/lang/String;Ljava/lang/String;JLH0/a;)V

    :cond_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
