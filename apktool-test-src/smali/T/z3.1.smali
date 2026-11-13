.class public final LT/z3;
.super Lcom/ecarx/eas/sdk/mediacenter/MusicClient;
.source "SourceFile"


# instance fields
.field public volatile a:Lcom/ecarx/eas/sdk/mediacenter/MusicPlaybackInfo;


# direct methods
.method public static a()Landroid/media/session/MediaController$TransportControls;
    .locals 1

    sget-object v0, LT/B3;->l:Landroid/media/session/MediaController;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public final ctrlCollect(IZ)I
    .locals 0

    sget-object p1, LT/B3;->a:LT/B3;

    invoke-static {}, LT/B3;->q()V

    const/4 p1, 0x0

    return p1
.end method

.method public final ctrlCollectByUUID(ILjava/lang/String;Z)V
    .locals 0

    sget-object p1, LT/B3;->a:LT/B3;

    invoke-static {}, LT/B3;->q()V

    return-void
.end method

.method public final getCurrentProgress()J
    .locals 2

    sget-object v0, LT/B3;->l:Landroid/media/session/MediaController;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/session/PlaybackState;->getPosition()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public final getCurrentSourceType()I
    .locals 1

    const/4 v0, 0x6

    return v0
.end method

.method public final getMediaSourceTypeList()[I
    .locals 1

    const/4 v0, 0x6

    filled-new-array {v0}, [I

    move-result-object v0

    return-object v0
.end method

.method public final getMusicPlaybackInfo()Lcom/ecarx/eas/sdk/mediacenter/MusicPlaybackInfo;
    .locals 1

    iget-object v0, p0, LT/z3;->a:Lcom/ecarx/eas/sdk/mediacenter/MusicPlaybackInfo;

    return-object v0
.end method

.method public final onCollect(IZ)Z
    .locals 1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "MC\u2192onCollect "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MediaCenterBridge"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p1, LT/B3;->a:LT/B3;

    invoke-static {}, LT/B3;->q()V

    const/4 p1, 0x1

    return p1
.end method

.method public final onExit()Z
    .locals 2

    const-string v0, "MediaCenterBridge"

    const-string v1, "MC\u2192onExit"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, LT/z3;->a()Landroid/media/session/MediaController$TransportControls;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/session/MediaController$TransportControls;->stop()V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public final onForward()Z
    .locals 1

    invoke-static {}, LT/z3;->a()Landroid/media/session/MediaController$TransportControls;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/session/MediaController$TransportControls;->fastForward()V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public final onMediaCenterFocusChanged(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MC\u2192onMediaCenterFocusChanged foco="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MediaCenterBridge"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onMediaForward(Z)Z
    .locals 0

    if-eqz p1, :cond_0

    invoke-static {}, LT/z3;->a()Landroid/media/session/MediaController$TransportControls;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/media/session/MediaController$TransportControls;->fastForward()V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public final onMediaRewind(Z)Z
    .locals 0

    if-eqz p1, :cond_0

    invoke-static {}, LT/z3;->a()Landroid/media/session/MediaController$TransportControls;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/media/session/MediaController$TransportControls;->rewind()V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public final onNext()Z
    .locals 2

    const-string v0, "MediaCenterBridge"

    const-string v1, "MC\u2192onNext"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, LT/z3;->a()Landroid/media/session/MediaController$TransportControls;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/session/MediaController$TransportControls;->skipToNext()V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public final onPause()Z
    .locals 2

    const-string v0, "MediaCenterBridge"

    const-string v1, "MC\u2192onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, LT/z3;->a()Landroid/media/session/MediaController$TransportControls;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/session/MediaController$TransportControls;->pause()V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public final onPlay()Z
    .locals 2

    const-string v0, "MediaCenterBridge"

    const-string v1, "MC\u2192onPlay"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, LT/z3;->a()Landroid/media/session/MediaController$TransportControls;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/session/MediaController$TransportControls;->play()V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public final onPrevious()Z
    .locals 2

    const-string v0, "MediaCenterBridge"

    const-string v1, "MC\u2192onPrevious"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, LT/z3;->a()Landroid/media/session/MediaController$TransportControls;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/session/MediaController$TransportControls;->skipToPrevious()V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public final onReplay()Z
    .locals 2

    const-string v0, "MediaCenterBridge"

    const-string v1, "MC\u2192onReplay"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, LT/z3;->a()Landroid/media/session/MediaController$TransportControls;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/session/MediaController$TransportControls;->play()V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public final onRewind()Z
    .locals 1

    invoke-static {}, LT/z3;->a()Landroid/media/session/MediaController$TransportControls;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/session/MediaController$TransportControls;->rewind()V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public final onSeek(J)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MC\u2192onSeek "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaCenterBridge"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, LT/z3;->a()Landroid/media/session/MediaController$TransportControls;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Landroid/media/session/MediaController$TransportControls;->seekTo(J)V

    :cond_0
    return-void
.end method

.method public final onSourceChanged(ILjava/lang/String;)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MC\u2192onSourceChanged type="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " pkg="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MediaCenterBridge"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    return p1
.end method

.method public final onSourceSelected(I)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MC\u2192onSourceSelected "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaCenterBridge"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    invoke-static {}, LT/z3;->a()Landroid/media/session/MediaController$TransportControls;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/media/session/MediaController$TransportControls;->play()V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
