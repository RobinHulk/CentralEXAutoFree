.class public final Lcom/ex/auto/HomeWidgetsPollService;
.super Landroid/app/Service;
.source "SourceFile"


# static fields
.field public static final synthetic r:I


# instance fields
.field public final a:Landroid/os/Handler;

.field public b:Landroid/car/Car;

.field public c:Landroid/car/hardware/property/CarPropertyManager;

.field public d:Ljava/lang/Integer;

.field public e:Ljava/lang/Integer;

.field public f:Ljava/lang/Integer;

.field public g:Ljava/lang/Float;

.field public h:Ljava/lang/Integer;

.field public i:Ljava/lang/Boolean;

.field public j:Ljava/lang/Boolean;

.field public k:Ljava/lang/Boolean;

.field public l:Ljava/lang/Boolean;

.field public m:Ljava/lang/Boolean;

.field public n:Ljava/lang/Integer;

.field public o:Ljava/lang/Integer;

.field public p:Ljava/lang/Boolean;

.field public final q:LB/b;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/ex/auto/HomeWidgetsPollService;->a:Landroid/os/Handler;

    new-instance v0, LB/b;

    const/4 v1, 0x6

    invoke-direct {v0, p0, v1}, LB/b;-><init>(Ljava/lang/Object;I)V

    iput-object v0, p0, Lcom/ex/auto/HomeWidgetsPollService;->q:LB/b;

    return-void
.end method


# virtual methods
.method public final a(Landroid/car/hardware/property/CarPropertyManager;IZ)V
    .locals 2

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/ex/auto/HomeWidgetsPollService;->n:Ljava/lang/Integer;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ex/auto/HomeWidgetsPollService;->o:Ljava/lang/Integer;

    :goto_0
    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_2

    :cond_1
    invoke-static {p1, p2}, LT/H1;->j(Landroid/car/hardware/property/CarPropertyManager;I)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, -0x1

    :goto_2
    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x4

    if-le v0, v1, :cond_3

    const/4 v0, 0x0

    :cond_3
    sget-object v1, LT/H1;->a:[I

    const-string v1, "cpm"

    invoke-static {p1, v1}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, 0x1540050b

    :try_start_0
    invoke-virtual {p1, v1, p2, v0}, Landroid/car/hardware/property/CarPropertyManager;->setIntProperty(III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p3, :cond_4

    iput-object p1, p0, Lcom/ex/auto/HomeWidgetsPollService;->n:Ljava/lang/Integer;

    goto :goto_3

    :cond_4
    iput-object p1, p0, Lcom/ex/auto/HomeWidgetsPollService;->o:Ljava/lang/Integer;

    :goto_3
    return-void
.end method

.method public final b(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 3

    const-string v0, "getString(...)"

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const v2, 0x22010101

    if-ne v1, v2, :cond_1

    const p1, 0x7f0f035a

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3

    :cond_1
    :goto_0
    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const v2, 0x22010102

    if-ne v1, v2, :cond_3

    const p1, 0x7f0f0359

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    :goto_1
    if-nez p1, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const v1, 0x22010103

    if-ne p1, v1, :cond_5

    const p1, 0x7f0f035c

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    :goto_2
    const-string p1, "\u2014"

    :goto_3
    return-object p1
.end method

.method public final c()V
    .locals 2

    :try_start_0
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.media.AudioManager"

    invoke-static {v0, v1}, LI0/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/media/AudioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->playSoundEffect(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final d(Landroid/appwidget/AppWidgetManager;)V
    .locals 3

    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/ex/auto/DriveRegenWidgetProvider;

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget v1, Lcom/ex/auto/DriveRegenWidgetProvider;->a:I

    iget-object v1, p0, Lcom/ex/auto/HomeWidgetsPollService;->d:Ljava/lang/Integer;

    iget-object v2, p0, Lcom/ex/auto/HomeWidgetsPollService;->e:Ljava/lang/Integer;

    invoke-static {p0, v1, v2}, LT/Y;->j(Landroid/content/Context;Ljava/lang/Integer;Ljava/lang/Integer;)Landroid/widget/RemoteViews;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/ex/auto/DriveModeVerticalWidgetProvider;

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget v1, Lcom/ex/auto/DriveModeVerticalWidgetProvider;->a:I

    iget-object v1, p0, Lcom/ex/auto/HomeWidgetsPollService;->d:Ljava/lang/Integer;

    invoke-static {p0, v1}, LT/Y;->f(Landroid/content/Context;Ljava/lang/Integer;)Landroid/widget/RemoteViews;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/ex/auto/RegenVerticalWidgetProvider;

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget v1, Lcom/ex/auto/RegenVerticalWidgetProvider;->a:I

    iget-object v1, p0, Lcom/ex/auto/HomeWidgetsPollService;->e:Ljava/lang/Integer;

    invoke-static {p0, v1}, LT/Y;->k(Landroid/content/Context;Ljava/lang/Integer;)Landroid/widget/RemoteViews;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    return-void
.end method

.method public final e(Landroid/appwidget/AppWidgetManager;)V
    .locals 3

    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/ex/auto/FanSpeedWidgetProvider;

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v1, Lcom/ex/auto/FanSpeedWidgetProvider;->a:[I

    iget-object v1, p0, Lcom/ex/auto/HomeWidgetsPollService;->f:Ljava/lang/Integer;

    const v2, 0x7f0c006c

    invoke-static {p0, v1, v2}, LT/Y;->g(Landroid/content/Context;Ljava/lang/Integer;I)Landroid/widget/RemoteViews;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/ex/auto/FanSpeedVerticalWidgetProvider;

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget v1, Lcom/ex/auto/FanSpeedVerticalWidgetProvider;->a:I

    iget-object v1, p0, Lcom/ex/auto/HomeWidgetsPollService;->f:Ljava/lang/Integer;

    const v2, 0x7f0c006e

    invoke-static {p0, v1, v2}, LT/Y;->g(Landroid/content/Context;Ljava/lang/Integer;I)Landroid/widget/RemoteViews;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    return-void
.end method

.method public final f(Landroid/appwidget/AppWidgetManager;)V
    .locals 8

    new-instance v7, LT/r1;

    iget-object v1, p0, Lcom/ex/auto/HomeWidgetsPollService;->k:Ljava/lang/Boolean;

    iget-object v2, p0, Lcom/ex/auto/HomeWidgetsPollService;->i:Ljava/lang/Boolean;

    iget-object v3, p0, Lcom/ex/auto/HomeWidgetsPollService;->l:Ljava/lang/Boolean;

    iget-object v4, p0, Lcom/ex/auto/HomeWidgetsPollService;->m:Ljava/lang/Boolean;

    iget-object v5, p0, Lcom/ex/auto/HomeWidgetsPollService;->n:Ljava/lang/Integer;

    iget-object v6, p0, Lcom/ex/auto/HomeWidgetsPollService;->o:Ljava/lang/Integer;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, LT/r1;-><init>(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;)V

    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/ex/auto/HeatingTestWidgetProvider;

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget v1, Lcom/ex/auto/HeatingTestWidgetProvider;->a:I

    invoke-static {p0, v7}, LT/Y;->e(Landroid/content/Context;LT/r1;)Landroid/widget/RemoteViews;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    return-void
.end method

.method public final g(Landroid/appwidget/AppWidgetManager;)V
    .locals 3

    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/ex/auto/TemperatureWidgetProvider;

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget v1, Lcom/ex/auto/TemperatureWidgetProvider;->a:I

    iget-object v1, p0, Lcom/ex/auto/HomeWidgetsPollService;->g:Ljava/lang/Float;

    const v2, 0x7f0c0077

    invoke-static {p0, v1, v2}, LT/q4;->b(Landroid/content/Context;Ljava/lang/Float;I)Landroid/widget/RemoteViews;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/ex/auto/TemperatureVerticalWidgetProvider;

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget v1, Lcom/ex/auto/TemperatureVerticalWidgetProvider;->a:I

    iget-object v1, p0, Lcom/ex/auto/HomeWidgetsPollService;->g:Ljava/lang/Float;

    const v2, 0x7f0c0079

    invoke-static {p0, v1, v2}, LT/q4;->b(Landroid/content/Context;Ljava/lang/Float;I)Landroid/widget/RemoteViews;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    return-void
.end method

.method public final h(Landroid/appwidget/AppWidgetManager;)V
    .locals 5

    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/ex/auto/HvacDirectionFanWidgetProvider;

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v1, Lcom/ex/auto/HvacDirectionFanWidgetProvider;->a:[I

    iget-object v1, p0, Lcom/ex/auto/HomeWidgetsPollService;->h:Ljava/lang/Integer;

    iget-object v2, p0, Lcom/ex/auto/HomeWidgetsPollService;->j:Ljava/lang/Boolean;

    iget-object v3, p0, Lcom/ex/auto/HomeWidgetsPollService;->f:Ljava/lang/Integer;

    iget-object v4, p0, Lcom/ex/auto/HomeWidgetsPollService;->p:Ljava/lang/Boolean;

    invoke-static {p0, v1, v2, v3, v4}, LT/Y;->i(Landroid/content/Context;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Boolean;)Landroid/widget/RemoteViews;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    return-void
.end method

.method public final i(Landroid/appwidget/AppWidgetManager;)V
    .locals 3

    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/ex/auto/HvacDirectionWidgetProvider;

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget v1, Lcom/ex/auto/HvacDirectionWidgetProvider;->a:I

    iget-object v1, p0, Lcom/ex/auto/HomeWidgetsPollService;->h:Ljava/lang/Integer;

    iget-object v2, p0, Lcom/ex/auto/HomeWidgetsPollService;->j:Ljava/lang/Boolean;

    invoke-static {p0, v1, v2}, LT/Y;->l(Landroid/content/Context;Ljava/lang/Integer;Ljava/lang/Boolean;)Landroid/widget/RemoteViews;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/ex/auto/HvacDirectionVerticalWidgetProvider;

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget v1, Lcom/ex/auto/HvacDirectionVerticalWidgetProvider;->a:I

    iget-object v1, p0, Lcom/ex/auto/HomeWidgetsPollService;->h:Ljava/lang/Integer;

    iget-object v2, p0, Lcom/ex/auto/HomeWidgetsPollService;->j:Ljava/lang/Boolean;

    invoke-static {p0, v1, v2}, LT/Y;->h(Landroid/content/Context;Ljava/lang/Integer;Ljava/lang/Boolean;)Landroid/widget/RemoteViews;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    return-void
.end method

.method public final j(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 3

    const-string v0, "getString(...)"

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const v2, 0x20020501

    if-ne v1, v2, :cond_1

    const p1, 0x7f0f0369

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3

    :cond_1
    :goto_0
    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const v2, 0x20020502

    if-ne v1, v2, :cond_3

    const p1, 0x7f0f036a

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    :goto_1
    if-nez p1, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const v1, 0x20020503

    if-ne p1, v1, :cond_5

    const p1, 0x7f0f0368

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    :goto_2
    const-string p1, "\u2014"

    :goto_3
    return-object p1
.end method

.method public final k(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x7f0c0068

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0902f6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance p1, Landroid/widget/Toast;

    invoke-direct {p1, p0}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/Toast;->setDuration(I)V

    invoke-virtual {p1, v0}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "showWheelToast: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "HomeWidgetsPoll"

    invoke-static {p1, v0, v1}, LM/d0;->n(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final l(Landroid/car/hardware/property/CarPropertyManager;I)V
    .locals 3

    iget-object v0, p0, Lcom/ex/auto/HomeWidgetsPollService;->f:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1

    :cond_0
    invoke-static {p1}, LT/H1;->e(Landroid/car/hardware/property/CarPropertyManager;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    :goto_1
    add-int/2addr p2, v0

    const/4 v1, 0x0

    const/4 v2, 0x7

    invoke-static {p2, v1, v2}, LA/b;->o(III)I

    move-result p2

    if-eq p2, v0, :cond_2

    invoke-static {p1, p2}, LT/H1;->s(Landroid/car/hardware/property/CarPropertyManager;I)V

    :cond_2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/ex/auto/HomeWidgetsPollService;->f:Ljava/lang/Integer;

    return-void
.end method

.method public final m(Landroid/car/hardware/property/CarPropertyManager;F)V
    .locals 3

    iget-object v0, p0, Lcom/ex/auto/HomeWidgetsPollService;->g:Ljava/lang/Float;

    if-eqz v0, :cond_0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_1

    :cond_0
    invoke-static {p1}, LT/H1;->k(Landroid/car/hardware/property/CarPropertyManager;)Ljava/lang/Float;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/high16 v0, 0x41b00000    # 22.0f

    :goto_1
    add-float/2addr p2, v0

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    int-to-float p2, p2

    const/high16 v1, 0x41880000    # 17.0f

    const/high16 v2, 0x42000000    # 32.0f

    invoke-static {p2, v1, v2}, LA/b;->n(FFF)F

    move-result p2

    cmpg-float v0, p2, v0

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    sget-object v0, LT/H1;->a:[I

    const-string v0, "cpm"

    invoke-static {p1, v0}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    const v1, 0x25401036

    :try_start_0
    invoke-virtual {p1, v1, v0, p2}, Landroid/car/hardware/property/CarPropertyManager;->setFloatProperty(IIF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    const/4 v0, 0x4

    :try_start_1
    invoke-virtual {p1, v1, v0, p2}, Landroid/car/hardware/property/CarPropertyManager;->setFloatProperty(IIF)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    :goto_2
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/ex/auto/HomeWidgetsPollService;->g:Ljava/lang/Float;

    return-void
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public final onCreate()V
    .locals 4

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    :try_start_0
    new-instance v0, LT/s1;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, LT/s1;-><init>(Landroid/content/ContextWrapper;I)V

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-static {p0, v1, v2, v3, v0}, Landroid/car/Car;->createCar(Landroid/content/Context;Landroid/os/Handler;JLandroid/car/Car$CarServiceLifecycleListener;)Landroid/car/Car;

    move-result-object v0

    iput-object v0, p0, Lcom/ex/auto/HomeWidgetsPollService;->b:Landroid/car/Car;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "connectCar: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "HomeWidgetsPoll"

    invoke-static {v0, v1, v2}, LM/d0;->n(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/ex/auto/HomeWidgetsPollService;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/ex/auto/HomeWidgetsPollService;->q:LB/b;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    iget-object v0, p0, Lcom/ex/auto/HomeWidgetsPollService;->a:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :try_start_0
    iget-object v0, p0, Lcom/ex/auto/HomeWidgetsPollService;->b:Landroid/car/Car;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/car/Car;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    iput-object v1, p0, Lcom/ex/auto/HomeWidgetsPollService;->b:Landroid/car/Car;

    iput-object v1, p0, Lcom/ex/auto/HomeWidgetsPollService;->c:Landroid/car/hardware/property/CarPropertyManager;

    return-void
.end method

.method public final onStartCommand(Landroid/content/Intent;II)I
    .locals 16

    move-object/from16 v0, p0

    const/4 v1, 0x1

    const/4 v2, 0x4

    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const-string v4, "com.ex.auto.widget.REFRESH_OPACITY"

    invoke-static {v3, v4}, LI0/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x2

    if-eqz v4, :cond_1

    invoke-static/range {p0 .. p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    invoke-static {v1}, LI0/f;->b(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/ex/auto/HomeWidgetsPollService;->d(Landroid/appwidget/AppWidgetManager;)V

    invoke-virtual {v0, v1}, Lcom/ex/auto/HomeWidgetsPollService;->e(Landroid/appwidget/AppWidgetManager;)V

    invoke-virtual {v0, v1}, Lcom/ex/auto/HomeWidgetsPollService;->g(Landroid/appwidget/AppWidgetManager;)V

    invoke-virtual {v0, v1}, Lcom/ex/auto/HomeWidgetsPollService;->i(Landroid/appwidget/AppWidgetManager;)V

    invoke-virtual {v0, v1}, Lcom/ex/auto/HomeWidgetsPollService;->h(Landroid/appwidget/AppWidgetManager;)V

    invoke-virtual {v0, v1}, Lcom/ex/auto/HomeWidgetsPollService;->f(Landroid/appwidget/AppWidgetManager;)V

    goto/16 :goto_12

    :cond_1
    const-string v4, "com.ex.auto.widget.WHEEL_MODE_ENTERED"

    invoke-static {v3, v4}, LI0/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/ex/auto/HomeWidgetsPollService;->c()V

    goto/16 :goto_12

    :cond_2
    const-string v4, "com.ex.auto.widget.WHEEL_MODE_EXITED"

    invoke-static {v3, v4}, LI0/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    iget-object v6, v0, Lcom/ex/auto/HomeWidgetsPollService;->a:Landroid/os/Handler;

    if-eqz v4, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/ex/auto/HomeWidgetsPollService;->c()V

    new-instance v1, LT/T0;

    invoke-direct {v1, v0, v2}, LT/T0;-><init>(Ljava/lang/Object;I)V

    const-wide/16 v2, 0x8c

    invoke-virtual {v6, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_12

    :cond_3
    if-eqz v3, :cond_33

    iget-object v4, v0, Lcom/ex/auto/HomeWidgetsPollService;->c:Landroid/car/hardware/property/CarPropertyManager;

    if-nez v4, :cond_4

    goto/16 :goto_12

    :cond_4
    invoke-static/range {p0 .. p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v7

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v8

    const/4 v9, 0x0

    const v10, 0x7f0f0160

    const v12, 0x7f0f01a8

    const v13, 0x7f0f029d

    const v14, 0x7f0f0188

    const/4 v15, -0x1

    const-string v11, "getString(...)"

    sparse-switch v8, :sswitch_data_0

    goto/16 :goto_12

    :sswitch_0
    const-string v2, "com.ex.auto.widget.WHEEL_HEAT_TOGGLE"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto/16 :goto_12

    :cond_5
    iget-object v2, v0, Lcom/ex/auto/HomeWidgetsPollService;->k:Ljava/lang/Boolean;

    if-eqz v2, :cond_6

    :goto_1
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_2

    :cond_6
    invoke-static {v4}, LT/H1;->m(Landroid/car/hardware/property/CarPropertyManager;)Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_7

    goto :goto_1

    :cond_7
    move v2, v9

    :goto_2
    xor-int/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, v0, Lcom/ex/auto/HomeWidgetsPollService;->k:Ljava/lang/Boolean;

    sget-object v3, LT/H1;->a:[I

    sget-object v3, LT/H1;->l:[I

    array-length v8, v3

    :goto_3
    if-ge v9, v8, :cond_8

    aget v10, v3, v9

    const v11, 0x1140050d

    :try_start_0
    invoke-virtual {v4, v11, v10, v2}, Landroid/car/hardware/property/CarPropertyManager;->setIntProperty(III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :catchall_0
    add-int/2addr v9, v1

    goto :goto_3

    :cond_8
    :goto_4
    invoke-static {v7}, LI0/f;->b(Ljava/lang/Object;)V

    invoke-virtual {v0, v7}, Lcom/ex/auto/HomeWidgetsPollService;->f(Landroid/appwidget/AppWidgetManager;)V

    goto/16 :goto_11

    :sswitch_1
    const-string v1, "com.ex.auto.widget.FAN_MINUS"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    goto/16 :goto_12

    :cond_9
    invoke-virtual {v0, v4, v15}, Lcom/ex/auto/HomeWidgetsPollService;->l(Landroid/car/hardware/property/CarPropertyManager;I)V

    invoke-static {v7}, LI0/f;->b(Ljava/lang/Object;)V

    invoke-virtual {v0, v7}, Lcom/ex/auto/HomeWidgetsPollService;->e(Landroid/appwidget/AppWidgetManager;)V

    invoke-virtual {v0, v7}, Lcom/ex/auto/HomeWidgetsPollService;->h(Landroid/appwidget/AppWidgetManager;)V

    iget-object v1, v0, Lcom/ex/auto/HomeWidgetsPollService;->f:Ljava/lang/Integer;

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v9

    :cond_a
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v14, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v11}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/ex/auto/HomeWidgetsPollService;->k(Ljava/lang/String;)V

    goto/16 :goto_11

    :sswitch_2
    const-string v1, "com.ex.auto.widget.REGEN_MID"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    goto/16 :goto_12

    :cond_b
    const v1, 0x20020502

    invoke-static {v0, v4, v1}, LT/H1;->u(Landroid/app/Service;Landroid/car/hardware/property/CarPropertyManager;I)V

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/ex/auto/HomeWidgetsPollService;->e:Ljava/lang/Integer;

    invoke-static {v7}, LI0/f;->b(Ljava/lang/Object;)V

    invoke-virtual {v0, v7}, Lcom/ex/auto/HomeWidgetsPollService;->d(Landroid/appwidget/AppWidgetManager;)V

    goto/16 :goto_11

    :sswitch_3
    const-string v1, "com.ex.auto.widget.REGEN_LOW"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    goto/16 :goto_12

    :cond_c
    const v1, 0x20020501

    invoke-static {v0, v4, v1}, LT/H1;->u(Landroid/app/Service;Landroid/car/hardware/property/CarPropertyManager;I)V

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/ex/auto/HomeWidgetsPollService;->e:Ljava/lang/Integer;

    invoke-static {v7}, LI0/f;->b(Ljava/lang/Object;)V

    invoke-virtual {v0, v7}, Lcom/ex/auto/HomeWidgetsPollService;->d(Landroid/appwidget/AppWidgetManager;)V

    goto/16 :goto_11

    :sswitch_4
    const-string v1, "com.ex.auto.widget.SEAT_HEAT_PASSENGER_CYCLE"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    goto/16 :goto_12

    :cond_d
    invoke-virtual {v0, v4, v2, v9}, Lcom/ex/auto/HomeWidgetsPollService;->a(Landroid/car/hardware/property/CarPropertyManager;IZ)V

    invoke-static {v7}, LI0/f;->b(Ljava/lang/Object;)V

    invoke-virtual {v0, v7}, Lcom/ex/auto/HomeWidgetsPollService;->f(Landroid/appwidget/AppWidgetManager;)V

    goto/16 :goto_11

    :sswitch_5
    const-string v2, "com.ex.auto.widget.SEAT_HEAT_DRIVER_CYCLE"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    goto/16 :goto_12

    :cond_e
    invoke-virtual {v0, v4, v1, v1}, Lcom/ex/auto/HomeWidgetsPollService;->a(Landroid/car/hardware/property/CarPropertyManager;IZ)V

    invoke-static {v7}, LI0/f;->b(Ljava/lang/Object;)V

    invoke-virtual {v0, v7}, Lcom/ex/auto/HomeWidgetsPollService;->f(Landroid/appwidget/AppWidgetManager;)V

    goto/16 :goto_11

    :sswitch_6
    const-string v1, "com.ex.auto.widget.VENT_FLOOR_WINDSHIELD"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    goto/16 :goto_12

    :cond_f
    const/4 v1, 0x6

    invoke-static {v4, v1}, LT/H1;->v(Landroid/car/hardware/property/CarPropertyManager;I)V

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/ex/auto/HomeWidgetsPollService;->h:Ljava/lang/Integer;

    invoke-static {v7}, LI0/f;->b(Ljava/lang/Object;)V

    invoke-virtual {v0, v7}, Lcom/ex/auto/HomeWidgetsPollService;->i(Landroid/appwidget/AppWidgetManager;)V

    invoke-virtual {v0, v7}, Lcom/ex/auto/HomeWidgetsPollService;->h(Landroid/appwidget/AppWidgetManager;)V

    goto/16 :goto_11

    :sswitch_7
    const-string v1, "com.ex.auto.widget.VENT_PREV"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    goto/16 :goto_12

    :cond_10
    sget-object v1, LT/H1;->b:[I

    iget-object v2, v0, Lcom/ex/auto/HomeWidgetsPollService;->h:Ljava/lang/Integer;

    invoke-static {v1, v2, v15}, LT/H1;->p([ILjava/lang/Integer;I)I

    move-result v2

    aget v1, v1, v2

    invoke-static {v4, v1}, LT/H1;->v(Landroid/car/hardware/property/CarPropertyManager;I)V

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/ex/auto/HomeWidgetsPollService;->h:Ljava/lang/Integer;

    invoke-static {v7}, LI0/f;->b(Ljava/lang/Object;)V

    invoke-virtual {v0, v7}, Lcom/ex/auto/HomeWidgetsPollService;->i(Landroid/appwidget/AppWidgetManager;)V

    invoke-virtual {v0, v7}, Lcom/ex/auto/HomeWidgetsPollService;->h(Landroid/appwidget/AppWidgetManager;)V

    goto/16 :goto_11

    :sswitch_8
    const-string v2, "com.ex.auto.widget.VENT_NEXT"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    goto/16 :goto_12

    :cond_11
    sget-object v2, LT/H1;->b:[I

    iget-object v3, v0, Lcom/ex/auto/HomeWidgetsPollService;->h:Ljava/lang/Integer;

    invoke-static {v2, v3, v1}, LT/H1;->p([ILjava/lang/Integer;I)I

    move-result v1

    aget v1, v2, v1

    invoke-static {v4, v1}, LT/H1;->v(Landroid/car/hardware/property/CarPropertyManager;I)V

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/ex/auto/HomeWidgetsPollService;->h:Ljava/lang/Integer;

    invoke-static {v7}, LI0/f;->b(Ljava/lang/Object;)V

    invoke-virtual {v0, v7}, Lcom/ex/auto/HomeWidgetsPollService;->i(Landroid/appwidget/AppWidgetManager;)V

    invoke-virtual {v0, v7}, Lcom/ex/auto/HomeWidgetsPollService;->h(Landroid/appwidget/AppWidgetManager;)V

    goto/16 :goto_11

    :sswitch_9
    const-string v2, "com.ex.auto.widget.VENT_FACE"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    goto/16 :goto_12

    :cond_12
    invoke-static {v4, v1}, LT/H1;->v(Landroid/car/hardware/property/CarPropertyManager;I)V

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/ex/auto/HomeWidgetsPollService;->h:Ljava/lang/Integer;

    invoke-static {v7}, LI0/f;->b(Ljava/lang/Object;)V

    invoke-virtual {v0, v7}, Lcom/ex/auto/HomeWidgetsPollService;->i(Landroid/appwidget/AppWidgetManager;)V

    invoke-virtual {v0, v7}, Lcom/ex/auto/HomeWidgetsPollService;->h(Landroid/appwidget/AppWidgetManager;)V

    goto/16 :goto_11

    :sswitch_a
    const-string v1, "com.ex.auto.widget.DRIVE_ECO"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    goto/16 :goto_12

    :cond_13
    const v1, 0x22010101

    invoke-static {v0, v4, v1}, LT/H1;->r(Landroid/app/Service;Landroid/car/hardware/property/CarPropertyManager;I)V

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/ex/auto/HomeWidgetsPollService;->d:Ljava/lang/Integer;

    invoke-static {v7}, LI0/f;->b(Ljava/lang/Object;)V

    invoke-virtual {v0, v7}, Lcom/ex/auto/HomeWidgetsPollService;->d(Landroid/appwidget/AppWidgetManager;)V

    goto/16 :goto_11

    :sswitch_b
    const-string v1, "com.ex.auto.widget.REGEN_PREV"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    goto/16 :goto_12

    :cond_14
    sget-object v1, LT/H1;->d:[I

    iget-object v2, v0, Lcom/ex/auto/HomeWidgetsPollService;->e:Ljava/lang/Integer;

    invoke-static {v1, v2, v15}, LT/H1;->p([ILjava/lang/Integer;I)I

    move-result v2

    aget v1, v1, v2

    invoke-static {v0, v4, v1}, LT/H1;->u(Landroid/app/Service;Landroid/car/hardware/property/CarPropertyManager;I)V

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/ex/auto/HomeWidgetsPollService;->e:Ljava/lang/Integer;

    invoke-static {v7}, LI0/f;->b(Ljava/lang/Object;)V

    invoke-virtual {v0, v7}, Lcom/ex/auto/HomeWidgetsPollService;->d(Landroid/appwidget/AppWidgetManager;)V

    iget-object v1, v0, Lcom/ex/auto/HomeWidgetsPollService;->e:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/ex/auto/HomeWidgetsPollService;->j(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v13, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v11}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/ex/auto/HomeWidgetsPollService;->k(Ljava/lang/String;)V

    goto/16 :goto_11

    :sswitch_c
    const-string v2, "com.ex.auto.widget.REGEN_NEXT"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15

    goto/16 :goto_12

    :cond_15
    sget-object v2, LT/H1;->d:[I

    iget-object v3, v0, Lcom/ex/auto/HomeWidgetsPollService;->e:Ljava/lang/Integer;

    invoke-static {v2, v3, v1}, LT/H1;->p([ILjava/lang/Integer;I)I

    move-result v1

    aget v1, v2, v1

    invoke-static {v0, v4, v1}, LT/H1;->u(Landroid/app/Service;Landroid/car/hardware/property/CarPropertyManager;I)V

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/ex/auto/HomeWidgetsPollService;->e:Ljava/lang/Integer;

    invoke-static {v7}, LI0/f;->b(Ljava/lang/Object;)V

    invoke-virtual {v0, v7}, Lcom/ex/auto/HomeWidgetsPollService;->d(Landroid/appwidget/AppWidgetManager;)V

    iget-object v1, v0, Lcom/ex/auto/HomeWidgetsPollService;->e:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/ex/auto/HomeWidgetsPollService;->j(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v13, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v11}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/ex/auto/HomeWidgetsPollService;->k(Ljava/lang/String;)V

    goto/16 :goto_11

    :sswitch_d
    const-string v1, "com.ex.auto.widget.REGEN_HIGH"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    goto/16 :goto_12

    :cond_16
    const v1, 0x20020503

    invoke-static {v0, v4, v1}, LT/H1;->u(Landroid/app/Service;Landroid/car/hardware/property/CarPropertyManager;I)V

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/ex/auto/HomeWidgetsPollService;->e:Ljava/lang/Integer;

    invoke-static {v7}, LI0/f;->b(Ljava/lang/Object;)V

    invoke-virtual {v0, v7}, Lcom/ex/auto/HomeWidgetsPollService;->d(Landroid/appwidget/AppWidgetManager;)V

    goto/16 :goto_11

    :sswitch_e
    const-string v1, "com.ex.auto.widget.VENT_FLOOR"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    goto/16 :goto_12

    :cond_17
    invoke-static {v4, v5}, LT/H1;->v(Landroid/car/hardware/property/CarPropertyManager;I)V

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/ex/auto/HomeWidgetsPollService;->h:Ljava/lang/Integer;

    invoke-static {v7}, LI0/f;->b(Ljava/lang/Object;)V

    invoke-virtual {v0, v7}, Lcom/ex/auto/HomeWidgetsPollService;->i(Landroid/appwidget/AppWidgetManager;)V

    invoke-virtual {v0, v7}, Lcom/ex/auto/HomeWidgetsPollService;->h(Landroid/appwidget/AppWidgetManager;)V

    goto/16 :goto_11

    :sswitch_f
    const-string v1, "com.ex.auto.widget.DRIVE_COMFORT"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    goto/16 :goto_12

    :cond_18
    const v1, 0x22010102

    invoke-static {v0, v4, v1}, LT/H1;->r(Landroid/app/Service;Landroid/car/hardware/property/CarPropertyManager;I)V

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/ex/auto/HomeWidgetsPollService;->d:Ljava/lang/Integer;

    invoke-static {v7}, LI0/f;->b(Ljava/lang/Object;)V

    invoke-virtual {v0, v7}, Lcom/ex/auto/HomeWidgetsPollService;->d(Landroid/appwidget/AppWidgetManager;)V

    goto/16 :goto_11

    :sswitch_10
    const-string v2, "com.ex.auto.widget.REAR_DEFROST_TOGGLE"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    goto/16 :goto_12

    :cond_19
    iget-object v2, v0, Lcom/ex/auto/HomeWidgetsPollService;->i:Ljava/lang/Boolean;

    if-eqz v2, :cond_1a

    :goto_5
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    goto :goto_6

    :cond_1a
    invoke-static {v4}, LT/H1;->h(Landroid/car/hardware/property/CarPropertyManager;)Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_1b

    goto :goto_5

    :cond_1b
    :goto_6
    xor-int/2addr v1, v9

    sget-object v2, LT/H1;->a:[I

    const v2, 0x15200514

    :try_start_1
    invoke-virtual {v4, v2, v5, v1}, Landroid/car/hardware/property/CarPropertyManager;->setBooleanProperty(IIZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/ex/auto/HomeWidgetsPollService;->i:Ljava/lang/Boolean;

    invoke-static {v7}, LI0/f;->b(Ljava/lang/Object;)V

    invoke-virtual {v0, v7}, Lcom/ex/auto/HomeWidgetsPollService;->f(Landroid/appwidget/AppWidgetManager;)V

    goto/16 :goto_11

    :sswitch_11
    const-string v1, "com.ex.auto.widget.TEMP_PLUS"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    goto/16 :goto_12

    :cond_1c
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v4, v1}, Lcom/ex/auto/HomeWidgetsPollService;->m(Landroid/car/hardware/property/CarPropertyManager;F)V

    invoke-static {v7}, LI0/f;->b(Ljava/lang/Object;)V

    invoke-virtual {v0, v7}, Lcom/ex/auto/HomeWidgetsPollService;->g(Landroid/appwidget/AppWidgetManager;)V

    iget-object v1, v0, Lcom/ex/auto/HomeWidgetsPollService;->g:Ljava/lang/Float;

    if-eqz v1, :cond_1d

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    goto :goto_7

    :cond_1d
    const/4 v1, 0x0

    :goto_7
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v12, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v11}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/ex/auto/HomeWidgetsPollService;->k(Ljava/lang/String;)V

    goto/16 :goto_11

    :sswitch_12
    const-string v1, "com.ex.auto.widget.DRIVE_SPORT"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    goto/16 :goto_12

    :cond_1e
    const v1, 0x22010103

    invoke-static {v0, v4, v1}, LT/H1;->r(Landroid/app/Service;Landroid/car/hardware/property/CarPropertyManager;I)V

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/ex/auto/HomeWidgetsPollService;->d:Ljava/lang/Integer;

    invoke-static {v7}, LI0/f;->b(Ljava/lang/Object;)V

    invoke-virtual {v0, v7}, Lcom/ex/auto/HomeWidgetsPollService;->d(Landroid/appwidget/AppWidgetManager;)V

    goto/16 :goto_11

    :sswitch_13
    const-string v1, "com.ex.auto.widget.TEMP_MINUS"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    goto/16 :goto_12

    :cond_1f
    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {v0, v4, v1}, Lcom/ex/auto/HomeWidgetsPollService;->m(Landroid/car/hardware/property/CarPropertyManager;F)V

    invoke-static {v7}, LI0/f;->b(Ljava/lang/Object;)V

    invoke-virtual {v0, v7}, Lcom/ex/auto/HomeWidgetsPollService;->g(Landroid/appwidget/AppWidgetManager;)V

    iget-object v1, v0, Lcom/ex/auto/HomeWidgetsPollService;->g:Ljava/lang/Float;

    if-eqz v1, :cond_20

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    goto :goto_8

    :cond_20
    const/4 v1, 0x0

    :goto_8
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v12, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v11}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/ex/auto/HomeWidgetsPollService;->k(Ljava/lang/String;)V

    goto/16 :goto_11

    :sswitch_14
    const-string v2, "com.ex.auto.widget.AC_TOGGLE"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_21

    goto/16 :goto_12

    :cond_21
    iget-object v2, v0, Lcom/ex/auto/HomeWidgetsPollService;->p:Ljava/lang/Boolean;

    if-eqz v2, :cond_22

    :goto_9
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    goto :goto_a

    :cond_22
    invoke-static {v4}, LT/H1;->d(Landroid/car/hardware/property/CarPropertyManager;)Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_23

    goto :goto_9

    :cond_23
    :goto_a
    xor-int/2addr v1, v9

    invoke-static {v4, v1}, LT/H1;->q(Landroid/car/hardware/property/CarPropertyManager;Z)V

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/ex/auto/HomeWidgetsPollService;->p:Ljava/lang/Boolean;

    invoke-static {v7}, LI0/f;->b(Ljava/lang/Object;)V

    invoke-virtual {v0, v7}, Lcom/ex/auto/HomeWidgetsPollService;->h(Landroid/appwidget/AppWidgetManager;)V

    goto/16 :goto_11

    :sswitch_15
    const-string v2, "com.ex.auto.widget.WINDSHIELD_HEAT_TOGGLE"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_24

    goto/16 :goto_12

    :cond_24
    iget-object v2, v0, Lcom/ex/auto/HomeWidgetsPollService;->m:Ljava/lang/Boolean;

    if-eqz v2, :cond_25

    :goto_b
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    goto :goto_c

    :cond_25
    invoke-static {v4}, LT/H1;->n(Landroid/car/hardware/property/CarPropertyManager;)Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_26

    goto :goto_b

    :cond_26
    :goto_c
    xor-int/2addr v1, v9

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v0, Lcom/ex/auto/HomeWidgetsPollService;->m:Ljava/lang/Boolean;

    sget-object v2, LT/H1;->a:[I

    const v2, 0x10200c00

    const/16 v3, 0x75

    :try_start_2
    invoke-virtual {v4, v2, v3, v1}, Landroid/car/hardware/property/CarPropertyManager;->setBooleanProperty(IIZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :catchall_2
    invoke-static {v7}, LI0/f;->b(Ljava/lang/Object;)V

    invoke-virtual {v0, v7}, Lcom/ex/auto/HomeWidgetsPollService;->f(Landroid/appwidget/AppWidgetManager;)V

    goto/16 :goto_11

    :sswitch_16
    const-string v2, "com.ex.auto.widget.RECIRC_TOGGLE"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_27

    goto/16 :goto_12

    :cond_27
    iget-object v2, v0, Lcom/ex/auto/HomeWidgetsPollService;->j:Ljava/lang/Boolean;

    if-eqz v2, :cond_28

    :goto_d
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    goto :goto_e

    :cond_28
    invoke-static {v4}, LT/H1;->i(Landroid/car/hardware/property/CarPropertyManager;)Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_29

    goto :goto_d

    :cond_29
    :goto_e
    xor-int/2addr v1, v9

    invoke-static {v4, v1}, LT/H1;->t(Landroid/car/hardware/property/CarPropertyManager;Z)V

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/ex/auto/HomeWidgetsPollService;->j:Ljava/lang/Boolean;

    invoke-static {v7}, LI0/f;->b(Ljava/lang/Object;)V

    invoke-virtual {v0, v7}, Lcom/ex/auto/HomeWidgetsPollService;->i(Landroid/appwidget/AppWidgetManager;)V

    invoke-virtual {v0, v7}, Lcom/ex/auto/HomeWidgetsPollService;->h(Landroid/appwidget/AppWidgetManager;)V

    goto/16 :goto_11

    :sswitch_17
    const-string v2, "com.ex.auto.widget.FAN_PLUS"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2a

    goto/16 :goto_12

    :cond_2a
    invoke-virtual {v0, v4, v1}, Lcom/ex/auto/HomeWidgetsPollService;->l(Landroid/car/hardware/property/CarPropertyManager;I)V

    invoke-static {v7}, LI0/f;->b(Ljava/lang/Object;)V

    invoke-virtual {v0, v7}, Lcom/ex/auto/HomeWidgetsPollService;->e(Landroid/appwidget/AppWidgetManager;)V

    invoke-virtual {v0, v7}, Lcom/ex/auto/HomeWidgetsPollService;->h(Landroid/appwidget/AppWidgetManager;)V

    iget-object v1, v0, Lcom/ex/auto/HomeWidgetsPollService;->f:Ljava/lang/Integer;

    if-eqz v1, :cond_2b

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v9

    :cond_2b
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v14, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v11}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/ex/auto/HomeWidgetsPollService;->k(Ljava/lang/String;)V

    goto/16 :goto_11

    :sswitch_18
    const-string v1, "com.ex.auto.widget.VENT_WINDSHIELD"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2c

    goto/16 :goto_12

    :cond_2c
    invoke-static {v4, v2}, LT/H1;->v(Landroid/car/hardware/property/CarPropertyManager;I)V

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/ex/auto/HomeWidgetsPollService;->h:Ljava/lang/Integer;

    invoke-static {v7}, LI0/f;->b(Ljava/lang/Object;)V

    invoke-virtual {v0, v7}, Lcom/ex/auto/HomeWidgetsPollService;->i(Landroid/appwidget/AppWidgetManager;)V

    invoke-virtual {v0, v7}, Lcom/ex/auto/HomeWidgetsPollService;->h(Landroid/appwidget/AppWidgetManager;)V

    goto/16 :goto_11

    :sswitch_19
    const-string v2, "com.ex.auto.widget.FRONT_MAX_DEFROST_TOGGLE"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2d

    goto/16 :goto_12

    :cond_2d
    iget-object v2, v0, Lcom/ex/auto/HomeWidgetsPollService;->l:Ljava/lang/Boolean;

    if-eqz v2, :cond_2e

    :goto_f
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    goto :goto_10

    :cond_2e
    invoke-static {v4}, LT/H1;->f(Landroid/car/hardware/property/CarPropertyManager;)Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_2f

    goto :goto_f

    :cond_2f
    :goto_10
    xor-int/lit8 v2, v9, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, v0, Lcom/ex/auto/HomeWidgetsPollService;->l:Ljava/lang/Boolean;

    sget-object v3, LT/H1;->a:[I

    const v3, 0x15200507

    :try_start_3
    invoke-virtual {v4, v3, v1, v2}, Landroid/car/hardware/property/CarPropertyManager;->setBooleanProperty(IIZ)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :catchall_3
    invoke-static {v7}, LI0/f;->b(Ljava/lang/Object;)V

    invoke-virtual {v0, v7}, Lcom/ex/auto/HomeWidgetsPollService;->f(Landroid/appwidget/AppWidgetManager;)V

    goto/16 :goto_11

    :sswitch_1a
    const-string v1, "com.ex.auto.widget.VENT_FACE_FLOOR"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_30

    goto/16 :goto_12

    :cond_30
    const/4 v1, 0x3

    invoke-static {v4, v1}, LT/H1;->v(Landroid/car/hardware/property/CarPropertyManager;I)V

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/ex/auto/HomeWidgetsPollService;->h:Ljava/lang/Integer;

    invoke-static {v7}, LI0/f;->b(Ljava/lang/Object;)V

    invoke-virtual {v0, v7}, Lcom/ex/auto/HomeWidgetsPollService;->i(Landroid/appwidget/AppWidgetManager;)V

    invoke-virtual {v0, v7}, Lcom/ex/auto/HomeWidgetsPollService;->h(Landroid/appwidget/AppWidgetManager;)V

    goto :goto_11

    :sswitch_1b
    const-string v1, "com.ex.auto.widget.DRIVE_PREV"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_31

    goto :goto_12

    :cond_31
    sget-object v1, LT/H1;->c:[I

    iget-object v2, v0, Lcom/ex/auto/HomeWidgetsPollService;->d:Ljava/lang/Integer;

    invoke-static {v1, v2, v15}, LT/H1;->p([ILjava/lang/Integer;I)I

    move-result v2

    aget v1, v1, v2

    invoke-static {v0, v4, v1}, LT/H1;->r(Landroid/app/Service;Landroid/car/hardware/property/CarPropertyManager;I)V

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/ex/auto/HomeWidgetsPollService;->d:Ljava/lang/Integer;

    invoke-static {v7}, LI0/f;->b(Ljava/lang/Object;)V

    invoke-virtual {v0, v7}, Lcom/ex/auto/HomeWidgetsPollService;->d(Landroid/appwidget/AppWidgetManager;)V

    iget-object v1, v0, Lcom/ex/auto/HomeWidgetsPollService;->d:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/ex/auto/HomeWidgetsPollService;->b(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v10, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v11}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/ex/auto/HomeWidgetsPollService;->k(Ljava/lang/String;)V

    goto :goto_11

    :sswitch_1c
    const-string v2, "com.ex.auto.widget.DRIVE_NEXT"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_32

    goto :goto_12

    :cond_32
    sget-object v2, LT/H1;->c:[I

    iget-object v3, v0, Lcom/ex/auto/HomeWidgetsPollService;->d:Ljava/lang/Integer;

    invoke-static {v2, v3, v1}, LT/H1;->p([ILjava/lang/Integer;I)I

    move-result v1

    aget v1, v2, v1

    invoke-static {v0, v4, v1}, LT/H1;->r(Landroid/app/Service;Landroid/car/hardware/property/CarPropertyManager;I)V

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/ex/auto/HomeWidgetsPollService;->d:Ljava/lang/Integer;

    invoke-static {v7}, LI0/f;->b(Ljava/lang/Object;)V

    invoke-virtual {v0, v7}, Lcom/ex/auto/HomeWidgetsPollService;->d(Landroid/appwidget/AppWidgetManager;)V

    iget-object v1, v0, Lcom/ex/auto/HomeWidgetsPollService;->d:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/ex/auto/HomeWidgetsPollService;->b(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v10, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v11}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/ex/auto/HomeWidgetsPollService;->k(Ljava/lang/String;)V

    :goto_11
    invoke-virtual/range {p0 .. p0}, Lcom/ex/auto/HomeWidgetsPollService;->c()V

    iget-object v1, v0, Lcom/ex/auto/HomeWidgetsPollService;->q:LB/b;

    invoke-virtual {v6, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v6, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_33
    :goto_12
    return v5

    :sswitch_data_0
    .sparse-switch
        -0x7d170a7f -> :sswitch_1c
        -0x7d15f33f -> :sswitch_1b
        -0x79a167e5 -> :sswitch_1a
        -0x78bc9446 -> :sswitch_19
        -0x713635fe -> :sswitch_18
        -0x67c00581 -> :sswitch_17
        -0x5308b810 -> :sswitch_16
        -0x4b46c9f2 -> :sswitch_15
        -0x35606de8 -> :sswitch_14
        -0x327c1702 -> :sswitch_13
        -0x257ef17a -> :sswitch_12
        -0x22a7c0d4 -> :sswitch_11
        -0x15ccf06e -> :sswitch_10
        -0x11c2b3a2 -> :sswitch_f
        -0xed05f45 -> :sswitch_e
        0x13c0295d -> :sswitch_d
        0x13c2d6ae -> :sswitch_c
        0x13c3edee -> :sswitch_b
        0x14bd0f23 -> :sswitch_a
        0x419603ae -> :sswitch_9
        0x4199b844 -> :sswitch_8
        0x419acf84 -> :sswitch_7
        0x44661775 -> :sswitch_6
        0x47c53f7d -> :sswitch_5
        0x48c8a473 -> :sswitch_4
        0x63bbf019 -> :sswitch_3
        0x63bbf30d -> :sswitch_2
        0x6f93980b -> :sswitch_1
        0x71967a86 -> :sswitch_0
    .end sparse-switch
.end method
