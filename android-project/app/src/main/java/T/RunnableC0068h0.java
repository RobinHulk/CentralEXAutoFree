package T;

import android.car.hardware.property.CarPropertyManager;
import android.os.Handler;
import com.ex.auto.CentralWatchdogService;
import com.ex.auto.MainActivity;
import com.sun.mail.imap.IMAPStore;

/* JADX INFO: renamed from: T.h0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC0068h0 implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f983a;
    public final /* synthetic */ Object b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f984c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Object f985d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ boolean f986e;

    public /* synthetic */ RunnableC0068h0(CentralWatchdogService centralWatchdogService, String str, int i2, boolean z2) {
        this.f983a = 0;
        this.b = centralWatchdogService;
        this.f985d = str;
        this.f984c = i2;
        this.f986e = z2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int iIntValue;
        switch (this.f983a) {
            case 0:
                CentralWatchdogService centralWatchdogService = (CentralWatchdogService) this.b;
                String str = (String) this.f985d;
                int i2 = this.f984c;
                boolean z2 = this.f986e;
                if (CentralWatchdogService.f2) {
                    centralWatchdogService.V(i2 + 1, str, z2);
                }
                break;
            case 1:
                final CentralWatchdogService centralWatchdogService2 = (CentralWatchdogService) this.b;
                int[] iArr = CentralWatchdogService.d2;
                try {
                    centralWatchdogService2.getClass();
                    Integer numP0 = O0.r.p0(O0.j.X0(CentralWatchdogService.c(10000, "netstat -tln 2>/dev/null | grep -cE '3051[56]'")).toString());
                    iIntValue = numP0 != null ? numP0.intValue() : 0;
                    break;
                } catch (Throwable unused) {
                }
                final boolean z3 = iIntValue > 0;
                final int i3 = this.f984c;
                final long j2 = ((long) i3) * centralWatchdogService2.T0;
                Handler handler = centralWatchdogService2.f2190a;
                final String str2 = (String) this.f985d;
                final boolean z4 = this.f986e;
                handler.post(new Runnable() { // from class: T.v0
                    @Override // java.lang.Runnable
                    public final void run() {
                        boolean z5 = z3;
                        String str3 = str2;
                        long j3 = j2;
                        CentralWatchdogService centralWatchdogService3 = centralWatchdogService2;
                        int i4 = i3;
                        boolean z6 = z4;
                        if (CentralWatchdogService.f2) {
                            if (z5) {
                                L3 l3 = L3.f671a;
                                StringBuilder sbJ = M.d0.j("BT (", str3, "): projeção pronta em ");
                                sbJ.append(j3 / ((long) IMAPStore.RESPONSE));
                                sbJ.append("s — ligando agora");
                                l3.b("CentralWatchdog", sbJ.toString());
                                centralWatchdogService3.L(1, str3);
                                return;
                            }
                            if (j3 < centralWatchdogService3.U0) {
                                centralWatchdogService3.f2190a.postDelayed(new RunnableC0068h0(centralWatchdogService3, str3, i4, z6), centralWatchdogService3.T0);
                                return;
                            }
                            L3 l4 = L3.f671a;
                            StringBuilder sbJ2 = M.d0.j("BT (", str3, "): projeção não ficou pronta em ");
                            sbJ2.append(j3 / ((long) IMAPStore.RESPONSE));
                            sbJ2.append("s — ligando assim mesmo (Bluetooth não é só para projetar)");
                            l4.b("CentralWatchdog", sbJ2.toString());
                            centralWatchdogService3.L(1, str3);
                        }
                    }
                });
                break;
            default:
                CarPropertyManager carPropertyManager = (CarPropertyManager) this.b;
                int i4 = this.f984c;
                int i5 = MainActivity.u0;
                I0.i iVar = new I0.i();
                try {
                    carPropertyManager.setIntProperty(557850645, 0, i4);
                    iVar.f122a = true;
                    break;
                } catch (Throwable unused2) {
                }
                boolean z5 = this.f986e;
                MainActivity mainActivity = (MainActivity) this.f985d;
                mainActivity.runOnUiThread(new RunnableC0148v(iVar, mainActivity, z5));
                break;
        }
    }

    public /* synthetic */ RunnableC0068h0(Object obj, int i2, Object obj2, boolean z2, int i3) {
        this.f983a = i3;
        this.b = obj;
        this.f984c = i2;
        this.f985d = obj2;
        this.f986e = z2;
    }
}
