.class public final Lcom/ex/auto/MediaBarFloaterService;
.super Landroid/app/Service;
.source "SourceFile"


# static fields
.field public static final u:Ljava/util/Set;


# instance fields
.field public a:Landroid/view/WindowManager;

.field public b:Landroid/media/session/MediaSessionManager;

.field public final c:Landroid/os/Handler;

.field public d:Landroid/widget/FrameLayout;

.field public e:Landroid/widget/ImageView;

.field public f:Landroid/widget/ImageView;

.field public g:Landroid/widget/TextView;

.field public h:Landroid/widget/TextView;

.field public i:Landroid/widget/ImageView;

.field public j:Landroid/widget/ImageView;

.field public k:Landroid/media/session/MediaController;

.field public volatile l:Landroid/media/session/PlaybackState$CustomAction;

.field public m:Ljava/lang/String;

.field public n:Landroid/graphics/Bitmap;

.field public volatile o:Ljava/lang/Boolean;

.field public final p:Ljava/util/HashMap;

.field public final q:LT/Q1;

.field public final r:LT/S1;

.field public volatile s:Z

.field public final t:LB/b;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const-string v8, "app.rvx.android.youtube"

    const-string v9, "app.revanced.android.youtube"

    const-string v0, "com.spotify.music"

    const-string v1, "ru.yandex.music"

    const-string v2, "deezer.android.app"

    const-string v3, "com.google.android.apps.youtube.music"

    const-string v4, "app.rvx.android.apps.youtube.music"

    const-string v5, "app.revanced.android.apps.youtube.music"

    const-string v6, "com.vanced.android.apps.youtube.music"

    const-string v7, "com.google.android.youtube"

    const-string v10, "com.njda.aauto"

    const-string v11, "com.google.android.projection.gearhead"

    filled-new-array/range {v0 .. v11}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Le/a;->P([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/ex/auto/MediaBarFloaterService;->u:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/ex/auto/MediaBarFloaterService;->c:Landroid/os/Handler;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ex/auto/MediaBarFloaterService;->p:Ljava/util/HashMap;

    new-instance v0, LT/Q1;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, LT/Q1;-><init>(Landroid/app/Service;I)V

    iput-object v0, p0, Lcom/ex/auto/MediaBarFloaterService;->q:LT/Q1;

    new-instance v0, LT/S1;

    invoke-direct {v0, p0, v1}, LT/S1;-><init>(Ljava/lang/Object;I)V

    iput-object v0, p0, Lcom/ex/auto/MediaBarFloaterService;->r:LT/S1;

    new-instance v0, LB/b;

    const/16 v1, 0x9

    invoke-direct {v0, p0, v1}, LB/b;-><init>(Ljava/lang/Object;I)V

    iput-object v0, p0, Lcom/ex/auto/MediaBarFloaterService;->t:LB/b;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    invoke-virtual {p0}, Lcom/ex/auto/MediaBarFloaterService;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    const v0, -0xede9e4

    :goto_0
    return v0
.end method

.method public final b()V
    .locals 3

    iget-object v0, p0, Lcom/ex/auto/MediaBarFloaterService;->d:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_1

    :try_start_0
    iget-object v2, p0, Lcom/ex/auto/MediaBarFloaterService;->a:Landroid/view/WindowManager;

    if-eqz v2, :cond_0

    invoke-interface {v2, v0}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    const-string v0, "wm"

    invoke-static {v0}, LI0/f;->h(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    :goto_0
    iput-object v1, p0, Lcom/ex/auto/MediaBarFloaterService;->d:Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/ex/auto/MediaBarFloaterService;->e:Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/ex/auto/MediaBarFloaterService;->f:Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/ex/auto/MediaBarFloaterService;->g:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/ex/auto/MediaBarFloaterService;->h:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/ex/auto/MediaBarFloaterService;->i:Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/ex/auto/MediaBarFloaterService;->j:Landroid/widget/ImageView;

    return-void
.end method

.method public final c()V
    .locals 5

    iget-object v0, p0, Lcom/ex/auto/MediaBarFloaterService;->k:Landroid/media/session/MediaController;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/media/session/MediaController;->getSessionActivity()Landroid/app/PendingIntent;

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_0
    invoke-virtual {v1}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    :cond_1
    invoke-virtual {v0}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "getPackageName(...)"

    invoke-static {v1, v2}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "launchAndroidAuto("

    const-string v3, "com.njda.aauto"

    invoke-static {v1, v3}, LI0/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "MediaBarFloater"

    if-nez v3, :cond_3

    const-string v3, "com.google.android.projection.gearhead"

    invoke-static {v1, v3}, LI0/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_2

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "launchApp falhou: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void

    :cond_3
    :try_start_2
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.bd.systemui.aa.foreground"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "): broadcast com.bd.systemui.aa.foreground enviado"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    move-exception v0

    const-string v3, "): "

    invoke-static {v2, v1, v3}, LM/d0;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1, v4}, LM/d0;->n(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public final d()V
    .locals 7

    :try_start_0
    iget-object v0, p0, Lcom/ex/auto/MediaBarFloaterService;->b:Landroid/media/session/MediaSessionManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/media/session/MediaSessionManager;->getActiveSessions(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    const-string v0, "msm"

    invoke-static {v0}, LI0/f;->h(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getActiveSessions falhou: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaBarFloater"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lw0/q;->a:Lw0/q;

    :goto_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Landroid/media/session/MediaController;

    sget-object v4, Lcom/ex/auto/MediaBarFloaterService;->u:Ljava/util/Set;

    invoke-virtual {v3}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {v1}, Lw0/k;->V(Ljava/lang/Iterable;)I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/session/MediaController;

    invoke-virtual {v3}, Landroid/media/session/MediaController;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_3
    invoke-static {v0}, Lw0/i;->l0(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    iget-object v2, p0, Lcom/ex/auto/MediaBarFloaterService;->p:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    iget-object v5, p0, Lcom/ex/auto/MediaBarFloaterService;->r:LT/S1;

    const-string v6, "next(...)"

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, v6}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    :try_start_1
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/session/MediaController;

    invoke-virtual {v4, v5}, Landroid/media/session/MediaController;->unregisterCallback(Landroid/media/session/MediaController$Callback;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_4

    :cond_5
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catch_2
    :cond_6
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v6}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroid/media/session/MediaController;

    invoke-virtual {v3}, Landroid/media/session/MediaController;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    :try_start_2
    iget-object v4, p0, Lcom/ex/auto/MediaBarFloaterService;->c:Landroid/os/Handler;

    invoke-virtual {v3, v5, v4}, Landroid/media/session/MediaController;->registerCallback(Landroid/media/session/MediaController$Callback;Landroid/os/Handler;)V

    invoke-virtual {v3}, Landroid/media/session/MediaController;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v4

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_5

    :cond_7
    invoke-virtual {p0, v1}, Lcom/ex/auto/MediaBarFloaterService;->f(Ljava/util/ArrayList;)V

    return-void
.end method

.method public final e()V
    .locals 31

    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/ex/auto/MediaBarFloaterService;->o:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/ex/auto/MediaBarFloaterService;->g()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v1, Lcom/ex/auto/MediaBarFloaterService;->o:Ljava/lang/Boolean;

    :cond_0
    iget-boolean v0, v1, Lcom/ex/auto/MediaBarFloaterService;->s:Z

    if-eqz v0, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/ex/auto/MediaBarFloaterService;->b()V

    return-void

    :cond_1
    iget-object v2, v1, Lcom/ex/auto/MediaBarFloaterService;->k:Landroid/media/session/MediaController;

    if-nez v2, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/ex/auto/MediaBarFloaterService;->b()V

    return-void

    :cond_2
    invoke-virtual {v2}, Landroid/media/session/MediaController;->getMetadata()Landroid/media/MediaMetadata;

    move-result-object v3

    invoke-virtual {v2}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Landroid/media/session/PlaybackState;->getState()I

    move-result v0

    move v6, v0

    goto :goto_0

    :cond_3
    move v6, v5

    :goto_0
    if-eqz v3, :cond_28

    const/4 v0, 0x6

    const/4 v7, 0x3

    const/4 v8, 0x2

    if-eq v6, v7, :cond_4

    if-eq v6, v8, :cond_4

    if-ne v6, v0, :cond_28

    :cond_4
    iget-object v9, v1, Lcom/ex/auto/MediaBarFloaterService;->d:Landroid/widget/FrameLayout;

    const v10, -0x5d4e3b

    const/high16 v11, 0x40800000    # 4.0f

    const/4 v13, 0x1

    if-eqz v9, :cond_5

    goto/16 :goto_8

    :cond_5
    new-instance v9, Landroid/widget/FrameLayout;

    invoke-direct {v9, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual/range {p0 .. p0}, Lcom/ex/auto/MediaBarFloaterService;->g()Z

    move-result v16

    if-eqz v16, :cond_6

    const v16, -0xe8e4e2

    :goto_1
    move/from16 v14, v16

    goto :goto_2

    :cond_6
    const v16, -0xd0b09

    goto :goto_1

    :goto_2
    invoke-virtual {v9, v14}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v14, Landroid/widget/LinearLayout;

    invoke-direct {v14, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v14, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v15, 0x10

    invoke-virtual {v14, v15}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/16 v0, 0x1a

    const/16 v12, 0x12

    invoke-virtual {v14, v0, v5, v12, v5}, Landroid/view/View;->setPadding(IIII)V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v12, -0x1

    invoke-direct {v0, v12, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v14, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v12, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v12}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-virtual {v12, v13}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    invoke-virtual {v12, v5}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/ex/auto/MediaBarFloaterService;->g()Z

    move-result v17

    if-eqz v17, :cond_7

    const v17, -0x19000001

    :goto_3
    move/from16 v13, v17

    goto :goto_4

    :cond_7
    const v17, -0x19ede9e4

    goto :goto_3

    :goto_4
    invoke-virtual {v12, v7, v13}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    invoke-virtual {v0, v12}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v13, 0x2c

    invoke-direct {v12, v13, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v12}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v12, LT/v3;

    const/4 v13, 0x1

    invoke-direct {v12, v1, v13}, LT/v3;-><init>(Lcom/ex/auto/MediaBarFloaterService;I)V

    invoke-virtual {v0, v12}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v14, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/view/View;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual/range {p0 .. p0}, Lcom/ex/auto/MediaBarFloaterService;->g()Z

    move-result v12

    if-eqz v12, :cond_8

    const v12, 0x33ffffff

    goto :goto_5

    :cond_8
    const/high16 v12, 0x1f000000

    :goto_5
    invoke-virtual {v0, v12}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v13, 0x28

    invoke-direct {v12, v8, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v12, v15}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-virtual {v12, v15}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    invoke-virtual {v0, v12}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v14, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v12, 0x40

    invoke-direct {v8, v12, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v8, Landroid/widget/ImageView;

    invoke-direct {v8, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sget-object v13, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v8, v13}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    new-instance v13, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v13}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-virtual {v13, v5}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    invoke-virtual {v13, v11}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    invoke-virtual {v13, v10}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    invoke-virtual {v8, v13}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v13, 0x1

    invoke-virtual {v8, v13}, Landroid/view/View;->setClipToOutline(Z)V

    new-instance v13, LT/x3;

    const/4 v7, 0x0

    invoke-direct {v13, v7}, LT/x3;-><init>(I)V

    invoke-virtual {v8, v13}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v7, v12, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v7, LT/v3;

    const/4 v12, 0x2

    invoke-direct {v7, v1, v12}, LT/v3;-><init>(Lcom/ex/auto/MediaBarFloaterService;I)V

    invoke-virtual {v8, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v7, Landroid/widget/ImageView;

    invoke-direct {v7, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v12, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v13, 0x20

    invoke-direct {v12, v13, v13}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const v13, 0x800055

    iput v13, v12, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {v7, v12}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v14, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v12, 0x1

    invoke-virtual {v0, v12}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v0, v15}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v13, -0x2

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-direct {v12, v5, v13, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v12, v15}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    const/4 v10, 0x6

    invoke-virtual {v12, v10}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    invoke-virtual {v0, v12}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v10, LT/v3;

    const/4 v12, 0x3

    invoke-direct {v10, v1, v12}, LT/v3;-><init>(Lcom/ex/auto/MediaBarFloaterService;I)V

    invoke-virtual {v0, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v10, Landroid/widget/TextView;

    invoke-direct {v10, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual/range {p0 .. p0}, Lcom/ex/auto/MediaBarFloaterService;->a()I

    move-result v12

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v12, 0x41700000    # 15.0f

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 v12, 0x1

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setMaxLines(I)V

    sget-object v12, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    new-instance v13, Landroid/widget/TextView;

    invoke-direct {v13, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual/range {p0 .. p0}, Lcom/ex/auto/MediaBarFloaterService;->g()Z

    move-result v15

    if-eqz v15, :cond_9

    const v15, -0x756d68

    goto :goto_6

    :cond_9
    const v15, -0xada59a

    :goto_6
    invoke-virtual {v13, v15}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v15, 0x41400000    # 12.0f

    invoke-virtual {v13, v15}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 v15, 0x1

    invoke-virtual {v13, v15}, Landroid/widget/TextView;->setMaxLines(I)V

    invoke-virtual {v13, v12}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v14, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const v12, 0x7f070095

    invoke-virtual {v0, v12}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/ex/auto/MediaBarFloaterService;->a()I

    move-result v12

    invoke-virtual {v0, v12}, Landroid/widget/ImageView;->setColorFilter(I)V

    sget-object v12, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v12}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/16 v15, 0xa

    invoke-virtual {v0, v15, v15, v15, v15}, Landroid/view/View;->setPadding(IIII)V

    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v5, 0x38

    invoke-direct {v11, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v11}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v11, LT/v3;

    const/4 v5, 0x4

    invoke-direct {v11, v1, v5}, LT/v3;-><init>(Lcom/ex/auto/MediaBarFloaterService;I)V

    invoke-virtual {v0, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v14, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const v5, 0x7f070094

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/ex/auto/MediaBarFloaterService;->a()I

    move-result v11

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setColorFilter(I)V

    invoke-virtual {v0, v12}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {v0, v15, v15, v15, v15}, Landroid/view/View;->setPadding(IIII)V

    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v5, 0x38

    invoke-direct {v11, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v5, 0x6

    invoke-virtual {v11, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-virtual {v0, v11}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v5, LT/v3;

    const/4 v11, 0x5

    invoke-direct {v5, v1, v11}, LT/v3;-><init>(Lcom/ex/auto/MediaBarFloaterService;I)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v14, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v5, Landroid/widget/ImageView;

    invoke-direct {v5, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const v11, 0x7f070092

    invoke-virtual {v5, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/ex/auto/MediaBarFloaterService;->a()I

    move-result v11

    invoke-virtual {v5, v11}, Landroid/widget/ImageView;->setColorFilter(I)V

    invoke-virtual {v5, v12}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {v5, v15, v15, v15, v15}, Landroid/view/View;->setPadding(IIII)V

    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v15, 0x38

    invoke-direct {v11, v15, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v15, 0x6

    invoke-virtual {v11, v15}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-virtual {v5, v11}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v11, LT/v3;

    const/4 v15, 0x6

    invoke-direct {v11, v1, v15}, LT/v3;-><init>(Lcom/ex/auto/MediaBarFloaterService;I)V

    invoke-virtual {v5, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v14, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v5, Landroid/widget/ImageView;

    invoke-direct {v5, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const v11, 0x7f070090

    invoke-virtual {v5, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/ex/auto/MediaBarFloaterService;->a()I

    move-result v11

    invoke-virtual {v5, v11}, Landroid/widget/ImageView;->setColorFilter(I)V

    invoke-virtual {v5, v12}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/16 v11, 0xa

    invoke-virtual {v5, v11, v11, v11, v11}, Landroid/view/View;->setPadding(IIII)V

    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v12, 0x30

    invoke-direct {v11, v12, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v12, 0x6

    invoke-virtual {v11, v12}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-virtual {v5, v11}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v11, 0x8

    invoke-virtual {v5, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    new-instance v11, LT/v3;

    const/4 v12, 0x0

    invoke-direct {v11, v1, v12}, LT/v3;-><init>(Lcom/ex/auto/MediaBarFloaterService;I)V

    invoke-virtual {v5, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v14, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v9, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iput-object v8, v1, Lcom/ex/auto/MediaBarFloaterService;->e:Landroid/widget/ImageView;

    iput-object v7, v1, Lcom/ex/auto/MediaBarFloaterService;->f:Landroid/widget/ImageView;

    iput-object v10, v1, Lcom/ex/auto/MediaBarFloaterService;->g:Landroid/widget/TextView;

    iput-object v13, v1, Lcom/ex/auto/MediaBarFloaterService;->h:Landroid/widget/TextView;

    iput-object v0, v1, Lcom/ex/auto/MediaBarFloaterService;->i:Landroid/widget/ImageView;

    iput-object v5, v1, Lcom/ex/auto/MediaBarFloaterService;->j:Landroid/widget/ImageView;

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v22, 0x308

    const/16 v23, -0x3

    const/16 v19, 0x264

    const/16 v20, 0x70

    const/16 v21, 0x7e8

    move-object/from16 v18, v0

    invoke-direct/range {v18 .. v23}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    const v5, 0x800053

    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v5, 0x0

    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    :try_start_0
    iget-object v5, v1, Lcom/ex/auto/MediaBarFloaterService;->a:Landroid/view/WindowManager;

    if-eqz v5, :cond_a

    invoke-interface {v5, v9, v0}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput-object v9, v1, Lcom/ex/auto/MediaBarFloaterService;->d:Landroid/widget/FrameLayout;

    goto :goto_8

    :catchall_0
    move-exception v0

    goto :goto_7

    :cond_a
    const-string v0, "wm"

    invoke-static {v0}, LI0/f;->h(Ljava/lang/String;)V

    const/4 v5, 0x0

    throw v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_7
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "addView floater falhou: "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "MediaBarFloater"

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_8
    const-string v0, "android.media.metadata.TITLE"

    invoke-virtual {v3, v0}, Landroid/media/MediaMetadata;->getText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    const-string v5, ""

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_c

    :cond_b
    move-object v0, v5

    :cond_c
    const-string v7, "android.media.metadata.ARTIST"

    invoke-virtual {v3, v7}, Landroid/media/MediaMetadata;->getText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v7

    if-eqz v7, :cond_e

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_d

    goto :goto_9

    :cond_d
    move-object v5, v7

    goto :goto_a

    :cond_e
    :goto_9
    const-string v7, "android.media.metadata.ALBUM_ARTIST"

    invoke-virtual {v3, v7}, Landroid/media/MediaMetadata;->getText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v7

    if-eqz v7, :cond_f

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_f
    :goto_a
    iget-object v7, v1, Lcom/ex/auto/MediaBarFloaterService;->g:Landroid/widget/TextView;

    if-eqz v7, :cond_10

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_10
    iget-object v7, v1, Lcom/ex/auto/MediaBarFloaterService;->h:Landroid/widget/TextView;

    if-eqz v7, :cond_11

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_11
    const-string v7, "android.media.metadata.ALBUM_ART"

    invoke-virtual {v3, v7}, Landroid/media/MediaMetadata;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v7

    if-nez v7, :cond_12

    const-string v7, "android.media.metadata.ART"

    invoke-virtual {v3, v7}, Landroid/media/MediaMetadata;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v7

    if-nez v7, :cond_12

    const-string v7, "android.media.metadata.DISPLAY_ICON"

    invoke-virtual {v3, v7}, Landroid/media/MediaMetadata;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v7

    :cond_12
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v9, 0x7c

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    if-eqz v7, :cond_14

    iget-object v0, v1, Lcom/ex/auto/MediaBarFloaterService;->e:Landroid/widget/ImageView;

    if-eqz v0, :cond_13

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_13
    :goto_b
    const/4 v7, 0x0

    goto :goto_c

    :cond_14
    iget-object v7, v1, Lcom/ex/auto/MediaBarFloaterService;->m:Ljava/lang/String;

    invoke-static {v7, v8}, LI0/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_15

    iget-object v7, v1, Lcom/ex/auto/MediaBarFloaterService;->n:Landroid/graphics/Bitmap;

    if-eqz v7, :cond_15

    iget-object v0, v1, Lcom/ex/auto/MediaBarFloaterService;->e:Landroid/widget/ImageView;

    if-eqz v0, :cond_13

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_b

    :cond_15
    iget-object v7, v1, Lcom/ex/auto/MediaBarFloaterService;->e:Landroid/widget/ImageView;

    if-eqz v7, :cond_16

    new-instance v9, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v9}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    const/high16 v10, 0x40800000    # 4.0f

    invoke-virtual {v9, v10}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    const v10, -0x5d4e3b

    invoke-virtual {v9, v10}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    invoke-virtual {v7, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_16
    iget-object v7, v1, Lcom/ex/auto/MediaBarFloaterService;->m:Ljava/lang/String;

    invoke-static {v7, v8}, LI0/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_13

    iput-object v8, v1, Lcom/ex/auto/MediaBarFloaterService;->m:Ljava/lang/String;

    const/4 v7, 0x0

    iput-object v7, v1, Lcom/ex/auto/MediaBarFloaterService;->n:Landroid/graphics/Bitmap;

    const-string v9, "android.media.metadata.ALBUM_ART_URI"

    invoke-virtual {v3, v9}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_17

    const-string v9, "android.media.metadata.ART_URI"

    invoke-virtual {v3, v9}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_17

    const-string v9, "android.media.metadata.DISPLAY_ICON_URI"

    invoke-virtual {v3, v9}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    :cond_17
    if-eqz v9, :cond_18

    invoke-static/range {p0 .. p0}, LT/n4;->c(Landroid/content/Context;)V

    new-instance v3, LT/w3;

    invoke-direct {v3, v1, v8, v0, v5}, LT/w3;-><init>(Lcom/ex/auto/MediaBarFloaterService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1, v9, v3}, LT/n4;->b(Landroid/content/Context;Ljava/lang/String;LH0/l;)V

    :cond_18
    :goto_c
    iget-object v0, v1, Lcom/ex/auto/MediaBarFloaterService;->f:Landroid/widget/ImageView;

    if-eqz v0, :cond_19

    invoke-virtual {v2}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "getPackageName(...)"

    invoke-static {v2, v3}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_d

    :catch_0
    move-object v5, v7

    :goto_d
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_19
    const/4 v2, 0x3

    if-ne v6, v2, :cond_1a

    const/4 v13, 0x1

    goto :goto_e

    :cond_1a
    const/4 v13, 0x0

    :goto_e
    iget-object v0, v1, Lcom/ex/auto/MediaBarFloaterService;->i:Landroid/widget/ImageView;

    if-eqz v0, :cond_1c

    if-eqz v13, :cond_1b

    const v15, 0x7f070093

    goto :goto_f

    :cond_1b
    const v15, 0x7f070094

    :goto_f
    invoke-virtual {v0, v15}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1c
    const-string v0, "toLowerCase(...)"

    if-eqz v4, :cond_22

    invoke-virtual {v4}, Landroid/media/session/PlaybackState;->getCustomActions()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_22

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1d
    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_21

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Landroid/media/session/PlaybackState$CustomAction;

    invoke-static {v4}, LI0/f;->b(Ljava/lang/Object;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Landroid/media/session/PlaybackState$CustomAction;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0x20

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/media/session/PlaybackState$CustomAction;->getName()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "n\u00e3o gost"

    const/4 v8, 0x0

    invoke-static {v4, v5, v8}, LO0/j;->x0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v5

    if-nez v5, :cond_1d

    const-string v5, "nao gost"

    invoke-static {v4, v5, v8}, LO0/j;->x0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v5

    if-nez v5, :cond_1d

    const-string v5, "dislike"

    invoke-static {v4, v5, v8}, LO0/j;->x0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v5

    if-eqz v5, :cond_1e

    goto :goto_10

    :cond_1e
    const-string v29, "saved"

    const-string v30, "heart"

    const-string v18, "cole\u00e7"

    const-string v19, "colecao"

    const-string v20, "collection"

    const-string v21, "biblioteca"

    const-string v22, "library"

    const-string v23, "favorit"

    const-string v24, "curtir"

    const-string v25, "like"

    const-string v26, "gostei"

    const-string v27, "gosto"

    const-string v28, "salvar"

    filled-new-array/range {v18 .. v30}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lw0/j;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1f

    goto :goto_10

    :cond_1f
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_20
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static {v4, v8, v9}, LO0/j;->x0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v8

    if-eqz v8, :cond_20

    move-object v12, v3

    goto :goto_11

    :cond_21
    move-object v12, v7

    :goto_11
    check-cast v12, Landroid/media/session/PlaybackState$CustomAction;

    goto :goto_12

    :cond_22
    move-object v12, v7

    :goto_12
    if-eqz v12, :cond_23

    iput-object v12, v1, Lcom/ex/auto/MediaBarFloaterService;->l:Landroid/media/session/PlaybackState$CustomAction;

    :cond_23
    iget-object v2, v1, Lcom/ex/auto/MediaBarFloaterService;->j:Landroid/widget/ImageView;

    if-eqz v2, :cond_27

    iget-object v3, v1, Lcom/ex/auto/MediaBarFloaterService;->l:Landroid/media/session/PlaybackState$CustomAction;

    if-nez v3, :cond_24

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_14

    :cond_24
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v3}, Landroid/media/session/PlaybackState$CustomAction;->getName()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v3, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "remov"

    invoke-static {v3, v0, v4}, LO0/j;->x0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-nez v0, :cond_26

    const-string v0, "remove"

    invoke-static {v3, v0, v4}, LO0/j;->x0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-nez v0, :cond_26

    const-string v0, "saved"

    invoke-static {v3, v0, v4}, LO0/j;->x0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-nez v0, :cond_26

    const-string v0, "salvo"

    invoke-static {v3, v0, v4}, LO0/j;->x0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-nez v0, :cond_26

    const-string v0, "unsave"

    invoke-static {v3, v0, v4}, LO0/j;->x0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-nez v0, :cond_26

    const-string v0, "marcado"

    invoke-static {v3, v0, v4}, LO0/j;->x0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-eqz v0, :cond_25

    goto :goto_13

    :cond_25
    const v3, 0x7f070090

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/ex/auto/MediaBarFloaterService;->a()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_14

    :cond_26
    :goto_13
    const v0, 0x7f070091

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {v2}, Landroid/widget/ImageView;->clearColorFilter()V

    :cond_27
    :goto_14
    return-void

    :cond_28
    invoke-virtual/range {p0 .. p0}, Lcom/ex/auto/MediaBarFloaterService;->b()V

    return-void
.end method

.method public final f(Ljava/util/ArrayList;)V
    .locals 6

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/ex/auto/MediaBarFloaterService;->p:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    const-string v0, "<get-values>(...)"

    invoke-static {p1, v0}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lw0/i;->i0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/media/session/MediaController;

    invoke-virtual {v3}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/media/session/PlaybackState;->getState()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    goto :goto_0

    :cond_2
    move-object v1, v2

    :goto_0
    check-cast v1, Landroid/media/session/MediaController;

    if-nez v1, :cond_8

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/media/session/MediaController;

    invoke-virtual {v3}, Landroid/media/session/MediaController;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v4

    iget-object v5, p0, Lcom/ex/auto/MediaBarFloaterService;->k:Landroid/media/session/MediaController;

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Landroid/media/session/MediaController;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v5

    goto :goto_1

    :cond_4
    move-object v5, v2

    :goto_1
    invoke-static {v4, v5}, LI0/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v3}, Landroid/media/session/MediaController;->getMetadata()Landroid/media/MediaMetadata;

    move-result-object v3

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_5
    move-object v1, v2

    :goto_2
    check-cast v1, Landroid/media/session/MediaController;

    if-nez v1, :cond_8

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/media/session/MediaController;

    invoke-virtual {v3}, Landroid/media/session/MediaController;->getMetadata()Landroid/media/MediaMetadata;

    move-result-object v3

    if-eqz v3, :cond_6

    goto :goto_3

    :cond_7
    move-object v1, v2

    :goto_3
    check-cast v1, Landroid/media/session/MediaController;

    if-nez v1, :cond_8

    invoke-static {p1}, Lw0/i;->a0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Landroid/media/session/MediaController;

    :cond_8
    if-nez v1, :cond_9

    iput-object v2, p0, Lcom/ex/auto/MediaBarFloaterService;->k:Landroid/media/session/MediaController;

    iput-object v2, p0, Lcom/ex/auto/MediaBarFloaterService;->l:Landroid/media/session/PlaybackState$CustomAction;

    iput-object v2, p0, Lcom/ex/auto/MediaBarFloaterService;->m:Ljava/lang/String;

    iput-object v2, p0, Lcom/ex/auto/MediaBarFloaterService;->n:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/ex/auto/MediaBarFloaterService;->b()V

    return-void

    :cond_9
    invoke-virtual {v1}, Landroid/media/session/MediaController;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object p1

    iget-object v0, p0, Lcom/ex/auto/MediaBarFloaterService;->k:Landroid/media/session/MediaController;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v0

    goto :goto_4

    :cond_a
    move-object v0, v2

    :goto_4
    invoke-static {p1, v0}, LI0/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    iput-object v1, p0, Lcom/ex/auto/MediaBarFloaterService;->k:Landroid/media/session/MediaController;

    invoke-virtual {v1}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    iput-object v2, p0, Lcom/ex/auto/MediaBarFloaterService;->l:Landroid/media/session/PlaybackState$CustomAction;

    iput-object v2, p0, Lcom/ex/auto/MediaBarFloaterService;->m:Ljava/lang/String;

    iput-object v2, p0, Lcom/ex/auto/MediaBarFloaterService;->n:Landroid/graphics/Bitmap;

    :cond_b
    invoke-virtual {p0}, Lcom/ex/auto/MediaBarFloaterService;->e()V

    return-void
.end method

.method public final g()Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x30

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    const-string v0, "newConfig"

    invoke-static {p1, v0}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/app/Service;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget p1, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p1, p1, 0x30

    const/16 v0, 0x20

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-object v1, p0, Lcom/ex/auto/MediaBarFloaterService;->o:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/ex/auto/MediaBarFloaterService;->o:Ljava/lang/Boolean;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "tema mudou (escuro="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ") \u2014 redesenhando o floater"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MediaBarFloater"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/ex/auto/MediaBarFloaterService;->c:Landroid/os/Handler;

    new-instance v0, LT/T0;

    const/4 v1, 0x6

    invoke-direct {v0, p0, v1}, LT/T0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onCreate()V
    .locals 9

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    iget-object v0, p0, Lcom/ex/auto/MediaBarFloaterService;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/ex/auto/MediaBarFloaterService;->t:LB/b;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.view.WindowManager"

    invoke-static {v0, v1}, LI0/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/ex/auto/MediaBarFloaterService;->a:Landroid/view/WindowManager;

    const-string v0, "media_session"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.media.session.MediaSessionManager"

    invoke-static {v0, v1}, LI0/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/media/session/MediaSessionManager;

    iput-object v0, p0, Lcom/ex/auto/MediaBarFloaterService;->b:Landroid/media/session/MediaSessionManager;

    const/4 v6, 0x0

    const/4 v7, 0x1

    const-string v2, "media_bar_floater"

    const-string v3, "M\u00eddia na barra"

    const-string v4, "Spotify/YT Music na barra"

    const v5, 0x1080024

    const/16 v8, 0x10

    move-object v1, p0

    invoke-static/range {v1 .. v8}, LT/Y;->I(Landroid/app/Service;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;II)Landroid/app/Notification;

    move-result-object v0

    const/16 v1, 0x3ae0

    invoke-virtual {p0, v1, v0}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    :try_start_0
    iget-object v0, p0, Lcom/ex/auto/MediaBarFloaterService;->b:Landroid/media/session/MediaSessionManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/ex/auto/MediaBarFloaterService;->q:LT/Q1;

    invoke-virtual {v0, v2, v1}, Landroid/media/session/MediaSessionManager;->addOnActiveSessionsChangedListener(Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;Landroid/content/ComponentName;)V

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    const-string v0, "msm"

    invoke-static {v0}, LI0/f;->h(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "addOnActiveSessionsChangedListener falhou: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaBarFloater"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    invoke-virtual {p0}, Lcom/ex/auto/MediaBarFloaterService;->d()V

    return-void
.end method

.method public final onDestroy()V
    .locals 4

    iget-object v0, p0, Lcom/ex/auto/MediaBarFloaterService;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/ex/auto/MediaBarFloaterService;->t:LB/b;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/ex/auto/MediaBarFloaterService;->b:Landroid/media/session/MediaSessionManager;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/ex/auto/MediaBarFloaterService;->q:LT/Q1;

    invoke-virtual {v1, v2}, Landroid/media/session/MediaSessionManager;->removeOnActiveSessionsChangedListener(Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;)V

    goto :goto_0

    :cond_0
    const-string v1, "msm"

    invoke-static {v1}, LI0/f;->h(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    iget-object v1, p0, Lcom/ex/auto/MediaBarFloaterService;->p:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :catch_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/session/MediaController;

    iget-object v3, p0, Lcom/ex/auto/MediaBarFloaterService;->r:LT/S1;

    invoke-virtual {v2, v3}, Landroid/media/session/MediaController;->unregisterCallback(Landroid/media/session/MediaController$Callback;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/ex/auto/MediaBarFloaterService;->p:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    iput-object v0, p0, Lcom/ex/auto/MediaBarFloaterService;->k:Landroid/media/session/MediaController;

    iput-object v0, p0, Lcom/ex/auto/MediaBarFloaterService;->l:Landroid/media/session/PlaybackState$CustomAction;

    iput-object v0, p0, Lcom/ex/auto/MediaBarFloaterService;->m:Ljava/lang/String;

    iput-object v0, p0, Lcom/ex/auto/MediaBarFloaterService;->n:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/ex/auto/MediaBarFloaterService;->b()V

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public final onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    invoke-virtual {p0}, Lcom/ex/auto/MediaBarFloaterService;->d()V

    const/4 p1, 0x1

    return p1
.end method
