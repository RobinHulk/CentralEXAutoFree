package T;

import android.car.hardware.property.CarPropertyManager;
import com.ex.auto.TempBattPillFloaterService;
import com.sun.mail.imap.IMAPStore;

/* JADX INFO: loaded from: classes.dex */
public final class H4 implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f620a;
    public final /* synthetic */ TempBattPillFloaterService b;

    public /* synthetic */ H4(TempBattPillFloaterService tempBattPillFloaterService, int i2) {
        this.f620a = i2;
        this.b = tempBattPillFloaterService;
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f620a) {
            case 0:
                TempBattPillFloaterService tempBattPillFloaterService = this.b;
                C0085k c0085k = tempBattPillFloaterService.f2534l;
                if (c0085k != null) {
                    if (tempBattPillFloaterService.f2535m >= c0085k.f1026a.size()) {
                        if (!c0085k.b) {
                            this.b.e();
                        } else {
                            this.b.f2535m = 0;
                        }
                    }
                    C0091l c0091l = (C0091l) c0085k.f1026a.get(this.b.f2535m);
                    this.b.f2535m++;
                    String str = c0091l.f1035a;
                    switch (str.hashCode()) {
                        case -934914614:
                            if (str.equals("recirc")) {
                                TempBattPillFloaterService tempBattPillFloaterService2 = this.b;
                                boolean z2 = c0091l.b == 1.0d;
                                CarPropertyManager carPropertyManager = tempBattPillFloaterService2.f2529g;
                                if (carPropertyManager != null) {
                                    try {
                                        carPropertyManager.setBooleanProperty(557846566, 117, z2);
                                        break;
                                    } catch (Throwable unused) {
                                    }
                                }
                                this.b.f2528e.post(this);
                            }
                            break;
                        case 101139:
                            if (str.equals("fan")) {
                                TempBattPillFloaterService tempBattPillFloaterService3 = this.b;
                                int i2 = (int) c0091l.b;
                                CarPropertyManager carPropertyManager2 = tempBattPillFloaterService3.f2529g;
                                if (carPropertyManager2 != null) {
                                    for (int i3 : tempBattPillFloaterService3.f2532j) {
                                        try {
                                            carPropertyManager2.setIntProperty(356517120, i3, i2);
                                        } catch (Throwable unused2) {
                                        }
                                    }
                                }
                                this.b.f2528e.post(this);
                            }
                            break;
                        case 3556308:
                            if (str.equals("temp")) {
                                TempBattPillFloaterService tempBattPillFloaterService4 = this.b;
                                float f = (float) c0091l.b;
                                CarPropertyManager carPropertyManager3 = tempBattPillFloaterService4.f2529g;
                                if (carPropertyManager3 != null) {
                                    try {
                                        carPropertyManager3.setFloatProperty(624955446, 1, f);
                                        break;
                                    } catch (Throwable unused3) {
                                    }
                                    try {
                                        carPropertyManager3.setFloatProperty(624955446, 4, f);
                                        break;
                                    } catch (Throwable unused4) {
                                    }
                                }
                                this.b.f2528e.post(this);
                            }
                            break;
                        case 3641717:
                            if (str.equals("wait")) {
                                this.b.f2528e.postDelayed(this, (long) (c0091l.b * ((double) IMAPStore.RESPONSE)));
                            }
                            break;
                    }
                    this.b.f2528e.post(this);
                    break;
                }
                break;
            default:
                new Thread(new RunnableC0168z(this.b.f2529g, this.b, this, 18)).start();
                break;
        }
    }
}
