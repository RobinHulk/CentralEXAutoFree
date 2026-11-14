.class public Lcom/ex/auto/VhalProviderService;
.super Landroid/app/Service;
.source "SourceFile"


# static fields
.field public static volatile j:Z

.field public static volatile k:I


# instance fields
.field public a:Landroid/car/Car;

.field public b:LT/G4;

.field public c:Ljava/net/ServerSocket;

.field public volatile d:Z

.field public e:LT/S0;

.field public f:LT/L4;

.field public g:LT/S0;

.field public h:LT/R0;

.field public volatile i:LT/F4;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method public static a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Float;FF)V
    .locals 2

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/Float;->isNaN()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Ljava/lang/Float;->isInfinite()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    cmpg-float p3, v0, p3

    if-ltz p3, :cond_1

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p3

    cmpl-float p3, p3, p4

    if-lez p3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    float-to-double p2, p2

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    mul-double/2addr p2, v0

    invoke-static {p2, p3}, Ljava/lang/Math;->round(D)J

    move-result-wide p2

    long-to-double p2, p2

    div-double/2addr p2, v0

    invoke-virtual {p0, p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    :cond_1
    :goto_0
    return-void
.end method

.method public static b(Landroid/content/Context;Z)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ex/auto/VhalProviderService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-void
.end method


# virtual methods
.method public final c()Ljava/lang/String;
    .locals 10

    iget-object v0, p0, Lcom/ex/auto/VhalProviderService;->i:LT/F4;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "speed"

    iget-object v4, v0, LT/F4;->a:Ljava/lang/Float;

    const/high16 v5, 0x43a00000    # 320.0f

    const/4 v6, 0x0

    invoke-static {v2, v3, v4, v6, v5}, Lcom/ex/auto/VhalProviderService;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Float;FF)V

    iget-object v3, v0, LT/F4;->b:Ljava/lang/Integer;

    if-eqz v3, :cond_1

    const-string v4, "gear"

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-float v3, v3

    float-to-int v3, v3

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_1
    iget-object v3, v0, LT/F4;->c:Ljava/lang/String;

    if-eqz v3, :cond_2

    const-string v4, "gearLabel"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    const-string v3, "soc"

    iget-object v4, v0, LT/F4;->d:Ljava/lang/Float;

    const/high16 v5, 0x42c80000    # 100.0f

    invoke-static {v2, v3, v4, v6, v5}, Lcom/ex/auto/VhalProviderService;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Float;FF)V

    const-string v3, "power"

    iget-object v4, v0, LT/F4;->g:Ljava/lang/Float;

    const/high16 v7, -0x3c380000    # -400.0f

    const/high16 v8, 0x43c80000    # 400.0f

    invoke-static {v2, v3, v4, v7, v8}, Lcom/ex/auto/VhalProviderService;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Float;FF)V

    const-string v3, "range"

    iget-object v4, v0, LT/F4;->e:Ljava/lang/Float;

    const/high16 v7, 0x44fa0000    # 2000.0f

    invoke-static {v2, v3, v4, v6, v7}, Lcom/ex/auto/VhalProviderService;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Float;FF)V

    const-string v3, "odo"

    iget-object v4, v0, LT/F4;->f:Ljava/lang/Float;

    const/high16 v7, 0x3f800000    # 1.0f

    const v9, 0x49f42400    # 2000000.0f

    invoke-static {v2, v3, v4, v7, v9}, Lcom/ex/auto/VhalProviderService;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Float;FF)V

    const-string v3, "driveFlow"

    iget-object v4, v0, LT/F4;->h:Ljava/lang/Float;

    const/high16 v7, -0x3d380000    # -100.0f

    invoke-static {v2, v3, v4, v7, v5}, Lcom/ex/auto/VhalProviderService;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Float;FF)V

    const-string v3, "battFlow"

    iget-object v4, v0, LT/F4;->i:Ljava/lang/Float;

    invoke-static {v2, v3, v4, v7, v5}, Lcom/ex/auto/VhalProviderService;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Float;FF)V

    const-string v3, "outTemp"

    iget-object v4, v0, LT/F4;->m:Ljava/lang/Float;

    const/high16 v5, -0x3d900000    # -60.0f

    const/high16 v7, 0x42b40000    # 90.0f

    invoke-static {v2, v3, v4, v5, v7}, Lcom/ex/auto/VhalProviderService;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Float;FF)V

    const-string v3, "setTemp"

    iget-object v4, v0, LT/F4;->l:Ljava/lang/Float;

    const/high16 v5, 0x41200000    # 10.0f

    const/high16 v7, 0x420c0000    # 35.0f

    invoke-static {v2, v3, v4, v5, v7}, Lcom/ex/auto/VhalProviderService;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Float;FF)V

    const-string v3, "aux12v"

    iget-object v4, v0, LT/F4;->n:Ljava/lang/Float;

    const/high16 v5, 0x40c00000    # 6.0f

    const/high16 v7, 0x41900000    # 18.0f

    invoke-static {v2, v3, v4, v5, v7}, Lcom/ex/auto/VhalProviderService;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Float;FF)V

    const-string v3, "chargeKw"

    iget-object v4, v0, LT/F4;->q:Ljava/lang/Float;

    invoke-static {v2, v3, v4, v6, v8}, Lcom/ex/auto/VhalProviderService;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Float;FF)V

    iget-object v3, v0, LT/F4;->o:Ljava/lang/Boolean;

    if-eqz v3, :cond_3

    const-string v4, "charging"

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_3
    iget-object v3, v0, LT/F4;->p:Ljava/lang/Boolean;

    if-eqz v3, :cond_4

    const-string v4, "dcfc"

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_4
    iget-object v3, v0, LT/F4;->r:Ljava/lang/Boolean;

    if-eqz v3, :cond_5

    const-string v4, "vhalLive"

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_5
    iget-object v3, v0, LT/F4;->s:Ljava/lang/String;

    if-eqz v3, :cond_6

    const-string v4, "unknown"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "carId"

    iget-object v0, v0, LT/F4;->s:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_6
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    return-object v1
.end method

.method public final d()V
    .locals 4

    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "porta 47800 \u2022 clientes: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/ex/auto/VhalProviderService;->k:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/app/Notification$Builder;

    const-string v3, "vhal_provider"

    invoke-direct {v2, p0, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string v3, "VHAL Provider (p/ celular)"

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    const v2, 0x1080052

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    const/16 v2, 0x33

    invoke-virtual {v0, v2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public final onCreate()V
    .locals 14

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    new-instance v0, Landroid/app/NotificationChannel;

    const-string v1, "vhal_provider"

    const-string v2, "VHAL Provider"

    const/4 v7, 0x2

    invoke-direct {v0, v1, v2, v7}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const-string v1, "notification"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    invoke-virtual {v1, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    new-instance v0, LT/S0;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "central_trips.db"

    const/4 v11, 0x0

    const/4 v8, 0x1

    move-object v3, v0

    move-object v6, v11

    invoke-direct/range {v3 .. v8}, LT/S0;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;II)V

    iput-object v0, p0, Lcom/ex/auto/VhalProviderService;->e:LT/S0;

    new-instance v1, LT/L4;

    invoke-direct {v1, v0}, LT/L4;-><init>(LT/S0;)V

    iput-object v1, p0, Lcom/ex/auto/VhalProviderService;->f:LT/L4;

    new-instance v0, LT/S0;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    const/4 v12, 0x1

    const-string v10, "central_charges.db"

    const/4 v13, 0x0

    move-object v8, v0

    invoke-direct/range {v8 .. v13}, LT/S0;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;II)V

    iput-object v0, p0, Lcom/ex/auto/VhalProviderService;->g:LT/S0;

    new-instance v1, LT/R0;

    invoke-direct {v1, v0}, LT/R0;-><init>(LT/S0;)V

    iput-object v1, p0, Lcom/ex/auto/VhalProviderService;->h:LT/R0;

    return-void
.end method

.method public final onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ex/auto/VhalProviderService;->d:Z

    sput-boolean v0, Lcom/ex/auto/VhalProviderService;->j:Z

    :try_start_0
    iget-object v0, p0, Lcom/ex/auto/VhalProviderService;->c:Ljava/net/ServerSocket;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    iget-object v0, p0, Lcom/ex/auto/VhalProviderService;->a:Landroid/car/Car;

    if-eqz v0, :cond_1

    :try_start_1
    invoke-virtual {v0}, Landroid/car/Car;->disconnect()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_1
    return-void
.end method

.method public final onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    new-instance p1, Landroid/app/Notification$Builder;

    const-string p2, "vhal_provider"

    invoke-direct {p1, p0, p2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string p2, "VHAL Provider (p/ celular)"

    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p1

    const-string p2, "iniciando\u2026"

    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p1

    const p2, 0x1080052

    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    const/16 p3, 0x33

    invoke-virtual {p0, p3, p1}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    sget-boolean p1, Lcom/ex/auto/VhalProviderService;->j:Z

    if-eqz p1, :cond_0

    return p2

    :cond_0
    sput-boolean p2, Lcom/ex/auto/VhalProviderService;->j:Z

    iput-boolean p2, p0, Lcom/ex/auto/VhalProviderService;->d:Z

    :try_start_0
    new-instance p1, LT/s1;

    const/4 p3, 0x6

    invoke-direct {p1, p0, p3}, LT/s1;-><init>(Landroid/content/ContextWrapper;I)V

    const/4 p3, 0x0

    const-wide/16 v0, 0x0

    invoke-static {p0, p3, v0, v1, p1}, Landroid/car/Car;->createCar(Landroid/content/Context;Landroid/os/Handler;JLandroid/car/Car$CarServiceLifecycleListener;)Landroid/car/Car;

    move-result-object p1

    iput-object p1, p0, Lcom/ex/auto/VhalProviderService;->a:Landroid/car/Car;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p3, "VhalProvider"

    const-string v0, "car"

    invoke-static {p3, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    new-instance p1, Ljava/lang/Thread;

    new-instance p3, LT/O4;

    const/4 v0, 0x0

    invoke-direct {p3, p0, v0}, LT/O4;-><init>(Lcom/ex/auto/VhalProviderService;I)V

    const-string v0, "vhal-server"

    invoke-direct {p1, p3, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    new-instance p1, Ljava/lang/Thread;

    new-instance p3, LT/O4;

    const/4 v0, 0x1

    invoke-direct {p3, p0, v0}, LT/O4;-><init>(Lcom/ex/auto/VhalProviderService;I)V

    const-string v0, "vhal-poll"

    invoke-direct {p1, p3, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return p2
.end method
