.class public Lcom/geely/driveregenfloater/DriveRegenFloaterService;
.super Landroid/app/Service;
.source "SourceFile"


# static fields
.field public static J:Z = false

.field public static final K:[I

.field public static final L:[I


# instance fields
.field public A:I

.field public B:F

.field public C:F

.field public D:Z

.field public final E:LT/T0;

.field public final F:LB/b;

.field public final G:LW/d;

.field public final H:LW/d;

.field public final I:LX/e;

.field public a:Landroid/view/WindowManager;

.field public b:Landroid/view/View;

.field public c:Landroid/view/View;

.field public d:Landroid/view/View;

.field public e:Landroid/view/View;

.field public f:Landroid/view/View;

.field public g:Landroid/widget/TextView;

.field public h:Landroid/widget/TextView;

.field public i:Landroid/widget/TextView;

.field public j:Landroid/widget/TextView;

.field public k:Landroid/widget/TextView;

.field public l:Landroid/widget/TextView;

.field public m:Landroid/widget/TextView;

.field public n:Landroid/widget/TextView;

.field public o:Landroid/widget/TextView;

.field public p:Landroid/car/Car;

.field public q:Landroid/car/hardware/property/CarPropertyManager;

.field public r:Landroid/content/SharedPreferences;

.field public final s:Landroid/os/Handler;

.field public t:Landroid/view/WindowManager$LayoutParams;

.field public u:I

.field public v:I

.field public w:Z

.field public volatile x:I

.field public final y:Ljava/util/concurrent/atomic/AtomicInteger;

.field public z:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/high16 v0, 0x1000000

    const/4 v1, 0x0

    const/4 v2, 0x1

    filled-new-array {v1, v2, v0}, [I

    move-result-object v0

    sput-object v0, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->K:[I

    filled-new-array {v1, v2}, [I

    move-result-object v0

    sput-object v0, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->L:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->s:Landroid/os/Handler;

    const v0, 0x20020502

    iput v0, p0, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->u:I

    const v0, 0x22010102

    iput v0, p0, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->v:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->w:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->x:I

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->y:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, LT/T0;

    const/16 v1, 0xa

    invoke-direct {v0, p0, v1}, LT/T0;-><init>(Ljava/lang/Object;I)V

    iput-object v0, p0, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->E:LT/T0;

    new-instance v0, LB/b;

    const/16 v1, 0xc

    invoke-direct {v0, p0, v1}, LB/b;-><init>(Ljava/lang/Object;I)V

    iput-object v0, p0, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->F:LB/b;

    new-instance v0, LW/d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, LW/d;-><init>(Lcom/geely/driveregenfloater/DriveRegenFloaterService;I)V

    iput-object v0, p0, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->G:LW/d;

    new-instance v0, LW/d;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, LW/d;-><init>(Lcom/geely/driveregenfloater/DriveRegenFloaterService;I)V

    iput-object v0, p0, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->H:LW/d;

    new-instance v0, LX/e;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, LX/e;-><init>(Landroid/app/Service;I)V

    iput-object v0, p0, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->I:LX/e;

    return-void
.end method

.method public static f(I)Z
    .locals 1

    const v0, 0x22010101

    if-eq p0, v0, :cond_1

    const v0, 0x22010102

    if-eq p0, v0, :cond_1

    const v0, 0x22010103

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static g(I)Z
    .locals 1

    const v0, 0x20020501

    if-eq p0, v0, :cond_1

    const v0, 0x20020502

    if-eq p0, v0, :cond_1

    const v0, 0x20020503

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static h(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "drive_regen_prefs"

    if-eqz v0, :cond_0

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static p(Landroid/widget/TextView;Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const v0, 0x3f19999a    # 0.6f

    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    if-eqz p1, :cond_1

    const/4 p1, -0x1

    goto :goto_1

    :cond_1
    const-string p1, "#CCFFFFFF"

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    :goto_1
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/String;)V
    .locals 9

    iget-object v0, p0, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->q:Landroid/car/hardware/property/CarPropertyManager;

    if-nez v0, :cond_0

    const-string p1, "Car nao pronto"

    invoke-virtual {p0, p1}, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->o(Ljava/lang/String;)V

    return-void

    :cond_0
    sget-object v0, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->K:[I

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v1

    move-object v4, v2

    :goto_0
    const-string v5, ")"

    const-string v6, "DriveRegenFloater"

    const/4 v7, 0x3

    if-ge v3, v7, :cond_1

    aget v4, v0, v3

    :try_start_0
    iget-object v7, p0, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->q:Landroid/car/hardware/property/CarPropertyManager;

    const v8, 0x22010100

    invoke-virtual {v7, v8, v4, p1}, Landroid/car/hardware/property/CarPropertyManager;->setIntProperty(III)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setDriveMode area=0x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " val="

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " ok ("

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    goto :goto_1

    :catch_0
    move-exception v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move-object v2, v4

    :goto_1
    if-eqz v1, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Aplicado "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->o(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Erro drive: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->o(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setDriveMode failed all areas val="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " ("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_2
    return-void
.end method

.method public final b(ILjava/lang/String;)V
    .locals 9

    iget-object v0, p0, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->q:Landroid/car/hardware/property/CarPropertyManager;

    if-nez v0, :cond_0

    const-string p1, "Car nao pronto"

    invoke-virtual {p0, p1}, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->o(Ljava/lang/String;)V

    return-void

    :cond_0
    sget-object v0, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->L:[I

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v1

    move-object v4, v2

    :goto_0
    const-string v5, ")"

    const-string v6, "DriveRegenFloater"

    const/4 v7, 0x2

    if-ge v3, v7, :cond_1

    aget v4, v0, v3

    :try_start_0
    iget-object v7, p0, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->q:Landroid/car/hardware/property/CarPropertyManager;

    const v8, 0x20020500

    invoke-virtual {v7, v8, v4, p1}, Landroid/car/hardware/property/CarPropertyManager;->setIntProperty(III)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setRegen area=0x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " val="

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " ok ("

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    goto :goto_1

    :catch_0
    move-exception v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move-object v2, v4

    :goto_1
    if-eqz v1, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Aplicado "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->o(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Erro regen: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->o(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setRegen failed all areas val="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " ("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_2
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 12

    const/4 v0, 0x5

    const/4 v1, 0x6

    const/4 v2, 0x0

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->r:Landroid/content/SharedPreferences;

    const-string v5, "saved_regen"

    const v6, 0x20020502

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    iget-object v5, p0, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->r:Landroid/content/SharedPreferences;

    const-string v6, "saved_drive"

    const v7, 0x22010102

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    iget-object v6, p0, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->y:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v6

    iput v4, p0, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->u:I

    iput v5, p0, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->v:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    invoke-virtual {p0}, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->l()V

    const-string v7, "_drive"

    invoke-virtual {p1, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v5, v7}, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->a(ILjava/lang/String;)V

    iget-object v7, p0, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->s:Landroid/os/Handler;

    new-instance v8, LW/c;

    invoke-direct {v8, p0, v6, v4, p1}, LW/c;-><init>(Lcom/geely/driveregenfloater/DriveRegenFloaterService;IILjava/lang/String;)V

    const-wide/16 v9, 0x1c2

    invoke-virtual {v7, v8, v9, v10}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-static {v5}, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->f(I)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    new-array p1, v1, [J

    fill-array-data p1, :array_0

    move v8, v2

    :goto_0
    if-ge v8, v1, :cond_1

    aget-wide v9, p1, v8

    new-instance v11, LW/b;

    invoke-direct {v11, p0, v6, v5, v2}, LW/b;-><init>(Lcom/geely/driveregenfloater/DriveRegenFloaterService;III)V

    invoke-virtual {v7, v11, v9, v10}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    add-int/2addr v8, v3

    goto :goto_0

    :cond_1
    :goto_1
    invoke-static {v4}, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->g(I)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_3

    :cond_2
    new-array p1, v0, [J

    fill-array-data p1, :array_1

    :goto_2
    if-ge v2, v0, :cond_3

    aget-wide v8, p1, v2

    new-instance v1, LW/b;

    invoke-direct {v1, p0, v6, v4, v3}, LW/b;-><init>(Lcom/geely/driveregenfloater/DriveRegenFloaterService;III)V

    invoke-virtual {v7, v1, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    add-int/2addr v2, v3

    goto :goto_2

    :cond_3
    :goto_3
    return-void

    nop

    :array_0
    .array-data 8
        0x7d0
        0x1194
        0x2328
        0x4650
        0x88b8
        0xf230
    .end array-data

    :array_1
    .array-data 8
        0x708
        0x1068
        0x1f40
        0x3e80
        0x7d00
    .end array-data
.end method

.method public final d()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->w:Z

    iget-object v1, p0, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->d:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->c:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->s:Landroid/os/Handler;

    iget-object v1, p0, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->E:LT/T0;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->l()V

    return-void
.end method

.method public final e()V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->w:Z

    iget-object v0, p0, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->c:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->d:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->s:Landroid/os/Handler;

    iget-object v1, p0, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->E:LT/T0;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-virtual {p0}, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->l()V

    return-void
.end method

.method public final i()I
    .locals 7

    iget-object v0, p0, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->q:Landroid/car/hardware/property/CarPropertyManager;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->K:[I

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x3

    if-ge v2, v3, :cond_2

    aget v3, v0, v2

    :try_start_0
    iget-object v4, p0, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->q:Landroid/car/hardware/property/CarPropertyManager;

    const-class v5, Ljava/lang/Integer;

    const v6, 0x22010100

    invoke-virtual {v4, v5, v6, v3}, Landroid/car/hardware/property/CarPropertyManager;->getProperty(Ljava/lang/Class;II)Landroid/car/hardware/CarPropertyValue;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/car/hardware/CarPropertyValue;->getStatus()I

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->f(I)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_1

    return v3

    :catch_0
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public final j()I
    .locals 7

    iget-object v0, p0, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->q:Landroid/car/hardware/property/CarPropertyManager;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->L:[I

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x2

    if-ge v2, v3, :cond_2

    aget v3, v0, v2

    :try_start_0
    iget-object v4, p0, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->q:Landroid/car/hardware/property/CarPropertyManager;

    const-class v5, Ljava/lang/Integer;

    const v6, 0x20020500

    invoke-virtual {v4, v5, v6, v3}, Landroid/car/hardware/property/CarPropertyManager;->getProperty(Ljava/lang/Class;II)Landroid/car/hardware/CarPropertyValue;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/car/hardware/CarPropertyValue;->getStatus()I

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->g(I)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_1

    return v3

    :catch_0
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public final k()V
    .locals 4

    iget-object v0, p0, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->q:Landroid/car/hardware/property/CarPropertyManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->x:I

    :try_start_0
    iget-object v1, p0, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->q:Landroid/car/hardware/property/CarPropertyManager;

    const v2, 0x11400400

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/car/hardware/property/CarPropertyManager;->getIntProperty(II)I

    move-result v1

    iput v1, p0, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->x:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget v1, p0, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->x:I

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "poll: troca de marcha -> "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->x:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", reaplicando"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DriveRegenFloater"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "poll_gear_change"

    invoke-virtual {p0, v0}, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->c(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->l()V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->j()I

    move-result v0

    invoke-static {v0}, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->g(I)Z

    move-result v1

    if-eqz v1, :cond_2

    iput v0, p0, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->u:I

    :cond_2
    invoke-virtual {p0}, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->i()I

    move-result v0

    invoke-static {v0}, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->f(I)Z

    move-result v1

    if-eqz v1, :cond_3

    iput v0, p0, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->v:I

    :cond_3
    invoke-virtual {p0}, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->l()V

    return-void
.end method

.method public final l()V
    .locals 12

    iget v0, p0, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->u:I

    const-string v1, "#666666"

    const-string v2, "#D64545"

    const-string v3, "#2E7DFF"

    const-string v4, "#1FBF75"

    const v5, 0x20020501

    const v6, 0x20020502

    const v7, 0x20020503

    if-ne v0, v7, :cond_0

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_0
    if-ne v0, v6, :cond_1

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_1
    if-ne v0, v5, :cond_2

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_2
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    :goto_0
    iget v8, p0, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->v:I

    const v9, 0x22010103

    const v10, 0x22010102

    const v11, 0x22010101

    if-ne v8, v11, :cond_3

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    goto :goto_1

    :cond_3
    if-ne v8, v10, :cond_4

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    goto :goto_1

    :cond_4
    if-ne v8, v9, :cond_5

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    goto :goto_1

    :cond_5
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    :goto_1
    iget-object v2, p0, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->e:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->g:Landroid/widget/TextView;

    iget v1, p0, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->u:I

    const-string v2, "N/D"

    if-ne v1, v7, :cond_6

    const-string v1, "FORTE"

    goto :goto_2

    :cond_6
    if-ne v1, v6, :cond_7

    const-string v1, "MEDIA"

    goto :goto_2

    :cond_7
    if-ne v1, v5, :cond_8

    const-string v1, "FRACA"

    goto :goto_2

    :cond_8
    move-object v1, v2

    :goto_2
    const-string v3, "REGEN: "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->h:Landroid/widget/TextView;

    iget v1, p0, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->v:I

    if-ne v1, v11, :cond_9

    const-string v2, "ECO"

    goto :goto_3

    :cond_9
    if-ne v1, v10, :cond_a

    const-string v2, "CONFORT"

    goto :goto_3

    :cond_a
    if-ne v1, v9, :cond_b

    const-string v2, "SPORT"

    :cond_b
    :goto_3
    const-string v1, "DRIVE: "

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->j:Landroid/widget/TextView;

    iget v1, p0, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->u:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v5, :cond_c

    move v1, v3

    goto :goto_4

    :cond_c
    move v1, v2

    :goto_4
    invoke-static {v0, v1}, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->p(Landroid/widget/TextView;Z)V

    iget-object v0, p0, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->k:Landroid/widget/TextView;

    iget v1, p0, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->u:I

    if-ne v1, v6, :cond_d

    move v1, v3

    goto :goto_5

    :cond_d
    move v1, v2

    :goto_5
    invoke-static {v0, v1}, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->p(Landroid/widget/TextView;Z)V

    iget-object v0, p0, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->l:Landroid/widget/TextView;

    iget v1, p0, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->u:I

    if-ne v1, v7, :cond_e

    move v1, v3

    goto :goto_6

    :cond_e
    move v1, v2

    :goto_6
    invoke-static {v0, v1}, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->p(Landroid/widget/TextView;Z)V

    iget-object v0, p0, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->m:Landroid/widget/TextView;

    iget v1, p0, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->v:I

    if-ne v1, v11, :cond_f

    move v1, v3

    goto :goto_7

    :cond_f
    move v1, v2

    :goto_7
    invoke-static {v0, v1}, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->p(Landroid/widget/TextView;Z)V

    iget-object v0, p0, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->n:Landroid/widget/TextView;

    iget v1, p0, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->v:I

    if-ne v1, v10, :cond_10

    move v1, v3

    goto :goto_8

    :cond_10
    move v1, v2

    :goto_8
    invoke-static {v0, v1}, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->p(Landroid/widget/TextView;Z)V

    iget-object v0, p0, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->o:Landroid/widget/TextView;

    iget v1, p0, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->v:I

    if-ne v1, v9, :cond_11

    move v2, v3

    :cond_11
    invoke-static {v0, v2}, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->p(Landroid/widget/TextView;Z)V

    return-void
.end method

.method public final m(I)V
    .locals 2

    iget-object v0, p0, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->y:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    iput p1, p0, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->v:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    iget-object v0, p0, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->r:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "saved_drive"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string v0, "drive"

    invoke-virtual {p0, p1, v0}, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->a(ILjava/lang/String;)V

    invoke-virtual {p0}, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->e()V

    invoke-virtual {p0}, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->l()V

    return-void
.end method

.method public final n(I)V
    .locals 2

    iget-object v0, p0, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->y:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    iput p1, p0, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->u:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    iget-object v0, p0, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->r:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "saved_regen"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string v0, "regen"

    invoke-virtual {p0, p1, v0}, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->b(ILjava/lang/String;)V

    invoke-virtual {p0}, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->e()V

    invoke-virtual {p0}, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->l()V

    return-void
.end method

.method public final o(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->s:Landroid/os/Handler;

    new-instance v1, LT/P4;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2, p1}, LT/P4;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public final onCreate()V
    .locals 10

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->J:Z

    sget-object v0, Lcom/ex/auto/CentralWatchdogService;->g2:Lcom/ex/auto/CentralWatchdogService;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/ex/auto/CentralWatchdogService;->a:Landroid/os/Handler;

    new-instance v2, LT/z0;

    const/4 v3, 0x5

    invoke-direct {v2, v0, v3}, LT/z0;-><init>(Lcom/ex/auto/CentralWatchdogService;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    invoke-static {p0}, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->h(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->r:Landroid/content/SharedPreferences;

    const-string v1, "saved_regen"

    const v2, 0x20020502

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->u:I

    iget-object v0, p0, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->r:Landroid/content/SharedPreferences;

    const-string v1, "saved_drive"

    const v2, 0x22010102

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->v:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    new-instance v0, Landroid/app/NotificationChannel;

    const-string v1, "drive_regen_floater"

    const-string v2, "Drive/Regen Floater"

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const-string v3, "notification"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    invoke-virtual {v3, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    new-instance v0, Landroid/app/Notification$Builder;

    invoke-direct {v0, p0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    const-string v1, "Controle rapido de modo e regeneracao"

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    const v1, 0x1080039

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {p0, v1, v0}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->a:Landroid/view/WindowManager;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0053

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->b:Landroid/view/View;

    const v1, 0x7f0900f0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->c:Landroid/view/View;

    iget-object v0, p0, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->b:Landroid/view/View;

    const v1, 0x7f090128

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->d:Landroid/view/View;

    iget-object v0, p0, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->b:Landroid/view/View;

    const v1, 0x7f09029f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->e:Landroid/view/View;

    iget-object v0, p0, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->b:Landroid/view/View;

    const v1, 0x7f090057

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->f:Landroid/view/View;

    iget-object v0, p0, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->b:Landroid/view/View;

    const v1, 0x7f0902d3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->g:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->b:Landroid/view/View;

    const v1, 0x7f0902ce

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->h:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->b:Landroid/view/View;

    const v1, 0x7f0902d9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->i:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->b:Landroid/view/View;

    const v1, 0x7f0900be

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->j:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->b:Landroid/view/View;

    const v1, 0x7f0900bf

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->k:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->b:Landroid/view/View;

    const v1, 0x7f0900bd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->l:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->b:Landroid/view/View;

    const v1, 0x7f0900b5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->m:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->b:Landroid/view/View;

    const v1, 0x7f0900b4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->n:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->b:Landroid/view/View;

    const v1, 0x7f0900b8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->o:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->j:Landroid/widget/TextView;

    new-instance v1, LW/a;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, LW/a;-><init>(Lcom/geely/driveregenfloater/DriveRegenFloaterService;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->k:Landroid/widget/TextView;

    new-instance v1, LW/a;

    const/4 v3, 0x1

    invoke-direct {v1, p0, v3}, LW/a;-><init>(Lcom/geely/driveregenfloater/DriveRegenFloaterService;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->l:Landroid/widget/TextView;

    new-instance v1, LW/a;

    const/4 v3, 0x2

    invoke-direct {v1, p0, v3}, LW/a;-><init>(Lcom/geely/driveregenfloater/DriveRegenFloaterService;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->m:Landroid/widget/TextView;

    new-instance v1, LW/a;

    const/4 v3, 0x3

    invoke-direct {v1, p0, v3}, LW/a;-><init>(Lcom/geely/driveregenfloater/DriveRegenFloaterService;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->n:Landroid/widget/TextView;

    new-instance v1, LW/a;

    const/4 v3, 0x4

    invoke-direct {v1, p0, v3}, LW/a;-><init>(Lcom/geely/driveregenfloater/DriveRegenFloaterService;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->o:Landroid/widget/TextView;

    new-instance v1, LW/a;

    const/4 v3, 0x5

    invoke-direct {v1, p0, v3}, LW/a;-><init>(Lcom/geely/driveregenfloater/DriveRegenFloaterService;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->c:Landroid/view/View;

    new-instance v1, LT/t;

    const/16 v3, 0xa

    invoke-direct {v1, p0, v3}, LT/t;-><init>(Landroid/content/ContextWrapper;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->d:Landroid/view/View;

    new-instance v1, LT/t;

    const/16 v3, 0xa

    invoke-direct {v1, p0, v3}, LT/t;-><init>(Landroid/content/ContextWrapper;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v8, 0x108

    const/4 v9, -0x3

    const/4 v5, -0x2

    const/4 v6, -0x2

    const/16 v7, 0x7f6

    move-object v4, v0

    invoke-direct/range {v4 .. v9}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v0, p0, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->t:Landroid/view/WindowManager$LayoutParams;

    const/16 v0, 0x50

    const/16 v1, 0x104

    const-string v3, "drive_regen"

    const v4, 0x800033

    invoke-static {p0, v3, v4, v0, v1}, LT/Y;->U(Landroid/content/Context;Ljava/lang/String;III)LT/K3;

    move-result-object v0

    iget-object v1, p0, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->t:Landroid/view/WindowManager$LayoutParams;

    iget v3, v0, LT/K3;->a:I

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget v3, v0, LT/K3;->b:I

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v0, v0, LT/K3;->c:I

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v0, p0, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->a:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->b:Landroid/view/View;

    invoke-interface {v0, v3, v1}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->c:Landroid/view/View;

    new-instance v1, LT/P4;

    const/4 v3, 0x1

    invoke-direct {v1, p0, v3, v0}, LT/P4;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {p0}, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->d()V

    invoke-virtual {p0}, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->l()V

    :try_start_0
    new-instance v0, LT/s1;

    const/4 v1, 0x7

    invoke-direct {v0, p0, v1}, LT/s1;-><init>(Landroid/content/ContextWrapper;I)V

    const-wide/16 v3, 0x0

    invoke-static {p0, v2, v3, v4, v0}, Landroid/car/Car;->createCar(Landroid/content/Context;Landroid/os/Handler;JLandroid/car/Car$CarServiceLifecycleListener;)Landroid/car/Car;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->p:Landroid/car/Car;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "DriveRegenFloater"

    const-string v2, "connectCar"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Erro Car: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->o(Ljava/lang/String;)V

    :goto_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->H:LW/d;

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "UPDATE_FLOATER_ALPHA"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "UPDATE_DRIVE_REGEN_MODES"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->G:LW/d;

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->r:Landroid/content/SharedPreferences;

    const-string v1, "floater_alpha"

    const/16 v2, 0x64

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->b:Landroid/view/View;

    if-eqz v1, :cond_1

    int-to-float v0, v0

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_1
    return-void
.end method

.method public final onDestroy()V
    .locals 4

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->J:Z

    sget-object v0, Lcom/ex/auto/CentralWatchdogService;->g2:Lcom/ex/auto/CentralWatchdogService;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/ex/auto/CentralWatchdogService;->a:Landroid/os/Handler;

    new-instance v2, LT/z0;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v3}, LT/z0;-><init>(Lcom/ex/auto/CentralWatchdogService;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    iget-object v0, p0, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->s:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :try_start_0
    iget-object v0, p0, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->H:LW/d;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->G:LW/d;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    iget-object v0, p0, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->q:Landroid/car/hardware/property/CarPropertyManager;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->I:LX/e;

    invoke-virtual {v0, v1}, Landroid/car/hardware/property/CarPropertyManager;->unregisterCallback(Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_1
    iget-object v0, p0, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->b:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->a:Landroid/view/WindowManager;

    if-eqz v1, :cond_2

    :try_start_2
    invoke-interface {v1, v0}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :cond_2
    iget-object v0, p0, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->p:Landroid/car/Car;

    if-eqz v0, :cond_3

    :try_start_3
    invoke-virtual {v0}, Landroid/car/Car;->disconnect()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :cond_3
    return-void
.end method

.method public final onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    const/4 p1, 0x2

    return p1
.end method
