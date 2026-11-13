package T;

import android.car.hardware.property.CarPropertyManager;
import android.util.Log;
import com.ex.auto.CentralWatchdogService;

/* JADX INFO: renamed from: T.i0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC0074i0 implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f997a;
    public final /* synthetic */ int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ CentralWatchdogService f998c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Object f999d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ int f1000e;
    public final /* synthetic */ boolean f;

    public /* synthetic */ RunnableC0074i0(int i2, CentralWatchdogService centralWatchdogService, CarPropertyManager carPropertyManager, int i3, boolean z2, int i4) {
        this.f997a = i4;
        this.b = i2;
        this.f998c = centralWatchdogService;
        this.f999d = carPropertyManager;
        this.f1000e = i3;
        this.f = z2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        CarPropertyManager carPropertyManager;
        Integer numValueOf;
        CarPropertyManager carPropertyManager2;
        Integer numValueOf2;
        final CarPropertyManager carPropertyManager3;
        switch (this.f997a) {
            case 0:
                int i2 = this.f998c.b.get();
                int i3 = this.b;
                if (i3 == i2) {
                    int[] iArr = CentralWatchdogService.e2;
                    int i4 = 0;
                    while (true) {
                        carPropertyManager = (CarPropertyManager) this.f999d;
                        if (i4 < 3) {
                            Integer numC = U.c(carPropertyManager, 570491136, iArr[i4]);
                            if (numC != null) {
                                numValueOf = Integer.valueOf(numC.intValue());
                            } else {
                                i4++;
                            }
                        } else {
                            numValueOf = null;
                        }
                    }
                    int i5 = this.f1000e;
                    if (numValueOf != null && numValueOf.intValue() == i5) {
                        Log.i("CentralWatchdog", "drive reassert: HAL já em " + numValueOf + ", gen=" + i3 + " — não reaplicar");
                    } else if (this.f) {
                        for (int i6 = 0; i6 < 3; i6++) {
                            try {
                                carPropertyManager.setIntProperty(570491136, iArr[i6], i5);
                            } catch (Throwable unused) {
                            }
                        }
                    }
                    break;
                }
                break;
            case 1:
                int i7 = this.f998c.b.get();
                int i8 = this.b;
                if (i8 == i7) {
                    int[] iArr2 = CentralWatchdogService.d2;
                    int i9 = 0;
                    while (true) {
                        carPropertyManager2 = (CarPropertyManager) this.f999d;
                        if (i9 < 2) {
                            Integer numC2 = U.c(carPropertyManager2, 537003264, iArr2[i9]);
                            if (numC2 != null) {
                                numValueOf2 = Integer.valueOf(numC2.intValue());
                            } else {
                                i9++;
                            }
                        } else {
                            numValueOf2 = null;
                        }
                    }
                    int i10 = this.f1000e;
                    if (numValueOf2 != null && numValueOf2.intValue() == i10) {
                        Log.i("CentralWatchdog", "regen reassert: HAL já em " + numValueOf2 + ", gen=" + i8 + " — não reaplicar");
                    } else if (this.f) {
                        for (int i11 = 0; i11 < 2; i11++) {
                            try {
                                carPropertyManager2.setIntProperty(537003264, iArr2[i11], i10);
                            } catch (Throwable unused2) {
                            }
                        }
                    }
                    break;
                }
                break;
            default:
                final int i12 = this.b;
                final CentralWatchdogService centralWatchdogService = this.f998c;
                final boolean z2 = this.f;
                final int i13 = this.f1000e;
                final String str = (String) this.f999d;
                if (CentralWatchdogService.f2 && i12 == centralWatchdogService.b.get() && (carPropertyManager3 = centralWatchdogService.f2200g) != null) {
                    new Thread(new Runnable() { // from class: T.j0
                        @Override // java.lang.Runnable
                        public final void run() {
                            CarPropertyManager carPropertyManager4 = carPropertyManager3;
                            int i14 = i13;
                            int i15 = centralWatchdogService.b.get();
                            int i16 = i12;
                            if (i16 != i15) {
                                return;
                            }
                            boolean z3 = false;
                            if (z2) {
                                int[] iArr3 = CentralWatchdogService.d2;
                                for (int i17 = 0; i17 < 2; i17++) {
                                    try {
                                        carPropertyManager4.setIntProperty(537003264, iArr3[i17], i14);
                                        z3 = true;
                                        break;
                                    } catch (Throwable unused3) {
                                    }
                                }
                            }
                            Log.i("CentralWatchdog", "regen write ok=" + z3 + " reason=" + str + " gen=" + i16);
                        }
                    }).start();
                    break;
                }
                break;
        }
    }

    public /* synthetic */ RunnableC0074i0(int i2, CentralWatchdogService centralWatchdogService, boolean z2, int i3, String str) {
        this.f997a = 2;
        this.b = i2;
        this.f998c = centralWatchdogService;
        this.f = z2;
        this.f1000e = i3;
        this.f999d = str;
    }
}
