package T;

import android.os.SystemClock;
import android.util.Log;
import com.ex.auto.CentralWatchdogService;
import com.sun.mail.imap.IMAPStore;
import java.util.HashMap;

/* JADX INFO: renamed from: T.f0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC0056f0 implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f955a = 1;
    public final /* synthetic */ CentralWatchdogService b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ String f956c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ String f957d;

    public /* synthetic */ RunnableC0056f0(CentralWatchdogService centralWatchdogService, String str, String str2) {
        this.b = centralWatchdogService;
        this.f956c = str;
        this.f957d = str2;
    }

    /* JADX WARN: Code duplicated, block: B:17:0x0057  */
    /* JADX WARN: Code duplicated, block: B:22:0x006a  */
    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f955a) {
            case 0:
                int[] iArr = CentralWatchdogService.d2;
                String string = this.f956c;
                CentralWatchdogService centralWatchdogService = this.b;
                if (string == null) {
                    string = centralWatchdogService.M().getString("auto_connect_preferred_bt", null);
                    if (string != null || O0.j.E0(string)) {
                        string = null;
                    }
                } else {
                    if (O0.j.E0(string)) {
                        string = null;
                    }
                    if (string == null) {
                        string = centralWatchdogService.M().getString("auto_connect_preferred_bt", null);
                        if (string != null) {
                            string = null;
                        } else {
                            string = null;
                        }
                    }
                }
                StringBuilder sb = new StringBuilder("CarPlay trigger (");
                String str = this.f957d;
                sb.append(str);
                sb.append(')');
                centralWatchdogService.K(sb.toString());
                if (string != null && centralWatchdogService.C()) {
                    long jElapsedRealtime = SystemClock.elapsedRealtime();
                    HashMap map = centralWatchdogService.j1;
                    Long l2 = (Long) map.get(string);
                    long jLongValue = jElapsedRealtime - (l2 != null ? l2.longValue() : 0L);
                    if (jLongValue >= centralWatchdogService.k1) {
                        map.put(string, Long.valueOf(jElapsedRealtime));
                        try {
                            Z.a(centralWatchdogService, string, null);
                            break;
                        } catch (Throwable unused) {
                        }
                    } else {
                        Log.i("CentralWatchdog", "CarPlay trigger: injeção pulada, há " + (jLongValue / ((long) IMAPStore.RESPONSE)) + "s (carência anti-colisão)");
                    }
                }
                try {
                    X xW = Y.w(centralWatchdogService, string);
                    L3 l3 = L3.f671a;
                    StringBuilder sb2 = new StringBuilder("CarPlay trigger (");
                    sb2.append(str);
                    sb2.append("): ");
                    sb2.append(xW);
                    sb2.append(" (preferido=");
                    if (string == null) {
                        string = "(qualquer)";
                    }
                    sb2.append(string);
                    sb2.append(')');
                    l3.b("CentralWatchdog", sb2.toString());
                } catch (Throwable th) {
                    M.d0.r(th, M.d0.j("CarPlay trigger (", str, "): "), "CentralWatchdog");
                    return;
                }
                break;
            default:
                CentralWatchdogService centralWatchdogService2 = this.b;
                String str2 = this.f956c;
                String str3 = this.f957d;
                centralWatchdogService2.f2194c0 = false;
                if (I0.f.a(centralWatchdogService2.V, str2) && !I0.f.a(str3, str2)) {
                    Log.w("CentralWatchdog", "auto-proxy divergente (real='" + str3 + "' esperado=" + str2 + ") — reaplicando");
                    centralWatchdogService2.w(8080, str2);
                    break;
                }
                break;
        }
    }

    public /* synthetic */ RunnableC0056f0(String str, CentralWatchdogService centralWatchdogService, String str2) {
        this.f956c = str;
        this.b = centralWatchdogService;
        this.f957d = str2;
    }
}
