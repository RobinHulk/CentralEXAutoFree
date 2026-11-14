package T;

import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.content.Intent;
import android.content.SharedPreferences;
import android.net.ConnectivityManager;
import android.net.ProxyInfo;
import android.os.Handler;
import android.util.Log;
import android.widget.Toast;
import com.ex.auto.CentralWatchdogService;
import com.ex.auto.PhoneSyncService;
import com.ex.auto.R;
import com.ex.auto.VhalProviderService;
import com.sun.mail.iap.Response;
import ecarx.xsf.mediacenter.session.PlaybackState;
import java.io.File;
import java.io.FileInputStream;
import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.Set;
import java.util.regex.Pattern;

/* JADX INFO: renamed from: T.d0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC0044d0 implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f924a;
    public final /* synthetic */ CentralWatchdogService b;

    public /* synthetic */ RunnableC0044d0(CentralWatchdogService centralWatchdogService, int i2) {
        this.f924a = i2;
        this.b = centralWatchdogService;
    }

    /* JADX WARN: Code duplicated, block: B:193:0x03f5  */
    /* JADX WARN: Code duplicated, block: B:76:0x01ca  */
    /* JADX WARN: Code duplicated, block: B:82:0x01f0  */
    /* JADX WARN: Code duplicated, block: B:85:0x0225  */
    /* JADX WARN: Code duplicated, block: B:87:0x022d  */
    /* JADX WARN: Code duplicated, block: B:88:0x0230  */
    /* JADX WARN: Code duplicated, block: B:90:0x023c  */
    /* JADX WARN: Instruction removed from duplicated block: B:82:0x01f0, please report this as an issue */
    @Override // java.lang.Runnable
    public final void run() throws InterruptedException {
        BluetoothAdapter defaultAdapter;
        boolean zBooleanValue;
        String strX;
        String string;
        Pattern patternCompile;
        boolean zE;
        String str;
        String str2 = "boot";
        boolean z2 = false;
        switch (this.f924a) {
            case 0:
                CentralWatchdogService centralWatchdogService = this.b;
                if (CentralWatchdogService.f2) {
                    centralWatchdogService.N();
                    return;
                }
                return;
            case 1:
                int[] iArr = CentralWatchdogService.d2;
                this.b.t();
                return;
            case 2:
                int[] iArr2 = CentralWatchdogService.d2;
                CentralWatchdogService centralWatchdogService2 = this.b;
                boolean z3 = centralWatchdogService2.z1 || (centralWatchdogService2.A1 && centralWatchdogService2.o());
                Handler handler = centralWatchdogService2.f2190a;
                if (z3) {
                    handler.post(new RunnableC0044d0(centralWatchdogService2, 10));
                    return;
                }
                try {
                    defaultAdapter = BluetoothAdapter.getDefaultAdapter();
                } catch (Throwable unused) {
                    defaultAdapter = null;
                }
                if (defaultAdapter == null) {
                    z2 = true;
                } else {
                    try {
                        Set<BluetoothDevice> bondedDevices = defaultAdapter.getBondedDevices();
                        if (bondedDevices == null) {
                            bondedDevices = w0.s.f4192a;
                        }
                        ArrayList<BluetoothDevice> arrayList = new ArrayList();
                        for (Object obj : bondedDevices) {
                            try {
                                Object objInvoke = BluetoothDevice.class.getMethod("isConnected", null).invoke((BluetoothDevice) obj, null);
                                Boolean bool = objInvoke instanceof Boolean ? (Boolean) objInvoke : null;
                                zBooleanValue = bool != null ? bool.booleanValue() : false;
                            } catch (Throwable unused2) {
                            }
                            if (zBooleanValue) {
                                arrayList.add(obj);
                            }
                            break;
                        }
                        if (arrayList.isEmpty()) {
                            z2 = true;
                        } else if (!arrayList.isEmpty()) {
                            for (BluetoothDevice bluetoothDevice : arrayList) {
                                I0.f.b(bluetoothDevice);
                                if (!centralWatchdogService2.X(bluetoothDevice)) {
                                    z2 = true;
                                }
                            }
                        }
                    } catch (Throwable unused3) {
                    }
                }
                if (!z2) {
                    handler.post(new RunnableC0044d0(centralWatchdogService2, 12));
                    return;
                } else if (CentralWatchdogService.b()) {
                    handler.post(new RunnableC0044d0(centralWatchdogService2, 13));
                    return;
                } else {
                    centralWatchdogService2.a(true);
                    handler.post(new RunnableC0044d0(centralWatchdogService2, 14));
                    return;
                }
                break;
            case 3:
                int[] iArr3 = CentralWatchdogService.d2;
                this.b.s();
                return;
            case 4:
                int[] iArr4 = CentralWatchdogService.d2;
                this.b.v("wake");
                return;
            case 5:
                int[] iArr5 = CentralWatchdogService.d2;
                this.b.r();
                return;
            case 6:
                CentralWatchdogService centralWatchdogService3 = this.b;
                if (CentralWatchdogService.f2 && centralWatchdogService3.M().getBoolean("swc_media_control_enabled", false)) {
                    B3.f492a.o(centralWatchdogService3);
                    B3.n(centralWatchdogService3.z1);
                    return;
                }
                return;
            case PlaybackState.STATE_ERROR /* 7 */:
                int[] iArr6 = CentralWatchdogService.d2;
                CentralWatchdogService centralWatchdogService4 = this.b;
                if (!centralWatchdogService4.x("gestos do volante (aplicar)") && centralWatchdogService4.M().getBoolean("gestures_restore_on_boot", false) && centralWatchdogService4.M().getBoolean("gestures_enabled", false)) {
                    try {
                        if (O0.j.x0(C0097m.b(6000, "DST=$(pm path com.flyme.auto.launcher | sed 's/^package://'); grep -F \" $DST \" /proc/mounts >/dev/null 2>&1 && echo Y || echo N"), "Y", false)) {
                            Log.i("CentralWatchdog", "applyGesturesIfNeeded: já montado, nenhuma ação necessária");
                        } else {
                            Log.i("CentralWatchdog", "applyGesturesIfNeeded: reaplicado ao boot = " + C0097m.d(centralWatchdogService4, new C0103n(18)));
                        }
                        return;
                    } catch (Throwable th) {
                        M.d0.r(th, new StringBuilder("applyGesturesIfNeeded falhou: "), "CentralWatchdog");
                        return;
                    }
                }
                return;
            case Response.NO /* 8 */:
                CentralWatchdogService centralWatchdogService5 = this.b;
                if (CentralWatchdogService.f2) {
                    centralWatchdogService5.R();
                    return;
                }
                return;
            case 9:
                CentralWatchdogService centralWatchdogService6 = this.b;
                int[] iArr7 = CentralWatchdogService.d2;
                try {
                    ConnectivityManager connectivityManager = (ConnectivityManager) centralWatchdogService6.getSystemService(ConnectivityManager.class);
                    if (connectivityManager != null) {
                        ConnectivityManager.class.getMethod("setGlobalProxy", ProxyInfo.class).invoke(connectivityManager, null);
                        break;
                    }
                } catch (Exception e2) {
                    M.d0.n(e2, new StringBuilder("setGlobalProxy(null) erro: "), "CentralWatchdog");
                }
                try {
                    new I1(5555).b(6000, "settings delete global global_http_proxy_host 2>/dev/null || true\nsettings delete global global_http_proxy_port 2>/dev/null || true\nsettings delete global http_proxy 2>/dev/null || true\necho \"PROXY_AUTO_CLEARED\"");
                    return;
                } catch (Exception e3) {
                    M.d0.n(e3, new StringBuilder("clearProxyOnCentral erro: "), "CentralWatchdog");
                    return;
                }
            case 10:
                int[] iArr8 = CentralWatchdogService.d2;
                this.b.y0("CarPlay em sessão");
                return;
            case 11:
                CentralWatchdogService centralWatchdogService7 = this.b;
                if (CentralWatchdogService.f2) {
                    centralWatchdogService7.R();
                    return;
                }
                return;
            case Response.BAD /* 12 */:
                int[] iArr9 = CentralWatchdogService.d2;
                this.b.y0("no Bluetooth só há aparelho Apple — sem Android a convidar");
                return;
            case 13:
                int[] iArr10 = CentralWatchdogService.d2;
                this.b.y0("já projetando");
                return;
            case 14:
                CentralWatchdogService centralWatchdogService8 = this.b;
                if (centralWatchdogService8.G0) {
                    centralWatchdogService8.f2190a.postDelayed(centralWatchdogService8.f2172L0, centralWatchdogService8.f2157D0);
                    return;
                }
                return;
            case 15:
                CentralWatchdogService centralWatchdogService9 = this.b;
                if (CentralWatchdogService.f2) {
                    centralWatchdogService9.Q();
                    return;
                }
                return;
            case Response.BYE /* 16 */:
                CentralWatchdogService centralWatchdogService10 = this.b;
                int[] iArr11 = CentralWatchdogService.d2;
                try {
                    Toast.makeText(centralWatchdogService10, centralWatchdogService10.getString(R.string.k_pronto_pode_conectar), 1).show();
                    return;
                } catch (Throwable unused4) {
                    return;
                }
            case 17:
                CentralWatchdogService centralWatchdogService11 = this.b;
                if (CentralWatchdogService.f2) {
                    centralWatchdogService11.getClass();
                    new Thread(new RunnableC0044d0(centralWatchdogService11, 9)).start();
                    return;
                }
                return;
            case 18:
                CentralWatchdogService centralWatchdogService12 = this.b;
                if (CentralWatchdogService.f2) {
                    centralWatchdogService12.P();
                    return;
                }
                return;
            case 19:
                CentralWatchdogService centralWatchdogService13 = this.b;
                if (CentralWatchdogService.f2) {
                    centralWatchdogService13.N();
                    return;
                }
                return;
            case 20:
                CentralWatchdogService centralWatchdogService14 = this.b;
                if (CentralWatchdogService.f2) {
                    new Thread(new RunnableC0116p0(centralWatchdogService14, 7)).start();
                    return;
                }
                return;
            case 21:
                int[] iArr12 = CentralWatchdogService.d2;
                CentralWatchdogService centralWatchdogService15 = this.b;
                SharedPreferences sharedPreferencesM = centralWatchdogService15.M();
                try {
                    long longVersionCode = centralWatchdogService15.getPackageManager().getPackageInfo(centralWatchdogService15.getPackageName(), 0).getLongVersionCode();
                    long j2 = sharedPreferencesM.getLong("hvac_digital_last_app_vc", -1L);
                    if (j2 == longVersionCode) {
                        return;
                    }
                    sharedPreferencesM.edit().putLong("hvac_digital_last_app_vc", longVersionCode).apply();
                    String strN = C0097m.n();
                    if (strN == null) {
                        Log.i("HvacDigital", "invalidateCacheIfAppUpdated: " + j2 + " -> " + longVersionCode + ", sem confirmar o sha (sem rede?) — não mexe em nada");
                        return;
                    }
                    try {
                        String str3 = centralWatchdogService15.getPackageManager().getApplicationInfo("com.flyme.auto.systemuiplugin", 0).sourceDir;
                        MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
                        FileInputStream fileInputStream = new FileInputStream(new File(str3));
                        try {
                            byte[] bArr = new byte[65536];
                            while (true) {
                                int i2 = fileInputStream.read(bArr);
                                if (i2 < 0) {
                                    A.b.m(fileInputStream, null);
                                    byte[] bArrDigest = messageDigest.digest();
                                    I0.f.d(bArrDigest, "digest(...)");
                                    strX = w0.h.X(bArrDigest, new C0103n(21));
                                    if (strX == null && strN.equalsIgnoreCase(strX)) {
                                        Log.i("HvacDigital", "invalidateCacheIfAppUpdated: " + j2 + " -> " + longVersionCode + ", plugin instalado já é o do manifesto — nada a fazer");
                                        return;
                                    }
                                    string = O0.j.X0(C0097m.c(8000, "sha256sum '/data/local/hvac-digital/sysui.apk' 2>/dev/null | awk '{print $1}'")).toString();
                                    patternCompile = Pattern.compile("[0-9a-fA-F]{64}");
                                    I0.f.d(patternCompile, "compile(...)");
                                    I0.f.e(string, "input");
                                    if (!patternCompile.matcher(string).matches()) {
                                        string = null;
                                    }
                                    if (string == null && strN.equalsIgnoreCase(string)) {
                                        Log.i("HvacDigital", "invalidateCacheIfAppUpdated: " + j2 + " -> " + longVersionCode + ", companion sem mudança — nada a fazer");
                                        return;
                                    }
                                    if (strX != null) {
                                        L3.f671a.b("HvacDigital", "companion do Ar Digital mudou (instalado " + O0.j.V0(8, strX) + " != manifesto " + O0.j.V0(8, strN) + ')');
                                    }
                                    C0097m.c(8000, "rm -f '/data/local/hvac-digital/sysui.apk' 2>&1");
                                    if (C0097m.l()) {
                                        Log.i("HvacDigital", "invalidateCacheIfAppUpdated: companion mudou, mas não estava instalado — só limpou a cópia");
                                        return;
                                    }
                                    zE = C0097m.e(centralWatchdogService15, null);
                                    L3 l3 = L3.f671a;
                                    if (zE) {
                                        str = "OK";
                                    } else {
                                        str = "FALHOU (tenta no próximo boot)";
                                    }
                                    l3.b("HvacDigital", "companion do Ar Digital mudou — reinstalado por cima: ".concat(str));
                                    return;
                                }
                                messageDigest.update(bArr, 0, i2);
                                Log.d("HvacDigital", "installedSha: " + th.getMessage());
                                strX = null;
                                if (strX == null) {
                                }
                                string = O0.j.X0(C0097m.c(8000, "sha256sum '/data/local/hvac-digital/sysui.apk' 2>/dev/null | awk '{print $1}'")).toString();
                                patternCompile = Pattern.compile("[0-9a-fA-F]{64}");
                                I0.f.d(patternCompile, "compile(...)");
                                I0.f.e(string, "input");
                                if (!patternCompile.matcher(string).matches()) {
                                    string = null;
                                }
                                if (string == null) {
                                }
                                if (strX != null) {
                                    L3.f671a.b("HvacDigital", "companion do Ar Digital mudou (instalado " + O0.j.V0(8, strX) + " != manifesto " + O0.j.V0(8, strN) + ')');
                                }
                                C0097m.c(8000, "rm -f '/data/local/hvac-digital/sysui.apk' 2>&1");
                                if (C0097m.l()) {
                                    Log.i("HvacDigital", "invalidateCacheIfAppUpdated: companion mudou, mas não estava instalado — só limpou a cópia");
                                    return;
                                }
                                zE = C0097m.e(centralWatchdogService15, null);
                                L3 l4 = L3.f671a;
                                if (zE) {
                                    str = "OK";
                                } else {
                                    str = "FALHOU (tenta no próximo boot)";
                                }
                                l4.b("HvacDigital", "companion do Ar Digital mudou — reinstalado por cima: ".concat(str));
                                return;
                            }
                        } catch (Throwable th2) {
                            try {
                                throw th2;
                            } catch (Throwable th3) {
                                A.b.m(fileInputStream, th2);
                                throw th3;
                            }
                        }
                    } catch (Throwable th4) {
                        Log.d("HvacDigital", "installedSha: " + th4.getMessage());
                        strX = null;
                    }
                } catch (Exception unused5) {
                    return;
                }
                break;
            case 22:
                CentralWatchdogService centralWatchdogService16 = this.b;
                if (CentralWatchdogService.f2) {
                    centralWatchdogService16.x0();
                    centralWatchdogService16.b0();
                    centralWatchdogService16.c0();
                    return;
                }
                return;
            case 23:
                CentralWatchdogService centralWatchdogService17 = this.b;
                if (CentralWatchdogService.f2 && centralWatchdogService17.M().getBoolean("wifi_auto_enable_on_wake", false)) {
                    centralWatchdogService17.f2190a.removeCallbacks(centralWatchdogService17.f2182R);
                    centralWatchdogService17.f2180Q = 0;
                    if (centralWatchdogService17.M().getBoolean("wifi_auto_enable_on_wake", false)) {
                        new Thread(new RunnableC0110o0(2, centralWatchdogService17, str2)).start();
                        return;
                    }
                    return;
                }
                return;
            case 24:
                CentralWatchdogService centralWatchdogService18 = this.b;
                if (CentralWatchdogService.f2) {
                    boolean z4 = E3.f552a;
                    E3.a(centralWatchdogService18, centralWatchdogService18.M());
                    boolean z5 = J.f629a;
                    J.a(centralWatchdogService18, centralWatchdogService18.M());
                    return;
                }
                return;
            case 25:
                CentralWatchdogService centralWatchdogService19 = this.b;
                if (CentralWatchdogService.f2) {
                    VhalProviderService.b(centralWatchdogService19, true);
                    return;
                }
                return;
            case 26:
                CentralWatchdogService centralWatchdogService20 = this.b;
                if (CentralWatchdogService.f2) {
                    I0.f.e(centralWatchdogService20, "ctx");
                    try {
                        centralWatchdogService20.startForegroundService(new Intent(centralWatchdogService20, (Class<?>) PhoneSyncService.class));
                        return;
                    } catch (Exception unused6) {
                        return;
                    }
                }
                return;
            case 27:
                CentralWatchdogService centralWatchdogService21 = this.b;
                if (CentralWatchdogService.f2) {
                    centralWatchdogService21.M().edit().putBoolean("boot_stable", true).apply();
                    Log.i("CentralWatchdog", "boot estável confirmado");
                    return;
                }
                return;
            case Response.TYPE_MASK /* 28 */:
                CentralWatchdogService centralWatchdogService22 = this.b;
                if (CentralWatchdogService.f2) {
                    centralWatchdogService22.L(1, "dívida pendente");
                    return;
                }
                return;
            default:
                CentralWatchdogService centralWatchdogService23 = this.b;
                if (CentralWatchdogService.f2) {
                    centralWatchdogService23.V(0, "boot", false);
                    return;
                }
                return;
        }
    }
}
