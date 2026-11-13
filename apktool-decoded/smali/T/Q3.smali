.class public final LT/Q3;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LT/Q3;

.field public static final b:Ljava/util/List;

.field public static final c:Ljava/util/LinkedHashMap;

.field public static final d:Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

.field public static e:LT/M3;


# direct methods
.method static constructor <clinit>()V
    .locals 27

    new-instance v0, LT/Q3;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LT/Q3;->a:LT/Q3;

    new-instance v1, LT/N3;

    move-object v7, v1

    sget-object v0, LT/P3;->a:LT/P3;

    sget-object v26, LT/O3;->a:LT/O3;

    const/4 v5, 0x0

    const-string v2, "hvac_stepper_enabled"

    const/16 v6, 0x18

    move-object v3, v0

    move-object/from16 v4, v26

    invoke-direct/range {v1 .. v6}, LT/N3;-><init>(Ljava/lang/String;LT/P3;LT/O3;II)V

    new-instance v9, LT/N3;

    move-object v8, v9

    const/4 v13, 0x0

    const-string v10, "status_temp_ext_enabled"

    const/16 v14, 0x18

    move-object v11, v0

    move-object/from16 v12, v26

    invoke-direct/range {v9 .. v14}, LT/N3;-><init>(Ljava/lang/String;LT/P3;LT/O3;II)V

    new-instance v10, LT/N3;

    move-object v9, v10

    const/4 v14, 0x0

    const-string v11, "status_battery_enabled"

    const/16 v15, 0x18

    move-object v12, v0

    move-object/from16 v13, v26

    invoke-direct/range {v10 .. v15}, LT/N3;-><init>(Ljava/lang/String;LT/P3;LT/O3;II)V

    new-instance v11, LT/N3;

    move-object v10, v11

    const/4 v15, 0x0

    const-string v12, "rvc_black_bg"

    const/16 v16, 0x18

    move-object v13, v0

    move-object/from16 v14, v26

    invoke-direct/range {v11 .. v16}, LT/N3;-><init>(Ljava/lang/String;LT/P3;LT/O3;II)V

    new-instance v12, LT/N3;

    move-object v11, v12

    const/16 v16, 0x0

    const-string v13, "hvac_digital_temp"

    const/16 v17, 0x18

    move-object v14, v0

    move-object/from16 v15, v26

    invoke-direct/range {v12 .. v17}, LT/N3;-><init>(Ljava/lang/String;LT/P3;LT/O3;II)V

    new-instance v13, LT/N3;

    move-object v12, v13

    const/16 v17, 0x0

    const-string v14, "hvac_digital_batt"

    const/16 v18, 0x18

    move-object v15, v0

    move-object/from16 v16, v26

    invoke-direct/range {v13 .. v18}, LT/N3;-><init>(Ljava/lang/String;LT/P3;LT/O3;II)V

    new-instance v14, LT/N3;

    move-object v13, v14

    const/16 v18, 0x0

    const-string v15, "auto_route_on_aa_connect"

    const/16 v19, 0x18

    move-object/from16 v16, v0

    move-object/from16 v17, v26

    invoke-direct/range {v14 .. v19}, LT/N3;-><init>(Ljava/lang/String;LT/P3;LT/O3;II)V

    new-instance v15, LT/N3;

    move-object v14, v15

    const/16 v19, 0x0

    const-string v16, "auto_proxy_enabled"

    const/16 v20, 0x18

    move-object/from16 v17, v0

    move-object/from16 v18, v26

    invoke-direct/range {v15 .. v20}, LT/N3;-><init>(Ljava/lang/String;LT/P3;LT/O3;II)V

    new-instance v16, LT/N3;

    move-object/from16 v15, v16

    const/16 v20, 0x0

    const-string v17, "restart_aa_on_hu_boot"

    const/16 v21, 0x18

    move-object/from16 v18, v0

    move-object/from16 v19, v26

    invoke-direct/range {v16 .. v21}, LT/N3;-><init>(Ljava/lang/String;LT/P3;LT/O3;II)V

    new-instance v17, LT/N3;

    move-object/from16 v16, v17

    const/16 v21, 0x0

    const-string v18, "telemetry_autostart"

    const/16 v22, 0x18

    move-object/from16 v19, v0

    move-object/from16 v20, v26

    invoke-direct/range {v17 .. v22}, LT/N3;-><init>(Ljava/lang/String;LT/P3;LT/O3;II)V

    new-instance v18, LT/N3;

    move-object/from16 v17, v18

    const/16 v22, 0x0

    const-string v19, "avas_muted_saved"

    const/16 v23, 0x18

    move-object/from16 v20, v0

    move-object/from16 v21, v26

    invoke-direct/range {v18 .. v23}, LT/N3;-><init>(Ljava/lang/String;LT/P3;LT/O3;II)V

    new-instance v19, LT/N3;

    move-object/from16 v18, v19

    const/16 v23, 0x0

    const-string v20, "quick_access_enabled"

    const/16 v24, 0x18

    move-object/from16 v21, v0

    move-object/from16 v22, v26

    invoke-direct/range {v19 .. v24}, LT/N3;-><init>(Ljava/lang/String;LT/P3;LT/O3;II)V

    new-instance v20, LT/N3;

    move-object/from16 v19, v20

    const/16 v24, 0x0

    const-string v21, "aeb_restore_on_boot"

    const/16 v25, 0x18

    move-object/from16 v22, v0

    move-object/from16 v23, v26

    invoke-direct/range {v20 .. v25}, LT/N3;-><init>(Ljava/lang/String;LT/P3;LT/O3;II)V

    new-instance v21, LT/N3;

    move-object/from16 v20, v21

    sget-object v6, LT/P3;->b:LT/P3;

    const/16 v25, 0x3

    const-string v22, "fan_speed"

    const/16 v0, 0x8

    move-object/from16 v23, v6

    move-object/from16 v24, v26

    move/from16 v26, v0

    invoke-direct/range {v21 .. v26}, LT/N3;-><init>(Ljava/lang/String;LT/P3;LT/O3;II)V

    new-instance v0, LT/N3;

    move-object/from16 v21, v0

    sget-object v24, LT/O3;->b:LT/O3;

    const v4, 0x20020502

    const-string v1, "saved_regen"

    const/16 v5, 0x8

    move-object v2, v6

    move-object/from16 v3, v24

    invoke-direct/range {v0 .. v5}, LT/N3;-><init>(Ljava/lang/String;LT/P3;LT/O3;II)V

    new-instance v0, LT/N3;

    move-object/from16 v22, v0

    const v4, 0x22010102

    const-string v1, "saved_drive"

    invoke-direct/range {v0 .. v5}, LT/N3;-><init>(Ljava/lang/String;LT/P3;LT/O3;II)V

    new-instance v0, LT/N3;

    move-object/from16 v23, v0

    const/16 v4, 0x64

    const-string v1, "floater_alpha"

    invoke-direct/range {v0 .. v5}, LT/N3;-><init>(Ljava/lang/String;LT/P3;LT/O3;II)V

    filled-new-array/range {v7 .. v23}, [LT/N3;

    move-result-object v0

    invoke-static {v0}, Lw0/j;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, LT/Q3;->b:Ljava/util/List;

    invoke-static {v0}, Lw0/k;->V(Ljava/lang/Iterable;)I

    move-result v1

    invoke-static {v1}, Lw0/u;->U(I)I

    move-result v1

    const/16 v2, 0x10

    if-ge v1, v2, :cond_0

    move v1, v2

    :cond_0
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, LT/N3;

    iget-object v3, v3, LT/N3;->a:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    sput-object v2, LT/Q3;->c:Ljava/util/LinkedHashMap;

    invoke-static {}, Ljava/util/concurrent/ConcurrentHashMap;->newKeySet()Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    move-result-object v0

    const-string v1, "newKeySet(...)"

    invoke-static {v0, v1}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, LT/Q3;->d:Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 3

    const-string v0, "drive_regen_prefs"

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static c(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    const-string v0, "tela_preta_prefs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "getSharedPreferences(...)"

    invoke-static {p0, v0}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method


# virtual methods
.method public final declared-synchronized b(Landroid/app/Service;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    sget-object v0, LT/Q3;->e:LT/M3;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, LI0/f;->b(Ljava/lang/Object;)V

    const-string v0, "phone_sync_meta"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "getSharedPreferences(...)"

    invoke-static {v0, v1}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, LT/M3;

    invoke-direct {v1, v0}, LT/M3;-><init>(Landroid/content/SharedPreferences;)V

    invoke-static {p1}, LT/Q3;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    sput-object v1, LT/Q3;->e:LT/M3;

    new-instance v1, LT/M3;

    invoke-direct {v1, v0}, LT/M3;-><init>(Landroid/content/SharedPreferences;)V

    invoke-static {p1}, LT/Q3;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1, v1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method
