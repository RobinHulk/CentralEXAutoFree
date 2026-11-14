package T;

import com.ex.auto.BlackoutFloaterService;
import com.ex.auto.CentralWatchdogService;
import com.ex.auto.QuickAccessFloaterService;
import com.geely.driveregenfloater.DriveRegenFloaterService;
import com.sun.mail.iap.Response;
import ecarx.xsf.mediacenter.session.PlaybackState;
import java.util.List;

/* JADX INFO: renamed from: T.p0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC0116p0 implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1088a;
    public final /* synthetic */ CentralWatchdogService b;

    public /* synthetic */ RunnableC0116p0(CentralWatchdogService centralWatchdogService, int i2) {
        this.f1088a = i2;
        this.b = centralWatchdogService;
    }

    @Override // java.lang.Runnable
    public final void run() {
        String strC;
        int i2 = 2;
        int i3 = 5;
        String str = "boot";
        int i4 = 1;
        String str2 = "despertar";
        int i5 = 0;
        switch (this.f1088a) {
            case 0:
                CentralWatchdogService centralWatchdogService = this.b;
                if (CentralWatchdogService.f2) {
                    centralWatchdogService.W("boot");
                }
                break;
            case 1:
                CentralWatchdogService centralWatchdogService2 = this.b;
                if (CentralWatchdogService.f2) {
                    new Thread(new RunnableC0116p0(centralWatchdogService2, 28)).start();
                    break;
                }
                break;
            case 2:
                CentralWatchdogService centralWatchdogService3 = this.b;
                if (CentralWatchdogService.f2) {
                    centralWatchdogService3.getClass();
                    new Thread(new RunnableC0110o0(i4, centralWatchdogService3, str)).start();
                }
                break;
            case 3:
                CentralWatchdogService centralWatchdogService4 = this.b;
                if (CentralWatchdogService.f2) {
                    centralWatchdogService4.y("boot");
                }
                break;
            case 4:
                CentralWatchdogService centralWatchdogService5 = this.b;
                if (CentralWatchdogService.f2) {
                    centralWatchdogService5.x0();
                }
                break;
            case 5:
                CentralWatchdogService centralWatchdogService6 = this.b;
                if (CentralWatchdogService.f2) {
                    centralWatchdogService6.D();
                }
                break;
            case 6:
                CentralWatchdogService centralWatchdogService7 = this.b;
                int[] iArr = CentralWatchdogService.d2;
                try {
                    centralWatchdogService7.getClass();
                    if (O0.j.x0(O0.j.X0(CentralWatchdogService.c(8000, "settings get global policy_control")).toString(), "immersive", false)) {
                        L3.f671a.b("CentralWatchdog", "tela cheia estava ligada de um boot anterior — desligando por segurança");
                        CentralWatchdogService.c(8000, "settings delete global policy_control");
                        CentralWatchdogService.c(8000, "am force-stop com.android.systemui");
                    }
                } catch (Throwable th) {
                    L3.f671a.b("CentralWatchdog", "não deu pra conferir a tela cheia no boot: " + th.getMessage());
                    return;
                }
                break;
            case PlaybackState.STATE_ERROR /* 7 */:
                int[] iArr2 = CentralWatchdogService.d2;
                if (!O0.j.x0(AbstractC0120p4.a(6000, "grep -F ' /system/etc/automotive/evsapp/rvc/rvc_left_bg.png ' /proc/mounts >/dev/null 2>&1 && echo Y || echo N"), "Y", false)) {
                    AbstractC0120p4.b(this.b);
                }
                break;
            case Response.NO /* 8 */:
                int[] iArr3 = CentralWatchdogService.d2;
                CentralWatchdogService centralWatchdogService8 = this.b;
                if (centralWatchdogService8.M().getBoolean("wifi_auto_enable_on_wake", false)) {
                    new Thread(new RunnableC0110o0(i2, centralWatchdogService8, "retry")).start();
                    break;
                }
                break;
            case 9:
                CentralWatchdogService centralWatchdogService9 = this.b;
                if (CentralWatchdogService.f2) {
                    new Thread(new RunnableC0044d0(centralWatchdogService9, 3)).start();
                    break;
                }
                break;
            case 10:
                CentralWatchdogService centralWatchdogService10 = this.b;
                if (CentralWatchdogService.f2) {
                    centralWatchdogService10.O();
                    break;
                }
                break;
            case 11:
                CentralWatchdogService centralWatchdogService11 = this.b;
                if (CentralWatchdogService.f2 && centralWatchdogService11.M().getBoolean("wifi_auto_enable_on_wake", false)) {
                    centralWatchdogService11.f2190a.removeCallbacks(centralWatchdogService11.f2182R);
                    centralWatchdogService11.f2180Q = 0;
                    if (centralWatchdogService11.M().getBoolean("wifi_auto_enable_on_wake", false)) {
                        new Thread(new RunnableC0110o0(i2, centralWatchdogService11, "ipo_wakeup")).start();
                        break;
                    }
                }
                break;
            case Response.BAD /* 12 */:
                CentralWatchdogService centralWatchdogService12 = this.b;
                if (CentralWatchdogService.f2) {
                    new Thread(new RunnableC0044d0(centralWatchdogService12, i3)).start();
                    break;
                }
                break;
            case 13:
                CentralWatchdogService centralWatchdogService13 = this.b;
                if (CentralWatchdogService.f2 && !DriveRegenFloaterService.f2579J) {
                    if (centralWatchdogService13.f2200g != null) {
                        new Thread(new RunnableC0044d0(centralWatchdogService13, 4)).start();
                    } else {
                        centralWatchdogService13.O();
                    }
                    break;
                }
                break;
            case 14:
                CentralWatchdogService centralWatchdogService14 = this.b;
                if (CentralWatchdogService.f2) {
                    centralWatchdogService14.getClass();
                    List list = QuickAccessFloaterService.f2436j0;
                    if (!QuickAccessFloaterService.n0 && !BlackoutFloaterService.f2136q && !centralWatchdogService14.f2223s0) {
                        new Thread(new RunnableC0139t0(centralWatchdogService14, 6)).start();
                        break;
                    }
                }
                break;
            case 15:
                CentralWatchdogService centralWatchdogService15 = this.b;
                if (CentralWatchdogService.f2) {
                    centralWatchdogService15.W("despertar");
                }
                break;
            case Response.BYE /* 16 */:
                CentralWatchdogService centralWatchdogService16 = this.b;
                if (CentralWatchdogService.f2) {
                    U0.a(new C0050e0(centralWatchdogService16, i5));
                }
                break;
            case 17:
                CentralWatchdogService centralWatchdogService17 = this.b;
                if (CentralWatchdogService.f2) {
                    centralWatchdogService17.V(0, "despertar", false);
                }
                break;
            case 18:
                CentralWatchdogService centralWatchdogService18 = this.b;
                if (CentralWatchdogService.f2) {
                    centralWatchdogService18.getClass();
                    new Thread(new RunnableC0110o0(i4, centralWatchdogService18, str2)).start();
                }
                break;
            case 19:
                CentralWatchdogService centralWatchdogService19 = this.b;
                if (CentralWatchdogService.f2) {
                    centralWatchdogService19.y("despertar");
                }
                break;
            case 20:
                CentralWatchdogService centralWatchdogService20 = this.b;
                if (CentralWatchdogService.f2) {
                    centralWatchdogService20.D();
                }
                break;
            case 21:
                CentralWatchdogService centralWatchdogService21 = this.b;
                if (CentralWatchdogService.f2) {
                    centralWatchdogService21.getClass();
                    new Thread(new RunnableC0056f0((String) null, centralWatchdogService21, "wakeup")).start();
                }
                break;
            case 22:
                CentralWatchdogService centralWatchdogService22 = this.b;
                if (CentralWatchdogService.f2) {
                    new Thread(new RunnableC0139t0(centralWatchdogService22, 8)).start();
                    break;
                }
                break;
            case 23:
                CentralWatchdogService centralWatchdogService23 = this.b;
                if (CentralWatchdogService.f2) {
                    new Thread(new RunnableC0044d0(centralWatchdogService23, i4)).start();
                    break;
                }
                break;
            case 24:
                int[] iArr4 = CentralWatchdogService.d2;
                this.b.d0();
                break;
            case 25:
                CentralWatchdogService centralWatchdogService24 = this.b;
                if (CentralWatchdogService.f2) {
                    new Thread(new RunnableC0044d0(centralWatchdogService24, 7)).start();
                    break;
                }
                break;
            case 26:
                CentralWatchdogService centralWatchdogService25 = this.b;
                if (CentralWatchdogService.f2 && !DriveRegenFloaterService.f2579J) {
                    new Thread(new RunnableC0116p0(centralWatchdogService25, 27)).start();
                    break;
                }
                break;
            case 27:
                int[] iArr5 = CentralWatchdogService.d2;
                this.b.v("gear_change");
                break;
            case Response.TYPE_MASK /* 28 */:
                CentralWatchdogService centralWatchdogService26 = this.b;
                int[] iArr6 = CentralWatchdogService.d2;
                try {
                    centralWatchdogService26.getClass();
                    strC = CentralWatchdogService.c(25000, "for i in 1 2 3 4 5; do iptables  -t mangle -D POSTROUTING -j TTL --ttl-set 65 2>/dev/null || break; done\nfor i in 1 2 3 4 5; do ip6tables -t mangle -D POSTROUTING -j HL  --hl-set  65 2>/dev/null || break; done\niptables  -t mangle -A POSTROUTING -j TTL --ttl-set 65 2>&1\nip6tables -t mangle -A POSTROUTING -j HL  --hl-set  65 2>&1\necho TTL_V4=$(iptables  -t mangle -S POSTROUTING | grep -c 'ttl-set 65')\necho TTL_V6=$(ip6tables -t mangle -S POSTROUTING | grep -c 'hl-set 65')");
                } catch (Throwable th2) {
                    strC = "erro: " + th2.getMessage();
                }
                L3 l3 = L3.f671a;
                StringBuilder sb = new StringBuilder("TTL 65 no boot: ");
                I0.f.e(strC, "saida");
                sb.append((AbstractC0126q4.a(strC, "TTL_V4") <= 0 || AbstractC0126q4.a(strC, "TTL_V6") <= 0) ? "FALHOU" : "reaplicado");
                sb.append(" — ");
                sb.append(O0.j.V0(120, O0.s.v0(strC, "\n", " ")));
                l3.b("CentralWatchdog", sb.toString());
                break;
            default:
                CentralWatchdogService centralWatchdogService27 = this.b;
                if (CentralWatchdogService.f2) {
                    new Thread(new RunnableC0139t0(centralWatchdogService27, i3)).start();
                    break;
                }
                break;
        }
    }
}
