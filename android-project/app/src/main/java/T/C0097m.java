package T;

import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.content.ComponentName;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.os.IBinder;
import android.os.Parcel;
import android.os.SystemClock;
import android.util.Base64;
import android.util.Log;
import com.ex.auto.ExSapoCastActivity;
import com.ex.auto.ExSapoCastFloaterService;
import com.ex.auto.PhoneSyncService;
import com.ex.auto.QuickAccessFloaterService;
import java.io.BufferedOutputStream;
import java.io.DataInputStream;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.InvocationTargetException;
import java.net.HttpURLConnection;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.InterfaceAddress;
import java.net.NetworkInterface;
import java.net.Socket;
import java.net.SocketAddress;
import java.net.URL;
import java.net.URLConnection;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: renamed from: T.m, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0097m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static volatile int f1043a = 0;
    public static final C0097m b = new C0097m();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static volatile ContextWrapper f1044c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static Context f1045d = null;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static volatile boolean f1046e = false;
    public static volatile String f = null;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static volatile long f1047g = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static volatile String f1048h = "pip";

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static volatile C0105n1 f1049i;

    public static void A(BufferedOutputStream bufferedOutputStream, int i2, byte[] bArr) {
        int length = bArr.length;
        I0.f.e(bufferedOutputStream, "out");
        byte[] bArr2 = {(byte) i2, (byte) (length >>> 24), (byte) (length >>> 16), (byte) (length >>> 8), (byte) length};
        synchronized (bufferedOutputStream) {
            try {
                bufferedOutputStream.write(bArr2);
                if (length > 0) {
                    bufferedOutputStream.write(bArr, 0, length);
                }
                bufferedOutputStream.flush();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static final boolean a(IBinder iBinder, BluetoothDevice bluetoothDevice) {
        boolean z2 = false;
        if (iBinder != null) {
            Parcel parcelObtain = Parcel.obtain();
            I0.f.d(parcelObtain, "obtain(...)");
            Parcel parcelObtain2 = Parcel.obtain();
            I0.f.d(parcelObtain2, "obtain(...)");
            try {
                parcelObtain.writeInterfaceToken("android.bluetooth.IBluetoothHeadsetClient");
                parcelObtain.writeInt(1);
                bluetoothDevice.writeToParcel(parcelObtain, 0);
                iBinder.transact(1, parcelObtain, parcelObtain2, 0);
                parcelObtain2.readException();
                z2 = parcelObtain2.readInt() != 0;
            } finally {
                parcelObtain2.recycle();
                parcelObtain.recycle();
            }
        }
        return z2;
    }

    public static String b(int i2, String str) {
        try {
            return v(str, i2, null, new C0103n(0));
        } catch (Exception e2) {
            return "ADB_FAIL: " + e2.getMessage();
        }
    }

    public static String c(int i2, String str) {
        try {
            return v(str, i2, null, new C0103n(0));
        } catch (Exception e2) {
            return "ADB_FAIL: " + e2.getMessage();
        }
    }

    /* JADX WARN: Code duplicated, block: B:24:0x0061 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    public static boolean d(Context context, H0.l lVar) {
        boolean zX0;
        boolean zS0;
        I0.f.e(context, "context");
        I0.f.e(lVar, "onProgress");
        if (O0.j.x0(b(8000, "[ -f '/data/local/gesture-launcher/launcher.apk' ] && echo SRC_OK || echo SRC_FAIL"), "SRC_OK", false)) {
            String strM = m();
            zX0 = true;
            if (strM == null) {
                zS0 = true;
            } else {
                String string = O0.j.X0(b(15000, "sha256sum '/data/local/gesture-launcher/launcher.apk' 2>/dev/null | cut -d' ' -f1")).toString();
                zS0 = O0.s.s0(string, strM);
                if (!zS0) {
                    Log.i("GesturePatch", "isLocalSourceUpToDate: desatualizado (local=" + string + " esperado=" + strM + ')');
                }
            }
            if (!zS0) {
                try {
                    File file = new File(context.getCacheDir(), "gesture-launcher.apk");
                    i(file, lVar);
                    lVar.b("verify");
                    y(file);
                    lVar.b("copy");
                    StringBuilder sb = new StringBuilder("'");
                    String absolutePath = file.getAbsolutePath();
                    I0.f.d(absolutePath, "getAbsolutePath(...)");
                    sb.append(O0.s.v0(absolutePath, "'", "'\\''"));
                    sb.append('\'');
                    zX0 = O0.j.x0(b(60000, O0.l.n0("\n                mkdir -p /data/local/gesture-launcher 2>/dev/null\n                cp -f " + sb.toString() + " '/data/local/gesture-launcher/launcher.apk' 2>&1 || exit 20\n                chown root:root '/data/local/gesture-launcher/launcher.apk' 2>&1 || true\n                chmod 644 '/data/local/gesture-launcher/launcher.apk' 2>&1 || true\n                chcon u:object_r:system_app_file:s0 '/data/local/gesture-launcher/launcher.apk' 2>&1 || true\n                [ -f '/data/local/gesture-launcher/launcher.apk' ] && echo SRC_OK || echo SRC_FAIL\n                ")), "SRC_OK", false);
                } catch (Throwable th) {
                    M.d0.r(th, new StringBuilder("ensureSource: "), "GesturePatch");
                    zX0 = false;
                }
            }
        } else {
            File file2 = new File(context.getCacheDir(), "gesture-launcher.apk");
            i(file2, lVar);
            lVar.b("verify");
            y(file2);
            lVar.b("copy");
            StringBuilder sb2 = new StringBuilder("'");
            String absolutePath2 = file2.getAbsolutePath();
            I0.f.d(absolutePath2, "getAbsolutePath(...)");
            sb2.append(O0.s.v0(absolutePath2, "'", "'\\''"));
            sb2.append('\'');
            zX0 = O0.j.x0(b(60000, O0.l.n0("\n                mkdir -p /data/local/gesture-launcher 2>/dev/null\n                cp -f " + sb2.toString() + " '/data/local/gesture-launcher/launcher.apk' 2>&1 || exit 20\n                chown root:root '/data/local/gesture-launcher/launcher.apk' 2>&1 || true\n                chmod 644 '/data/local/gesture-launcher/launcher.apk' 2>&1 || true\n                chcon u:object_r:system_app_file:s0 '/data/local/gesture-launcher/launcher.apk' 2>&1 || true\n                [ -f '/data/local/gesture-launcher/launcher.apk' ] && echo SRC_OK || echo SRC_FAIL\n                ")), "SRC_OK", false);
        }
        if (!zX0) {
            return false;
        }
        lVar.b("mount");
        String strB = b(30000, O0.l.n0("\n            setenforce 0 2>/dev/null || true\n            DST=$(pm path com.flyme.auto.launcher | sed 's/^package://')\n            [ -n \"$DST\" ] || { echo \"SEM_ALVO\"; exit 10; }\n            ls -l '/data/local/gesture-launcher/launcher.apk' 2>&1 || { echo \"SEM_FONTE\"; exit 11; }\n            for i in 1 2 3 4 5 6; do\n  grep -F \" $DST \" /proc/mounts >/dev/null 2>&1 || break\n  umount \"$DST\" 2>/dev/null || umount -l \"$DST\" 2>/dev/null || true\ndone\n            mount --bind '/data/local/gesture-launcher/launcher.apk' \"$DST\" 2>&1 || exit 14\n            restorecon -v \"$DST\" 2>/dev/null || true\n            rm -rf /data/dalvik-cache/*/system@priv-app@GeelyAutoLauncher* 2>/dev/null || true\n            am force-stop com.flyme.auto.launcher 2>/dev/null || true\n            if grep -F \" $DST \" /proc/mounts >/dev/null 2>&1; then echo BIND_OK; else echo BIND_FAIL; fi\n            "));
        boolean zX1 = O0.j.x0(strB, "BIND_OK", false);
        StringBuilder sb3 = new StringBuilder("apply: ");
        sb3.append(zX1 ? "OK" : "FAIL");
        sb3.append(" — ");
        sb3.append(O0.j.X0(O0.j.W0(200, strB)).toString());
        Log.i("GesturePatch", sb3.toString());
        return zX1;
    }

    public static boolean e(Context context, H0.l lVar) {
        boolean zX0;
        I0.f.e(context, "context");
        if (O0.j.x0(c(8000, "[ -f '/data/local/hvac-digital/sysui.apk' ] && echo SRC_OK || echo SRC_FAIL"), "SRC_OK", false)) {
            zX0 = true;
        } else {
            try {
                File file = new File(context.getCacheDir(), "sysui-digital.apk");
                j(file, lVar);
                z(file);
                StringBuilder sb = new StringBuilder("'");
                String absolutePath = file.getAbsolutePath();
                I0.f.d(absolutePath, "getAbsolutePath(...)");
                sb.append(O0.s.v0(absolutePath, "'", "'\\''"));
                sb.append('\'');
                zX0 = O0.j.x0(c(30000, O0.l.n0("\n                mkdir -p /data/local/hvac-digital 2>/dev/null\n                cp -f " + sb.toString() + " '/data/local/hvac-digital/sysui.apk' 2>&1 || exit 20\n                chown root:root '/data/local/hvac-digital/sysui.apk' 2>&1 || true\n                chmod 644 '/data/local/hvac-digital/sysui.apk' 2>&1 || true\n                chcon u:object_r:system_app_file:s0 '/data/local/hvac-digital/sysui.apk' 2>&1 || true\n                [ -f '/data/local/hvac-digital/sysui.apk' ] && echo SRC_OK || echo SRC_FAIL\n                ")), "SRC_OK", false);
            } catch (Throwable th) {
                M.d0.r(th, new StringBuilder("ensureSource: "), "HvacDigital");
                zX0 = false;
            }
        }
        if (!zX0) {
            return false;
        }
        String strC = c(240000, O0.l.n0("\n            setenforce 0 2>/dev/null || true\n            for i in 1 2 3 4 5 6; do\n  grep -F \" $DST \" /proc/mounts >/dev/null 2>&1 || break\n  umount \"$DST\" 2>/dev/null || umount -l \"$DST\" 2>/dev/null || true\ndone\n            ls -l '/data/local/hvac-digital/sysui.apk' 2>&1 || { echo \"SEM_FONTE\"; exit 11; }\n            _OUT=$(pm install -r -g '/data/local/hvac-digital/sysui.apk' 2>&1 | tail -n1)\n            echo \"$_OUT\"\n            case \"$_OUT\" in\n              *INSTALL_FAILED_VERSION_DOWNGRADE*)\n                echo \"HVAC_FALLBACK_BIND\"\n                DST=$(pm path com.flyme.auto.systemuiplugin | sed 's/^package://')\n                chown root:root '/data/local/hvac-digital/sysui.apk'; chmod 644 '/data/local/hvac-digital/sysui.apk'\n                chcon u:object_r:system_app_file:s0 '/data/local/hvac-digital/sysui.apk' 2>/dev/null || echo \"HVAC_CHCON_FALHOU\"\n                umount \"$DST\" 2>/dev/null || true\n                mount --bind '/data/local/hvac-digital/sysui.apk' \"$DST\"\n                restorecon -v \"$DST\" 2>/dev/null || true\n                touch '/data/local/tmp/fixes/hvac_em_bind' 2>/dev/null || true\n                ;;\n            esac\n            _p=$(pm path com.flyme.auto.systemuiplugin 2>/dev/null)\n            echo \"PM_PATH=$_p\"\n            case \"$_p\" in\n              *\"/data/app/\"*)\n                echo INSTALL_OK\n                rm -f '/data/local/tmp/fixes/hvac_em_bind' 2>/dev/null || true\n                ;;\n              *)\n                if grep -F \"$(pm path com.flyme.auto.systemuiplugin | sed 's/^package://')\" /proc/mounts >/dev/null 2>&1; then\n                  echo INSTALL_OK\n                else\n                  echo INSTALL_FAIL\n                fi\n                ;;\n            esac\n            "));
        boolean zX1 = O0.j.x0(strC, "INSTALL_OK", false);
        StringBuilder sb2 = new StringBuilder("apply: ");
        sb2.append(zX1 ? "OK" : "FAIL");
        sb2.append(" — ");
        sb2.append(O0.j.X0(O0.j.W0(200, strC)).toString());
        Log.i("HvacDigital", sb2.toString());
        if (zX1) {
            c(8000, "kill $(pidof com.android.systemui) 2>/dev/null || true");
        }
        return zX1;
    }

    public static void f(Context context, int i2, String str, Boolean bool, int i3) {
        if ((i3 & 4) != 0) {
            str = null;
        }
        if ((i3 & 8) != 0) {
            bool = null;
        }
        I0.f.e(context, "ctx");
        C c2 = (C) w0.i.b0(r(context), i2);
        if (c2 == null) {
            return;
        }
        if (str == null) {
            str = c2.b;
        }
        w(context, C.a(c2, 0, str, bool != null ? bool.booleanValue() : c2.f523c, 1));
    }

    public static void g(Context context, int i2, String str, String str2, Boolean bool, int i3) {
        if ((i3 & 4) != 0) {
            str = null;
        }
        if ((i3 & 8) != 0) {
            str2 = null;
        }
        if ((i3 & 16) != 0) {
            bool = null;
        }
        I0.f.e(context, "ctx");
        D d2 = (D) w0.i.b0(s(context), i2);
        if (d2 == null) {
            return;
        }
        if (str == null) {
            str = d2.b;
        }
        if (str2 == null) {
            str2 = d2.f536c;
        }
        boolean zBooleanValue = bool != null ? bool.booleanValue() : d2.f537d;
        SharedPreferences sharedPreferences = context.getSharedPreferences("tela_preta_prefs", 0);
        I0.f.d(sharedPreferences, "getSharedPreferences(...)");
        SharedPreferences.Editor editorEdit = sharedPreferences.edit();
        int i4 = d2.f535a;
        editorEdit.putString(String.format("split_grupo_%d_esq", Arrays.copyOf(new Object[]{Integer.valueOf(i4)}, 1)), str).putString(String.format("split_grupo_%d_dir", Arrays.copyOf(new Object[]{Integer.valueOf(i4)}, 1)), str2).putBoolean(String.format("split_grupo_%d_on", Arrays.copyOf(new Object[]{Integer.valueOf(i4)}, 1)), zBooleanValue).apply();
    }

    public static void h(Context context, String str, A.c cVar) {
        boolean zBindService;
        I0.f.e(context, "context");
        I0.f.e(str, "mac");
        try {
            BluetoothAdapter defaultAdapter = BluetoothAdapter.getDefaultAdapter();
            if (defaultAdapter != null && defaultAdapter.isEnabled()) {
                BluetoothDevice remoteDevice = defaultAdapter.getRemoteDevice(str);
                Context applicationContext = context.getApplicationContext();
                O o2 = new O(remoteDevice, str, applicationContext, cVar);
                Intent intent = new Intent();
                intent.setComponent(new ComponentName("com.android.bluetooth", "com.android.bluetooth.hfpclient.HeadsetClientService"));
                try {
                    zBindService = applicationContext.bindService(intent, o2, 1);
                } catch (Throwable th) {
                    Log.w("BtHfpClient", "bindService lançou: " + th.getClass().getSimpleName() + ": " + th.getMessage());
                    zBindService = false;
                }
                if (zBindService) {
                    return;
                }
                L3.f671a.b("BtHfpClient", "bindService(com.android.bluetooth.hfpclient.HeadsetClientService) recusado — HFP-Client indisponível neste firmware");
                try {
                    applicationContext.unbindService(o2);
                } catch (Throwable unused) {
                }
                cVar.b(Boolean.FALSE);
                return;
            }
            Log.w("BtHfpClient", "adapter ausente ou desligado");
            cVar.b(Boolean.FALSE);
        } catch (Throwable th2) {
            M.d0.r(th2, M.d0.j("MAC inválido (", str, "): "), "BtHfpClient");
            cVar.b(Boolean.FALSE);
        }
    }

    public static void i(File file, H0.l lVar) throws IOException {
        int i2;
        URLConnection uRLConnectionOpenConnection = new URL("https://raw.githubusercontent.com/swimapps/Outros/main/GeelyAutoLauncher-gesture-signed.apk").openConnection();
        I0.f.c(uRLConnectionOpenConnection, "null cannot be cast to non-null type java.net.HttpURLConnection");
        HttpURLConnection httpURLConnection = (HttpURLConnection) uRLConnectionOpenConnection;
        httpURLConnection.setConnectTimeout(30000);
        httpURLConnection.setReadTimeout(60000);
        httpURLConnection.setInstanceFollowRedirects(true);
        try {
            if (httpURLConnection.getResponseCode() != 200) {
                throw new IOException("HTTP " + httpURLConnection.getResponseCode());
            }
            int contentLength = httpURLConnection.getContentLength();
            InputStream inputStream = httpURLConnection.getInputStream();
            try {
                FileOutputStream fileOutputStream = new FileOutputStream(file);
                try {
                    byte[] bArr = new byte[65536];
                    int i3 = -1;
                    long j2 = 0;
                    while (true) {
                        int i4 = inputStream.read(bArr);
                        if (i4 < 0) {
                            break;
                        }
                        fileOutputStream.write(bArr, 0, i4);
                        j2 += (long) i4;
                        if (contentLength > 0 && (i2 = (int) ((((long) 100) * j2) / ((long) contentLength))) != i3) {
                            lVar.b("download:" + i2);
                            i3 = i2;
                        }
                        try {
                            throw th;
                        } catch (Throwable th) {
                            A.b.m(inputStream, th);
                            throw th;
                        }
                    }
                    A.b.m(fileOutputStream, null);
                    A.b.m(inputStream, null);
                    httpURLConnection.disconnect();
                    if (file.length() == 0) {
                        throw new IOException("download vazio");
                    }
                } catch (Throwable th2) {
                    try {
                        throw th2;
                    } catch (Throwable th3) {
                        A.b.m(fileOutputStream, th2);
                        throw th3;
                    }
                }
            } catch (Throwable th4) {
                throw th4;
            }
        } catch (Throwable th5) {
            httpURLConnection.disconnect();
            throw th5;
        }
    }

    public static void j(File file, H0.l lVar) throws IOException {
        byte[] bArr;
        URLConnection uRLConnectionOpenConnection = new URL("https://raw.githubusercontent.com/swimapps/CentralEXAuto/main/GeelyAutoSystemUIPlugin-digital.apk").openConnection();
        I0.f.c(uRLConnectionOpenConnection, "null cannot be cast to non-null type java.net.HttpURLConnection");
        HttpURLConnection httpURLConnection = (HttpURLConnection) uRLConnectionOpenConnection;
        httpURLConnection.setConnectTimeout(30000);
        httpURLConnection.setReadTimeout(30000);
        httpURLConnection.setInstanceFollowRedirects(true);
        try {
            if (httpURLConnection.getResponseCode() != 200) {
                throw new IOException("HTTP " + httpURLConnection.getResponseCode());
            }
            long contentLength = httpURLConnection.getContentLength();
            InputStream inputStream = httpURLConnection.getInputStream();
            try {
                FileOutputStream fileOutputStream = new FileOutputStream(file);
                try {
                    byte[] bArr2 = new byte[65536];
                    long j2 = 0;
                    int i2 = -1;
                    while (true) {
                        int i3 = inputStream.read(bArr2);
                        if (i3 < 0) {
                            break;
                        }
                        fileOutputStream.write(bArr2, 0, i3);
                        j2 += (long) i3;
                        if (lVar == null) {
                            bArr = bArr2;
                        } else if (contentLength <= 0) {
                            lVar.b(-1);
                            bArr = bArr2;
                        } else {
                            bArr = bArr2;
                            int iO = A.b.o((int) ((((long) 100) * j2) / contentLength), 0, 100);
                            if (iO != i2) {
                                lVar.b(Integer.valueOf(iO));
                                i2 = iO;
                                bArr2 = bArr;
                            }
                        }
                        bArr2 = bArr;
                    }
                    A.b.m(fileOutputStream, null);
                    A.b.m(inputStream, null);
                    httpURLConnection.disconnect();
                    if (file.length() == 0) {
                        throw new IOException("download vazio");
                    }
                } catch (Throwable th) {
                    try {
                        throw th;
                    } catch (Throwable th2) {
                        A.b.m(fileOutputStream, th);
                        throw th2;
                    }
                }
            } catch (Throwable th3) {
                try {
                    throw th3;
                } catch (Throwable th4) {
                    A.b.m(inputStream, th3);
                    throw th4;
                }
            }
        } catch (Throwable th5) {
            httpURLConnection.disconnect();
            throw th5;
        }
    }

    public static String k() {
        int[] iArr = AbstractC0121q.f1100a;
        try {
            String strV = v(O0.l.n0("\n            cur=\"$(getprop service.adb.tcp.port)\"\n            per=\"$(getprop persist.adb.tcp.port)\"\n            if [ \"$cur\" = \"65010\" ] && [ \"$per\" = \"65010\" ]; then\n              echo \"ADB_PORT_OK=65010\"\n            else\n              setprop persist.adb.tcp.port 65010\n              setprop service.adb.tcp.port 65010\n              ( sleep 1; setprop ctl.restart adbd ) >/dev/null 2>&1 &\n              echo \"ADB_PORT_MIGRATED cur=$cur per=$per -> 65010\"\n            fi\n        "), 8000, null, new C0103n(0));
            Log.i("AdbLocal", "ensurePortMigrated: " + O0.j.X0(strV).toString());
            return strV;
        } catch (Exception e2) {
            Log.w("AdbLocal", "ensurePortMigrated falhou: " + e2.getMessage());
            return "ADB_PORT_MIGRATE_FAIL=" + e2.getMessage();
        }
    }

    public static boolean l() {
        return O0.j.x0(c(8000, "pm path com.flyme.auto.systemuiplugin"), "/data/app", false);
    }

    public static String m() {
        try {
            URL url = new URL("https://raw.githubusercontent.com/swimapps/Outros/main/launchergesture.json");
            String str = new String(A.b.Y(url), O0.a.f412a);
            Pattern patternCompile = Pattern.compile("\"sha256\"\\s*:\\s*\"([0-9a-fA-F]+)\"");
            I0.f.d(patternCompile, "compile(...)");
            Matcher matcher = patternCompile.matcher(str);
            I0.f.d(matcher, "matcher(...)");
            O0.e eVarE = A.b.e(matcher, 0, str);
            if (eVarE != null) {
                return (String) ((O0.d) eVarE.a()).get(1);
            }
            return null;
        } catch (Throwable th) {
            M.d0.r(th, new StringBuilder("fetchExpectedSha: "), "GesturePatch");
            return null;
        }
    }

    public static String n() {
        try {
            URL url = new URL("https://raw.githubusercontent.com/swimapps/Outros/main/hvacdigital.json");
            String str = new String(A.b.Y(url), O0.a.f412a);
            Pattern patternCompile = Pattern.compile("\"sha256\"\\s*:\\s*\"([0-9a-fA-F]+)\"");
            I0.f.d(patternCompile, "compile(...)");
            Matcher matcher = patternCompile.matcher(str);
            I0.f.d(matcher, "matcher(...)");
            O0.e eVarE = A.b.e(matcher, 0, str);
            if (eVarE != null) {
                return (String) ((O0.d) eVarE.a()).get(1);
            }
            return null;
        } catch (Throwable th) {
            M.d0.r(th, new StringBuilder("fetchExpectedSha: "), "HvacDigital");
            return null;
        }
    }

    public static boolean o(Socket socket) {
        InetAddress address;
        byte[] address2;
        SocketAddress remoteSocketAddress = socket.getRemoteSocketAddress();
        InetSocketAddress inetSocketAddress = remoteSocketAddress instanceof InetSocketAddress ? (InetSocketAddress) remoteSocketAddress : null;
        if (inetSocketAddress == null || (address = inetSocketAddress.getAddress()) == null) {
            return false;
        }
        if (address.isLoopbackAddress()) {
            return true;
        }
        byte[] address3 = address.getAddress();
        if (address3.length == 4) {
            try {
                Enumeration<NetworkInterface> networkInterfaces = NetworkInterface.getNetworkInterfaces();
                I0.f.d(networkInterfaces, "getNetworkInterfaces(...)");
                while (networkInterfaces.hasMoreElements()) {
                    NetworkInterface networkInterfaceNextElement = networkInterfaces.nextElement();
                    if (networkInterfaceNextElement.isUp() && !networkInterfaceNextElement.isLoopback()) {
                        Iterator<InterfaceAddress> it = networkInterfaceNextElement.getInterfaceAddresses().iterator();
                        while (it.hasNext()) {
                            InetAddress address4 = it.next().getAddress();
                            if (address4 != null && (address2 = address4.getAddress()) != null && address2.length == 4 && address2[0] == address3[0] && address2[1] == address3[1] && address2[2] == address3[2]) {
                                return true;
                            }
                        }
                    }
                }
            } catch (Exception unused) {
            }
        }
        return address.isSiteLocalAddress();
    }

    public static void q() {
        Context context = f1045d;
        if (context == null) {
            return;
        }
        try {
            if (f1048h.equals("fullscreen")) {
                context.startActivity(new Intent(context, (Class<?>) ExSapoCastActivity.class).addFlags(805306368));
            } else {
                context.startService(new Intent(context, (Class<?>) ExSapoCastFloaterService.class));
            }
        } catch (Exception e2) {
            Log.e("ExSapoCast", "launchUi: " + e2.getMessage());
        }
    }

    public static ArrayList r(Context context) {
        I0.f.e(context, "ctx");
        SharedPreferences sharedPreferences = context.getSharedPreferences("tela_preta_prefs", 0);
        I0.f.d(sharedPreferences, "getSharedPreferences(...)");
        L0.c cVarI0 = A.b.i0(0, 5);
        ArrayList arrayList = new ArrayList(w0.k.V(cVarI0));
        Iterator it = cVarI0.iterator();
        while (((L0.b) it).f136c) {
            int iA = ((L0.b) it).a();
            String str = "";
            String string = sharedPreferences.getString(String.format("pip_app_%d_pkg", Arrays.copyOf(new Object[]{Integer.valueOf(iA)}, 1)), "");
            if (string != null) {
                str = string;
            }
            arrayList.add(new C(iA, str, sharedPreferences.getBoolean(String.format("pip_app_%d_on", Arrays.copyOf(new Object[]{Integer.valueOf(iA)}, 1)), false)));
        }
        return arrayList;
    }

    public static ArrayList s(Context context) {
        I0.f.e(context, "ctx");
        SharedPreferences sharedPreferences = context.getSharedPreferences("tela_preta_prefs", 0);
        I0.f.d(sharedPreferences, "getSharedPreferences(...)");
        L0.c cVarI0 = A.b.i0(0, 5);
        ArrayList arrayList = new ArrayList(w0.k.V(cVarI0));
        Iterator it = cVarI0.iterator();
        while (((L0.b) it).f136c) {
            int iA = ((L0.b) it).a();
            String str = "";
            String string = sharedPreferences.getString(String.format("split_grupo_%d_esq", Arrays.copyOf(new Object[]{Integer.valueOf(iA)}, 1)), "");
            if (string == null) {
                string = "";
            }
            String string2 = sharedPreferences.getString(String.format("split_grupo_%d_dir", Arrays.copyOf(new Object[]{Integer.valueOf(iA)}, 1)), "");
            if (string2 != null) {
                str = string2;
            }
            arrayList.add(new D(iA, string, str, sharedPreferences.getBoolean(String.format("split_grupo_%d_on", Arrays.copyOf(new Object[]{Integer.valueOf(iA)}, 1)), false)));
        }
        return arrayList;
    }

    public static C0081j1 t(DataInputStream dataInputStream) throws IOException {
        try {
            int i2 = dataInputStream.read();
            if (i2 < 0) {
                return null;
            }
            int i3 = dataInputStream.readInt();
            if (i3 < 0 || i3 > 4194304) {
                throw new EOFException("length invalido: " + i3);
            }
            byte[] bArr = new byte[i3];
            if (i3 > 0) {
                dataInputStream.readFully(bArr);
            }
            return new C0081j1(i2, bArr);
        } catch (EOFException unused) {
            return null;
        }
    }

    public static String u(QuickAccessFloaterService quickAccessFloaterService, String str) {
        if (O0.j.E0(str)) {
            return "";
        }
        try {
            PackageManager packageManager = quickAccessFloaterService.getPackageManager();
            return packageManager.getApplicationLabel(packageManager.getApplicationInfo(str, 0)).toString();
        } catch (Throwable unused) {
            return str;
        }
    }

    public static String v(String str, int i2, H0.l lVar, H0.p pVar) {
        I0.f.e(str, "script");
        byte[] bytes = str.getBytes(O0.a.f412a);
        I0.f.d(bytes, "getBytes(...)");
        if (bytes.length < 3500) {
            return (String) pVar.c(str, Integer.valueOf(i2));
        }
        String strEncodeToString = Base64.encodeToString(bytes, 2);
        long jCurrentTimeMillis = System.currentTimeMillis();
        String str2 = "'/data/local/tmp/_big_script_" + jCurrentTimeMillis + ".b64'";
        String str3 = "'/data/local/tmp/_big_script_" + jCurrentTimeMillis + ".sh'";
        pVar.c("rm -f " + str2 + ' ' + str3 + " 2>/dev/null; true", 10000);
        int length = (strEncodeToString.length() + 2999) / 3000;
        int i3 = 0;
        int i4 = 0;
        while (i3 < strEncodeToString.length()) {
            i4++;
            if (lVar != null) {
                lVar.b("Enviando dados… (" + i4 + '/' + length + ')');
            }
            int i5 = i3 + 3000;
            String strSubstring = strEncodeToString.substring(i3, Math.min(i5, strEncodeToString.length()));
            I0.f.d(strSubstring, "substring(...)");
            pVar.c("echo '" + strSubstring + "' >> " + str2, 15000);
            i3 = i5;
        }
        if (lVar != null) {
            lVar.b("Aplicando… (pode levar um tempo)");
        }
        StringBuilder sbK = M.d0.k("base64 -d ", str2, " > ", str3, " 2>&1 && sh ");
        sbK.append(str3);
        String str4 = (String) pVar.c(sbK.toString(), Integer.valueOf(i2));
        pVar.c("rm -f " + str2 + ' ' + str3 + " 2>/dev/null; true", 10000);
        return str4;
    }

    public static void w(Context context, C c2) {
        I0.f.e(context, "ctx");
        SharedPreferences sharedPreferences = context.getSharedPreferences("tela_preta_prefs", 0);
        I0.f.d(sharedPreferences, "getSharedPreferences(...)");
        SharedPreferences.Editor editorEdit = sharedPreferences.edit();
        int i2 = c2.f522a;
        editorEdit.putString(String.format("pip_app_%d_pkg", Arrays.copyOf(new Object[]{Integer.valueOf(i2)}, 1)), c2.b).putBoolean(String.format("pip_app_%d_on", Arrays.copyOf(new Object[]{Integer.valueOf(i2)}, 1)), c2.f523c).apply();
    }

    public static boolean x(Context context, boolean z2, boolean z3, boolean z4, H0.l lVar) {
        I0.f.e(context, "context");
        boolean z5 = z2 || z3;
        boolean zL = l();
        if (!z5) {
            if (zL || O0.j.x0(c(6000, "DST=$(pm path com.flyme.auto.systemuiplugin | sed 's/^package://'); grep -F \" $DST \" /proc/mounts >/dev/null 2>&1 && echo Y || echo N"), "Y", false)) {
                String strC = c(120000, O0.l.n0("\n            for i in 1 2 3 4 5 6; do\n  grep -F \" $DST \" /proc/mounts >/dev/null 2>&1 || break\n  umount \"$DST\" 2>/dev/null || umount -l \"$DST\" 2>/dev/null || true\ndone\n            pm uninstall com.flyme.auto.systemuiplugin 2>&1 | tail -n1\n            _p=$(pm path com.flyme.auto.systemuiplugin 2>/dev/null)\n            echo \"PM_PATH=$_p\"\n            case \"$_p\" in\n              *\"/data/app/\"*) echo AINDA_INSTALADO ;;\n              *\"/system/\"*)   echo REVERTIDO_STOCK ;;\n              *)              echo SEM_PATH ;;\n            esac\n            "));
                boolean zX0 = O0.j.x0(strC, "REVERTIDO_STOCK", false);
                StringBuilder sb = new StringBuilder("remove: ");
                sb.append(zX0 ? "OK" : "FAIL");
                sb.append(" — ");
                sb.append(O0.j.X0(O0.j.W0(160, strC)).toString());
                Log.i("HvacDigital", sb.toString());
                c(8000, "kill $(pidof com.android.systemui) 2>/dev/null || true");
            }
            return true;
        }
        StringBuilder sb2 = new StringBuilder("\n            setprop persist.sys.hvacdigital.temp ");
        sb2.append(z2 ? "1" : "0");
        sb2.append("\n            setprop persist.sys.hvacdigital.batt ");
        sb2.append(z3 ? "1" : "0");
        sb2.append("\n            setprop persist.sys.hvacdigital.exttemp ");
        sb2.append(z4 ? "1" : "0");
        sb2.append("\n            ");
        c(8000, O0.l.n0(sb2.toString()));
        if (!zL) {
            return e(context, lVar);
        }
        c(8000, "kill $(pidof com.android.systemui) 2>/dev/null || true");
        return true;
    }

    public static void y(File file) throws IllegalAccessException, NoSuchAlgorithmException, IOException, InvocationTargetException {
        String strM = m();
        if (strM == null) {
            return;
        }
        MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
        FileInputStream fileInputStream = new FileInputStream(file);
        try {
            byte[] bArr = new byte[8192];
            while (true) {
                int i2 = fileInputStream.read(bArr);
                if (i2 < 0) {
                    break;
                } else {
                    messageDigest.update(bArr, 0, i2);
                }
            }
            A.b.m(fileInputStream, null);
            byte[] bArrDigest = messageDigest.digest();
            I0.f.d(bArrDigest, "digest(...)");
            if (!w0.h.X(bArrDigest, new C0103n(19)).equalsIgnoreCase(strM)) {
                throw new IOException("sha256 diverge");
            }
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                A.b.m(fileInputStream, th);
                throw th2;
            }
        }
    }

    public static void z(File file) throws IllegalAccessException, NoSuchAlgorithmException, IOException, InvocationTargetException {
        String strN = n();
        if (strN == null) {
            return;
        }
        MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
        FileInputStream fileInputStream = new FileInputStream(file);
        try {
            byte[] bArr = new byte[8192];
            while (true) {
                int i2 = fileInputStream.read(bArr);
                if (i2 < 0) {
                    break;
                } else {
                    messageDigest.update(bArr, 0, i2);
                }
            }
            A.b.m(fileInputStream, null);
            byte[] bArrDigest = messageDigest.digest();
            I0.f.d(bArrDigest, "digest(...)");
            if (!w0.h.X(bArrDigest, new C0103n(20)).equalsIgnoreCase(strN)) {
                throw new IOException("sha256 diverge");
            }
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                A.b.m(fileInputStream, th);
                throw th2;
            }
        }
    }

    public synchronized String p(PhoneSyncService phoneSyncService, String str) {
        String string;
        try {
            f1045d = phoneSyncService.getApplicationContext();
            f1048h = str.equals("fullscreen") ? "fullscreen" : "pip";
            StringBuilder sb = new StringBuilder(24);
            long jNanoTime = System.nanoTime() ^ (((long) hashCode()) << 21);
            for (int i2 = 0; i2 < 24; i2++) {
                jNanoTime = (jNanoTime * 6364136223846793005L) + 1442695040888963407L;
                sb.append("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789".charAt((((int) (jNanoTime >>> 33)) & Integer.MAX_VALUE) % 62));
            }
            string = sb.toString();
            I0.f.d(string, "toString(...)");
            f = string;
            f1047g = SystemClock.elapsedRealtime() + 300000;
            if (!f1046e) {
                f1046e = true;
                Thread thread = new Thread(new T0(this, 1), "exsapocast-accept");
                thread.setDaemon(true);
                thread.start();
            }
        } catch (Throwable th) {
            throw th;
        }
        return string;
    }
}
