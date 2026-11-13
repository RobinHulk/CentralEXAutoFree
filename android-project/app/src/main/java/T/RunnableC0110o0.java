package T;

import android.content.Intent;
import android.util.Log;
import com.ex.auto.CentralWatchdogService;
import java.util.regex.Pattern;

/* JADX INFO: renamed from: T.o0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC0110o0 implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1076a;
    public final /* synthetic */ CentralWatchdogService b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ String f1077c;

    public /* synthetic */ RunnableC0110o0(int i2, CentralWatchdogService centralWatchdogService, String str) {
        this.f1076a = i2;
        this.b = centralWatchdogService;
        this.f1077c = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2 = 0;
        z = false;
        boolean z2 = false;
        switch (this.f1076a) {
            case 0:
                CentralWatchdogService centralWatchdogService = this.b;
                String str = this.f1077c;
                int[] iArr = CentralWatchdogService.d2;
                try {
                    String strB = new I1(5555).b(30000, centralWatchdogService.B(str));
                    I0.f.b(strB);
                    boolean zX0 = O0.j.x0(strB, "FWMARK_MATCH=OK", false);
                    StringBuilder sb = new StringBuilder("AutoRota (");
                    sb.append(str);
                    sb.append("): ");
                    sb.append(zX0 ? "OK" : "ERRO");
                    Log.i("CentralWatchdog", sb.toString());
                    centralWatchdogService.sendBroadcast(new Intent("com.ex.auto.AUTO_ROUTE_APPLIED").putExtra("ip", str).putExtra("ok", zX0).putExtra("result", O0.j.W0(600, strB)));
                } catch (Exception e2) {
                    M.d0.n(e2, new StringBuilder("applyRoutesSilent erro: "), "CentralWatchdog");
                    return;
                }
                break;
            case 1:
                CentralWatchdogService centralWatchdogService2 = this.b;
                String str2 = this.f1077c;
                int[] iArr2 = CentralWatchdogService.d2;
                for (int i3 = 0; centralWatchdogService2.W1 && i3 < 40000; i3 += 2000) {
                    try {
                        Thread.sleep(2000L);
                    } catch (Throwable th) {
                        L3 l3 = L3.f671a;
                        StringBuilder sbJ = M.d0.j("saúde precoce (", str2, ") falhou: ");
                        sbJ.append(th.getMessage());
                        l3.b("CentralWatchdog", sbJ.toString());
                        return;
                    }
                }
                if (!CentralWatchdogService.I0()) {
                    Integer numP0 = O0.r.p0(O0.j.X0(CentralWatchdogService.c(10000, "netstat -tln 2>/dev/null | grep -cE '3051[56]'")).toString());
                    if ((numP0 != null ? numP0.intValue() : 0) <= 0) {
                        if (centralWatchdogService2.E()) {
                            if (!centralWatchdogService2.Y("precoce/" + str2)) {
                                L3.f671a.b("CentralWatchdog", "saúde precoce (" + str2 + "): wlan1 ausente — recriando já, sem esperar os 90s");
                                centralWatchdogService2.f2179P0 = 0L;
                                centralWatchdogService2.z("precoce/" + str2);
                            }
                        } else {
                            L3.f671a.b("CentralWatchdog", "saúde precoce (" + str2 + "): wlan1 ausente, mas ConnAdaptor de fábrica — nada a recriar");
                        }
                    }
                }
                break;
            case 2:
                CentralWatchdogService centralWatchdogService3 = this.b;
                int[] iArr3 = CentralWatchdogService.d2;
                try {
                    if (centralWatchdogService3.o() || CentralWatchdogService.Z()) {
                        z2 = true;
                    }
                } catch (Throwable unused) {
                }
                centralWatchdogService3.f2190a.post(new RunnableC0062g0(z2, this.f1077c, centralWatchdogService3));
                break;
            case 3:
                CentralWatchdogService centralWatchdogService4 = this.b;
                String str3 = this.f1077c;
                int[] iArr4 = CentralWatchdogService.d2;
                try {
                    centralWatchdogService4.getClass();
                    boolean zI0 = CentralWatchdogService.I0();
                    if (!zI0) {
                        centralWatchdogService4.Y(str3);
                    }
                    if ((CentralWatchdogService.I0() || CentralWatchdogService.p()) && !CentralWatchdogService.I0()) {
                        L3.f671a.b("CentralWatchdog", "AP sempre aberto (" + str3 + "): wlan1 ausente — conserto a interface antes de gastar a tentativa");
                        centralWatchdogService4.f2179P0 = 0L;
                        centralWatchdogService4.z("antes do AP/".concat(str3));
                    }
                    boolean zP = CentralWatchdogService.p();
                    boolean zK = centralWatchdogService4.K("AP sempre aberto (" + str3 + ')');
                    if (zK && !zI0 && !centralWatchdogService4.d1) {
                        centralWatchdogService4.e0("após abrir o AP/".concat(str3));
                    }
                    if (zK && !zP) {
                        centralWatchdogService4.f2179P0 = 0L;
                        centralWatchdogService4.z("após abrir o AP/".concat(str3));
                        break;
                    }
                } catch (Throwable th2) {
                    L3 l4 = L3.f671a;
                    StringBuilder sbJ2 = M.d0.j("AP sempre aberto (", str3, ") falhou: ");
                    sbJ2.append(th2.getMessage());
                    l4.b("CentralWatchdog", sbJ2.toString());
                    return;
                }
                break;
            case 4:
                CentralWatchdogService centralWatchdogService5 = this.b;
                String str4 = this.f1077c;
                int[] iArr5 = CentralWatchdogService.d2;
                try {
                    centralWatchdogService5.z(str4);
                } catch (Throwable th3) {
                    L3 l5 = L3.f671a;
                    StringBuilder sbJ3 = M.d0.j("saúde (", str4, "): falhou — ");
                    sbJ3.append(th3.getMessage());
                    l5.b("CentralWatchdog", sbJ3.toString());
                    return;
                }
                break;
            default:
                CentralWatchdogService centralWatchdogService6 = this.b;
                String str5 = centralWatchdogService6.V;
                String str6 = this.f1077c;
                if (I0.f.a(str5, str6)) {
                    centralWatchdogService6.f2186W = str6;
                    Pattern patternCompile = Pattern.compile("^\\d{1,3}(\\.\\d{1,3}){3}$");
                    I0.f.d(patternCompile, "compile(...)");
                    I0.f.e(str6, "input");
                    if (patternCompile.matcher(str6).matches()) {
                        new Thread(new RunnableC0110o0(i2, centralWatchdogService6, str6)).start();
                        break;
                    }
                }
                break;
        }
    }
}
