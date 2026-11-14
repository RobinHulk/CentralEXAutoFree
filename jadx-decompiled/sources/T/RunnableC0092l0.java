package T;

import com.ex.auto.CentralWatchdogService;
import com.sun.mail.imap.IMAPStore;

/* JADX INFO: renamed from: T.l0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC0092l0 implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1036a;
    public final /* synthetic */ CentralWatchdogService b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f1037c;

    public /* synthetic */ RunnableC0092l0(CentralWatchdogService centralWatchdogService, int i2, int i3) {
        this.f1036a = i3;
        this.b = centralWatchdogService;
        this.f1037c = i2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean zU;
        int i2 = 0;
        switch (this.f1036a) {
            case 0:
                int[] iArr = CentralWatchdogService.d2;
                this.b.l(this.f1037c + 1);
                break;
            case 1:
                CentralWatchdogService centralWatchdogService = this.b;
                int i3 = this.f1037c;
                if (CentralWatchdogService.f2) {
                    new Thread(new RunnableC0092l0(centralWatchdogService, i3, 2)).start();
                    break;
                }
                break;
            default:
                CentralWatchdogService centralWatchdogService2 = this.b;
                int i4 = this.f1037c;
                int[] iArr2 = CentralWatchdogService.d2;
                try {
                    zU = centralWatchdogService2.u();
                } catch (Throwable th) {
                    L3 l3 = L3.f671a;
                    StringBuilder sbH = M.d0.h("patch do monitor: exceção na tentativa ", i4, " — ");
                    sbH.append(th.getClass().getSimpleName());
                    sbH.append(": ");
                    sbH.append(th.getMessage());
                    l3.b("CentralWatchdog", sbH.toString());
                    zU = false;
                }
                if (!zU && i4 < centralWatchdogService2.T1) {
                    L3 l4 = L3.f671a;
                    StringBuilder sbH2 = M.d0.h("patch do monitor: tentativa ", i4, " não confirmou — nova tentativa em ");
                    sbH2.append(centralWatchdogService2.V1 / ((long) IMAPStore.RESPONSE));
                    sbH2.append('s');
                    l4.b("CentralWatchdog", sbH2.toString());
                    centralWatchdogService2.f2190a.post(new RunnableC0092l0(centralWatchdogService2, i4, i2));
                    break;
                }
                break;
        }
    }
}
