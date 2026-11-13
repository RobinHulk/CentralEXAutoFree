package T;

import android.util.Log;
import com.ex.auto.PhoneSyncService;
import com.geely.hvacstepperv2.TempStepperService;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class S3 implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f792a;
    public final /* synthetic */ int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f793c;

    public /* synthetic */ S3(Object obj, int i2, int i3) {
        this.f792a = i3;
        this.f793c = obj;
        this.b = i2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f792a) {
            case 0:
                String str = (String) this.f793c;
                int i2 = this.b;
                boolean z2 = PhoneSyncService.f2416v;
                try {
                    Log.i("PhoneSyncService", "ação shell concluída: ".concat(O0.j.V0(400, C0097m.v(str, i2, null, new C0103n(0)))));
                } catch (Exception e2) {
                    Log.e("PhoneSyncService", "ação shell falhou: " + e2.getMessage());
                    return;
                }
                break;
            case 1:
                int[] iArr = TempStepperService.f2615X;
                ((TempStepperService) this.f793c).c(this.b);
                break;
            default:
                ((p026q.b) this.f793c).d(this.b);
                break;
        }
    }
}
