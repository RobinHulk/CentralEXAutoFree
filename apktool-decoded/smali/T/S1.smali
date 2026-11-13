.class public final LT/S1;
.super Landroid/media/session/MediaController$Callback;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, LT/S1;->a:I

    iput-object p1, p0, LT/S1;->b:Ljava/lang/Object;

    invoke-direct {p0}, Landroid/media/session/MediaController$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMetadataChanged(Landroid/media/MediaMetadata;)V
    .locals 1

    iget-object p1, p0, LT/S1;->b:Ljava/lang/Object;

    iget v0, p0, LT/S1;->a:I

    packed-switch v0, :pswitch_data_0

    sget-object v0, LT/B3;->a:LT/B3;

    check-cast p1, Landroid/media/session/MediaController;

    invoke-static {p1}, LT/B3;->j(Landroid/media/session/MediaController;)V

    return-void

    :pswitch_0
    sget-object v0, Lcom/ex/auto/MediaBarFloaterService;->u:Ljava/util/Set;

    check-cast p1, Lcom/ex/auto/MediaBarFloaterService;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/ex/auto/MediaBarFloaterService;->f(Ljava/util/ArrayList;)V

    return-void

    :pswitch_1
    sget-object v0, Lcom/ex/auto/LyricsFloaterService;->v:Ljava/util/Set;

    check-cast p1, Lcom/ex/auto/LyricsFloaterService;

    invoke-virtual {p1}, Lcom/ex/auto/LyricsFloaterService;->i()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onPlaybackStateChanged(Landroid/media/session/PlaybackState;)V
    .locals 7

    const/4 v0, 0x0

    iget v1, p0, LT/S1;->a:I

    packed-switch v1, :pswitch_data_0

    sget-object v1, LT/B3;->a:LT/B3;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x3

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getState()I

    move-result v4

    if-ne v4, v3, :cond_0

    move v1, v2

    :cond_0
    const-string v4, "MediaCenterBridge"

    if-eqz v1, :cond_5

    sget-boolean v1, LT/B3;->z:Z

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    sget-object v1, LT/B3;->d:Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    sget-object v5, LT/B3;->e:Ljava/lang/Object;

    if-nez v5, :cond_3

    goto :goto_0

    :cond_3
    sget-boolean v6, LT/B3;->C:Z

    if-eqz v6, :cond_4

    goto :goto_0

    :cond_4
    const/4 v6, 0x6

    :try_start_0
    invoke-virtual {v1, v5, v6}, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;->updateCurrentSourceType(Ljava/lang/Object;I)V

    sput-boolean v2, LT/B3;->C:Z

    const-string v1, "fonte corrente declarada (m\u00eddia nossa tocando)"

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "updateCurrentSourceType falhou: "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2, v4}, LM/d0;->r(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_5
    :goto_0
    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getState()I

    move-result p1

    if-ne p1, v3, :cond_6

    goto :goto_3

    :cond_6
    sget-object p1, LT/B3;->l:Landroid/media/session/MediaController;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroid/media/session/MediaController;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object p1

    goto :goto_1

    :cond_7
    move-object p1, v0

    :goto_1
    iget-object v1, p0, LT/S1;->b:Ljava/lang/Object;

    check-cast v1, Landroid/media/session/MediaController;

    invoke-virtual {v1}, Landroid/media/session/MediaController;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v1

    invoke-static {p1, v1}, LI0/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    :try_start_1
    sget-object p1, LT/B3;->h:Landroid/media/session/MediaSessionManager;

    if-eqz p1, :cond_8

    invoke-virtual {p1, v0}, Landroid/media/session/MediaSessionManager;->getActiveSessions(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object p1

    goto :goto_2

    :cond_8
    move-object p1, v0

    :goto_2
    invoke-static {p1}, LT/B3;->g(Ljava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    sget-object p1, LT/B3;->l:Landroid/media/session/MediaController;

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Landroid/media/session/MediaController;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v0

    :cond_9
    iget-object p1, p0, LT/S1;->b:Ljava/lang/Object;

    check-cast p1, Landroid/media/session/MediaController;

    invoke-virtual {p1}, Landroid/media/session/MediaController;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object p1

    invoke-static {v0, p1}, LI0/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    goto :goto_4

    :cond_a
    :goto_3
    sget-object p1, LT/B3;->a:LT/B3;

    iget-object p1, p0, LT/S1;->b:Ljava/lang/Object;

    check-cast p1, Landroid/media/session/MediaController;

    invoke-static {p1}, LT/B3;->j(Landroid/media/session/MediaController;)V

    :goto_4
    return-void

    :pswitch_0
    sget-object p1, Lcom/ex/auto/MediaBarFloaterService;->u:Ljava/util/Set;

    iget-object p1, p0, LT/S1;->b:Ljava/lang/Object;

    check-cast p1, Lcom/ex/auto/MediaBarFloaterService;

    invoke-virtual {p1, v0}, Lcom/ex/auto/MediaBarFloaterService;->f(Ljava/util/ArrayList;)V

    return-void

    :pswitch_1
    sget-object p1, Lcom/ex/auto/LyricsFloaterService;->v:Ljava/util/Set;

    iget-object p1, p0, LT/S1;->b:Ljava/lang/Object;

    check-cast p1, Lcom/ex/auto/LyricsFloaterService;

    invoke-virtual {p1}, Lcom/ex/auto/LyricsFloaterService;->i()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onSessionDestroyed()V
    .locals 3

    iget v0, p0, LT/S1;->a:I

    packed-switch v0, :pswitch_data_0

    sget-object v0, LT/B3;->l:Landroid/media/session/MediaController;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iget-object v2, p0, LT/S1;->b:Ljava/lang/Object;

    check-cast v2, Landroid/media/session/MediaController;

    invoke-virtual {v2}, Landroid/media/session/MediaController;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v2

    invoke-static {v0, v2}, LI0/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, LT/B3;->a:LT/B3;

    invoke-static {}, LT/B3;->c()V

    :try_start_0
    sget-object v0, LT/B3;->h:Landroid/media/session/MediaSessionManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/media/session/MediaSessionManager;->getActiveSessions(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v1

    :cond_1
    invoke-static {v1}, LT/B3;->g(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_2
    return-void

    :pswitch_0
    sget-object v0, Lcom/ex/auto/MediaBarFloaterService;->u:Ljava/util/Set;

    iget-object v0, p0, LT/S1;->b:Ljava/lang/Object;

    check-cast v0, Lcom/ex/auto/MediaBarFloaterService;

    invoke-virtual {v0}, Lcom/ex/auto/MediaBarFloaterService;->d()V

    return-void

    :pswitch_1
    sget-object v0, Lcom/ex/auto/LyricsFloaterService;->v:Ljava/util/Set;

    iget-object v0, p0, LT/S1;->b:Ljava/lang/Object;

    check-cast v0, Lcom/ex/auto/LyricsFloaterService;

    invoke-virtual {v0}, Lcom/ex/auto/LyricsFloaterService;->h()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
