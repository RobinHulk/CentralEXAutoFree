.class public abstract LT/Y;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static volatile a:J = 0x0L

.field public static volatile b:LT/X; = null

.field public static final c:[I

.field public static final d:[I

.field public static final e:[I

.field public static volatile f:Z = false

.field public static g:Landroid/os/Handler; = null

.field public static h:J = 0x0L

.field public static final i:LT/a0;

.field public static volatile j:Z = false

.field public static volatile k:Ljava/lang/String; = "/data/local/tmp/fixes/central_boot.log"


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    const/4 v0, 0x6

    sget-object v1, LT/X;->c:LT/X;

    sput-object v1, LT/Y;->b:LT/X;

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, LT/Y;->c:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, LT/Y;->d:[I

    const v0, 0x41020500

    const v1, 0x2140a635

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, LT/Y;->e:[I

    new-instance v0, LT/a0;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, LT/a0;-><init>(I)V

    sput-object v0, LT/Y;->i:LT/a0;

    return-void

    nop

    :array_0
    .array-data 4
        -0xe246ac
        -0x1
        -0x14c5
        -0xff1a01
        -0xadae
        -0x58da
    .end array-data

    :array_1
    .array-data 4
        -0xedebe9
        -0x1000000
        -0xe5dc82
        -0xcee46e
        -0xc1d8dd
        -0xffb2c0
    .end array-data
.end method

.method public static A()Ljava/lang/String;
    .locals 5

    const-string v0, "/system/app/ConnAdaptor/ConnAdaptor.apk"

    invoke-static {v0}, LT/Y;->h0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " /system/app/ConnAdaptor/ConnAdaptor.apk "

    invoke-static {v1}, LT/Y;->h0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\n            if ip link show ap0 >/dev/null 2>&1; then\n  ip link set ap0 down 2>/dev/null || true\n  ip rule show | grep -w \'ap0\' | awk \'{print $1}\' | sed \'s/://\' | while read p; do ip rule del prio $p 2>/dev/null; done\nfi\nsleep 1\n            am force-stop com.njda.adapter\n            am force-stop com.njda.aauto\n            sleep 2\n            umount "

    const-string v3, " 2>/dev/null || umount -l "

    const-string v4, " 2>/dev/null || true\n            if grep -F "

    invoke-static {v2, v0, v3, v0, v4}, LM/d0;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " /proc/mounts >/dev/null 2>&1; then echo \"UNMOUNT_FALHOU\"; else echo \"desativado\"; fi\n        "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LO0/l;->n0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static B()Ljava/lang/String;
    .locals 5

    new-instance v0, LT/a3;

    const/16 v1, 0xd

    invoke-direct {v0, v1}, LT/a3;-><init>(I)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\n            if grep -F "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " /system/bin/CarplayMonitor "

    invoke-virtual {v0, v2}, LT/a3;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " /proc/mounts >/dev/null 2>&1; then\n              "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/system/bin/CarplayMonitor"

    invoke-static {v3}, LT/Y;->l0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n              if grep -F "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, LT/a3;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " /proc/mounts >/dev/null 2>&1; then\n                echo \"MONITOR_UMOUNT_FALHOU\"\n              else\n                echo \"MONITOR_DESMONTADO\"\n              fi\n            else\n              echo \"MONITOR_JA_ESTAVA_DE_FABRICA\"\n            fi\n            _md=$(md5sum "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, LT/a3;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " 2>/dev/null | awk \'{print $1}\')\n            _pid=$(pidof CarplayMonitor 2>/dev/null | awk \'{print $1}\')\n            _run=$([ -n \"$_pid\" ] && md5sum /proc/$_pid/exe 2>/dev/null | awk \'{print $1}\')\n            echo \"MONITOR_PATH_MD5=$_md RUNNING_MD5=$_run\"\n            echo \"MONITOR_SEM_REINICIO (volta de f\u00e1brica no pr\u00f3ximo boot)\"\n            echo \"== fim ==\"\n        "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LO0/l;->n0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static C()Ljava/lang/String;
    .locals 10

    const-string v0, "/data/local/tmp"

    invoke-static {v0}, LT/Y;->h0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "/data/local/tmp/apks"

    invoke-static {v1}, LT/Y;->h0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "/data/local/tmp/sons"

    invoke-static {v2}, LT/Y;->h0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "/data/local/tmp/fixes"

    invoke-static {v3}, LT/Y;->h0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "/sdcard/Download"

    invoke-static {v4}, LT/Y;->h0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "/storage/emulated/0/Download"

    invoke-static {v5}, LT/Y;->h0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "/data/local/tmp/soms"

    invoke-static {v6}, LT/Y;->h0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "\n            [ -d "

    const-string v8, " ] && [ ! -d "

    const-string v9, " ] && mv "

    invoke-static {v7, v6, v8, v2, v9}, LM/d0;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0x20

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " 2>/dev/null || true\n            for _centdir in "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "; do\n              mkdir -p \"$_centdir\" 2>/dev/null || true\n              if [ -d \"$_centdir\" ]; then chmod 755 \"$_centdir\" 2>/dev/null || true; fi\n            done\n            for _appdir in "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, "; do\n              if [ -d \"$_appdir\" ]; then\n                chown system:system \"$_appdir\" 2>/dev/null || true\n                chmod 775 \"$_appdir\" 2>/dev/null || true\n              fi\n            done\n            for _centf in "

    const-string v1, "/ca_fix.apk "

    invoke-static {v7, v3, v0, v3, v1}, LM/d0;->q(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/central_boot.sh "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/central_boot.log; do\n              if [ -f \"$_centf\" ]; then\n                chown system:system \"$_centf\" 2>/dev/null || true\n                chmod 664 \"$_centf\" 2>/dev/null || true\n              fi\n            done\n        "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LO0/l;->n0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static D(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p0, v0}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ex/auto/HomeWidgetsPollService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static E(Landroid/content/Context;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p0, v0}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, LT/Y;->a(Landroid/content/Context;)Z

    move-result v0

    const-class v1, Lcom/ex/auto/HomeFloatingWidgetsService;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    sget-object p0, Lcom/ex/auto/HomeFloatingWidgetsService;->R:Lcom/ex/auto/HomeFloatingWidgetsService;

    if-eqz p0, :cond_1

    iget-object v0, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->c:Landroid/os/Handler;

    new-instance v1, LT/w1;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, LT/w1;-><init>(Lcom/ex/auto/HomeFloatingWidgetsService;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public static F(Landroid/content/Context;)V
    .locals 4

    const-string v0, "ctx"

    invoke-static {p0, v0}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tela_preta_prefs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/ex/auto/ModoOficinaTriggerService;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    :try_start_0
    sget-object v3, LT/J3;->a:Ljava/util/List;

    invoke-static {v0}, LI0/f;->b(Ljava/lang/Object;)V

    const-string v3, "modo_oficina"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ex/auto/ModoOficinaTriggerService;->f:Lcom/ex/auto/ModoOficinaTriggerService;

    if-nez v0, :cond_1

    invoke-virtual {p0, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v2}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    :goto_0
    return-void
.end method

.method public static G(I)Ljava/lang/String;
    .locals 4

    div-int/lit8 v0, p0, 0x3c

    rem-int/lit8 p0, p0, 0x3c

    const/16 v1, 0x73

    const-string v2, "min"

    if-lez v0, :cond_0

    if-lez p0, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    if-lez v0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static final H(Landroid/app/Service;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)Landroid/app/Notification;
    .locals 2

    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.app.NotificationManager"

    invoke-static {v0, v1}, LI0/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/app/NotificationManager;

    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Landroid/app/NotificationChannel;

    invoke-direct {v1, p1, p2, p6}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const/4 p2, 0x0

    invoke-virtual {v1, p2}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    :cond_0
    new-instance p2, Landroid/app/Notification$Builder;

    invoke-direct {p2, p0, p1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p0

    invoke-virtual {p0, p4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object p0

    const-string p1, "setSmallIcon(...)"

    invoke-static {p0, p1}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p5, :cond_1

    invoke-virtual {p0, p5}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    :cond_1
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p0

    const-string p1, "build(...)"

    invoke-static {p0, p1}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static synthetic I(Landroid/app/Service;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;II)Landroid/app/Notification;
    .locals 7

    and-int/lit8 v0, p7, 0x10

    if-eqz v0, :cond_0

    const/4 p5, 0x0

    :cond_0
    move-object v5, p5

    and-int/lit8 p5, p7, 0x20

    if-eqz p5, :cond_1

    const/4 p6, 0x1

    :cond_1
    move v6, p6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-static/range {v0 .. v6}, LT/Y;->H(Landroid/app/Service;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)Landroid/app/Notification;

    move-result-object p0

    return-object p0
.end method

.method public static J(Landroid/os/IBinder;)Ljava/util/List;
    .locals 14

    const-string v0, "CarplayDeviceBinder"

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    const-string v2, "obtain(...)"

    invoke-static {v1, v2}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    invoke-static {v3, v2}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    :try_start_0
    const-string v4, "com.njda.carplay.connection.devicelist.ICarplayDeviceManager"

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/16 v4, 0x8

    const/4 v5, 0x0

    invoke-interface {p0, v4, v1, v3, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "transact(getDeviceList) devolveu false"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :try_start_1
    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result p0

    if-gez p0, :cond_1

    sget-object p0, Lw0/q;->a:Lw0/q;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    return-object p0

    :cond_1
    :try_start_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, p0}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    if-ge v5, p0, :cond_3

    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_2

    new-instance v6, LT/W;

    invoke-virtual {v3}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3}, Landroid/os/Parcel;->readByte()B

    move-result v11

    invoke-virtual {v3}, Landroid/os/Parcel;->readByte()B

    move-result v12

    invoke-virtual {v3}, Landroid/os/Parcel;->readByte()B

    move-result v13

    move-object v7, v6

    invoke-direct/range {v7 .. v13}, LT/W;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;BBB)V

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    move-object v2, v4

    goto :goto_2

    :goto_1
    :try_start_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getDeviceList(txn 8): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    :goto_2
    return-object v2

    :catchall_1
    move-exception p0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public static K(Landroid/os/IBinder;)Ljava/util/List;
    .locals 12

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const-string v1, "obtain(...)"

    invoke-static {v0, v1}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    invoke-static {v2, v1}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    const-string v1, "com.njda.adapter.androidauto.connection.devicelist.IDeviceManager"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x6

    const/4 v3, 0x0

    invoke-interface {p0, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result p0

    if-gez p0, :cond_0

    sget-object p0, Lw0/q;->a:Lw0/q;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    return-object p0

    :cond_0
    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    if-ge v3, p0, :cond_2

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1

    new-instance v4, LT/a;

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    invoke-virtual {v2}, Landroid/os/Parcel;->readByte()B

    move-result v11

    move-object v5, v4

    invoke-direct/range {v5 .. v11}, LT/a;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IB)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    goto :goto_3

    :goto_2
    :try_start_2
    const-string v1, "AaDeviceBinder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDeviceList(txn 6): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    const/4 v1, 0x0

    :goto_3
    return-object v1

    :catchall_1
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public static L(Lcom/ex/auto/LyricsFloaterService;)I
    .locals 2

    const-string v0, "lyrics_style_config"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "font"

    const v1, -0xe246ac

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static M(Lcom/ex/auto/LyricsFloaterService;)F
    .locals 2

    const-string v0, "lyrics_style_config"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "scale"

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result p0

    const v0, 0x3f19999a    # 0.6f

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {p0, v0, v1}, LA/b;->n(FFF)F

    move-result p0

    return p0
.end method

.method public static N(Ljava/io/File;Z)V
    .locals 6

    const-string v0, "getAbsolutePath(...)"

    const-string v1, "/data/local/tmp/fixes"

    const-string v2, "chown system:system "

    :try_start_0
    invoke-static {p1}, LT/Y;->z(Z)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, LA/b;->k0(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "grava\u00e7\u00e3o direta falhou ("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ") \u2014 apagando o arquivo alheio e recriando"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "BootScript"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_0

    :try_start_1
    new-instance v3, LT/I1;

    const/16 v5, 0x15b3

    invoke-direct {v3, v5}, LT/I1;-><init>(I)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, LT/Y;->g0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, LT/Y;->g0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " 2>/dev/null; chmod 775 "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, LT/Y;->g0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " 2>/dev/null; chmod 664 "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, LT/Y;->g0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " 2>/dev/null; echo perms_ok"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x1f40

    invoke-virtual {v3, v1, v0}, LT/I1;->b(ILjava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "canal root indispon\u00edvel pra corrigir permiss\u00f5es: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v4}, LM/d0;->r(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_0
    :goto_0
    invoke-static {p1}, LT/Y;->z(Z)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, LA/b;->k0(Ljava/io/File;Ljava/lang/String;)V

    return-void
.end method

.method public static O(Landroid/content/ContextWrapper;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "context"

    invoke-static {p0, v0}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const-string v1, "getString(...)"

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "regressiva"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const p1, 0x7f0f0287

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "power_off"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    const p1, 0x7f0f0283

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "telemetry"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_0

    :cond_2
    const p1, 0x7f0f028d

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_3
    const-string p0, "drive_regen"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto/16 :goto_0

    :cond_3
    const-string p1, "Drive/Regen"

    goto/16 :goto_0

    :sswitch_4
    const-string v0, "aa_reset"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto/16 :goto_0

    :cond_4
    const p1, 0x7f0f0288

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_5
    const-string v0, "cronometro"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto/16 :goto_0

    :cond_5
    const p1, 0x7f0f027c

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_6
    const-string v0, "fullscreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto/16 :goto_0

    :cond_6
    const p1, 0x7f0f027e

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_7
    const-string p0, "wifi"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto/16 :goto_0

    :cond_7
    const-string p1, "Wi-Fi"

    goto/16 :goto_0

    :sswitch_8
    const-string p0, "avas"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    goto/16 :goto_0

    :cond_8
    const-string p1, "AVAS"

    goto/16 :goto_0

    :sswitch_9
    const-string p0, "aeb"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    goto/16 :goto_0

    :cond_9
    const-string p1, "AEB"

    goto/16 :goto_0

    :sswitch_a
    const-string v0, "screen_rest"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto/16 :goto_0

    :cond_a
    const p1, 0x7f0f028b

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_b
    const-string v0, "split_screen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto/16 :goto_0

    :cond_b
    const p1, 0x7f0f028c

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_c
    const-string v0, "screen_off"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    goto/16 :goto_0

    :cond_c
    const p1, 0x7f0f028a

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_d
    const-string v0, "recirc_guard"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_0

    :cond_d
    const p1, 0x7f0f0299

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_e
    const-string v0, "app_pip"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_0

    :cond_e
    const p1, 0x7f0f0282

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_f
    const-string p0, "karaoke"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_f

    goto :goto_0

    :cond_f
    const-string p1, "Karaok\u00ea"

    goto :goto_0

    :sswitch_10
    const-string v0, "aa_activate"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    goto :goto_0

    :cond_10
    const p1, 0x7f0f0278

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_11
    const-string v0, "close_apps"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_0

    :cond_11
    const p1, 0x7f0f027a

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7ae95fa7 -> :sswitch_11
        -0x62d361ce -> :sswitch_10
        -0x37caea1c -> :sswitch_f
        -0x2f4d9d87 -> :sswitch_e
        -0x2ce42810 -> :sswitch_d
        -0x18db78e4 -> :sswitch_c
        -0xab92ecf -> :sswitch_b
        -0x2924839 -> :sswitch_a
        0x178be -> :sswitch_9
        0x2ddf27 -> :sswitch_8
        0x37af15 -> :sswitch_7
        0x68f7bbb -> :sswitch_6
        0x809b218 -> :sswitch_5
        0x1020f470 -> :sswitch_4
        0x2b4e1d48 -> :sswitch_3
        0x2e8323b9 -> :sswitch_2
        0x32655b35 -> :sswitch_1
        0x54b7810d -> :sswitch_0
    .end sparse-switch
.end method

.method public static P(Lcom/ex/auto/MainActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "context"

    invoke-static {p0, v0}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "id"

    invoke-static {p1, v0}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const-string v1, "getString(...)"

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string p0, "regressiva"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto/16 :goto_0

    :cond_0
    const-string p0, "\u23f3"

    goto/16 :goto_1

    :sswitch_1
    const-string p0, "power_off"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto/16 :goto_0

    :cond_1
    const-string p0, "OFF"

    goto/16 :goto_1

    :sswitch_2
    const-string p0, "telemetry"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto/16 :goto_0

    :cond_2
    const-string p0, "\ud83d\udce1"

    goto/16 :goto_1

    :sswitch_3
    const-string p0, "drive_regen"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto/16 :goto_0

    :cond_3
    const-string p0, "\ud83d\ude97"

    goto/16 :goto_1

    :sswitch_4
    const-string p0, "aa_reset"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto/16 :goto_0

    :cond_4
    const-string p0, "\u21ba AA"

    goto/16 :goto_1

    :sswitch_5
    const-string p0, "cronometro"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto/16 :goto_0

    :cond_5
    const-string p0, "\u23f1"

    goto/16 :goto_1

    :sswitch_6
    const-string p0, "fullscreen"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto/16 :goto_0

    :cond_6
    const-string p0, "\u26f6"

    goto/16 :goto_1

    :sswitch_7
    const-string p0, "wifi"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto/16 :goto_0

    :cond_7
    const-string p0, "WiFi"

    goto/16 :goto_1

    :sswitch_8
    const-string p0, "avas"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    goto/16 :goto_0

    :cond_8
    const-string p0, "AVAS"

    goto/16 :goto_1

    :sswitch_9
    const-string p0, "aeb"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    goto/16 :goto_0

    :cond_9
    const-string p0, "AEB"

    goto/16 :goto_1

    :sswitch_a
    const-string p0, "screen_rest"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    goto :goto_0

    :cond_a
    const-string p0, "\ud83d\udd50"

    goto/16 :goto_1

    :sswitch_b
    const-string p0, "split_screen"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b

    goto :goto_0

    :cond_b
    const-string p0, "\u25eb"

    goto :goto_1

    :sswitch_c
    const-string v0, "screen_off"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    goto :goto_0

    :cond_c
    const p1, 0x7f0f0289

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v1}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :sswitch_d
    const-string p0, "recirc_guard"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_d

    goto :goto_0

    :cond_d
    const-string p0, "\ud83c\udf00"

    goto :goto_1

    :sswitch_e
    const-string p0, "app_pip"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_e

    goto :goto_0

    :cond_e
    const-string p0, "\u25a2"

    goto :goto_1

    :sswitch_f
    const-string p0, "karaoke"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_f

    goto :goto_0

    :cond_f
    const-string p0, "\ud83c\udfa4"

    goto :goto_1

    :sswitch_10
    const-string p0, "aa_activate"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_10

    goto :goto_0

    :cond_10
    const-string p0, "\u25b6 AA"

    goto :goto_1

    :sswitch_11
    const-string v0, "close_apps"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_11

    :goto_0
    const-string p0, "?"

    goto :goto_1

    :cond_11
    const p1, 0x7f0f027b

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v1}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1
    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x7ae95fa7 -> :sswitch_11
        -0x62d361ce -> :sswitch_10
        -0x37caea1c -> :sswitch_f
        -0x2f4d9d87 -> :sswitch_e
        -0x2ce42810 -> :sswitch_d
        -0x18db78e4 -> :sswitch_c
        -0xab92ecf -> :sswitch_b
        -0x2924839 -> :sswitch_a
        0x178be -> :sswitch_9
        0x2ddf27 -> :sswitch_8
        0x37af15 -> :sswitch_7
        0x68f7bbb -> :sswitch_6
        0x809b218 -> :sswitch_5
        0x1020f470 -> :sswitch_4
        0x2b4e1d48 -> :sswitch_3
        0x2e8323b9 -> :sswitch_2
        0x32655b35 -> :sswitch_1
        0x54b7810d -> :sswitch_0
    .end sparse-switch
.end method

.method public static Q()Ljava/lang/String;
    .locals 4

    const-string v0, " /system/app/ConnAdaptor/ConnAdaptor.apk "

    invoke-static {v0}, LT/Y;->h0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\n            "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, LT/Y;->C()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n            setprop persist.cpaa.enable 1\n            ls -l "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/data/local/tmp/fixes/ca_fix.apk"

    invoke-static {v2}, LT/Y;->h0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " 2>&1 || { echo \"ERRO_falta_ca_fix\"; exit 30; }\n            echo \"SRC_MD5=$(md5sum "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, LT/Y;->h0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " 2>/dev/null | awk \'{print $1}\')\"\n            if grep -F "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " /proc/mounts >/dev/null 2>&1; then\n              "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/system/app/ConnAdaptor/ConnAdaptor.apk"

    invoke-static {v3}, LT/Y;->l0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n              if grep -F "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " /proc/mounts >/dev/null 2>&1; then\n                echo \"BIND_ANTIGO_NAO_SAIU\"\n              else\n                echo \"BIND_ANTIGO_DESMONTADO\"\n              fi\n            fi\n            chmod 644 "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, LT/Y;->h0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n            _OUT=$(pm install -r -g "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, LT/Y;->h0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " 2>&1 | tail -n1)\n            echo \"$_OUT\"\n            # SEM FALLBACK DE BIND PARA O ConnAdaptor.\n            #\n            # O bind sobre /system \u00e9 o mecanismo do Ar Digital e dos outros patches de sistema \u2014 n\u00e3o\n            # do ConnAdaptor. Aqui ele produzia um estado meio-funcionando: o APK aparecia montado,\n            # a tela dizia \"ativado\", e o CarplayMonitor n\u00e3o trabalhava. Pior que falhar, porque\n            # esconde a falha.\n            #\n            # Quando o `pm install` recusa por VERSION_DOWNGRADE (acontece na f\u00e1brica 1121, para a\n            # qual ainda n\u00e3o publicamos artefato), o certo \u00e9 dizer isso e parar. Ativar \u00e9 INSTALAR.\n            case \"$_OUT\" in\n              *INSTALL_FAILED_VERSION_DOWNGRADE*)\n                echo \"CONNADAPTOR_DOWNGRADE_SEM_ARTEFATO\"\n                ;;\n            esac\n            _p=$(pm path com.njda.adapter 2>/dev/null)\n            echo \"PM_PATH=$_p\"\n            case \"$_p\" in\n              *\"/data/app/\"*)\n                echo \"CONNADAPTOR_INSTALL_OK\"\n                rm -f "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/data/local/tmp/fixes/connadaptor_em_bind"

    invoke-static {v2}, LT/Y;->h0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " 2>/dev/null || true\n                ;;\n              *)\n                # Montagem legada N\u00c3O \u00e9 instala\u00e7\u00e3o. Enquanto isto imprimia \"..._OK (bind)\", a tela\n                # dava o ConnAdaptor por ativado num estado que `connAdaptorAtivado()` (s\u00f3 /data/app)\n                # responde `false` \u2014 e o CarplayMonitor n\u00e3o trabalhava. Agora as duas pontas dizem a\n                # mesma coisa, e o BootScript desfaz a montagem no pr\u00f3ximo boot.\n                if grep -F "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " /proc/mounts >/dev/null 2>&1; then\n                  echo \"CONNADAPTOR_INSTALL_FALHOU (montagem legada no lugar \u2014 sera desfeita no boot)\"\n                else\n                  echo \"CONNADAPTOR_INSTALL_FALHOU\"\n                fi\n                ;;\n            esac\n            am force-stop com.njda.adapter\n            am force-stop com.njda.aauto\n            sleep 5\n            _UDC=$(cat /sys/class/udc/*/state 2>/dev/null | head -1)\n            _HOSTS=$(ls /sys/bus/usb/devices/ 2>/dev/null | wc -l)\n            if [ \"$_UDC\" = \"configured\" ] && [ \"$_HOSTS\" = \"0\" ]; then\n              echo \"AAUTOMONITOR_RESTART_PULADO (cabo USB em modo device \u2014 reiniciar aqui trava o servi\u00e7o)\"\n            else\n              setprop ctl.restart AAutoMonitor\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "AAUTOMONITOR"

    const-string v2, "AAutoMonitor"

    invoke-static {v2, v0}, LT/Y;->m0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "              "

    invoke-static {v0, v2}, LO0/l;->m0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n            fi\n        "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LO0/l;->n0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static R(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "context"

    invoke-static {p0, v0}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p0, p0, 0x30

    const/16 v0, 0x20

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static S()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\n            "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/system/app/ConnAdaptor/ConnAdaptor.apk"

    invoke-static {v1}, LT/Y;->l0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n            rm -f "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/data/local/tmp/fixes/connadaptor_em_bind"

    invoke-static {v1}, LT/Y;->h0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n            if grep -F "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " /system/app/ConnAdaptor/ConnAdaptor.apk "

    invoke-static {v1}, LT/Y;->h0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " /proc/mounts >/dev/null 2>&1; then\n              echo \"BIND_LEGADO_AINDA_MONTADO\"\n            else\n              echo \"BIND_LEGADO_LIMPO\"\n            fi\n        "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LO0/l;->n0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static T(Landroid/content/Context;I)LT/k;
    .locals 10

    const-string v0, "ctx"

    invoke-static {p0, v0}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ac_programs_prefs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "program_"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "steps"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    move v4, v1

    :goto_0
    if-ge v4, v3, :cond_1

    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    new-instance v6, LT/l;

    const-string v7, "type"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "getString(...)"

    invoke-static {v7, v8}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "value"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v8

    invoke-direct {v6, v7, v8, v9}, LT/l;-><init>(Ljava/lang/String;D)V

    invoke-virtual {p0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    new-instance v2, LT/k;

    const-string v3, "repeat"

    invoke-virtual {p1, v3, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-direct {v2, p0, p1}, LT/k;-><init>(Ljava/util/ArrayList;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v2

    :catchall_0
    :goto_1
    return-object v0
.end method

.method public static U(Landroid/content/Context;Ljava/lang/String;III)LT/K3;
    .locals 8

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object v0, v1

    :cond_0
    const-string v1, "overlay_positions_config"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "schema"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_1

    invoke-static {v0, p1}, LT/Y;->u(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    new-instance p0, LT/K3;

    invoke-direct {p0, p2, p3, p4}, LT/K3;-><init>(III)V

    return-object p0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "gravity"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, p3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "y"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4, p4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "screen_width"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "screen_height"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {p0}, LT/Y;->e0(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object p0

    if-ne v1, p2, :cond_3

    iget v6, p0, Landroid/graphics/Point;->x:I

    if-lez v6, :cond_3

    neg-int v7, v6

    if-le v3, v7, :cond_3

    mul-int/lit8 v6, v6, 0x2

    if-ge v3, v6, :cond_3

    iget p0, p0, Landroid/graphics/Point;->y:I

    if-lez p0, :cond_3

    neg-int v6, p0

    if-le v4, v6, :cond_3

    mul-int/lit8 p0, p0, 0x2

    if-ge v4, p0, :cond_3

    if-lez v5, :cond_3

    if-gtz v2, :cond_2

    goto :goto_0

    :cond_2
    new-instance p0, LT/K3;

    invoke-direct {p0, v1, v3, v4}, LT/K3;-><init>(III)V

    return-object p0

    :cond_3
    :goto_0
    invoke-static {v0, p1}, LT/Y;->u(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    new-instance p0, LT/K3;

    invoke-direct {p0, p2, p3, p4}, LT/K3;-><init>(III)V

    return-object p0
.end method

.method public static V(Landroid/content/Context;)Ljava/util/List;
    .locals 3

    const-string v0, "ctx"

    invoke-static {p0, v0}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "background_keep_alive_prefs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "packages"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    sget-object p0, Lw0/q;->a:Lw0/q;

    return-object p0

    :cond_0
    const-string v0, ","

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, LO0/j;->O0(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p0}, Lw0/k;->V(Ljava/lang/Iterable;)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, LO0/j;->X0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    return-object p0
.end method

.method public static W(Landroid/content/Context;)Ljava/util/Set;
    .locals 3

    const-string v0, "context"

    invoke-static {p0, v0}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "favorite_cards_prefs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "ids"

    const-string v1, ""

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, p0

    :goto_0
    const-string p0, ","

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, LO0/j;->O0(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p0}, Lw0/k;->V(Ljava/lang/Iterable;)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, LO0/j;->X0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    invoke-static {p0}, Lw0/i;->k0(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static X(Landroid/content/Context;)Ljava/util/List;
    .locals 3

    const-string v0, "ctx"

    invoke-static {p0, v0}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "close_apps_whitelist_prefs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "packages"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    sget-object p0, Lw0/q;->a:Lw0/q;

    return-object p0

    :cond_0
    const-string v0, ","

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, LO0/j;->O0(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p0}, Lw0/k;->V(Ljava/lang/Iterable;)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, LO0/j;->X0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    return-object p0
.end method

.method public static Y(Landroid/content/Context;)Ljava/util/List;
    .locals 3

    const-string v0, "ctx"

    invoke-static {p0, v0}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "favorite_apps_prefs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "packages"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    sget-object p0, Lw0/q;->a:Lw0/q;

    return-object p0

    :cond_0
    const-string v0, ","

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, LO0/j;->O0(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p0}, Lw0/k;->V(Ljava/lang/Iterable;)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, LO0/j;->X0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    return-object p0
.end method

.method public static Z(Ljava/lang/String;)V
    .locals 4

    sget-object v0, Lcom/ex/auto/HomeFloatingWidgetsService;->R:Lcom/ex/auto/HomeFloatingWidgetsService;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/ex/auto/HomeFloatingWidgetsService;->c:Landroid/os/Handler;

    new-instance v2, LT/H;

    const/4 v3, 0x7

    invoke-direct {v2, v0, v3, p0}, LT/H;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 3

    const-string v0, "context"

    invoke-static {p0, v0}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tela_preta_prefs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    sget-object v0, Lcom/ex/auto/HomeFloatingWidgetsService;->Q:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {p0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :cond_2
    :goto_0
    return v1
.end method

.method public static a0()V
    .locals 4

    sget-object v0, Lcom/ex/auto/CentralWatchdogService;->g2:Lcom/ex/auto/CentralWatchdogService;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/ex/auto/CentralWatchdogService;->a:Landroid/os/Handler;

    new-instance v2, LT/t0;

    const/16 v3, 0x16

    invoke-direct {v2, v0, v3}, LT/t0;-><init>(Lcom/ex/auto/CentralWatchdogService;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public static b(I)V
    .locals 3

    const/4 v0, 0x0

    const/16 v1, 0xff

    invoke-static {p0, v0, v1}, LA/b;->o(III)I

    move-result p0

    :try_start_0
    new-instance v0, LT/I1;

    const/16 v1, 0x15b3

    invoke-direct {v0, v1}, LT/I1;-><init>(I)V

    const-string v1, "setenforce 0 2>/dev/null"

    const/16 v2, 0xbb8

    invoke-virtual {v0, v2, v1}, LT/I1;->b(ILjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    :goto_0
    :try_start_1
    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/class/leds/lcd-backlight/brightness"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, LA/b;->k0(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "applyBrightness: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "BrightMem"

    invoke-static {p0, v0, v1}, LM/d0;->r(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public static b0(Landroid/content/Context;Landroid/content/SharedPreferences;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p0, v0}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "remember_brightness"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, LT/Y;->R(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "bright_night"

    goto :goto_0

    :cond_1
    const-string v0, "bright_day"

    :goto_0
    const/4 v1, -0x1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x1

    if-gt v0, p1, :cond_3

    const/16 v0, 0x100

    if-ge p1, v0, :cond_3

    invoke-static {p1}, LT/Y;->b(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "restore: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, LT/Y;->R(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "noite(farol on)"

    goto :goto_1

    :cond_2
    const-string p0, "dia(farol off)"

    :goto_1
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " -> "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BrightMem"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method

.method public static c()Ljava/lang/String;
    .locals 5

    new-instance v0, LT/n;

    const/16 v1, 0x16

    invoke-direct {v0, v1}, LT/n;-><init>(I)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\n            setenforce 0 2>/dev/null || true\n            "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, LT/Y;->C()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n            WAS_ACTIVE=0\n            if grep -F \" /system/app/GeelyAutoKeyServer/GeelyAutoKeyServer.apk \" /proc/mounts >/dev/null 2>&1; then\n              WAS_ACTIVE=1\n              echo \"== bind ATIVO: parar KeyServer, umount, trocar patch ==\"\n              am force-stop com.flyme.auto.keyserver 2>/dev/null || true\n              sleep 2\n              "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/system/app/GeelyAutoKeyServer/GeelyAutoKeyServer.apk"

    invoke-static {v2}, LT/Y;->l0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n              grep -F \" /system/app/GeelyAutoKeyServer/GeelyAutoKeyServer.apk \" /proc/mounts >/dev/null 2>&1 && exit 51\n            else\n              echo \"== bind INATIVO: s\u00f3 trocar o patch de staging ==\"\n            fi\n            mkdir -p "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/data/local/tmp/fixes"

    invoke-virtual {v0, v2}, LT/n;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " 2>&1 || exit 52\n            # Remove o patch antigo ANTES de copiar: o ficheiro existente fica com label\n            # system_app_file:s0 root:root 644 e o cp -f por cima \u00e9 negado (SELinux/relabel).\n            rm -f "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/data/local/tmp/fixes/GeelyAutoKeyServer-patched.apk"

    invoke-virtual {v0, v2}, LT/n;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " 2>&1 || true\n            cp -f "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/data/local/tmp/GeelyAutoKeyServer-patched-update.apk"

    invoke-virtual {v0, v3}, LT/n;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x20

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, LT/n;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " 2>&1 || exit 53\n            chown root:root "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, LT/n;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " 2>&1 || true\n            chmod 644 "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, LT/n;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " 2>&1 || true\n            chcon u:object_r:system_app_file:s0 "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, LT/n;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " 2>&1 || true\n            restorecon -v "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, LT/n;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " 2>&1 || true\n            rm -f "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, LT/n;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " 2>&1 || true\n            echo \"BIND_ATIVO=$WAS_ACTIVE\"\n            echo \"keyserver_patch_aplicado\"\n        "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LO0/l;->n0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static c0(Landroid/content/Context;Landroid/content/SharedPreferences;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p0, v0}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "remember_brightness"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/class/leds/lcd-backlight/brightness"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, LA/b;->b0(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LO0/j;->X0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LO0/r;->p0(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gtz v0, :cond_1

    return-void

    :cond_1
    invoke-static {p0}, LT/Y;->R(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "bright_night"

    goto :goto_1

    :cond_2
    const-string p0, "bright_day"

    :goto_1
    const/4 v1, -0x1

    invoke-interface {p1, p0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_3

    return-void

    :cond_3
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, p0, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_4
    return-void
.end method

.method public static d()Ljava/lang/String;
    .locals 5

    const-string v0, " /system/app/GeelyAutoKeyServer/GeelyAutoKeyServer.apk "

    invoke-static {v0}, LT/Y;->h0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\n            "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, LT/Y;->C()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n            setenforce 0\n            ls -l "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/data/local/tmp/fixes/GeelyAutoKeyServer-patched.apk"

    invoke-static {v3}, LT/Y;->h0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " 2>&1 || { echo \"ERRO_falta_patch\"; exit 30; }\n            chown root:root "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, LT/Y;->h0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n            chmod 644 "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, LT/Y;->h0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n            chcon u:object_r:system_app_file:s0 "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, LT/Y;->h0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/system/app/GeelyAutoKeyServer/GeelyAutoKeyServer.apk"

    invoke-static {v2}, LT/Y;->l0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n            mount --bind "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, LT/Y;->h0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v2}, LT/Y;->h0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n            restorecon -v "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, LT/Y;->h0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n            rm -rf /data/dalvik-cache/*/system@app@GeelyAutoKeyServer*\n            am force-stop com.flyme.auto.keyserver\n            sleep 1\n            am start-foreground-service -n com.flyme.auto.keyserver/com.flyme.auto.keyserver.service.AutoKeyService 2>/dev/null || true\n            sleep 2\n            _svcrun=$(ps -A 2>/dev/null | grep -c \"com.flyme.auto.keyserver\")\n            if [ \"$_svcrun\" = \"0\" ]; then\n              echo \"AVISO: servico nao respondeu na 1a tentativa, tentando de novo\"\n              am start-foreground-service -n com.flyme.auto.keyserver/com.flyme.auto.keyserver.service.AutoKeyService 2>/dev/null || true\n              sleep 2\n              _svcrun=$(ps -A 2>/dev/null | grep -c \"com.flyme.auto.keyserver\")\n            fi\n            if [ \"$_svcrun\" != \"0\" ]; then echo \"KEYSERVER_SERVICE_RUNNING\"; else echo \"KEYSERVER_SERVICE_NAO_RODANDO\"; fi\n            if grep -F "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " /proc/mounts >/dev/null 2>&1; then echo \"BIND_KEYSERVER_MOUNT_OK\"; else echo \"BIND_KEYSERVER_NAO_CONFIRMADO\"; fi\n        "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LO0/l;->n0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static d0(Landroid/content/Context;Ljava/lang/String;III)V
    .locals 3

    invoke-static {p0}, LT/Y;->e0(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object p0, v1

    :cond_0
    const-string v1, "overlay_positions_config"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "schema"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "gravity"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p2, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "y"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p2, p4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p2, "screen_width"

    invoke-static {p1, p2}, Landroidx/fragment/app/Q;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget p3, v0, Landroid/graphics/Point;->x:I

    invoke-interface {p0, p2, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p2, "screen_height"

    invoke-static {p1, p2}, Landroidx/fragment/app/Q;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget p2, v0, Landroid/graphics/Point;->y:I

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static e(Landroid/content/Context;LT/r1;)Landroid/widget/RemoteViews;
    .locals 11

    const-string v0, "context"

    invoke-static {p0, v0}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0c006f

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    invoke-static {p0}, LT/H1;->a(Landroid/content/Context;)I

    move-result v1

    const v2, 0x7f090305

    const-string v3, "setBackgroundResource"

    invoke-virtual {v0, v2, v3, v1}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    invoke-static {p0}, LT/H1;->o(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v9

    const v1, 0x7f0f0360

    invoke-virtual {v9, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0902e6

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v1, p1, LT/r1;->a:Ljava/lang/Boolean;

    invoke-static {v1, v8}, LI0/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    const v1, 0x7f0f0363

    invoke-virtual {v9, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v10, "getString(...)"

    invoke-static {v6, v10}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const v3, 0x7f0900e9

    const v4, 0x7f0902f5

    const-string v7, "com.ex.auto.widget.WHEEL_HEAT_TOGGLE"

    move-object v1, v0

    move-object v2, p0

    invoke-static/range {v1 .. v7}, LT/Y;->q(Landroid/widget/RemoteViews;Landroid/content/Context;IIZLjava/lang/String;Ljava/lang/String;)V

    iget-object v1, p1, LT/r1;->b:Ljava/lang/Boolean;

    invoke-static {v1, v8}, LI0/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    const v1, 0x7f0f0365

    invoke-virtual {v9, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v10}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const v3, 0x7f0900db

    const v4, 0x7f0902e5

    const-string v7, "com.ex.auto.widget.REAR_DEFROST_TOGGLE"

    move-object v1, v0

    move-object v2, p0

    invoke-static/range {v1 .. v7}, LT/Y;->q(Landroid/widget/RemoteViews;Landroid/content/Context;IIZLjava/lang/String;Ljava/lang/String;)V

    iget-object v1, p1, LT/r1;->c:Ljava/lang/Boolean;

    invoke-static {v1, v8}, LI0/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    const v1, 0x7f0f035f

    invoke-virtual {v9, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v10}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const v3, 0x7f0900da

    const v4, 0x7f0902e4

    const-string v7, "com.ex.auto.widget.FRONT_MAX_DEFROST_TOGGLE"

    move-object v1, v0

    move-object v2, p0

    invoke-static/range {v1 .. v7}, LT/Y;->q(Landroid/widget/RemoteViews;Landroid/content/Context;IIZLjava/lang/String;Ljava/lang/String;)V

    iget-object v1, p1, LT/r1;->d:Ljava/lang/Boolean;

    invoke-static {v1, v8}, LI0/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    const v1, 0x7f0f0364

    invoke-virtual {v9, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v10}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const v3, 0x7f0900ea

    const v4, 0x7f0902f7

    const-string v7, "com.ex.auto.widget.WINDSHIELD_HEAT_TOGGLE"

    move-object v1, v0

    move-object v2, p0

    invoke-static/range {v1 .. v7}, LT/Y;->q(Landroid/widget/RemoteViews;Landroid/content/Context;IIZLjava/lang/String;Ljava/lang/String;)V

    const v1, 0x7f0f0361

    invoke-virtual {v9, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v10}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const v5, 0x7f0902ed

    iget-object v6, p1, LT/r1;->e:Ljava/lang/Integer;

    const v4, 0x7f0900e2

    const-string v8, "com.ex.auto.widget.SEAT_HEAT_DRIVER_CYCLE"

    move-object v1, v0

    move-object v2, p0

    move-object v3, v9

    invoke-static/range {v1 .. v8}, LT/Y;->p(Landroid/widget/RemoteViews;Landroid/content/Context;Landroid/content/Context;IILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    const v1, 0x7f0f0362

    invoke-virtual {v9, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v10}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const v5, 0x7f0902ee

    iget-object v6, p1, LT/r1;->f:Ljava/lang/Integer;

    const v4, 0x7f0900e3

    const-string v8, "com.ex.auto.widget.SEAT_HEAT_PASSENGER_CYCLE"

    move-object v1, v0

    move-object v2, p0

    move-object v3, v9

    invoke-static/range {v1 .. v8}, LT/Y;->p(Landroid/widget/RemoteViews;Landroid/content/Context;Landroid/content/Context;IILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static e0(Landroid/content/Context;)Landroid/graphics/Point;
    .locals 3

    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    new-instance v0, Landroid/graphics/Point;

    const/16 v1, 0x7bc

    const/16 v2, 0x438

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0
.end method

.method public static f(Landroid/content/Context;Ljava/lang/Integer;)Landroid/widget/RemoteViews;
    .locals 4

    const-string v0, "context"

    invoke-static {p0, v0}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0c0069

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    invoke-static {p0}, LT/H1;->a(Landroid/content/Context;)I

    move-result v1

    const v2, 0x7f090305

    const-string v3, "setBackgroundResource"

    invoke-virtual {v0, v2, v3, v1}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const v2, 0x22010101

    if-ne v1, v2, :cond_1

    const p1, 0x7f0700aa

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance v1, Lv0/a;

    const-string v2, "Eco"

    invoke-direct {v1, p1, v2}, Lv0/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3

    :cond_1
    :goto_0
    const v1, 0x7f0700a7

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const v3, 0x22010102

    if-ne v2, v3, :cond_3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance v1, Lv0/a;

    const-string v2, "Conf."

    invoke-direct {v1, p1, v2}, Lv0/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3

    :cond_3
    :goto_1
    if-nez p1, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const v2, 0x22010103

    if-ne p1, v2, :cond_5

    const p1, 0x7f0700b1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance v1, Lv0/a;

    const-string v2, "Sport"

    invoke-direct {v1, p1, v2}, Lv0/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3

    :cond_5
    :goto_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance v1, Lv0/a;

    const-string v2, "\u2014"

    invoke-direct {v1, p1, v2}, Lv0/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_3
    iget-object p1, v1, Lv0/a;->a:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    iget-object v1, v1, Lv0/a;->b:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    const v2, 0x7f09015a

    invoke-virtual {v0, v2, p1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    const p1, 0x7f0902d0

    invoke-virtual {v0, p1, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    invoke-static {p0}, LT/H1;->o(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    const v1, 0x7f0f027d

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const v1, 0x7f0902cf

    invoke-virtual {v0, v1, p1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const-string p1, "com.ex.auto.widget.DRIVE_NEXT"

    invoke-static {p0, p1}, LT/q4;->e(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object p1

    const v1, 0x7f0900b6

    invoke-virtual {v0, v1, p1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const-string p1, "com.ex.auto.widget.DRIVE_PREV"

    invoke-static {p0, p1}, LT/q4;->e(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object p0

    const p1, 0x7f0900b7

    invoke-virtual {v0, p1, p0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    return-object v0
.end method

.method public static f0()Ljava/lang/String;
    .locals 17

    new-instance v0, LT/n;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, LT/n;-><init>(I)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\n            echo \"-- CarplayMonitor (bind ef\u00eamero, refazer sempre) --\"\n            if [ ! -f "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/system/bin/CarplayMonitor"

    invoke-virtual {v0, v2}, LT/n;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, " ]; then echo \"SEM_MONITOR\"; exit 0; fi\n            echo \"SELINUX_ANTES=$(getenforce 2>/dev/null)\"\n            setenforce 0 2>/dev/null || true\n            if grep -F "

    const-string v5, " /system/bin/CarplayMonitor "

    invoke-static {v1, v3, v4, v0, v5}, LM/d0;->c(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;LT/n;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, " /proc/mounts >/dev/null 2>&1; then\n              _MM=$(md5sum "

    invoke-static {v1, v3, v4, v0, v2}, LM/d0;->c(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;LT/n;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " | awk \'{print $1}\')\n              case \"$_MM\" in\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v10, LT/o;

    const-string v3, "_EXP"

    const/4 v4, 0x0

    invoke-direct {v10, v3, v4}, LT/o;-><init>(Ljava/lang/String;I)V

    sget-object v4, LT/q;->e:Ljava/util/List;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v7, "\n"

    const/16 v11, 0x1e

    move-object v6, v4

    invoke-static/range {v6 .. v11}, Lw0/i;->d0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;LH0/l;I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "\n  *) _EXP= ;;"

    invoke-virtual {v6, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "              "

    invoke-static {v6, v7}, LO0/l;->m0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\n              esac\n              if [ -n \"$_EXP\" ]; then\n                echo \"MONITOR_JA_MONTADO\"\n              else\n                echo \"MONITOR_MONTADO_DESCONHECIDO=$_MM (desmontando p/ refazer)\"\n                _N=0\n                while grep -F "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, LT/n;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v8, " /proc/mounts >/dev/null 2>&1 && [ $_N -lt 8 ]; do\n                  umount "

    invoke-static {v1, v6, v8, v0, v2}, LM/d0;->c(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;LT/n;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v8, " 2>/dev/null || umount -l "

    invoke-static {v1, v6, v8, v0, v2}, LM/d0;->c(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;LT/n;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v8, " 2>/dev/null\n                  _N=$((_N+1))\n                done\n                if grep -F "

    invoke-static {v1, v6, v8, v0, v5}, LM/d0;->c(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;LT/n;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v8, " /proc/mounts >/dev/null 2>&1; then\n                  echo \"MONITOR_DESMONTE_FALHOU\"; exit 1\n                fi\n              fi\n            fi\n            if ! grep -F "

    invoke-static {v1, v6, v8, v0, v5}, LM/d0;->c(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;LT/n;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v8, " /proc/mounts >/dev/null 2>&1; then\n              LBL=$(ls -Z "

    invoke-static {v1, v6, v8, v0, v2}, LM/d0;->c(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;LT/n;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v8, " | awk \'{print $1}\')\n              MD=$(md5sum "

    invoke-static {v1, v6, v8, v0, v2}, LM/d0;->c(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;LT/n;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " | awk \'{print $1}\')\n              echo \"MONITOR_ORIG_MD5=$MD LABEL=$LBL\"\n              case \"$MD\" in\n"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v15, LT/N2;

    const-string v6, "_SEEK"

    const-string v8, "_TAIL"

    invoke-direct {v15, v6, v8, v3}, LT/N2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-string v12, "\n"

    const/16 v16, 0x1e

    move-object v11, v4

    invoke-static/range {v11 .. v16}, Lw0/i;->d0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;LH0/l;I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\n  *) echo \"MONITOR_MD5_INESPERADO=$MD\"; exit 1 ;;"

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v7}, LO0/l;->m0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n                *) echo \"MONITOR_MD5_INESPERADO:$MD\"; exit 1 ;;\n              esac\n              MDS=$([ -f "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/data/local/tmp/fixes/CarplayMonitor"

    invoke-virtual {v0, v3}, LT/n;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v6, " ] && md5sum "

    invoke-static {v1, v4, v6, v0, v3}, LM/d0;->c(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;LT/n;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v6, " 2>/dev/null | awk \'{print $1}\')\n              if [ \"$MDS\" = \"$_EXP\" ]; then\n                echo \"MONITOR_REUSA_PATCH_PRONTO\"\n              else\n                echo \"MONITOR_GERANDO_PATCH (tinha: $MDS)\"\n                rm -f "

    invoke-static {v1, v4, v6, v0, v3}, LM/d0;->c(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;LT/n;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v6, "\n                head -c $_SEEK "

    invoke-static {v1, v4, v6, v0, v2}, LM/d0;->c(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;LT/n;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v6, " > "

    invoke-static {v1, v4, v6, v0, v3}, LM/d0;->c(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;LT/n;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v6, "\n                printf \'ap0\\000\\000\\000\' >> "

    invoke-static {v1, v4, v6, v0, v3}, LM/d0;->c(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;LT/n;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v6, "\n                tail -c +$_TAIL "

    invoke-static {v1, v4, v6, v0, v2}, LM/d0;->c(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;LT/n;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v6, " >> "

    invoke-static {v1, v4, v6, v0, v3}, LM/d0;->c(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;LT/n;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v6, "\n                MD2=$(md5sum "

    invoke-static {v1, v4, v6, v0, v3}, LM/d0;->c(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;LT/n;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v6, " | awk \'{print $1}\')\n                echo \"MONITOR_PATCH_MD5=$MD2\"\n                if [ \"$MD2\" != \"$_EXP\" ]; then\n                  echo \"PATCH_MD5_ERRADO\"; exit 1\n                fi\n              fi\n              chown root:root "

    invoke-static {v1, v4, v6, v0, v3}, LM/d0;->c(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;LT/n;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v6, "; chmod 755 "

    invoke-static {v1, v4, v6, v0, v3}, LM/d0;->c(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;LT/n;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v6, "\n              chcon \"$LBL\" "

    invoke-static {v1, v4, v6, v0, v3}, LM/d0;->c(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;LT/n;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v6, " || { echo \"CHCON_FALHOU\"; exit 1; }\n              mount --bind "

    invoke-static {v1, v4, v6, v0, v3}, LM/d0;->c(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;LT/n;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, LT/n;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "\n              grep -F "

    invoke-static {v1, v2, v3, v0, v5}, LM/d0;->c(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;LT/n;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " /proc/mounts >/dev/null 2>&1 || { echo \"MONITOR_BIND_FALHOU\"; exit 1; }\n              echo \"MONITOR_BIND_OK\"\n            fi\n\n            _pid=$(pidof CarplayMonitor 2>/dev/null | awk \'{print $1}\')\n            _run=$([ -n \"$_pid\" ] && md5sum /proc/$_pid/exe 2>/dev/null | awk \'{print $1}\')\n            echo \"MONITOR_RUNNING_MD5=$_run\"\n            if [ -n \"$_EXP\" ] && [ \"$_run\" = \"$_EXP\" ]; then\n              echo \"MONITOR_JA_PATCHADO_EM_EXECUCAO\"\n            else\n              echo \"MONITOR_REINICIO_UNICO\"\n              setprop ctl.stop CarplayMonitor; sleep 2\n              setprop ctl.start CarplayMonitor\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "MONITOR"

    const-string v2, "CarplayMonitor"

    invoke-static {v2, v0}, LT/Y;->m0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v7}, LO0/l;->m0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n              if [ \"${_STA_ANTES:-}\" = \"1\" ] || grep -qE \"[[:space:]]ap0$\" /proc/net/arp 2>/dev/null; then\n                echo \"CARPLAY_APP_MANTIDO (celular associado no ap0)\"\n              else\n                am force-stop com.njda.carplay 2>/dev/null || true\n                echo \"CARPLAY_APP_REINICIADO\"\n              fi\n\n            fi\n        "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LO0/l;->n0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static g(Landroid/content/Context;Ljava/lang/Integer;I)Landroid/widget/RemoteViews;
    .locals 7

    const-string v0, "context"

    invoke-static {p0, v0}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    invoke-static {p0}, LT/H1;->a(Landroid/content/Context;)I

    move-result p2

    const v1, 0x7f090305

    const-string v2, "setBackgroundResource"

    invoke-virtual {v0, v1, v2, p2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    invoke-static {p0}, LT/H1;->o(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    const-string v1, "\u2014"

    :cond_1
    const v3, 0x7f0902d2

    invoke-virtual {v0, v3, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v1, 0x7f0f035d

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    const v1, 0x7f0902d1

    invoke-virtual {v0, v1, p2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    sget-object p2, Lcom/ex/auto/FanSpeedWidgetProvider;->a:[I

    const/4 v1, 0x0

    move v3, v1

    :goto_0
    const/4 v4, 0x7

    if-ge v1, v4, :cond_3

    aget v4, p2, v1

    add-int/lit8 v5, v3, 0x1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ge v3, v6, :cond_2

    const v3, 0x7f0700f0

    goto :goto_1

    :cond_2
    const v3, 0x7f0700ef

    :goto_1
    invoke-virtual {v0, v4, v2, v3}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    add-int/lit8 v1, v1, 0x1

    move v3, v5

    goto :goto_0

    :cond_3
    const-string p1, "com.ex.auto.widget.FAN_MINUS"

    invoke-static {p0, p1}, LT/q4;->e(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object p1

    const p2, 0x7f0900b9

    invoke-virtual {v0, p2, p1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const-string p1, "com.ex.auto.widget.FAN_PLUS"

    invoke-static {p0, p1}, LT/q4;->e(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object p0

    const p1, 0x7f0900ba

    invoke-virtual {v0, p1, p0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    return-object v0
.end method

.method public static g0(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "s"

    invoke-static {p0, v0}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "\'\\\'\'"

    invoke-static {p0, v1, v2}, LO0/s;->v0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x27

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static h(Landroid/content/Context;Ljava/lang/Integer;Ljava/lang/Boolean;)Landroid/widget/RemoteViews;
    .locals 10

    const-string v0, "context"

    invoke-static {p0, v0}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0c0075

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    invoke-static {p0}, LT/H1;->a(Landroid/content/Context;)I

    move-result v1

    const v2, 0x7f090305

    const-string v3, "setBackgroundResource"

    invoke-virtual {v0, v2, v3, v1}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    invoke-static {p0}, LT/H1;->o(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/ex/auto/HvacDirectionWidgetProvider;->a:I

    const/4 v2, 0x6

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    const v8, 0x7f0700b4

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-ne v9, v7, :cond_1

    goto :goto_4

    :cond_1
    :goto_0
    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-ne v9, v6, :cond_3

    const v8, 0x7f0700b6

    goto :goto_4

    :cond_3
    :goto_1
    if-nez p1, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-ne v9, v5, :cond_5

    const v8, 0x7f0700b5

    goto :goto_4

    :cond_5
    :goto_2
    if-nez p1, :cond_6

    goto :goto_3

    :cond_6
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-ne v9, v4, :cond_7

    const v8, 0x7f0700b8

    goto :goto_4

    :cond_7
    :goto_3
    if-nez p1, :cond_8

    goto :goto_4

    :cond_8
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-ne v9, v2, :cond_9

    const v8, 0x7f0700b7

    :cond_9
    :goto_4
    const v9, 0x7f09015c

    invoke-virtual {v0, v9, v8}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    const-string v8, "getString(...)"

    if-nez p1, :cond_a

    goto :goto_5

    :cond_a
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-ne v9, v7, :cond_b

    const p1, 0x7f0f036c

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v8}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_a

    :cond_b
    :goto_5
    if-nez p1, :cond_c

    goto :goto_6

    :cond_c
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v7, v6, :cond_d

    const p1, 0x7f0f036e

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v8}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_a

    :cond_d
    :goto_6
    if-nez p1, :cond_e

    goto :goto_7

    :cond_e
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v5, :cond_f

    const p1, 0x7f0f036d

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v8}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_a

    :cond_f
    :goto_7
    if-nez p1, :cond_10

    goto :goto_8

    :cond_10
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v4, :cond_11

    const p1, 0x7f0f0372

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v8}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_a

    :cond_11
    :goto_8
    if-nez p1, :cond_12

    goto :goto_9

    :cond_12
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v2, :cond_13

    const p1, 0x7f0f036f

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v8}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_a

    :cond_13
    :goto_9
    const-string p1, "\u2014"

    :goto_a
    const v2, 0x7f0902df

    invoke-virtual {v0, v2, p1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const p1, 0x7f0f0371

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const v2, 0x7f0902de

    invoke-virtual {v0, v2, p1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const p1, 0x7f0f0366

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const v1, 0x7f0902e8

    invoke-virtual {v0, v1, p1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p2, p1}, LI0/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_14

    const p2, 0x7f0700ed

    goto :goto_b

    :cond_14
    const p2, 0x7f0700ee

    :goto_b
    const v2, 0x7f0900de

    invoke-virtual {v0, v2, v3, p2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    if-eqz p1, :cond_15

    const p1, 0x7f050038

    goto :goto_c

    :cond_15
    const p1, 0x7f050041

    :goto_c
    invoke-virtual {p0, p1}, Landroid/content/Context;->getColor(I)I

    move-result p1

    invoke-virtual {v0, v1, p1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    const-string p1, "com.ex.auto.widget.VENT_NEXT"

    invoke-static {p0, p1}, LT/q4;->e(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object p1

    const p2, 0x7f0900c4

    invoke-virtual {v0, p2, p1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const-string p1, "com.ex.auto.widget.VENT_PREV"

    invoke-static {p0, p1}, LT/q4;->e(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object p1

    const p2, 0x7f0900c5

    invoke-virtual {v0, p2, p1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const-string p1, "com.ex.auto.widget.RECIRC_TOGGLE"

    invoke-static {p0, p1}, LT/q4;->e(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object p0

    invoke-virtual {v0, v2, p0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    return-object v0
.end method

.method public static h0(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "s"

    invoke-static {p0, v0}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "\'\\\'\'"

    invoke-static {p0, v1, v2}, LO0/s;->v0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x27

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static i(Landroid/content/Context;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Boolean;)Landroid/widget/RemoteViews;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    const-string v2, "context"

    invoke-static {v0, v2}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Landroid/widget/RemoteViews;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0c0072

    invoke-direct {v2, v3, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    invoke-static/range {p0 .. p0}, LT/H1;->a(Landroid/content/Context;)I

    move-result v3

    const v4, 0x7f090305

    const-string v5, "setBackgroundResource"

    invoke-virtual {v2, v4, v5, v3}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v4, :cond_1

    move v6, v4

    goto :goto_1

    :cond_1
    :goto_0
    move v6, v3

    :goto_1
    const v7, 0x7f0902ef

    const v8, 0x7f0900e4

    invoke-static {v2, v0, v8, v7, v6}, LT/Y;->n(Landroid/widget/RemoteViews;Landroid/content/Context;IIZ)V

    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_3

    move v6, v4

    goto :goto_3

    :cond_3
    :goto_2
    move v6, v3

    :goto_3
    const v7, 0x7f0902f1

    const v9, 0x7f0900e6

    invoke-static {v2, v0, v9, v7, v6}, LT/Y;->n(Landroid/widget/RemoteViews;Landroid/content/Context;IIZ)V

    if-nez p1, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_5

    move v6, v4

    goto :goto_5

    :cond_5
    :goto_4
    move v6, v3

    :goto_5
    const v7, 0x7f0902f0

    const v10, 0x7f0900e5

    invoke-static {v2, v0, v10, v7, v6}, LT/Y;->n(Landroid/widget/RemoteViews;Landroid/content/Context;IIZ)V

    if-nez p1, :cond_6

    goto :goto_6

    :cond_6
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x4

    if-ne v6, v7, :cond_7

    move v6, v4

    goto :goto_7

    :cond_7
    :goto_6
    move v6, v3

    :goto_7
    const v7, 0x7f0902f4

    const v11, 0x7f0900e8

    invoke-static {v2, v0, v11, v7, v6}, LT/Y;->n(Landroid/widget/RemoteViews;Landroid/content/Context;IIZ)V

    if-nez p1, :cond_8

    goto :goto_8

    :cond_8
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x6

    if-ne v6, v7, :cond_9

    goto :goto_9

    :cond_9
    :goto_8
    move v4, v3

    :goto_9
    const v6, 0x7f0902f2

    const v7, 0x7f0900e7

    invoke-static {v2, v0, v7, v6, v4}, LT/Y;->n(Landroid/widget/RemoteViews;Landroid/content/Context;IIZ)V

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 v6, p2

    invoke-static {v6, v4}, LI0/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    const v12, 0x7f0902e7

    const v13, 0x7f0900dd

    invoke-static {v2, v0, v13, v12, v6}, LT/Y;->n(Landroid/widget/RemoteViews;Landroid/content/Context;IIZ)V

    if-eqz p3, :cond_a

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_b

    :cond_a
    const-string v6, "\u2014"

    :cond_b
    const v12, 0x7f0902d2

    invoke-virtual {v2, v12, v6}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    invoke-static {v1, v4}, LI0/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    const v6, 0x7f0700ed

    goto :goto_a

    :cond_c
    const v6, 0x7f0700ec

    :goto_a
    const v14, 0x7f0900d9

    invoke-virtual {v2, v14, v5, v6}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    invoke-static {v1, v4}, LI0/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    const v1, 0x7f050038

    goto :goto_b

    :cond_d
    const v1, 0x7f050041

    :goto_b
    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v2, v12, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    sget-object v1, Lcom/ex/auto/HvacDirectionFanWidgetProvider;->a:[I

    move v4, v3

    :goto_c
    const/4 v6, 0x7

    if-ge v3, v6, :cond_f

    aget v6, v1, v3

    add-int/lit8 v12, v4, 0x1

    if-eqz p3, :cond_e

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Integer;->intValue()I

    move-result v15

    if-ge v4, v15, :cond_e

    const v4, 0x7f0700f0

    goto :goto_d

    :cond_e
    const v4, 0x7f0700ef

    :goto_d
    invoke-virtual {v2, v6, v5, v4}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    add-int/lit8 v3, v3, 0x1

    move v4, v12

    goto :goto_c

    :cond_f
    const-string v1, "com.ex.auto.widget.VENT_FACE"

    invoke-static {v0, v1}, LT/q4;->e(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v2, v8, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const-string v1, "com.ex.auto.widget.VENT_FLOOR"

    invoke-static {v0, v1}, LT/q4;->e(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v2, v9, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const-string v1, "com.ex.auto.widget.VENT_FACE_FLOOR"

    invoke-static {v0, v1}, LT/q4;->e(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v2, v10, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const-string v1, "com.ex.auto.widget.VENT_WINDSHIELD"

    invoke-static {v0, v1}, LT/q4;->e(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v2, v11, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const-string v1, "com.ex.auto.widget.VENT_FLOOR_WINDSHIELD"

    invoke-static {v0, v1}, LT/q4;->e(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v2, v7, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const-string v1, "com.ex.auto.widget.RECIRC_TOGGLE"

    invoke-static {v0, v1}, LT/q4;->e(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v2, v13, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const-string v1, "com.ex.auto.widget.FAN_MINUS"

    invoke-static {v0, v1}, LT/q4;->e(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v1

    const v3, 0x7f0900b9

    invoke-virtual {v2, v3, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const-string v1, "com.ex.auto.widget.FAN_PLUS"

    invoke-static {v0, v1}, LT/q4;->e(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v1

    const v3, 0x7f0900ba

    invoke-virtual {v2, v3, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const-string v1, "com.ex.auto.widget.AC_TOGGLE"

    invoke-static {v0, v1}, LT/q4;->e(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v2, v14, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    return-object v2
.end method

.method public static i0(LT/k;)Ljava/lang/String;
    .locals 9

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, LT/k;->a:Ljava/util/ArrayList;

    invoke-static {v1}, Lw0/k;->V(Ljava/lang/Iterable;)I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LT/l;

    iget-object v3, v2, LT/l;->a:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    iget-wide v5, v2, LT/l;->b:D

    sparse-switch v4, :sswitch_data_0

    goto :goto_3

    :sswitch_0
    const-string v2, "wait"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_3

    :cond_0
    double-to-int v2, v5

    invoke-static {v2}, LT/Y;->G(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    :sswitch_1
    const-string v2, "temp"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_3

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    double-to-long v3, v5

    long-to-double v7, v3

    cmpg-double v7, v5, v7

    if-nez v7, :cond_2

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_2
    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    :goto_1
    const-string v4, "\u00b0C"

    invoke-static {v2, v3, v4}, LM/d0;->g(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    :sswitch_2
    const-string v2, "fan"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_3

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "vento "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    double-to-long v3, v5

    long-to-double v7, v3

    cmpg-double v7, v5, v7

    if-nez v7, :cond_4

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_4
    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    :goto_2
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    :sswitch_3
    const-string v2, "recirc"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    :goto_3
    const-string v2, "?"

    goto :goto_4

    :cond_5
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpg-double v2, v5, v2

    if-nez v2, :cond_6

    const-string v2, "ar interno"

    goto :goto_4

    :cond_6
    const-string v2, "ar externo"

    :goto_4
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_7
    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v1, " \u00b7 "

    const/4 v2, 0x0

    const/16 v5, 0x3e

    invoke-static/range {v0 .. v5}, Lw0/i;->d0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;LH0/l;I)Ljava/lang/String;

    move-result-object v0

    iget-boolean p0, p0, LT/k;->b:Z

    if-eqz p0, :cond_8

    const-string p0, " \u00b7 repete"

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_8
    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x37b9aa36 -> :sswitch_3
        0x18b13 -> :sswitch_2
        0x3643d4 -> :sswitch_1
        0x379175 -> :sswitch_0
    .end sparse-switch
.end method

.method public static j(Landroid/content/Context;Ljava/lang/Integer;Ljava/lang/Integer;)Landroid/widget/RemoteViews;
    .locals 11

    const-string v0, "context"

    invoke-static {p0, v0}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0c006a

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    invoke-static {p0}, LT/H1;->a(Landroid/content/Context;)I

    move-result v1

    const v2, 0x7f090305

    const-string v3, "setBackgroundResource"

    invoke-virtual {v0, v2, v3, v1}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    invoke-static {p0}, LT/H1;->o(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0f035b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0902e2

    invoke-virtual {v0, v3, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v2, 0x7f0f0367

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0902e9

    invoke-virtual {v0, v3, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v2, 0x7f0902e1

    const-string v3, "Eco"

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v3, 0x7f0902e0

    const-string v4, "Conf."

    invoke-virtual {v0, v3, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v4, 0x7f0902e3

    const-string v5, "Sport"

    invoke-virtual {v0, v4, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v5, 0x7f0f0369

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f0902eb

    invoke-virtual {v0, v6, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v5, 0x7f0f036a

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v7, 0x7f0902ec

    invoke-virtual {v0, v7, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v5, 0x7f0f0368

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v5, 0x7f0902ea

    invoke-virtual {v0, v5, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const/4 v1, 0x0

    const/4 v8, 0x1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const v10, 0x22010101

    if-ne v9, v10, :cond_1

    move v9, v8

    goto :goto_1

    :cond_1
    :goto_0
    move v9, v1

    :goto_1
    const v10, 0x7f0900d7

    invoke-static {v0, p0, v10, v2, v9}, LT/Y;->m(Landroid/widget/RemoteViews;Landroid/content/Context;IIZ)V

    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const v9, 0x22010102

    if-ne v2, v9, :cond_3

    move v2, v8

    goto :goto_3

    :cond_3
    :goto_2
    move v2, v1

    :goto_3
    const v9, 0x7f0900d6

    invoke-static {v0, p0, v9, v3, v2}, LT/Y;->m(Landroid/widget/RemoteViews;Landroid/content/Context;IIZ)V

    if-nez p1, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const v2, 0x22010103

    if-ne p1, v2, :cond_5

    move p1, v8

    goto :goto_5

    :cond_5
    :goto_4
    move p1, v1

    :goto_5
    const v2, 0x7f0900d8

    invoke-static {v0, p0, v2, v4, p1}, LT/Y;->m(Landroid/widget/RemoteViews;Landroid/content/Context;IIZ)V

    if-nez p2, :cond_6

    goto :goto_6

    :cond_6
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const v3, 0x20020501

    if-ne p1, v3, :cond_7

    move p1, v8

    goto :goto_7

    :cond_7
    :goto_6
    move p1, v1

    :goto_7
    const v3, 0x7f0900e0

    invoke-static {v0, p0, v3, v6, p1}, LT/Y;->m(Landroid/widget/RemoteViews;Landroid/content/Context;IIZ)V

    if-nez p2, :cond_8

    goto :goto_8

    :cond_8
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const v4, 0x20020502

    if-ne p1, v4, :cond_9

    move p1, v8

    goto :goto_9

    :cond_9
    :goto_8
    move p1, v1

    :goto_9
    const v4, 0x7f0900e1

    invoke-static {v0, p0, v4, v7, p1}, LT/Y;->m(Landroid/widget/RemoteViews;Landroid/content/Context;IIZ)V

    if-nez p2, :cond_a

    goto :goto_a

    :cond_a
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const p2, 0x20020503

    if-ne p1, p2, :cond_b

    move v1, v8

    :cond_b
    :goto_a
    const p1, 0x7f0900df

    invoke-static {v0, p0, p1, v5, v1}, LT/Y;->m(Landroid/widget/RemoteViews;Landroid/content/Context;IIZ)V

    const-string p2, "com.ex.auto.widget.DRIVE_ECO"

    invoke-static {p0, p2}, LT/q4;->e(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object p2

    invoke-virtual {v0, v10, p2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const-string p2, "com.ex.auto.widget.DRIVE_COMFORT"

    invoke-static {p0, p2}, LT/q4;->e(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object p2

    invoke-virtual {v0, v9, p2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const-string p2, "com.ex.auto.widget.DRIVE_SPORT"

    invoke-static {p0, p2}, LT/q4;->e(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object p2

    invoke-virtual {v0, v2, p2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const-string p2, "com.ex.auto.widget.REGEN_LOW"

    invoke-static {p0, p2}, LT/q4;->e(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object p2

    invoke-virtual {v0, v3, p2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const-string p2, "com.ex.auto.widget.REGEN_MID"

    invoke-static {p0, p2}, LT/q4;->e(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object p2

    invoke-virtual {v0, v4, p2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const-string p2, "com.ex.auto.widget.REGEN_HIGH"

    invoke-static {p0, p2}, LT/q4;->e(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    return-object v0
.end method

.method public static j0(Ljava/lang/String;ILjava/lang/String;)Lorg/json/JSONObject;
    .locals 12

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    sget-object v1, Lcom/ex/auto/CentralWatchdogService;->g2:Lcom/ex/auto/CentralWatchdogService;

    const-string v2, "error"

    const/4 v3, 0x0

    const-string v4, "put(...)"

    const-string v5, "ok"

    if-nez v1, :cond_0

    invoke-virtual {v0, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object p0

    const-string p1, "watchdog n\u00e3o ativo"

    invoke-virtual {p0, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-static {p0, v4}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    invoke-virtual {v1}, Lcom/ex/auto/CentralWatchdogService;->M()Landroid/content/SharedPreferences;

    move-result-object v6

    const-string v7, "auto_proxy_enabled"

    invoke-interface {v6, v7, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v0, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object p0

    const-string p1, "auto-proxy desligado"

    invoke-virtual {p0, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-static {p0, v4}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_1
    const-string v6, "down"

    invoke-virtual {p2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    const-string v6, "message"

    const/4 v7, 0x1

    if-eqz p2, :cond_2

    iget-object p0, v1, Lcom/ex/auto/CentralWatchdogService;->a:Landroid/os/Handler;

    new-instance p1, LT/t0;

    const/16 p2, 0x1a

    invoke-direct {p1, v1, p2}, LT/t0;-><init>(Lcom/ex/auto/CentralWatchdogService;I)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {v0, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object p0

    const-string p1, "proxy limpo"

    invoke-virtual {p0, v6, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-static {p0, v4}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_2
    const-string p2, "^\\d{1,3}(\\.\\d{1,3}){3}$"

    invoke-static {p2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p2

    const-string v8, "compile(...)"

    invoke-static {p2, v8}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/regex/Matcher;->matches()Z

    move-result p2

    if-nez p2, :cond_3

    invoke-virtual {v0, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "ip inv\u00e1lido: "

    invoke-virtual {p2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-static {p0, v4}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_3
    :try_start_0
    new-instance p2, LT/I1;

    const/16 v8, 0x15b3

    invoke-direct {p2, v8}, LT/I1;-><init>(I)V

    const-string v8, "ip neigh show dev ap0 2>/dev/null"

    const/16 v9, 0xbb8

    invoke-virtual {p2, v9, v8}, LT/I1;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, LI0/f;->b(Ljava/lang/Object;)V

    invoke-static {p2}, LO0/j;->H0(Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_4

    goto/16 :goto_0

    :cond_4
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_5
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, LO0/j;->X0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v11, 0x20

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, LO0/s;->w0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_6

    invoke-static {v8}, LO0/j;->X0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, p0}, LI0/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v8, :cond_5

    :cond_6
    iget-object p2, v1, Lcom/ex/auto/CentralWatchdogService;->X:Ljava/lang/String;

    invoke-static {p2, p0}, LI0/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    const/16 v2, 0x3a

    if-eqz p2, :cond_7

    invoke-virtual {v0, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "proxy j\u00e1 aplicado "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, v6, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-static {p0, v4}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_7
    iget-object p2, v1, Lcom/ex/auto/CentralWatchdogService;->a:Landroid/os/Handler;

    new-instance v3, LT/k0;

    const/4 v8, 0x3

    invoke-direct {v3, v1, p0, p1, v8}, LT/k0;-><init>(Lcom/ex/auto/CentralWatchdogService;Ljava/lang/String;II)V

    invoke-virtual {p2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {v0, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "proxy aplicado "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, v6, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-static {p0, v4}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :catch_0
    :cond_8
    :goto_0
    invoke-virtual {v0, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "ip fora do ap0: "

    invoke-virtual {p2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-static {p0, v4}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static k(Landroid/content/Context;Ljava/lang/Integer;)Landroid/widget/RemoteViews;
    .locals 5

    const-string v0, "context"

    invoke-static {p0, v0}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0c0076

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    invoke-static {p0}, LT/H1;->a(Landroid/content/Context;)I

    move-result v1

    const v2, 0x7f090305

    const-string v3, "setBackgroundResource"

    invoke-virtual {v0, v2, v3, v1}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    invoke-static {p0}, LT/H1;->o(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const v3, 0x20020501

    if-ne v2, v3, :cond_1

    const p1, 0x7f0700af

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const v2, 0x7f0f0369

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lv0/a;

    invoke-direct {v3, p1, v2}, Lv0/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3

    :cond_1
    :goto_0
    const v2, 0x7f0700ad

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const v4, 0x20020502

    if-ne v3, v4, :cond_3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const v2, 0x7f0f036a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lv0/a;

    invoke-direct {v3, p1, v2}, Lv0/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3

    :cond_3
    :goto_1
    if-nez p1, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const v3, 0x20020503

    if-ne p1, v3, :cond_5

    const p1, 0x7f0700ae

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const v2, 0x7f0f0368

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lv0/a;

    invoke-direct {v3, p1, v2}, Lv0/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3

    :cond_5
    :goto_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance v3, Lv0/a;

    const-string v2, "\u2014"

    invoke-direct {v3, p1, v2}, Lv0/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_3
    iget-object p1, v3, Lv0/a;->a:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    iget-object v2, v3, Lv0/a;->b:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    const v3, 0x7f09015b

    invoke-virtual {v0, v3, p1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    const p1, 0x7f0902d5

    invoke-virtual {v0, p1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const p1, 0x7f0f0286

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const v1, 0x7f0902d4

    invoke-virtual {v0, v1, p1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const-string p1, "com.ex.auto.widget.REGEN_NEXT"

    invoke-static {p0, p1}, LT/q4;->e(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object p1

    const v1, 0x7f0900c0

    invoke-virtual {v0, v1, p1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const-string p1, "com.ex.auto.widget.REGEN_PREV"

    invoke-static {p0, p1}, LT/q4;->e(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object p0

    const p1, 0x7f0900c1

    invoke-virtual {v0, p1, p0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    return-object v0
.end method

.method public static k0()Ljava/lang/String;
    .locals 3

    const-string v0, " /system/app/ConnAdaptor/ConnAdaptor.apk "

    invoke-static {v0}, LT/Y;->h0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\n            if grep -F "

    const-string v2, " /proc/mounts >/dev/null 2>&1; then\n              umount "

    invoke-static {v1, v0, v2}, LM/d0;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/system/app/ConnAdaptor/ConnAdaptor.apk"

    invoke-static {v1}, LT/Y;->h0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " 2>/dev/null || umount -l "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, LT/Y;->h0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " 2>/dev/null || true\n              echo \"BIND_ANTIGO_DESMONTADO\"\n            fi\n            pm uninstall com.njda.adapter 2>&1 | tail -n1\n            _p=$(pm path com.njda.adapter 2>/dev/null)\n            echo \"PM_PATH=$_p\"\n            case \"$_p\" in\n              *\"/data/app/\"*) echo \"CONNADAPTOR_AINDA_INSTALADO\" ;;\n              *\"/system/\"*)   echo \"CONNADAPTOR_REVERTIDO_STOCK\" ;;\n              *)              echo \"CONNADAPTOR_SEM_PATH\" ;;\n            esac\n            am force-stop com.njda.adapter\n            am force-stop com.njda.aauto\n        "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LO0/l;->n0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static l(Landroid/content/Context;Ljava/lang/Integer;Ljava/lang/Boolean;)Landroid/widget/RemoteViews;
    .locals 11

    const-string v0, "context"

    invoke-static {p0, v0}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0c0071

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    invoke-static {p0}, LT/H1;->a(Landroid/content/Context;)I

    move-result v1

    const v2, 0x7f090305

    const-string v3, "setBackgroundResource"

    invoke-virtual {v0, v2, v3, v1}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    invoke-static {p0}, LT/H1;->o(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0f0370

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0902f3

    invoke-virtual {v0, v3, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v2, 0x7f0f036c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0902ef

    invoke-virtual {v0, v3, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v2, 0x7f0f036e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v4, 0x7f0902f1

    invoke-virtual {v0, v4, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v2, 0x7f0f036d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v5, 0x7f0902f0

    invoke-virtual {v0, v5, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v2, 0x7f0f0372

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v6, 0x7f0902f4

    invoke-virtual {v0, v6, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v2, 0x7f0f036f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v7, 0x7f0902f2

    invoke-virtual {v0, v7, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v2, 0x7f0f0366

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0902e7

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const/4 v1, 0x0

    const/4 v8, 0x1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-ne v9, v8, :cond_1

    move v9, v8

    goto :goto_1

    :cond_1
    :goto_0
    move v9, v1

    :goto_1
    const v10, 0x7f0900e4

    invoke-static {v0, p0, v10, v3, v9}, LT/Y;->o(Landroid/widget/RemoteViews;Landroid/content/Context;IIZ)V

    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v9, 0x2

    if-ne v3, v9, :cond_3

    move v3, v8

    goto :goto_3

    :cond_3
    :goto_2
    move v3, v1

    :goto_3
    const v9, 0x7f0900e6

    invoke-static {v0, p0, v9, v4, v3}, LT/Y;->o(Landroid/widget/RemoteViews;Landroid/content/Context;IIZ)V

    if-nez p1, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_5

    move v3, v8

    goto :goto_5

    :cond_5
    :goto_4
    move v3, v1

    :goto_5
    const v4, 0x7f0900e5

    invoke-static {v0, p0, v4, v5, v3}, LT/Y;->o(Landroid/widget/RemoteViews;Landroid/content/Context;IIZ)V

    if-nez p1, :cond_6

    goto :goto_6

    :cond_6
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v5, 0x4

    if-ne v3, v5, :cond_7

    move v3, v8

    goto :goto_7

    :cond_7
    :goto_6
    move v3, v1

    :goto_7
    const v5, 0x7f0900e8

    invoke-static {v0, p0, v5, v6, v3}, LT/Y;->o(Landroid/widget/RemoteViews;Landroid/content/Context;IIZ)V

    if-nez p1, :cond_8

    goto :goto_8

    :cond_8
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v3, 0x6

    if-ne p1, v3, :cond_9

    move v1, v8

    :cond_9
    :goto_8
    const p1, 0x7f0900e7

    invoke-static {v0, p0, p1, v7, v1}, LT/Y;->o(Landroid/widget/RemoteViews;Landroid/content/Context;IIZ)V

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p2, v1}, LI0/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    const v1, 0x7f0900dd

    invoke-static {v0, p0, v1, v2, p2}, LT/Y;->o(Landroid/widget/RemoteViews;Landroid/content/Context;IIZ)V

    const-string p2, "com.ex.auto.widget.VENT_FACE"

    invoke-static {p0, p2}, LT/q4;->e(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object p2

    invoke-virtual {v0, v10, p2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const-string p2, "com.ex.auto.widget.VENT_FLOOR"

    invoke-static {p0, p2}, LT/q4;->e(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object p2

    invoke-virtual {v0, v9, p2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const-string p2, "com.ex.auto.widget.VENT_FACE_FLOOR"

    invoke-static {p0, p2}, LT/q4;->e(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object p2

    invoke-virtual {v0, v4, p2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const-string p2, "com.ex.auto.widget.VENT_WINDSHIELD"

    invoke-static {p0, p2}, LT/q4;->e(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object p2

    invoke-virtual {v0, v5, p2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const-string p2, "com.ex.auto.widget.VENT_FLOOR_WINDSHIELD"

    invoke-static {p0, p2}, LT/q4;->e(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const-string p1, "com.ex.auto.widget.RECIRC_TOGGLE"

    invoke-static {p0, p1}, LT/q4;->e(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    return-object v0
.end method

.method public static l0(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-static {p0}, LT/Y;->h0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x20

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, LT/Y;->h0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "\n            for _i in 1 2 3 4 5 6; do\n              grep -F "

    const-string v2, " /proc/mounts >/dev/null 2>&1 || break\n              umount "

    const-string v3, " 2>/dev/null || umount -l "

    invoke-static {v1, p0, v2, v0, v3}, LM/d0;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " 2>/dev/null || true\n            done\n        "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, LO0/l;->n0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final m(Landroid/widget/RemoteViews;Landroid/content/Context;IIZ)V
    .locals 2

    if-eqz p4, :cond_0

    const v0, 0x7f0700ed

    goto :goto_0

    :cond_0
    const v0, 0x7f0700ee

    :goto_0
    const-string v1, "setBackgroundResource"

    invoke-virtual {p0, p2, v1, v0}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    if-eqz p4, :cond_1

    const p2, 0x7f050038

    goto :goto_1

    :cond_1
    const p2, 0x7f050041

    :goto_1
    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p3, p1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    return-void
.end method

.method public static m0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "\n            _p1=$(pidof "

    const-string v1, " 2>/dev/null | awk \'{print $1}\')\n            sleep 12\n            _p2=$(pidof "

    const-string v2, " 2>/dev/null | awk \'{print $1}\')\n            if [ -z \"$_p2\" ]; then\n              echo \""

    invoke-static {v0, p0, v1, p0, v2}, LM/d0;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_MORTO (init.svc=$(getprop init.svc."

    const-string v2, "))\"\n            elif [ \"$_p1\" = \"$_p2\" ]; then\n              echo \""

    invoke-static {v0, p1, v1, p0, v2}, LM/d0;->q(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_ESTAVEL pid=$_p2\"\n            else\n              echo \""

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_CRASH_LOOP (pid $_p1 -> $_p2 em 12s \u2014 o init est\u00e1 respawnando)\"\n            fi\n        "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, LO0/l;->n0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final n(Landroid/widget/RemoteViews;Landroid/content/Context;IIZ)V
    .locals 2

    if-eqz p4, :cond_0

    const v0, 0x7f0700ed

    goto :goto_0

    :cond_0
    const v0, 0x7f0700ee

    :goto_0
    const-string v1, "setBackgroundResource"

    invoke-virtual {p0, p2, v1, v0}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    if-eqz p4, :cond_1

    const p2, 0x7f050038

    goto :goto_1

    :cond_1
    const p2, 0x7f050041

    :goto_1
    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p3, p1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    return-void
.end method

.method public static n0(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 9

    const-string v0, "\'"

    const-string v1, "/data/local/tmp/fixes/central_boot.sh"

    const-string v2, "echo \'OBSOLETO - o log de boot agora fica em "

    const-string v3, "script gravado em /data/local/tmp/fixes/central_boot.sh ("

    const-string v4, "ctx"

    invoke-static {p0, v4}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-boolean v4, LT/Y;->j:Z

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "BootScript"

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    invoke-virtual {p0, v5}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-object p0, v5

    :goto_0
    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    new-instance v4, Ljava/io/File;

    const-string v8, "central_boot.log"

    invoke-direct {v4, p0, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    sput-object p0, LT/Y;->k:Ljava/lang/String;

    sput-boolean v6, LT/Y;->j:Z

    sget-object p0, LT/L3;->a:LT/L3;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v8, "log de boot promovido pro armazenamento externo: "

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v8, LT/Y;->k:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v7, v4}, LT/L3;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    :try_start_1
    new-instance p0, Ljava/io/File;

    const-string v4, "/data/local/tmp/fixes"

    invoke-direct {p0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    goto :goto_2

    :catchall_1
    move-exception p0

    goto/16 :goto_4

    :cond_2
    :goto_2
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1}, LT/Y;->N(Ljava/io/File;Z)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1, v6}, Ljava/io/File;->setExecutable(ZZ)Z

    invoke-virtual {p0, p1, v6}, Ljava/io/File;->setReadable(ZZ)Z

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " bytes)"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v7, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "/data/local/tmp/fixes/central_boot.log"

    sget-object p1, LT/Y;->k:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p0, ""

    goto :goto_3

    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, LT/Y;->k:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' > "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "\'\\\'\'"

    invoke-static {p0, v0, v3}, LO0/s;->v0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x27

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " 2>/dev/null; "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " sh "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, LT/Y;->g0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " > "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, LT/Y;->k:Ljava/lang/String;

    invoke-static {p0}, LT/Y;->g0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " 2>&1; cat "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, LT/Y;->k:Ljava/lang/String;

    invoke-static {p0}, LT/Y;->g0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_5

    :goto_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "n\u00e3o consegui gravar /data/local/tmp/fixes/central_boot.sh: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v7, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p1, LT/L3;->a:LT/L3;

    const-string v0, "n\u00e3o consegui gravar /data/local/tmp/fixes/central_boot.sh \u2014 "

    const-string v1, " (dono/modo do arquivo?)"

    invoke-static {v0, p0, v1, p1, v7}, LM/d0;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;LT/L3;Ljava/lang/String;)V

    :goto_5
    return-object v5
.end method

.method public static final o(Landroid/widget/RemoteViews;Landroid/content/Context;IIZ)V
    .locals 2

    if-eqz p4, :cond_0

    const v0, 0x7f0700ed

    goto :goto_0

    :cond_0
    const v0, 0x7f0700ee

    :goto_0
    const-string v1, "setBackgroundResource"

    invoke-virtual {p0, p2, v1, v0}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    if-eqz p4, :cond_1

    const p2, 0x7f050038

    goto :goto_1

    :cond_1
    const p2, 0x7f050041

    :goto_1
    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p3, p1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    return-void
.end method

.method public static final p(Landroid/widget/RemoteViews;Landroid/content/Context;Landroid/content/Context;IILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    if-lez v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    if-eqz v0, :cond_2

    const v1, 0x7f0700ed

    goto :goto_1

    :cond_2
    const v1, 0x7f0700ee

    :goto_1
    const-string v2, "setBackgroundResource"

    invoke-virtual {p0, p3, v2, v1}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    if-eqz v0, :cond_3

    const v0, 0x7f050038

    goto :goto_2

    :cond_3
    const v0, 0x7f050041

    :goto_2
    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p0, p4, v0}, Landroid/widget/RemoteViews;->setTextColor(II)V

    if-nez p5, :cond_4

    const-string p2, "\u2014"

    goto :goto_3

    :cond_4
    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_5

    const p5, 0x7f0f035e

    invoke-virtual {p2, p5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string p5, "getString(...)"

    invoke-static {p2, p5}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    invoke-virtual {p5}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_3
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p6, 0x20

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p4, p2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    new-instance p2, Landroid/content/Intent;

    const-class p4, Lcom/ex/auto/HomeWidgetsPollService;

    invoke-direct {p2, p1, p4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p2, p7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    const-string p4, "setAction(...)"

    invoke-static {p2, p4}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 p4, 0xc000000

    invoke-virtual {p7}, Ljava/lang/String;->hashCode()I

    move-result p5

    invoke-static {p1, p5, p2, p4}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    const-string p2, "getService(...)"

    invoke-static {p1, p2}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p3, p1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    return-void
.end method

.method public static final q(Landroid/widget/RemoteViews;Landroid/content/Context;IIZLjava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-eqz p4, :cond_0

    const v0, 0x7f0700ed

    goto :goto_0

    :cond_0
    const v0, 0x7f0700ee

    :goto_0
    const-string v1, "setBackgroundResource"

    invoke-virtual {p0, p2, v1, v0}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    if-eqz p4, :cond_1

    const p4, 0x7f050038

    goto :goto_1

    :cond_1
    const p4, 0x7f050041

    :goto_1
    invoke-virtual {p1, p4}, Landroid/content/Context;->getColor(I)I

    move-result p4

    invoke-virtual {p0, p3, p4}, Landroid/widget/RemoteViews;->setTextColor(II)V

    invoke-virtual {p0, p3, p5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    new-instance p3, Landroid/content/Intent;

    const-class p4, Lcom/ex/auto/HomeWidgetsPollService;

    invoke-direct {p3, p1, p4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p3, p6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p3

    const-string p4, "setAction(...)"

    invoke-static {p3, p4}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 p4, 0xc000000

    invoke-virtual {p6}, Ljava/lang/String;->hashCode()I

    move-result p5

    invoke-static {p1, p5, p3, p4}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    const-string p3, "getService(...)"

    invoke-static {p1, p3}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2, p1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    return-void
.end method

.method public static r(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    invoke-static {p0}, LO0/j;->U0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2f

    invoke-static {p0, v1}, LO0/j;->S0(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x20

    invoke-static {v2, v3}, LO0/s;->u0(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {p0}, LT/Y;->h0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0}, LT/Y;->h0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "/vendor/etc/carlock/yuedongyinghe.wav"

    invoke-static {v1}, LT/Y;->h0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "\n            if [ -f "

    const-string v4, " ] && [ ! -f "

    const-string v5, " ]; then\n              mv -f "

    invoke-static {v2, p0, v4, v0, v5}, LM/d0;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " 2>&1 || true\n            fi\n        "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, LO0/l;->n0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    const-string p0, ""

    :goto_1
    const-string v2, "\n            echo \"== carlock bind ==\"\n            "

    const-string v4, "\n            ls -l "

    const-string v5, " 2>&1 || { echo \"ERRO: arquivo nao encontrado: "

    invoke-static {v2, p0, v4, v0, v5}, LM/d0;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v2, "\"; exit 10; }\n            ls -l "

    const-string v4, " 2>&1 || exit 11\n            if grep \" /vendor/etc/carlock/yuedongyinghe.wav \" /proc/mounts | grep -qF \"/data/local/tmp/sons/\"; then\n              umount "

    invoke-static {p0, v0, v2, v1, v4}, LM/d0;->q(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, " 2>&1 || exit 12\n            fi\n            chown root:root "

    const-string v4, " 2>&1 || true\n            chmod 664 "

    invoke-static {p0, v1, v2, v0, v4}, LM/d0;->q(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, " 2>&1 || exit 13\n            restorecon -v "

    const-string v4, " 2>&1 || true\n            chcon u:object_r:vendor_configs_file:s0 "

    invoke-static {p0, v0, v2, v0, v4}, LM/d0;->q(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, " 2>&1 || true\n            restorecon -v "

    const-string v4, " 2>&1 || true\n            mount --bind "

    invoke-static {p0, v0, v2, v1, v4}, LM/d0;->q(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " 2>&1 || exit 14\n            restorecon -v "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " 2>&1 || true\n            cat /proc/mounts | grep -F "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " || echo \"BIND_NAO_CONFIRMADO\"\n            echo \"exit_code=0\"\n        "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, LO0/l;->n0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static s()Ljava/lang/String;
    .locals 4

    const-string v0, "/vendor/etc/carlock/yuedongyinghe.wav"

    invoke-static {v0}, LT/Y;->h0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\n            echo \"== carlock unbind ==\"\n            if grep -F \" /vendor/etc/carlock/yuedongyinghe.wav \" /proc/mounts >/dev/null 2>&1; then\n              umount "

    const-string v2, " 2>&1 || exit 21\n              echo \"unbind_ok\"\n            else\n              echo \"sem_bind_ativo\"\n            fi\n            restorecon -v "

    const-string v3, " 2>&1 || true\n            cat /proc/mounts | grep -F "

    invoke-static {v1, v0, v2, v0, v3}, LM/d0;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " || echo \"BIND_REMOVIDO\"\n            echo \"exit_code=0\"\n        "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LO0/l;->n0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static t(Ljava/lang/String;)LT/V;
    .locals 6

    invoke-static {p0}, LO0/j;->U0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2f

    invoke-static {p0, v1}, LO0/j;->S0(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x20

    invoke-static {v2, v3}, LO0/s;->u0(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {p0}, LT/Y;->g0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0}, LT/Y;->g0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "\n            if [ -f "

    const-string v2, " ] && [ ! -f "

    const-string v4, " ]; then\n              mv -f "

    invoke-static {v1, p0, v2, v0, v4}, LM/d0;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " 2>&1 || true\n            fi\n        "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, LO0/l;->n0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    const-string p0, ""

    :goto_1
    new-instance v1, LT/V;

    invoke-direct {v1, p0, v0}, LT/V;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public static u(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "schema"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "gravity"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "y"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "screen_width"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "screen_height"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static v()Ljava/lang/String;
    .locals 4

    invoke-static {}, LT/Y;->f0()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LO0/j;->G0(Ljava/lang/CharSequence;)LN0/c;

    move-result-object v0

    new-instance v1, LT/n;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, LT/n;-><init>(I)V

    new-instance v2, LN0/c;

    const/4 v3, 0x3

    invoke-direct {v2, v0, v1, v3}, LN0/c;-><init>(LN0/f;Ljava/lang/Object;I)V

    new-instance v0, LT/n;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, LT/n;-><init>(I)V

    new-instance v1, LN0/c;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v0, v3}, LN0/c;-><init>(LN0/f;Ljava/lang/Object;I)V

    const-string v0, "\n"

    invoke-static {v1, v0}, LN0/h;->m0(LN0/f;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\necho \"== fim ==\""

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static w(Landroid/content/Context;Ljava/lang/String;)LT/X;
    .locals 12

    sget-object v0, LT/X;->c:LT/X;

    const-string v1, ": "

    const-string v2, "bindService lan\u00e7ou: "

    const-string v3, "ctx"

    invoke-static {p0, v3}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sget-wide v5, LT/Y;->a:J

    sub-long/2addr v3, v5

    sget-wide v5, LT/Y;->a:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    const-string v6, "CarplayDeviceBinder"

    if-lez v5, :cond_0

    const-wide/16 v7, 0x2710

    cmp-long v5, v3, v7

    if-gez v5, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "connect ignorado \u2014 outra tentativa h\u00e1 "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "ms (devolvendo "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, LT/Y;->b:LT/X;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p1, 0x29

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, LT/Y;->b:LT/X;

    return-object p0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sput-wide v3, LT/Y;->a:J

    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Ljava/util/concurrent/ArrayBlockingQueue;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    new-instance v7, LT/c;

    const/4 v8, 0x1

    invoke-direct {v7, v4, v8}, LT/c;-><init>(Ljava/util/concurrent/ArrayBlockingQueue;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    :try_start_1
    new-instance v8, Landroid/content/Intent;

    const-string v9, "carplay.devices.service"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v9, "com.njda.carplay"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    const-string v9, "setPackage(...)"

    invoke-static {v8, v9}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v9, 0x0

    :try_start_2
    invoke-virtual {p0, v8, v7, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v8

    :try_start_3
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v9

    :goto_0
    if-nez v2, :cond_1

    const-string p1, "bindService recusou (carplay.devices.service em com.njda.carplay)"

    invoke-static {v6, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    sput-object v0, LT/Y;->b:LT/X;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    return-object v0

    :catchall_1
    move-exception p1

    move-object v3, v7

    goto/16 :goto_4

    :cond_1
    :try_start_5
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v10, 0x1770

    invoke-virtual {v4, v10, v11, v2}, Ljava/util/concurrent/ArrayBlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IBinder;

    if-nez v2, :cond_2

    const-string p1, "servi\u00e7o n\u00e3o conectou em 6000ms"

    invoke-static {v6, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sput-object v0, LT/Y;->b:LT/X;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    invoke-virtual {p0, v7}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    return-object v0

    :cond_2
    :try_start_7
    invoke-static {v2}, LT/Y;->J(Landroid/os/IBinder;)Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_3

    sput-object v0, LT/Y;->b:LT/X;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    invoke-virtual {p0, v7}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :catchall_3
    return-object v0

    :cond_3
    :try_start_9
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_4

    const-string p1, "getDeviceList vazio \u2014 nenhum iPhone pareado/conhecido; nada a conectar"

    invoke-static {v6, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p1, LT/X;->b:LT/X;

    sput-object p1, LT/Y;->b:LT/X;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    invoke-virtual {p0, v7}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    :catchall_4
    return-object p1

    :cond_4
    :try_start_b
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    move-object v11, v10

    check-cast v11, LT/W;

    if-eqz p1, :cond_6

    iget-object v11, v11, LT/W;->b:Ljava/lang/String;

    invoke-static {v11, p1}, LO0/s;->s0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_6

    move v11, v5

    goto :goto_1

    :cond_6
    move v11, v9

    :goto_1
    if-eqz v11, :cond_5

    move-object v3, v10

    :cond_7
    check-cast v3, LT/W;

    if-nez v3, :cond_8

    invoke-static {v4}, Lw0/i;->Z(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LT/W;

    :cond_8
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "conectando \'"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v3, LT/W;->a:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "\' ("

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v3, LT/W;->b:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ") \u2014 "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " na lista, preferido="

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_9

    const-string p1, "(qualquer)"

    :cond_9
    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, v3, LT/W;->b:Ljava/lang/String;

    if-eqz p1, :cond_a

    invoke-static {p1}, LO0/j;->E0(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_b

    :cond_a
    move v9, v5

    :cond_b
    if-eqz v9, :cond_c

    const-string p1, "alvo sem MAC \u2014 pulando o connect direto de BT"

    invoke-static {v6, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_c
    new-instance v4, Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-direct {v4, v5}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    new-instance v5, LA/c;

    const/4 v8, 0x1

    invoke-direct {v5, v4, v8}, LA/c;-><init>(Ljava/lang/Object;I)V

    invoke-static {p0, p1, v5}, LT/m;->h(Landroid/content/Context;Ljava/lang/String;LA/c;)V

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v8, 0x9c4

    invoke-virtual {v4, v8, v9, v5}, Ljava/util/concurrent/ArrayBlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "HFP-Client de "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v4, :cond_d

    const-string v4, "sem resposta a tempo"

    :cond_d
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    invoke-static {v2, v3}, LT/Y;->y(Landroid/os/IBinder;LT/W;)Z

    move-result p1

    if-eqz p1, :cond_e

    sget-object p1, LT/X;->a:LT/X;

    goto :goto_3

    :cond_e
    move-object p1, v0

    :goto_3
    sput-object p1, LT/Y;->b:LT/X;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :try_start_c
    invoke-virtual {p0, v7}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    :catchall_5
    return-object p1

    :catchall_6
    move-exception p1

    :goto_4
    :try_start_d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "connect falhou: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sput-object v0, LT/Y;->b:LT/X;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_8

    if-eqz v3, :cond_f

    :try_start_e
    invoke-virtual {p0, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    :catchall_7
    :cond_f
    return-object v0

    :catchall_8
    move-exception p1

    if-eqz v3, :cond_10

    :try_start_f
    invoke-virtual {p0, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_9

    :catchall_9
    :cond_10
    throw p1
.end method

.method public static x(Landroid/os/IBinder;LT/a;)Z
    .locals 6

    const-string v0, "connectDevice(txn 3): "

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    const-string v2, "obtain(...)"

    invoke-static {v1, v2}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    invoke-static {v3, v2}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    :try_start_0
    const-string v4, "com.njda.adapter.androidauto.connection.devicelist.IDeviceManager"

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    iget v5, p1, LT/a;->a:I

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v5, p1, LT/a;->b:Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v5, p1, LT/a;->c:Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v5, p1, LT/a;->d:Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p1, p1, LT/a;->e:I

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeByte(B)V

    const/4 p1, 0x3

    invoke-interface {p0, p1, v1, v3, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    move v2, v4

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_1
    const-string p1, "AaDeviceBinder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    :goto_0
    return v2

    :catchall_1
    move-exception p0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public static y(Landroid/os/IBinder;LT/W;)Z
    .locals 6

    const-string v0, "connectDevice(txn 5): "

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    const-string v2, "obtain(...)"

    invoke-static {v1, v2}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    invoke-static {v3, v2}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    :try_start_0
    const-string v4, "com.njda.carplay.connection.devicelist.ICarplayDeviceManager"

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v5, p1, LT/W;->a:Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v5, p1, LT/W;->b:Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v5, p1, LT/W;->c:Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-byte v5, p1, LT/W;->d:B

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeByte(B)V

    iget-byte v5, p1, LT/W;->e:B

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeByte(B)V

    iget-byte p1, p1, LT/W;->f:B

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeByte(B)V

    const/4 p1, 0x5

    invoke-interface {p0, p1, v1, v3, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    move v2, v4

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_1
    const-string p1, "CarplayDeviceBinder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    :goto_0
    return v2

    :catchall_1
    move-exception p0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public static z(Z)Ljava/lang/String;
    .locals 5

    new-instance v0, LT/n;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, LT/n;-><init>(I)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\n            #!/system/bin/sh\n            # Gerado pelo EX Sapo Central \u2014 regravado a cada boot. Editar aqui n\u00e3o adianta.\n            echo \"== central_boot $(date) ==\"\n            echo \"-- por que o boot anterior terminou --\"\n            echo \"BOOTREASON=$(getprop ro.boot.bootreason) / $(getprop sys.boot.reason)\"\n            echo \"UPTIME=$(cut -d. -f1 /proc/uptime)s\"\n            if [ -s /proc/last_kmsg ]; then\n              echo \"LAST_KMSG (fim do boot anterior):\"\n              tail -n 25 /proc/last_kmsg 2>/dev/null | sed \'s/^/  | /\'\n            else\n              echo \"LAST_KMSG=vazio (sem panic de kernel registrado)\"\n            fi\n            echo \"DMESG_RESET=$(dmesg 2>/dev/null | grep -icE \'kernel panic|watchdog reset|hardware reset\')\"\n\n            echo \"-- ConnAdaptor --\"\n            _p=$(pm path com.njda.adapter 2>/dev/null)\n            echo \"PM_PATH=$_p\"\n            case \"$_p\" in\n              *\"/data/app/\"*) echo \"CONNADAPTOR=ATIVO\" ;;\n              *)\n                # O ConnAdaptor N\u00c3O volta por bind. O bind sobre /system \u00e9 o mecanismo do Ar\n                # Digital e dos outros patches de sistema; para o ConnAdaptor ele produzia um estado\n                # meio-funcionando \u2014 APK montado, tela dizendo \"ativado\", CarplayMonitor sem\n                # trabalhar. Ativar \u00e9 `pm install`.\n                #\n                # Se sobrou bind de uma instala\u00e7\u00e3o antiga, DESFAZ e apaga o marcador: melhor a\n                # central voltar limpa ao estado de f\u00e1brica (e a pessoa reativar) do que carregar\n                # para sempre uma montagem que aparenta funcionar e n\u00e3o funciona.\n                if [ -f "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/data/local/tmp/fixes/connadaptor_em_bind"

    invoke-virtual {v0, v2}, LT/n;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ]; then\n                  echo \"CONNADAPTOR=LIMPANDO_BIND_LEGADO\"\n                  # Bind EMPILHA: montar duas vezes sobre o mesmo alvo deixa duas entradas em\n                  # /proc/mounts, e um `umount` sozinho descobre a de baixo em vez de limpar. Por\n                  # isso o la\u00e7o, igual ao `unmountAllLoop` do ShellSnippets.\n                  _i=0\n                  while grep -F \" /system/app/ConnAdaptor/ConnAdaptor.apk \" /proc/mounts >/dev/null 2>&1 && [ $_i -lt 8 ]; do\n                    umount "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/system/app/ConnAdaptor/ConnAdaptor.apk"

    invoke-virtual {v0, v3}, LT/n;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " 2>/dev/null || break\n                    _i=$((_i+1))\n                  done\n                  # S\u00f3 apaga o marcador se a montagem REALMENTE saiu. Apagar antes de conferir perde\n                  # a \u00fanica pista de que ainda h\u00e1 bind vivo, e o boot seguinte nem tentaria de novo.\n                  if grep -F \" /system/app/ConnAdaptor/ConnAdaptor.apk \" /proc/mounts >/dev/null 2>&1; then\n                    echo \"CONNADAPTOR=LIMPEZA_FALHOU (bind ainda montado apos $_i tentativas)\"\n                  else\n                    rm -f "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, LT/n;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " 2>/dev/null || true\n                    echo \"CONNADAPTOR=STOCK (bind legado desfeito)\"\n                  fi\n                else\n                  echo \"CONNADAPTOR=STOCK\"\n                fi\n                ;;\n            esac\n\n            if [ -f "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/data/local/tmp/fixes/hvac_em_bind"

    invoke-virtual {v0, v2}, LT/n;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ] && [ -f "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/data/local/hvac-digital/sysui.apk"

    invoke-virtual {v0, v3}, LT/n;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ]; then\n              echo \"-- Ar Digital (em bind: refazer) --\"\n              _hp=$(pm path com.flyme.auto.systemuiplugin 2>/dev/null | sed \'s/^package://\')\n              case \"$_hp\" in\n                *\"/data/app/\"*) echo \"HVAC=ATIVO (pm install; marcador obsoleto)\"; rm -f "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, LT/n;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ;;\n                \"\") echo \"HVAC_SEM_ALVO\" ;;\n                *)\n                  setenforce 0 2>/dev/null || true\n                  chown root:root "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, LT/n;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "; chmod 644 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, LT/n;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n                  chcon u:object_r:system_app_file:s0 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, LT/n;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " 2>/dev/null || echo \"HVAC_CHCON_FALHOU\"\n                  umount \"$_hp\" 2>/dev/null || true\n                  mount --bind "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, LT/n;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " \"$_hp\"\n                  restorecon -v \"$_hp\" 2>/dev/null || true\n                  if grep -F \" $_hp \" /proc/mounts >/dev/null 2>&1; then\n                    echo \"HVAC=ATIVO_POR_BIND\"\n                  else\n                    echo \"HVAC_BIND_FALHOU\"\n                  fi\n                  ;;\n              esac\n            fi\n\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p0, :cond_0

    invoke-static {}, LT/Y;->f0()Ljava/lang/String;

    move-result-object p0

    const-string v0, "            "

    invoke-static {p0, v0}, LO0/l;->m0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, "            echo \"-- CarplayMonitor: fora deste script de proposito, roda por comando proprio --\""

    :goto_0
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n            echo \"== fim ==\"\n        "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, LO0/l;->n0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
