package T;

import android.car.hardware.property.CarPropertyManager;
import android.view.View;
import com.ex.auto.HomeFloatingWidgetsService;
import com.sun.mail.iap.Response;
import ecarx.xsf.mediacenter.session.PlaybackState;
import java.util.List;

/* JADX INFO: renamed from: T.t1, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class ViewOnClickListenerC0140t1 implements View.OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1151a;
    public final /* synthetic */ HomeFloatingWidgetsService b;

    public /* synthetic */ ViewOnClickListenerC0140t1(HomeFloatingWidgetsService homeFloatingWidgetsService, int i2) {
        this.f1151a = i2;
        this.b = homeFloatingWidgetsService;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        switch (this.f1151a) {
            case 0:
                HomeFloatingWidgetsService homeFloatingWidgetsService = this.b;
                CarPropertyManager carPropertyManager = homeFloatingWidgetsService.f2282e;
                if (carPropertyManager != null) {
                    Boolean boolI = homeFloatingWidgetsService.f2289m;
                    boolean z2 = !((boolI == null && (boolI = H1.i(carPropertyManager)) == null) ? false : boolI.booleanValue());
                    H1.t(carPropertyManager, z2);
                    homeFloatingWidgetsService.f2289m = Boolean.valueOf(z2);
                    homeFloatingWidgetsService.J();
                    break;
                }
                break;
            case 1:
                List list = HomeFloatingWidgetsService.f2262Q;
                this.b.y(1);
                break;
            case 2:
                List list2 = HomeFloatingWidgetsService.f2262Q;
                this.b.y(2);
                break;
            case 3:
                List list3 = HomeFloatingWidgetsService.f2262Q;
                this.b.y(3);
                break;
            case 4:
                List list4 = HomeFloatingWidgetsService.f2262Q;
                this.b.y(4);
                break;
            case 5:
                List list5 = HomeFloatingWidgetsService.f2262Q;
                this.b.y(6);
                break;
            case 6:
                HomeFloatingWidgetsService homeFloatingWidgetsService2 = this.b;
                CarPropertyManager carPropertyManager2 = homeFloatingWidgetsService2.f2282e;
                if (carPropertyManager2 != null) {
                    Boolean boolI2 = homeFloatingWidgetsService2.f2289m;
                    boolean z3 = !((boolI2 == null && (boolI2 = H1.i(carPropertyManager2)) == null) ? false : boolI2.booleanValue());
                    H1.t(carPropertyManager2, z3);
                    homeFloatingWidgetsService2.f2289m = Boolean.valueOf(z3);
                    homeFloatingWidgetsService2.I();
                    homeFloatingWidgetsService2.J();
                    break;
                }
                break;
            case PlaybackState.STATE_ERROR /* 7 */:
                List list6 = HomeFloatingWidgetsService.f2262Q;
                this.b.B(-1);
                break;
            case Response.NO /* 8 */:
                List list7 = HomeFloatingWidgetsService.f2262Q;
                this.b.B(1);
                break;
            case 9:
                HomeFloatingWidgetsService homeFloatingWidgetsService3 = this.b;
                CarPropertyManager carPropertyManager3 = homeFloatingWidgetsService3.f2282e;
                if (carPropertyManager3 != null) {
                    Boolean boolD = homeFloatingWidgetsService3.f2296t;
                    boolean z4 = !((boolD == null && (boolD = H1.d(carPropertyManager3)) == null) ? false : boolD.booleanValue());
                    H1.q(carPropertyManager3, z4);
                    homeFloatingWidgetsService3.f2296t = Boolean.valueOf(z4);
                    homeFloatingWidgetsService3.I();
                    break;
                }
                break;
            case 10:
                List list8 = HomeFloatingWidgetsService.f2262Q;
                this.b.A(-1);
                break;
            case 11:
                List list9 = HomeFloatingWidgetsService.f2262Q;
                this.b.A(1);
                break;
            case Response.BAD /* 12 */:
                List list10 = HomeFloatingWidgetsService.f2262Q;
                this.b.v(570491137);
                break;
            case 13:
                List list11 = HomeFloatingWidgetsService.f2262Q;
                this.b.v(570491138);
                break;
            case 14:
                List list12 = HomeFloatingWidgetsService.f2262Q;
                this.b.v(570491139);
                break;
            case 15:
                List list13 = HomeFloatingWidgetsService.f2262Q;
                this.b.w(537003265);
                break;
            case Response.BYE /* 16 */:
                List list14 = HomeFloatingWidgetsService.f2262Q;
                this.b.w(537003266);
                break;
            case 17:
                List list15 = HomeFloatingWidgetsService.f2262Q;
                this.b.w(537003267);
                break;
            case 18:
                HomeFloatingWidgetsService homeFloatingWidgetsService4 = this.b;
                CarPropertyManager carPropertyManager4 = homeFloatingWidgetsService4.f2282e;
                if (carPropertyManager4 != null) {
                    Boolean boolM = homeFloatingWidgetsService4.f2291o;
                    boolean z5 = !((boolM == null && (boolM = H1.m(carPropertyManager4)) == null) ? false : boolM.booleanValue());
                    int[] iArr = H1.f606a;
                    for (int i2 : H1.f615l) {
                        try {
                            carPropertyManager4.setIntProperty(289408269, i2, z5 ? 1 : 0);
                            homeFloatingWidgetsService4.f2291o = Boolean.valueOf(z5);
                            homeFloatingWidgetsService4.G();
                        } catch (Throwable unused) {
                        }
                        break;
                    }
                    homeFloatingWidgetsService4.f2291o = Boolean.valueOf(z5);
                    homeFloatingWidgetsService4.G();
                    break;
                }
                break;
            case 19:
                HomeFloatingWidgetsService homeFloatingWidgetsService5 = this.b;
                CarPropertyManager carPropertyManager5 = homeFloatingWidgetsService5.f2282e;
                if (carPropertyManager5 != null) {
                    Boolean boolH = homeFloatingWidgetsService5.f2290n;
                    boolean z6 = !((boolH == null && (boolH = H1.h(carPropertyManager5)) == null) ? false : boolH.booleanValue());
                    int[] iArr2 = H1.f606a;
                    try {
                        carPropertyManager5.setBooleanProperty(354419988, 2, z6);
                        break;
                    } catch (Throwable unused2) {
                    }
                    homeFloatingWidgetsService5.f2290n = Boolean.valueOf(z6);
                    homeFloatingWidgetsService5.G();
                    break;
                }
                break;
            case 20:
                HomeFloatingWidgetsService homeFloatingWidgetsService6 = this.b;
                CarPropertyManager carPropertyManager6 = homeFloatingWidgetsService6.f2282e;
                if (carPropertyManager6 != null) {
                    Boolean boolF = homeFloatingWidgetsService6.f2292p;
                    boolean z7 = !((boolF == null && (boolF = H1.f(carPropertyManager6)) == null) ? false : boolF.booleanValue());
                    int[] iArr3 = H1.f606a;
                    try {
                        carPropertyManager6.setBooleanProperty(354419975, 1, z7);
                        break;
                    } catch (Throwable unused3) {
                    }
                    homeFloatingWidgetsService6.f2292p = Boolean.valueOf(z7);
                    homeFloatingWidgetsService6.G();
                    break;
                }
                break;
            case 21:
                HomeFloatingWidgetsService homeFloatingWidgetsService7 = this.b;
                CarPropertyManager carPropertyManager7 = homeFloatingWidgetsService7.f2282e;
                if (carPropertyManager7 != null) {
                    Boolean boolN = homeFloatingWidgetsService7.f2293q;
                    boolean z8 = !((boolN == null && (boolN = H1.n(carPropertyManager7)) == null) ? false : boolN.booleanValue());
                    int[] iArr4 = H1.f606a;
                    try {
                        carPropertyManager7.setBooleanProperty(270535680, 117, z8);
                        break;
                    } catch (Throwable unused4) {
                    }
                    homeFloatingWidgetsService7.f2293q = Boolean.valueOf(z8);
                    homeFloatingWidgetsService7.G();
                    break;
                }
                break;
            case 22:
                List list16 = HomeFloatingWidgetsService.f2262Q;
                this.b.o(true);
                break;
            case 23:
                List list17 = HomeFloatingWidgetsService.f2262Q;
                this.b.o(false);
                break;
            case 24:
                List list18 = HomeFloatingWidgetsService.f2262Q;
                this.b.p();
                break;
            case 25:
                List list19 = HomeFloatingWidgetsService.f2262Q;
                this.b.p();
                break;
            case 26:
                List list20 = HomeFloatingWidgetsService.f2262Q;
                this.b.C(-1.0f);
                break;
            case 27:
                List list21 = HomeFloatingWidgetsService.f2262Q;
                this.b.C(1.0f);
                break;
            case Response.TYPE_MASK /* 28 */:
                List list22 = HomeFloatingWidgetsService.f2262Q;
                this.b.x(1);
                break;
            default:
                List list23 = HomeFloatingWidgetsService.f2262Q;
                this.b.x(2);
                break;
        }
    }
}
