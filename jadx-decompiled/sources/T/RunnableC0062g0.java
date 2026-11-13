package T;

import android.net.wifi.WifiManager;
import android.os.Handler;
import android.os.SystemClock;
import android.util.Log;
import com.ex.auto.CentralWatchdogService;

/* JADX INFO: renamed from: T.g0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC0062g0 implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f968a = 1;
    public final /* synthetic */ CentralWatchdogService b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ String f969c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ boolean f970d;

    public /* synthetic */ RunnableC0062g0(CentralWatchdogService centralWatchdogService, String str, boolean z2) {
        this.b = centralWatchdogService;
        this.f969c = str;
        this.f970d = z2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f968a) {
            case 0:
                boolean z2 = this.f970d;
                final String str = this.f969c;
                CentralWatchdogService centralWatchdogService = this.b;
                if (CentralWatchdogService.f2) {
                    if (z2) {
                        M.d0.o("WiFi ao acordar (", str, "): pulado — há projeção em curso; ligar o WiFi cliente derrubaria a sessão (rádio única)", L3.f671a, "CentralWatchdog");
                    } else {
                        Handler handler = centralWatchdogService.f2190a;
                        try {
                            Object systemService = centralWatchdogService.getApplicationContext().getSystemService("wifi");
                            I0.f.c(systemService, "null cannot be cast to non-null type android.net.wifi.WifiManager");
                            final WifiManager wifiManager = (WifiManager) systemService;
                            if (!wifiManager.isWifiEnabled()) {
                                Log.i("CentralWatchdog", "WiFi auto-enable (" + str + ") tentativa " + (centralWatchdogService.f2180Q + 1) + "/3: setWifiEnabled retornou " + wifiManager.setWifiEnabled(true));
                                final int i2 = 1;
                                handler.postDelayed(new Runnable() { // from class: T.m0
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        String str2 = str;
                                        WifiManager wifiManager2 = wifiManager;
                                        switch (i2) {
                                            case 0:
                                                int[] iArr = CentralWatchdogService.d2;
                                                try {
                                                    wifiManager2.startScan();
                                                    wifiManager2.reconnect();
                                                    Log.i("CentralWatchdog", "WiFi auto-enable (" + str2 + "): rescan + reconnect disparados");
                                                } catch (Exception e2) {
                                                    M.d0.n(e2, M.d0.j("WiFi auto-enable (", str2, ") rescan/reconnect falhou: "), "CentralWatchdog");
                                                    return;
                                                }
                                                break;
                                            default:
                                                int[] iArr2 = CentralWatchdogService.d2;
                                                try {
                                                    wifiManager2.startScan();
                                                    wifiManager2.reconnect();
                                                    Log.i("CentralWatchdog", "WiFi auto-enable (" + str2 + "): rescan + reconnect disparados");
                                                } catch (Exception e3) {
                                                    M.d0.n(e3, M.d0.j("WiFi auto-enable (", str2, ") rescan/reconnect falhou: "), "CentralWatchdog");
                                                }
                                                break;
                                        }
                                    }
                                }, 2000L);
                                int i3 = centralWatchdogService.f2180Q + 1;
                                centralWatchdogService.f2180Q = i3;
                                if (i3 < 3) {
                                    handler.postDelayed(centralWatchdogService.f2182R, 1500L);
                                }
                            } else {
                                Log.i("CentralWatchdog", "WiFi auto-enable (" + str + "): já ligado (tentativa " + (centralWatchdogService.f2180Q + 1) + ')');
                                final int i4 = 0;
                                handler.postDelayed(new Runnable() { // from class: T.m0
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        String str2 = str;
                                        WifiManager wifiManager2 = wifiManager;
                                        switch (i4) {
                                            case 0:
                                                int[] iArr = CentralWatchdogService.d2;
                                                try {
                                                    wifiManager2.startScan();
                                                    wifiManager2.reconnect();
                                                    Log.i("CentralWatchdog", "WiFi auto-enable (" + str2 + "): rescan + reconnect disparados");
                                                } catch (Exception e2) {
                                                    M.d0.n(e2, M.d0.j("WiFi auto-enable (", str2, ") rescan/reconnect falhou: "), "CentralWatchdog");
                                                    return;
                                                }
                                                break;
                                            default:
                                                int[] iArr2 = CentralWatchdogService.d2;
                                                try {
                                                    wifiManager2.startScan();
                                                    wifiManager2.reconnect();
                                                    Log.i("CentralWatchdog", "WiFi auto-enable (" + str2 + "): rescan + reconnect disparados");
                                                } catch (Exception e3) {
                                                    M.d0.n(e3, M.d0.j("WiFi auto-enable (", str2, ") rescan/reconnect falhou: "), "CentralWatchdog");
                                                }
                                                break;
                                        }
                                    }
                                }, 2000L);
                            }
                        } catch (Exception e2) {
                            StringBuilder sbJ = M.d0.j("WiFi auto-enable (", str, ") tentativa ");
                            sbJ.append(centralWatchdogService.f2180Q + 1);
                            sbJ.append(" falhou: ");
                            sbJ.append(e2.getMessage());
                            Log.w("CentralWatchdog", sbJ.toString());
                        }
                    }
                    break;
                }
                break;
            default:
                CentralWatchdogService centralWatchdogService2 = this.b;
                String str2 = this.f969c;
                boolean z3 = this.f970d;
                centralWatchdogService2.f2191a0 = false;
                if (I0.f.a(centralWatchdogService2.V, str2)) {
                    if (!z3) {
                        long j2 = centralWatchdogService2.f2188Y;
                        long j3 = 15000;
                        if (j2 >= 15000) {
                            j3 = 30000;
                            if (j2 >= 30000) {
                                j3 = 60000;
                            }
                        }
                        centralWatchdogService2.f2188Y = j3;
                        centralWatchdogService2.f2189Z = SystemClock.elapsedRealtime() + centralWatchdogService2.f2188Y;
                    } else {
                        centralWatchdogService2.f2187X = str2;
                        centralWatchdogService2.f2188Y = 5000L;
                    }
                    break;
                }
                break;
        }
    }

    public /* synthetic */ RunnableC0062g0(boolean z2, String str, CentralWatchdogService centralWatchdogService) {
        this.f970d = z2;
        this.f969c = str;
        this.b = centralWatchdogService;
    }
}
