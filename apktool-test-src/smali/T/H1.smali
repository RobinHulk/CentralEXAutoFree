.class public abstract LT/H1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[I

.field public static final b:[I

.field public static final c:[I

.field public static final d:[I

.field public static final e:[I

.field public static final f:[I

.field public static final g:[I

.field public static final h:Ljava/util/Set;

.field public static final i:Ljava/util/Set;

.field public static final j:[I

.field public static final k:Ljava/lang/Object;

.field public static final l:[I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    const/16 v0, 0x64

    const/16 v1, 0x50

    const/16 v2, 0x14

    const/16 v3, 0x3c

    const/16 v4, 0x28

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x1

    const/4 v8, 0x4

    const/16 v9, 0x10

    const/16 v10, 0x40

    filled-new-array {v7, v8, v9, v10}, [I

    move-result-object v9

    sput-object v9, LT/H1;->a:[I

    const/4 v9, 0x2

    const/4 v10, 0x3

    filled-new-array {v7, v9, v10, v8, v6}, [I

    move-result-object v8

    sput-object v8, LT/H1;->b:[I

    const v8, 0x22010101

    const v9, 0x22010102

    const v10, 0x22010103

    filled-new-array {v8, v9, v10}, [I

    move-result-object v11

    sput-object v11, LT/H1;->c:[I

    const v11, 0x20020501

    const v12, 0x20020502

    const v13, 0x20020503

    filled-new-array {v11, v12, v13}, [I

    move-result-object v14

    sput-object v14, LT/H1;->d:[I

    filled-new-array {v5, v7}, [I

    move-result-object v14

    sput-object v14, LT/H1;->e:[I

    const/high16 v14, 0x1000000

    filled-new-array {v5, v7, v14}, [I

    move-result-object v14

    sput-object v14, LT/H1;->f:[I

    const/16 v14, 0x31

    const/4 v15, 0x5

    filled-new-array {v7, v14, v15, v5}, [I

    move-result-object v14

    sput-object v14, LT/H1;->g:[I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    filled-new-array {v8, v9, v10}, [Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v8}, Le/a;->P([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v8

    sput-object v8, LT/H1;->h:Ljava/util/Set;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    filled-new-array {v8, v9, v10}, [Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v8}, Le/a;->P([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v8

    sput-object v8, LT/H1;->i:Ljava/util/Set;

    new-array v6, v6, [I

    fill-array-data v6, :array_0

    sput-object v6, LT/H1;->j:[I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const v8, 0x7f0700e6

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v9, Lv0/a;

    invoke-direct {v9, v6, v8}, Lv0/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v6, 0x7f0700e7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-instance v10, Lv0/a;

    invoke-direct {v10, v2, v6}, Lv0/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v4, 0x7f0700e8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v11, Lv0/a;

    invoke-direct {v11, v2, v4}, Lv0/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x7f0700e9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v12, Lv0/a;

    invoke-direct {v12, v2, v3}, Lv0/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0700ea

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v13, Lv0/a;

    invoke-direct {v13, v1, v2}, Lv0/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const v1, 0x7f0700eb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v14, Lv0/a;

    invoke-direct {v14, v0, v1}, Lv0/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array/range {v9 .. v14}, [Lv0/a;

    move-result-object v0

    invoke-static {v0}, Lw0/u;->V([Lv0/a;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, LT/H1;->k:Ljava/lang/Object;

    filled-new-array {v5, v7}, [I

    move-result-object v0

    sput-object v0, LT/H1;->l:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x14
        0x28
        0x3c
        0x50
        0x64
    .end array-data
.end method

.method public static a(Landroid/content/Context;)I
    .locals 3

    const-string v0, "context"

    invoke-static {p0, v0}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tela_preta_prefs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "widget_bg_opacity_pct"

    const/16 v2, 0x64

    invoke-interface {p0, v0, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    invoke-static {p0, v1, v2}, LA/b;->o(III)I

    move-result p0

    invoke-static {p0}, LT/H1;->b(I)I

    move-result p0

    return p0
.end method

.method public static b(I)I
    .locals 9

    sget-object v0, LT/H1;->j:[I

    array-length v1, v0

    const/16 v2, 0x64

    if-nez v1, :cond_0

    const/4 p0, 0x0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    aget v3, v0, v1

    array-length v4, v0

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    if-nez v4, :cond_1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_1

    :cond_1
    invoke-static {p0, v1, v2}, LA/b;->o(III)I

    move-result v6

    sub-int v6, v3, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-gt v5, v4, :cond_3

    :goto_0
    aget v7, v0, v5

    invoke-static {p0, v1, v2}, LA/b;->o(III)I

    move-result v8

    sub-int v8, v7, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-le v6, v8, :cond_2

    move v3, v7

    move v6, v8

    :cond_2
    if-eq v5, v4, :cond_3

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    :goto_1
    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :cond_4
    sget-object p0, LT/H1;->k:Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_2

    :cond_5
    const p0, 0x7f0700eb

    :goto_2
    return p0
.end method

.method public static c(Landroid/app/Service;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 2

    :try_start_0
    invoke-static {p0}, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->h(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    if-eqz p1, :cond_0

    const-string v1, "saved_drive"

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    :cond_0
    if-eqz p2, :cond_1

    const-string p1, "saved_regen"

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    :cond_1
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    new-instance p1, Landroid/content/Intent;

    const-string p2, "UPDATE_DRIVE_REGEN_MODES"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    sget-object p0, Lcom/ex/auto/CentralWatchdogService;->d2:[I

    sget-object p0, Lcom/ex/auto/CentralWatchdogService;->g2:Lcom/ex/auto/CentralWatchdogService;

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/ex/auto/CentralWatchdogService;->a:Landroid/os/Handler;

    new-instance p2, LT/t0;

    const/16 v0, 0x15

    invoke-direct {p2, p0, v0}, LT/t0;-><init>(Lcom/ex/auto/CentralWatchdogService;I)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-void
.end method

.method public static d(Landroid/car/hardware/property/CarPropertyManager;)Ljava/lang/Boolean;
    .locals 6

    const-string v0, "cpm"

    invoke-static {p0, v0}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, LT/q;->f:[I

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const v4, 0x15600099

    if-ge v3, v1, :cond_1

    aget v5, v0, v3

    invoke-static {p0, v4, v5}, LT/U;->a(Landroid/car/hardware/property/CarPropertyManager;II)Ljava/lang/Boolean;

    move-result-object v4

    if-eqz v4, :cond_0

    return-object v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    sget-object v0, LT/q;->f:[I

    array-length v1, v0

    move v3, v2

    :goto_1
    if-ge v3, v1, :cond_4

    aget v5, v0, v3

    invoke-static {p0, v4, v5}, LT/U;->c(Landroid/car/hardware/property/CarPropertyManager;II)Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result p0

    if-eqz p0, :cond_2

    const/4 v2, 0x1

    :cond_2
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    const/4 p0, 0x0

    return-object p0
.end method

.method public static e(Landroid/car/hardware/property/CarPropertyManager;)Ljava/lang/Integer;
    .locals 4

    const-string v0, "cpm"

    invoke-static {p0, v0}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, LT/H1;->g:[I

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_1

    aget v2, v0, v1

    const v3, 0x15400500

    invoke-static {p0, v3, v2}, LT/U;->c(Landroid/car/hardware/property/CarPropertyManager;II)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static f(Landroid/car/hardware/property/CarPropertyManager;)Ljava/lang/Boolean;
    .locals 2

    const-string v0, "cpm"

    invoke-static {p0, v0}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x15200507

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, LT/U;->a(Landroid/car/hardware/property/CarPropertyManager;II)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static g(Landroid/car/hardware/property/CarPropertyManager;I[ILjava/util/Set;)Ljava/lang/Integer;
    .locals 5

    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x0

    if-ge v1, v0, :cond_2

    aget v3, p2, v1

    invoke-static {p0, p1, v3}, LT/U;->e(Landroid/car/hardware/property/CarPropertyManager;II)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Ljava/lang/Integer;

    if-eqz v4, :cond_0

    move-object v2, v3

    check-cast v2, Ljava/lang/Integer;

    :cond_0
    if-eqz v2, :cond_1

    invoke-interface {p3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v2
.end method

.method public static h(Landroid/car/hardware/property/CarPropertyManager;)Ljava/lang/Boolean;
    .locals 2

    const-string v0, "cpm"

    invoke-static {p0, v0}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x15200514

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, LT/U;->a(Landroid/car/hardware/property/CarPropertyManager;II)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static i(Landroid/car/hardware/property/CarPropertyManager;)Ljava/lang/Boolean;
    .locals 2

    const-string v0, "cpm"

    invoke-static {p0, v0}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x21401026

    const/16 v1, 0x75

    invoke-static {p0, v0, v1}, LT/U;->a(Landroid/car/hardware/property/CarPropertyManager;II)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static j(Landroid/car/hardware/property/CarPropertyManager;I)Ljava/lang/Integer;
    .locals 1

    const-string v0, "cpm"

    invoke-static {p0, v0}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x1540050b

    invoke-static {p0, v0, p1}, LT/U;->c(Landroid/car/hardware/property/CarPropertyManager;II)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static k(Landroid/car/hardware/property/CarPropertyManager;)Ljava/lang/Float;
    .locals 3

    const-string v0, "cpm"

    invoke-static {p0, v0}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x25401036

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, LT/U;->b(Landroid/car/hardware/property/CarPropertyManager;II)Ljava/lang/Float;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result v1

    const/high16 v2, 0x41880000    # 17.0f

    cmpl-float v2, v1, v2

    if-ltz v2, :cond_0

    const/high16 v2, 0x42000000    # 32.0f

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_0

    goto :goto_0

    :cond_0
    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static l(Landroid/car/hardware/property/CarPropertyManager;)Ljava/lang/Integer;
    .locals 4

    const-string v0, "cpm"

    invoke-static {p0, v0}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, LT/H1;->a:[I

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_1

    aget v2, v0, v1

    const v3, 0x15400501

    invoke-static {p0, v3, v2}, LT/U;->c(Landroid/car/hardware/property/CarPropertyManager;II)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static m(Landroid/car/hardware/property/CarPropertyManager;)Ljava/lang/Boolean;
    .locals 6

    const-string v0, "cpm"

    invoke-static {p0, v0}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, LT/H1;->l:[I

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget v4, v0, v3

    const v5, 0x1140050d

    invoke-static {p0, v5, v4}, LT/U;->c(Landroid/car/hardware/property/CarPropertyManager;II)Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static n(Landroid/car/hardware/property/CarPropertyManager;)Ljava/lang/Boolean;
    .locals 2

    const-string v0, "cpm"

    invoke-static {p0, v0}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x10200c00

    const/16 v1, 0x75

    invoke-static {p0, v0, v1}, LT/U;->a(Landroid/car/hardware/property/CarPropertyManager;II)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static o(Landroid/content/Context;)Landroid/content/Context;
    .locals 4

    const-string v0, "context"

    invoke-static {p0, v0}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Le/n;->c()Lu/e;

    move-result-object v0

    invoke-virtual {v0}, Lu/e;->b()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v1, :cond_0

    iget-object v0, v0, Lu/e;->a:Lu/f;

    iget-object v0, v0, Lu/f;->a:Landroid/os/LocaleList;

    invoke-virtual {v0, v3}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-nez v0, :cond_1

    const-string v0, "tela_preta_prefs"

    invoke-virtual {p0, v0, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "app_language_tag"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    if-eqz v0, :cond_2

    invoke-static {v0}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    if-nez v0, :cond_3

    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    :cond_3
    new-instance v1, Landroid/content/res/Configuration;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    invoke-virtual {v1, v0}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    invoke-virtual {p0, v1}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object p0

    const-string v0, "createConfigurationContext(...)"

    invoke-static {p0, v0}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static p([ILjava/lang/Integer;I)I
    .locals 5

    const/4 v0, -0x1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    if-ge v3, v1, :cond_2

    aget v4, p0, v3

    if-ne p1, v4, :cond_1

    move v0, v3

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    if-gez v0, :cond_3

    array-length p1, p0

    div-int/lit8 v0, p1, 0x2

    :cond_3
    add-int/2addr v0, p2

    array-length p0, p0

    add-int/lit8 p0, p0, -0x1

    invoke-static {v0, v2, p0}, LA/b;->o(III)I

    move-result p0

    return p0
.end method

.method public static q(Landroid/car/hardware/property/CarPropertyManager;Z)V
    .locals 6

    const-string v0, "cpm"

    invoke-static {p0, v0}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, LT/q;->f:[I

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const v4, 0x15600099

    if-ge v3, v1, :cond_0

    aget v5, v0, v3

    :try_start_0
    invoke-virtual {p0, v4, v5, p1}, Landroid/car/hardware/property/CarPropertyManager;->setBooleanProperty(IIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    sget-object v0, LT/q;->f:[I

    array-length v1, v0

    :goto_1
    if-ge v2, v1, :cond_1

    aget v3, v0, v2

    :try_start_1
    invoke-virtual {p0, v4, v3, p1}, Landroid/car/hardware/property/CarPropertyManager;->setIntProperty(III)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public static r(Landroid/app/Service;Landroid/car/hardware/property/CarPropertyManager;I)V
    .locals 3

    const-string v0, "cpm"

    invoke-static {p1, v0}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, LT/H1;->c(Landroid/app/Service;Ljava/lang/Integer;Ljava/lang/Integer;)V

    sget-object p0, LT/H1;->f:[I

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    aget v1, p0, v0

    const v2, 0x22010100

    :try_start_0
    invoke-virtual {p1, v2, v1, p2}, Landroid/car/hardware/property/CarPropertyManager;->setIntProperty(III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static s(Landroid/car/hardware/property/CarPropertyManager;I)V
    .locals 4

    const-string v0, "cpm"

    invoke-static {p0, v0}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, LT/H1;->g:[I

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    aget v2, v0, v1

    const v3, 0x15400500

    :try_start_0
    invoke-virtual {p0, v3, v2, p1}, Landroid/car/hardware/property/CarPropertyManager;->setIntProperty(III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static t(Landroid/car/hardware/property/CarPropertyManager;Z)V
    .locals 2

    const-string v0, "cpm"

    invoke-static {p0, v0}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x21401026

    const/16 v1, 0x75

    :try_start_0
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/property/CarPropertyManager;->setBooleanProperty(IIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static u(Landroid/app/Service;Landroid/car/hardware/property/CarPropertyManager;I)V
    .locals 3

    const-string v0, "cpm"

    invoke-static {p1, v0}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, LT/H1;->c(Landroid/app/Service;Ljava/lang/Integer;Ljava/lang/Integer;)V

    sget-object p0, LT/H1;->e:[I

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    aget v1, p0, v0

    const v2, 0x20020500

    :try_start_0
    invoke-virtual {p1, v2, v1, p2}, Landroid/car/hardware/property/CarPropertyManager;->setIntProperty(III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static v(Landroid/car/hardware/property/CarPropertyManager;I)V
    .locals 2

    const-string v0, "cpm"

    invoke-static {p0, v0}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    const v1, 0x15400501

    :try_start_0
    invoke-virtual {p0, v1, v0, p1}, Landroid/car/hardware/property/CarPropertyManager;->setIntProperty(III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    const/4 v0, 0x4

    :try_start_1
    invoke-virtual {p0, v1, v0, p1}, Landroid/car/hardware/property/CarPropertyManager;->setIntProperty(III)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    return-void
.end method
