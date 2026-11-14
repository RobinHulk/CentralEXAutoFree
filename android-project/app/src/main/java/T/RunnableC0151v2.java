package T;

import android.car.hardware.property.CarPropertyManager;
import android.util.Log;
import com.ex.auto.MainActivity;

/* JADX INFO: renamed from: T.v2, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC0151v2 implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1182a = 1;
    public final /* synthetic */ MainActivity b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f1183c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Object f1184d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f1185e;

    public /* synthetic */ RunnableC0151v2(int i2, MainActivity mainActivity, String str, String str2) {
        this.b = mainActivity;
        this.f1183c = i2;
        this.f1184d = str;
        this.f1185e = str2;
    }

    /* JADX WARN: Code duplicated, block: B:21:0x0065  */
    @Override // java.lang.Runnable
    public final void run() {
        Object obj = this.f1185e;
        Object obj2 = this.f1184d;
        int i2 = this.f1183c;
        MainActivity mainActivity = this.b;
        switch (this.f1182a) {
            case 0:
                CarPropertyManager carPropertyManager = (CarPropertyManager) obj2;
                int i3 = MainActivity.u0;
                I0.i iVar = new I0.i();
                for (int i4 : AbstractC0121q.f1100a) {
                    try {
                        carPropertyManager.setIntProperty(557871191, i4, i2);
                        iVar.f122a = true;
                        if (iVar.f122a) {
                            mainActivity.B0().edit().putInt("avas_sound_type_saved", i2).apply();
                        }
                        mainActivity.f2387v.post(new H((W1) obj, 19, iVar));
                        return;
                    } catch (Exception e2) {
                        StringBuilder sbH = M.d0.h("AVAS sound type write area=", i4, ": ");
                        sbH.append(e2.getMessage());
                        Log.w("MainActivity", sbH.toString());
                    }
                }
                if (iVar.f122a) {
                    mainActivity.B0().edit().putInt("avas_sound_type_saved", i2).apply();
                }
                mainActivity.f2387v.post(new H((W1) obj, 19, iVar));
                return;
            default:
                if (mainActivity.f2353J == i2) {
                    U.a aVar = mainActivity.f2384t;
                    if (aVar == null) {
                        I0.f.h("binding");
                        throw null;
                    }
                    aVar.M2.setText(mainActivity.m2((String) obj2, (String) obj));
                    return;
                }
                return;
        }
    }

    public /* synthetic */ RunnableC0151v2(CarPropertyManager carPropertyManager, int i2, MainActivity mainActivity, W1 w1) {
        this.f1184d = carPropertyManager;
        this.f1183c = i2;
        this.b = mainActivity;
        this.f1185e = w1;
    }
}
