.class public final LT/m;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static volatile a:I = 0x0

.field public static final b:LT/m;

.field public static volatile c:Landroid/content/ContextWrapper; = null

.field public static d:Landroid/content/Context; = null

.field public static volatile e:Z = false

.field public static volatile f:Ljava/lang/String; = null

.field public static volatile g:J = 0x0L

.field public static volatile h:Ljava/lang/String; = "pip"

.field public static volatile i:LT/n1;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, LT/m;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LT/m;->b:LT/m;

    return-void
.end method

.method public static A(Ljava/io/BufferedOutputStream;I[B)V
    .locals 7

    const/4 v0, 0x0

    array-length v1, p2

    const-string v2, "out"

    invoke-static {p0, v2}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    int-to-byte p1, p1

    ushr-int/lit8 v2, v1, 0x18

    int-to-byte v2, v2

    ushr-int/lit8 v3, v1, 0x10

    int-to-byte v3, v3

    ushr-int/lit8 v4, v1, 0x8

    int-to-byte v4, v4

    int-to-byte v5, v1

    const/4 v6, 0x5

    new-array v6, v6, [B

    aput-byte p1, v6, v0

    const/4 p1, 0x1

    aput-byte v2, v6, p1

    const/4 p1, 0x2

    aput-byte v3, v6, p1

    const/4 p1, 0x3

    aput-byte v4, v6, p1

    const/4 p1, 0x4

    aput-byte v5, v6, p1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, v6}, Ljava/io/OutputStream;->write([B)V

    if-lez v1, :cond_0

    invoke-virtual {p0, p2, v0, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public static final a(Landroid/os/IBinder;Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    const-string v2, "obtain(...)"

    invoke-static {v1, v2}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    invoke-static {v3, v2}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    const-string v2, "android.bluetooth.IBluetoothHeadsetClient"

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, v1, v0}, Landroid/bluetooth/BluetoothDevice;->writeToParcel(Landroid/os/Parcel;I)V

    invoke-interface {p0, v2, v1, v3, v0}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_1

    move v0, v2

    :cond_1
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    :goto_0
    return v0

    :catchall_0
    move-exception p0

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public static b(ILjava/lang/String;)Ljava/lang/String;
    .locals 2

    :try_start_0
    new-instance v0, LT/n;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LT/n;-><init>(I)V

    const/4 v1, 0x0

    invoke-static {p1, p0, v1, v0}, LT/m;->v(Ljava/lang/String;ILH0/l;LH0/p;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "ADB_FAIL: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static c(ILjava/lang/String;)Ljava/lang/String;
    .locals 2

    :try_start_0
    new-instance v0, LT/n;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LT/n;-><init>(I)V

    const/4 v1, 0x0

    invoke-static {p1, p0, v1, v0}, LT/m;->v(Ljava/lang/String;ILH0/l;LH0/p;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "ADB_FAIL: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static d(Landroid/content/Context;LH0/l;)Z
    .locals 11

    const-string v0, "\'"

    const-string v1, "context"

    invoke-static {p0, v1}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "onProgress"

    invoke-static {p1, v1}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "\n                mkdir -p /data/local/gesture-launcher 2>/dev/null\n                cp -f "

    const-string v2, "[ -f \'/data/local/gesture-launcher/launcher.apk\' ] && echo SRC_OK || echo SRC_FAIL"

    const/16 v3, 0x1f40

    invoke-static {v3, v2}, LT/m;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "SRC_OK"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, LO0/j;->x0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v2

    const-string v5, "GesturePatch"

    if-eqz v2, :cond_2

    invoke-static {}, LT/m;->m()Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x1

    if-nez v2, :cond_0

    move v8, v6

    goto :goto_0

    :cond_0
    const-string v7, "sha256sum \'/data/local/gesture-launcher/launcher.apk\' 2>/dev/null | cut -d\' \' -f1"

    const/16 v8, 0x3a98

    invoke-static {v8, v7}, LT/m;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, LO0/j;->X0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v2}, LO0/s;->s0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "isLocalSourceUpToDate: desatualizado (local="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " esperado="

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x29

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    if-eqz v8, :cond_2

    goto :goto_1

    :cond_2
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    const-string v6, "gesture-launcher.apk"

    invoke-direct {v2, p0, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v2, p1}, LT/m;->i(Ljava/io/File;LH0/l;)V

    const-string p0, "verify"

    invoke-interface {p1, p0}, LH0/l;->b(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2}, LT/m;->y(Ljava/io/File;)V

    const-string p0, "copy"

    invoke-interface {p1, p0}, LH0/l;->b(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const-string v6, "getAbsolutePath(...)"

    invoke-static {v2, v6}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "\'\\\'\'"

    invoke-static {v2, v0, v6}, LO0/s;->v0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x27

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " \'/data/local/gesture-launcher/launcher.apk\' 2>&1 || exit 20\n                chown root:root \'/data/local/gesture-launcher/launcher.apk\' 2>&1 || true\n                chmod 644 \'/data/local/gesture-launcher/launcher.apk\' 2>&1 || true\n                chcon u:object_r:system_app_file:s0 \'/data/local/gesture-launcher/launcher.apk\' 2>&1 || true\n                [ -f \'/data/local/gesture-launcher/launcher.apk\' ] && echo SRC_OK || echo SRC_FAIL\n                "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, LO0/l;->n0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const v0, 0xea60

    invoke-static {v0, p0}, LT/m;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v3, v4}, LO0/j;->x0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v6, p0

    goto :goto_1

    :catchall_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ensureSource: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0, v5}, LM/d0;->r(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    move v6, v4

    :goto_1
    if-nez v6, :cond_3

    return v4

    :cond_3
    const-string p0, "mount"

    invoke-interface {p1, p0}, LH0/l;->b(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "\n            setenforce 0 2>/dev/null || true\n            DST=$(pm path com.flyme.auto.launcher | sed \'s/^package://\')\n            [ -n \"$DST\" ] || { echo \"SEM_ALVO\"; exit 10; }\n            ls -l \'/data/local/gesture-launcher/launcher.apk\' 2>&1 || { echo \"SEM_FONTE\"; exit 11; }\n            for i in 1 2 3 4 5 6; do\n  grep -F \" $DST \" /proc/mounts >/dev/null 2>&1 || break\n  umount \"$DST\" 2>/dev/null || umount -l \"$DST\" 2>/dev/null || true\ndone\n            mount --bind \'/data/local/gesture-launcher/launcher.apk\' \"$DST\" 2>&1 || exit 14\n            restorecon -v \"$DST\" 2>/dev/null || true\n            rm -rf /data/dalvik-cache/*/system@priv-app@GeelyAutoLauncher* 2>/dev/null || true\n            am force-stop com.flyme.auto.launcher 2>/dev/null || true\n            if grep -F \" $DST \" /proc/mounts >/dev/null 2>&1; then echo BIND_OK; else echo BIND_FAIL; fi\n            "

    invoke-static {p0}, LO0/l;->n0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0x7530

    invoke-static {p1, p0}, LT/m;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "BIND_OK"

    invoke-static {p0, p1, v4}, LO0/j;->x0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "apply: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_4

    const-string v1, "OK"

    goto :goto_2

    :cond_4
    const-string v1, "FAIL"

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " \u2014 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xc8

    invoke-static {v1, p0}, LO0/j;->W0(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, LO0/j;->X0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p1
.end method

.method public static e(Landroid/content/Context;LH0/l;)Z
    .locals 8

    const-string v0, "\'"

    const-string v1, "context"

    invoke-static {p0, v1}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "\n                mkdir -p /data/local/hvac-digital 2>/dev/null\n                cp -f "

    const-string v2, "[ -f \'/data/local/hvac-digital/sysui.apk\' ] && echo SRC_OK || echo SRC_FAIL"

    const/16 v3, 0x1f40

    invoke-static {v3, v2}, LT/m;->c(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "SRC_OK"

    const/4 v5, 0x0

    invoke-static {v2, v4, v5}, LO0/j;->x0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v2

    const-string v6, "HvacDigital"

    if-eqz v2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    const-string v7, "sysui-digital.apk"

    invoke-direct {v2, p0, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v2, p1}, LT/m;->j(Ljava/io/File;LH0/l;)V

    invoke-static {v2}, LT/m;->z(Ljava/io/File;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    const-string v2, "getAbsolutePath(...)"

    invoke-static {p1, v2}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "\'\\\'\'"

    invoke-static {p1, v0, v2}, LO0/s;->v0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x27

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " \'/data/local/hvac-digital/sysui.apk\' 2>&1 || exit 20\n                chown root:root \'/data/local/hvac-digital/sysui.apk\' 2>&1 || true\n                chmod 644 \'/data/local/hvac-digital/sysui.apk\' 2>&1 || true\n                chcon u:object_r:system_app_file:s0 \'/data/local/hvac-digital/sysui.apk\' 2>&1 || true\n                [ -f \'/data/local/hvac-digital/sysui.apk\' ] && echo SRC_OK || echo SRC_FAIL\n                "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, LO0/l;->n0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0x7530

    invoke-static {p1, p0}, LT/m;->c(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v4, v5}, LO0/j;->x0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "ensureSource: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1, v6}, LM/d0;->r(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    move p0, v5

    :goto_0
    if-nez p0, :cond_1

    return v5

    :cond_1
    const-string p0, "\n            setenforce 0 2>/dev/null || true\n            for i in 1 2 3 4 5 6; do\n  grep -F \" $DST \" /proc/mounts >/dev/null 2>&1 || break\n  umount \"$DST\" 2>/dev/null || umount -l \"$DST\" 2>/dev/null || true\ndone\n            ls -l \'/data/local/hvac-digital/sysui.apk\' 2>&1 || { echo \"SEM_FONTE\"; exit 11; }\n            _OUT=$(pm install -r -g \'/data/local/hvac-digital/sysui.apk\' 2>&1 | tail -n1)\n            echo \"$_OUT\"\n            case \"$_OUT\" in\n              *INSTALL_FAILED_VERSION_DOWNGRADE*)\n                echo \"HVAC_FALLBACK_BIND\"\n                DST=$(pm path com.flyme.auto.systemuiplugin | sed \'s/^package://\')\n                chown root:root \'/data/local/hvac-digital/sysui.apk\'; chmod 644 \'/data/local/hvac-digital/sysui.apk\'\n                chcon u:object_r:system_app_file:s0 \'/data/local/hvac-digital/sysui.apk\' 2>/dev/null || echo \"HVAC_CHCON_FALHOU\"\n                umount \"$DST\" 2>/dev/null || true\n                mount --bind \'/data/local/hvac-digital/sysui.apk\' \"$DST\"\n                restorecon -v \"$DST\" 2>/dev/null || true\n                touch \'/data/local/tmp/fixes/hvac_em_bind\' 2>/dev/null || true\n                ;;\n            esac\n            _p=$(pm path com.flyme.auto.systemuiplugin 2>/dev/null)\n            echo \"PM_PATH=$_p\"\n            case \"$_p\" in\n              *\"/data/app/\"*)\n                echo INSTALL_OK\n                rm -f \'/data/local/tmp/fixes/hvac_em_bind\' 2>/dev/null || true\n                ;;\n              *)\n                if grep -F \"$(pm path com.flyme.auto.systemuiplugin | sed \'s/^package://\')\" /proc/mounts >/dev/null 2>&1; then\n                  echo INSTALL_OK\n                else\n                  echo INSTALL_FAIL\n                fi\n                ;;\n            esac\n            "

    invoke-static {p0}, LO0/l;->n0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const p1, 0x3a980

    invoke-static {p1, p0}, LT/m;->c(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "INSTALL_OK"

    invoke-static {p0, p1, v5}, LO0/j;->x0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "apply: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_2

    const-string v1, "OK"

    goto :goto_1

    :cond_2
    const-string v1, "FAIL"

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " \u2014 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xc8

    invoke-static {v1, p0}, LO0/j;->W0(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, LO0/j;->X0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_3

    const-string p0, "kill $(pidof com.android.systemui) 2>/dev/null || true"

    invoke-static {v3, p0}, LT/m;->c(ILjava/lang/String;)Ljava/lang/String;

    :cond_3
    return p1
.end method

.method public static f(Landroid/content/Context;ILjava/lang/String;Ljava/lang/Boolean;I)V
    .locals 2

    and-int/lit8 v0, p4, 0x4

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object p2, v1

    :cond_0
    and-int/lit8 p4, p4, 0x8

    if-eqz p4, :cond_1

    move-object p3, v1

    :cond_1
    const-string p4, "ctx"

    invoke-static {p0, p4}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, LT/m;->r(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object p4

    invoke-static {p4, p1}, Lw0/i;->b0(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LT/C;

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    if-nez p2, :cond_3

    iget-object p2, p1, LT/C;->b:Ljava/lang/String;

    :cond_3
    if-eqz p3, :cond_4

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    goto :goto_0

    :cond_4
    iget-boolean p3, p1, LT/C;->c:Z

    :goto_0
    const/4 p4, 0x0

    const/4 v0, 0x1

    invoke-static {p1, p4, p2, p3, v0}, LT/C;->a(LT/C;ILjava/lang/String;ZI)LT/C;

    move-result-object p1

    invoke-static {p0, p1}, LT/m;->w(Landroid/content/Context;LT/C;)V

    :goto_1
    return-void
.end method

.method public static g(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;I)V
    .locals 2

    and-int/lit8 v0, p5, 0x4

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object p2, v1

    :cond_0
    and-int/lit8 v0, p5, 0x8

    if-eqz v0, :cond_1

    move-object p3, v1

    :cond_1
    and-int/lit8 p5, p5, 0x10

    if-eqz p5, :cond_2

    move-object p4, v1

    :cond_2
    const-string p5, "ctx"

    invoke-static {p0, p5}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, LT/m;->s(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object p5

    invoke-static {p5, p1}, Lw0/i;->b0(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LT/D;

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    if-nez p2, :cond_4

    iget-object p2, p1, LT/D;->b:Ljava/lang/String;

    :cond_4
    if-nez p3, :cond_5

    iget-object p3, p1, LT/D;->c:Ljava/lang/String;

    :cond_5
    if-eqz p4, :cond_6

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p4

    goto :goto_0

    :cond_6
    iget-boolean p4, p1, LT/D;->d:Z

    :goto_0
    const-string p5, "tela_preta_prefs"

    const/4 v0, 0x0

    invoke-virtual {p0, p5, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string p5, "getSharedPreferences(...)"

    invoke-static {p0, p5}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    iget p1, p1, LT/D;->a:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    filled-new-array {p5}, [Ljava/lang/Object;

    move-result-object p5

    const/4 v0, 0x1

    invoke-static {p5, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p5

    const-string v1, "split_grupo_%d_esq"

    invoke-static {v1, p5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p5

    invoke-interface {p0, p5, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    const-string p5, "split_grupo_%d_dir"

    invoke-static {p5, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p2, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string p2, "split_grupo_%d_on"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1, p4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :goto_1
    return-void
.end method

.method public static h(Landroid/content/Context;Ljava/lang/String;LA/c;)V
    .locals 5

    const-string v0, "BtHfpClient"

    const-string v1, "context"

    invoke-static {p0, v1}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "mac"

    invoke-static {p1, v1}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    new-instance v2, LT/O;

    invoke-direct {v2, v1, p1, p0, p2}, LT/O;-><init>(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;Landroid/content/Context;LA/c;)V

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    const-string v3, "com.android.bluetooth"

    const-string v4, "com.android.bluetooth.hfpclient.HeadsetClientService"

    invoke-direct {v1, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/4 v1, 0x1

    :try_start_1
    invoke-virtual {p0, p1, v2, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "bindService lan\u00e7ou: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    sget-object p1, LT/L3;->a:LT/L3;

    const-string v1, "bindService(com.android.bluetooth.hfpclient.HeadsetClientService) recusado \u2014 HFP-Client indispon\u00edvel neste firmware"

    invoke-virtual {p1, v0, v1}, LT/L3;->b(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_2
    invoke-virtual {p0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p2, p0}, LA/c;->b(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void

    :catchall_2
    move-exception p0

    goto :goto_2

    :cond_2
    :goto_1
    :try_start_3
    const-string p0, "adapter ausente ou desligado"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p2, p0}, LA/c;->b(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    return-void

    :goto_2
    const-string v1, "MAC inv\u00e1lido ("

    const-string v2, "): "

    invoke-static {v1, p1, v2}, LM/d0;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {p0, p1, v0}, LM/d0;->r(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p2, p0}, LA/c;->b(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static i(Ljava/io/File;LH0/l;)V
    .locals 14

    const-string v0, "HTTP "

    new-instance v1, Ljava/net/URL;

    const-string v2, "https://raw.githubusercontent.com/swimapps/Outros/main/GeelyAutoLauncher-gesture-signed.apk"

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type java.net.HttpURLConnection"

    invoke-static {v1, v2}, LI0/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/net/HttpURLConnection;

    const/16 v2, 0x7530

    invoke-virtual {v1, v2}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    const v2, 0xea60

    invoke-virtual {v1, v2}, Ljava/net/URLConnection;->setReadTimeout(I)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    :try_start_0
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_3

    invoke-virtual {v1}, Ljava/net/URLConnection;->getContentLength()I

    move-result v0

    invoke-virtual {v1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/high16 v4, 0x10000

    :try_start_2
    new-array v4, v4, [B

    const-wide/16 v5, 0x0

    const/4 v7, -0x1

    move-wide v8, v5

    :cond_0
    :goto_0
    invoke-virtual {v2, v4}, Ljava/io/InputStream;->read([B)I

    move-result v10

    if-ltz v10, :cond_1

    const/4 v11, 0x0

    invoke-virtual {v3, v4, v11, v10}, Ljava/io/FileOutputStream;->write([BII)V

    int-to-long v10, v10

    add-long/2addr v8, v10

    if-lez v0, :cond_0

    const/16 v10, 0x64

    int-to-long v10, v10

    mul-long/2addr v10, v8

    int-to-long v12, v0

    div-long/2addr v10, v12

    long-to-int v10, v10

    if-eq v10, v7, :cond_0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "download:"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1, v7}, LH0/l;->b(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v7, v10

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :try_start_3
    invoke-static {v3, p1}, LA/b;->m(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-static {v2, p1}, LA/b;->m(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide p0

    cmp-long p0, p0, v5

    if-eqz p0, :cond_2

    return-void

    :cond_2
    new-instance p0, Ljava/io/IOException;

    const-string p1, "download vazio"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_1
    move-exception p0

    goto :goto_3

    :catchall_2
    move-exception p0

    goto :goto_2

    :goto_1
    :try_start_5
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    move-exception p1

    :try_start_6
    invoke-static {v3, p0}, LA/b;->m(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :goto_2
    :try_start_7
    throw p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    :catchall_4
    move-exception p1

    :try_start_8
    invoke-static {v2, p0}, LA/b;->m(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1

    :cond_3
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :goto_3
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    throw p0
.end method

.method public static j(Ljava/io/File;LH0/l;)V
    .locals 16

    move-object/from16 v0, p1

    const-string v1, "HTTP "

    new-instance v2, Ljava/net/URL;

    const-string v3, "https://raw.githubusercontent.com/swimapps/CentralEXAuto/main/GeelyAutoSystemUIPlugin-digital.apk"

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    const-string v3, "null cannot be cast to non-null type java.net.HttpURLConnection"

    invoke-static {v2, v3}, LI0/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/net/HttpURLConnection;

    const/16 v3, 0x7530

    invoke-virtual {v2, v3}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    invoke-virtual {v2, v3}, Ljava/net/URLConnection;->setReadTimeout(I)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    :try_start_0
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    const/16 v4, 0xc8

    if-ne v3, v4, :cond_5

    invoke-virtual {v2}, Ljava/net/URLConnection;->getContentLength()I

    move-result v1

    int-to-long v3, v1

    invoke-virtual {v2}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v5, Ljava/io/FileOutputStream;

    move-object/from16 v6, p0

    invoke-direct {v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/high16 v7, 0x10000

    :try_start_2
    new-array v7, v7, [B

    const-wide/16 v11, 0x0

    const/4 v13, -0x1

    :goto_0
    invoke-virtual {v1, v7}, Ljava/io/InputStream;->read([B)I

    move-result v14

    if-ltz v14, :cond_3

    const/4 v15, 0x0

    invoke-virtual {v5, v7, v15, v14}, Ljava/io/FileOutputStream;->write([BII)V

    int-to-long v8, v14

    add-long/2addr v11, v8

    if-eqz v0, :cond_1

    const-wide/16 v8, 0x0

    cmp-long v10, v3, v8

    if-gtz v10, :cond_0

    const/4 v8, -0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v0, v9}, LH0/l;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v10, v7

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v3, v0

    goto :goto_2

    :cond_0
    const/4 v8, -0x1

    const/16 v9, 0x64

    move-object v10, v7

    int-to-long v6, v9

    mul-long/2addr v6, v11

    div-long/2addr v6, v3

    long-to-int v6, v6

    invoke-static {v6, v15, v9}, LA/b;->o(III)I

    move-result v6

    if-eq v6, v13, :cond_2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v0, v7}, LH0/l;->b(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v13, v6

    move-object v7, v10

    move-object/from16 v6, p0

    goto :goto_0

    :cond_1
    move-object v10, v7

    const/4 v8, -0x1

    :cond_2
    :goto_1
    move-object/from16 v6, p0

    move-object v7, v10

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :try_start_3
    invoke-static {v5, v0}, LA/b;->m(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-static {v1, v0}, LA/b;->m(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_4

    return-void

    :cond_4
    new-instance v0, Ljava/io/IOException;

    const-string v1, "download vazio"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v3, v0

    goto :goto_3

    :goto_2
    :try_start_5
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    move-exception v0

    move-object v4, v0

    :try_start_6
    invoke-static {v5, v3}, LA/b;->m(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :goto_3
    :try_start_7
    throw v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    :catchall_4
    move-exception v0

    move-object v4, v0

    :try_start_8
    invoke-static {v1, v3}, LA/b;->m(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v4

    :cond_5
    new-instance v0, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :goto_4
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v0
.end method

.method public static k()Ljava/lang/String;
    .locals 6

    const-string v0, "AdbLocal"

    const-string v1, "ensurePortMigrated: "

    sget-object v2, LT/q;->a:[I

    const-string v2, "\n            cur=\"$(getprop service.adb.tcp.port)\"\n            per=\"$(getprop persist.adb.tcp.port)\"\n            if [ \"$cur\" = \"65010\" ] && [ \"$per\" = \"65010\" ]; then\n              echo \"ADB_PORT_OK=65010\"\n            else\n              setprop persist.adb.tcp.port 65010\n              setprop service.adb.tcp.port 65010\n              ( sleep 1; setprop ctl.restart adbd ) >/dev/null 2>&1 &\n              echo \"ADB_PORT_MIGRATED cur=$cur per=$per -> 65010\"\n            fi\n        "

    invoke-static {v2}, LO0/l;->n0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :try_start_0
    new-instance v3, LT/n;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, LT/n;-><init>(I)V

    const/4 v4, 0x0

    const/16 v5, 0x1f40

    invoke-static {v2, v5, v4, v3}, LT/m;->v(Ljava/lang/String;ILH0/l;LH0/p;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, LO0/j;->X0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ensurePortMigrated falhou: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "ADB_PORT_MIGRATE_FAIL="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    return-object v2
.end method

.method public static l()Z
    .locals 3

    const-string v0, "pm path com.flyme.auto.systemuiplugin"

    const/16 v1, 0x1f40

    invoke-static {v1, v0}, LT/m;->c(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "/data/app"

    invoke-static {v0, v2, v1}, LO0/j;->x0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    return v0
.end method

.method public static m()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/net/URL;

    const-string v2, "https://raw.githubusercontent.com/swimapps/Outros/main/launchergesture.json"

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    sget-object v2, LO0/a;->a:Ljava/nio/charset/Charset;

    invoke-static {v1}, LA/b;->Y(Ljava/net/URL;)[B

    move-result-object v1

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    const-string v1, "\"sha256\"\\s*:\\s*\"([0-9a-fA-F]+)\""

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    const-string v2, "compile(...)"

    invoke-static {v1, v2}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    const-string v2, "matcher(...)"

    invoke-static {v1, v2}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-static {v1, v2, v3}, LA/b;->e(Ljava/util/regex/Matcher;ILjava/lang/CharSequence;)LO0/e;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, LO0/e;->a()Ljava/util/List;

    move-result-object v1

    check-cast v1, LO0/d;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, LO0/d;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "fetchExpectedSha: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "GesturePatch"

    invoke-static {v1, v2, v3}, LM/d0;->r(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-object v0
.end method

.method public static n()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/net/URL;

    const-string v2, "https://raw.githubusercontent.com/swimapps/Outros/main/hvacdigital.json"

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    sget-object v2, LO0/a;->a:Ljava/nio/charset/Charset;

    invoke-static {v1}, LA/b;->Y(Ljava/net/URL;)[B

    move-result-object v1

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    const-string v1, "\"sha256\"\\s*:\\s*\"([0-9a-fA-F]+)\""

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    const-string v2, "compile(...)"

    invoke-static {v1, v2}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    const-string v2, "matcher(...)"

    invoke-static {v1, v2}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-static {v1, v2, v3}, LA/b;->e(Ljava/util/regex/Matcher;ILjava/lang/CharSequence;)LO0/e;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, LO0/e;->a()Ljava/util/List;

    move-result-object v1

    check-cast v1, LO0/d;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, LO0/d;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "fetchExpectedSha: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "HvacDigital"

    invoke-static {v1, v2, v3}, LM/d0;->r(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-object v0
.end method

.method public static o(Ljava/net/Socket;)Z
    .locals 9

    invoke-virtual {p0}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object p0

    instance-of v0, p0, Ljava/net/InetSocketAddress;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/net/InetSocketAddress;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const/4 v0, 0x0

    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object p0

    if-nez p0, :cond_1

    goto/16 :goto_3

    :cond_1
    invoke-virtual {p0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v1

    array-length v3, v1

    const/4 v4, 0x4

    if-ne v3, v4, :cond_7

    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v3

    const-string v5, "getNetworkInterfaces(...)"

    invoke-static {v3, v5}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/net/NetworkInterface;

    invoke-virtual {v5}, Ljava/net/NetworkInterface;->isUp()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v5}, Ljava/net/NetworkInterface;->isLoopback()Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v5}, Ljava/net/NetworkInterface;->getInterfaceAddresses()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_5
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/net/InterfaceAddress;

    invoke-virtual {v6}, Ljava/net/InterfaceAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v6

    if-eqz v6, :cond_5

    invoke-virtual {v6}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v6

    if-nez v6, :cond_6

    goto :goto_2

    :cond_6
    array-length v7, v6

    if-ne v7, v4, :cond_5

    aget-byte v7, v6, v0

    aget-byte v8, v1, v0

    if-ne v7, v8, :cond_5

    aget-byte v7, v6, v2

    aget-byte v8, v1, v2

    if-ne v7, v8, :cond_5

    const/4 v7, 0x2

    aget-byte v6, v6, v7

    aget-byte v7, v1, v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v6, v7, :cond_5

    return v2

    :catch_0
    :cond_7
    invoke-virtual {p0}, Ljava/net/InetAddress;->isSiteLocalAddress()Z

    move-result p0

    return p0

    :cond_8
    :goto_3
    return v0
.end method

.method public static q()V
    .locals 3

    sget-object v0, LT/m;->d:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    sget-object v1, LT/m;->h:Ljava/lang/String;

    const-string v2, "fullscreen"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/ex/auto/ExSapoCastActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x30000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/ex/auto/ExSapoCastFloaterService;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "launchUi: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExSapoCast"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public static r(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 8

    const-string v0, "ctx"

    invoke-static {p0, v0}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tela_preta_prefs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "getSharedPreferences(...)"

    invoke-static {p0, v0}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x5

    invoke-static {v1, v0}, LA/b;->i0(II)LL0/c;

    move-result-object v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v0}, Lw0/k;->V(Ljava/lang/Iterable;)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0}, LL0/a;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    move-object v3, v0

    check-cast v3, LL0/b;

    iget-boolean v3, v3, LL0/b;->c:Z

    if-eqz v3, :cond_1

    move-object v3, v0

    check-cast v3, LL0/b;

    invoke-virtual {v3}, LL0/b;->a()I

    move-result v3

    new-instance v4, LT/C;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v5, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    const-string v7, "pip_app_%d_pkg"

    invoke-static {v7, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v7, ""

    invoke-interface {p0, v5, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_0

    goto :goto_1

    :cond_0
    move-object v7, v5

    :goto_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    const-string v6, "pip_app_%d_on"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p0, v5, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    invoke-direct {v4, v3, v7, v5}, LT/C;-><init>(ILjava/lang/String;Z)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method public static s(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 10

    const-string v0, "ctx"

    invoke-static {p0, v0}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tela_preta_prefs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "getSharedPreferences(...)"

    invoke-static {p0, v0}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x5

    invoke-static {v1, v0}, LA/b;->i0(II)LL0/c;

    move-result-object v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v0}, Lw0/k;->V(Ljava/lang/Iterable;)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0}, LL0/a;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    move-object v3, v0

    check-cast v3, LL0/b;

    iget-boolean v3, v3, LL0/b;->c:Z

    if-eqz v3, :cond_2

    move-object v3, v0

    check-cast v3, LL0/b;

    invoke-virtual {v3}, LL0/b;->a()I

    move-result v3

    new-instance v4, LT/D;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v5, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    const-string v7, "split_grupo_%d_esq"

    invoke-static {v7, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v7, ""

    invoke-interface {p0, v5, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_0

    move-object v5, v7

    :cond_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v8

    const-string v9, "split_grupo_%d_dir"

    invoke-static {v9, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {p0, v8, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_1

    goto :goto_1

    :cond_1
    move-object v7, v8

    :goto_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v6

    const-string v8, "split_grupo_%d_on"

    invoke-static {v8, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p0, v6, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    invoke-direct {v4, v3, v5, v7, v6}, LT/D;-><init>(ILjava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v2
.end method

.method public static t(Ljava/io/DataInputStream;)LT/j1;
    .locals 5

    const-string v0, "length invalido: "

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v2

    if-gez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    if-ltz v3, :cond_2

    const/high16 v4, 0x400000

    if-gt v3, v4, :cond_2

    new-array v0, v3, [B

    if-lez v3, :cond_1

    invoke-virtual {p0, v0}, Ljava/io/DataInputStream;->readFully([B)V

    :cond_1
    new-instance p0, LT/j1;

    invoke-direct {p0, v2, v0}, LT/j1;-><init>(ILjava/lang/Object;)V

    move-object v1, p0

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/io/EOFException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-object v1
.end method

.method public static u(Lcom/ex/auto/QuickAccessFloaterService;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, LO0/j;->E0(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-object p1
.end method

.method public static v(Ljava/lang/String;ILH0/l;LH0/p;)Ljava/lang/String;
    .locals 12

    const-string v0, "script"

    invoke-static {p0, v0}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, LO0/a;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    const-string v1, "getBytes(...)"

    invoke-static {v0, v1}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v1, v0

    const/16 v2, 0xdac

    if-ge v1, v2, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p3, p0, p1}, LH0/p;->c(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_0
    const/4 p0, 0x2

    invoke-static {v0, p0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\'/data/local/tmp/_big_script_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ".b64\'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ".sh\'"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "rm -f "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x20

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " 2>/dev/null; true"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v6, 0x2710

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {p3, v1, v7}, LH0/p;->c(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit16 v1, v1, 0xbb7

    div-int/lit16 v1, v1, 0xbb8

    const/4 v7, 0x0

    move v8, v7

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v7, v9, :cond_2

    add-int/lit8 v8, v8, 0x1

    if-eqz p2, :cond_1

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Enviando dados\u2026 ("

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v10, 0x2f

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v10, 0x29

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {p2, v9}, LH0/l;->b(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit16 v9, v7, 0xbb8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    invoke-virtual {p0, v7, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    const-string v10, "substring(...)"

    invoke-static {v7, v10}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "echo \'"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\' >> "

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/16 v10, 0x3a98

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {p3, v7, v10}, LH0/p;->c(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v7, v9

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    const-string p0, "Aplicando\u2026 (pode levar um tempo)"

    invoke-interface {p2, p0}, LH0/l;->b(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    const-string p0, "base64 -d "

    const-string p2, " > "

    const-string v1, " 2>&1 && sh "

    invoke-static {p0, v2, p2, v0, v1}, LM/d0;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p3, p0, p1}, LH0/p;->c(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p3, p1, p2}, LH0/p;->c(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public static w(Landroid/content/Context;LT/C;)V
    .locals 4

    const-string v0, "ctx"

    invoke-static {p0, v0}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tela_preta_prefs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "getSharedPreferences(...)"

    invoke-static {p0, v0}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    iget v0, p1, LT/C;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    const-string v3, "pip_app_%d_pkg"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p1, LT/C;->b:Ljava/lang/String;

    invoke-interface {p0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    const-string v1, "pip_app_%d_on"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-boolean p1, p1, LT/C;->c:Z

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static x(Landroid/content/Context;ZZZLH0/l;)Z
    .locals 7

    const-string v0, "context"

    invoke-static {p0, v0}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v0

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v1

    :goto_1
    invoke-static {}, LT/m;->l()Z

    move-result v3

    const-string v4, "kill $(pidof com.android.systemui) 2>/dev/null || true"

    const/16 v5, 0x1f40

    if-nez v2, :cond_5

    if-nez v3, :cond_2

    const-string p0, "DST=$(pm path com.flyme.auto.systemuiplugin | sed \'s/^package://\'); grep -F \" $DST \" /proc/mounts >/dev/null 2>&1 && echo Y || echo N"

    const/16 p1, 0x1770

    invoke-static {p1, p0}, LT/m;->c(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "Y"

    invoke-static {p0, p1, v0}, LO0/j;->x0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result p0

    if-eqz p0, :cond_4

    :cond_2
    const-string p0, "\n            for i in 1 2 3 4 5 6; do\n  grep -F \" $DST \" /proc/mounts >/dev/null 2>&1 || break\n  umount \"$DST\" 2>/dev/null || umount -l \"$DST\" 2>/dev/null || true\ndone\n            pm uninstall com.flyme.auto.systemuiplugin 2>&1 | tail -n1\n            _p=$(pm path com.flyme.auto.systemuiplugin 2>/dev/null)\n            echo \"PM_PATH=$_p\"\n            case \"$_p\" in\n              *\"/data/app/\"*) echo AINDA_INSTALADO ;;\n              *\"/system/\"*)   echo REVERTIDO_STOCK ;;\n              *)              echo SEM_PATH ;;\n            esac\n            "

    invoke-static {p0}, LO0/l;->n0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const p1, 0x1d4c0

    invoke-static {p1, p0}, LT/m;->c(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "REVERTIDO_STOCK"

    invoke-static {p0, p1, v0}, LO0/j;->x0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "remove: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_3

    const-string p1, "OK"

    goto :goto_2

    :cond_3
    const-string p1, "FAIL"

    :goto_2
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " \u2014 "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0xa0

    invoke-static {p1, p0}, LO0/j;->W0(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, LO0/j;->X0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "HvacDigital"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v5, v4}, LT/m;->c(ILjava/lang/String;)Ljava/lang/String;

    :cond_4
    return v1

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "\n            setprop persist.sys.hvacdigital.temp "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "0"

    const-string v6, "1"

    if-eqz p1, :cond_6

    move-object p1, v6

    goto :goto_3

    :cond_6
    move-object p1, v2

    :goto_3
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n            setprop persist.sys.hvacdigital.batt "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_7

    move-object p1, v6

    goto :goto_4

    :cond_7
    move-object p1, v2

    :goto_4
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n            setprop persist.sys.hvacdigital.exttemp "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_8

    move-object v2, v6

    :cond_8
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n            "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, LO0/l;->n0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, LT/m;->c(ILjava/lang/String;)Ljava/lang/String;

    if-nez v3, :cond_9

    invoke-static {p0, p4}, LT/m;->e(Landroid/content/Context;LH0/l;)Z

    move-result p0

    return p0

    :cond_9
    invoke-static {v5, v4}, LT/m;->c(ILjava/lang/String;)Ljava/lang/String;

    return v1
.end method

.method public static y(Ljava/io/File;)V
    .locals 5

    invoke-static {}, LT/m;->m()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "SHA-256"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/16 p0, 0x2000

    :try_start_0
    new-array p0, p0, [B

    :goto_0
    invoke-virtual {v2, p0}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    if-ltz v3, :cond_1

    const/4 v4, 0x0

    invoke-virtual {v1, p0, v4, v3}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    invoke-static {v2, p0}, LA/b;->m(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    const-string v1, "digest(...)"

    invoke-static {p0, v1}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, LT/n;

    const/16 v2, 0x13

    invoke-direct {v1, v2}, LT/n;-><init>(I)V

    invoke-static {p0, v1}, Lw0/h;->X([BLH0/l;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    return-void

    :cond_2
    new-instance p0, Ljava/io/IOException;

    const-string v0, "sha256 diverge"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_1
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {v2, p0}, LA/b;->m(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static z(Ljava/io/File;)V
    .locals 5

    invoke-static {}, LT/m;->n()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "SHA-256"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/16 p0, 0x2000

    :try_start_0
    new-array p0, p0, [B

    :goto_0
    invoke-virtual {v2, p0}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    if-ltz v3, :cond_1

    const/4 v4, 0x0

    invoke-virtual {v1, p0, v4, v3}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    invoke-static {v2, p0}, LA/b;->m(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    const-string v1, "digest(...)"

    invoke-static {p0, v1}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, LT/n;

    const/16 v2, 0x14

    invoke-direct {v1, v2}, LT/n;-><init>(I)V

    invoke-static {p0, v1}, Lw0/h;->X([BLH0/l;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    return-void

    :cond_2
    new-instance p0, Ljava/io/IOException;

    const-string v0, "sha256 diverge"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_1
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {v2, p0}, LA/b;->m(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public declared-synchronized p(Lcom/ex/auto/PhoneSyncService;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sput-object p1, LT/m;->d:Landroid/content/Context;

    const-string p1, "fullscreen"

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "fullscreen"

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_0
    const-string p1, "pip"

    :goto_0
    sput-object p1, LT/m;->h:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    const/16 p2, 0x18

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    int-to-long v2, v2

    const/16 v4, 0x15

    shl-long/2addr v2, v4

    xor-long/2addr v0, v2

    const/4 v2, 0x0

    :goto_1
    if-ge v2, p2, :cond_1

    const-wide v3, 0x5851f42d4c957f2dL    # 2.8296655102636685E117

    mul-long/2addr v0, v3

    const-wide v3, 0x14057b7ef767814fL    # 3.190626645921225E-212

    add-long/2addr v0, v3

    const/16 v3, 0x21

    ushr-long v3, v0, v3

    long-to-int v3, v3

    const v4, 0x7fffffff

    and-int/2addr v3, v4

    rem-int/lit8 v3, v3, 0x3e

    const-string v4, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789"

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "toString(...)"

    invoke-static {p1, p2}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p1, LT/m;->f:Ljava/lang/String;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/32 v2, 0x493e0

    add-long/2addr v0, v2

    sput-wide v0, LT/m;->g:J

    sget-boolean p2, LT/m;->e:Z

    if-eqz p2, :cond_2

    goto :goto_2

    :cond_2
    const/4 p2, 0x1

    sput-boolean p2, LT/m;->e:Z

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, LT/T0;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, LT/T0;-><init>(Ljava/lang/Object;I)V

    const-string v2, "exsapocast-accept"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/Thread;->setDaemon(Z)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    monitor-exit p0

    return-object p1

    :goto_3
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
