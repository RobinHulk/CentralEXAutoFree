package p007e;

import A.b;
import M.C0003d;
import android.content.Context;
import android.content.IntentFilter;
import android.location.Location;
import android.location.LocationManager;
import android.os.PowerManager;
import android.util.Log;
import androidx.fragment.app.AbstractC0178f;
import java.util.Calendar;

/* JADX INFO: loaded from: classes.dex */
public final class u extends AbstractC0178f {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f3065c = 1;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ x f3066d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Object f3067e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public u(x xVar, C0003d c0003d) {
        super(xVar);
        this.f3066d = xVar;
        this.f3067e = c0003d;
    }

    @Override // androidx.fragment.app.AbstractC0178f
    public final IntentFilter e() {
        switch (this.f3065c) {
            case 0:
                IntentFilter intentFilter = new IntentFilter();
                intentFilter.addAction("android.os.action.POWER_SAVE_MODE_CHANGED");
                return intentFilter;
            default:
                IntentFilter intentFilter2 = new IntentFilter();
                intentFilter2.addAction("android.intent.action.TIME_SET");
                intentFilter2.addAction("android.intent.action.TIMEZONE_CHANGED");
                intentFilter2.addAction("android.intent.action.TIME_TICK");
                return intentFilter2;
        }
    }

    @Override // androidx.fragment.app.AbstractC0178f
    public final int f() {
        Location location;
        boolean z2;
        long j2;
        Location lastKnownLocation;
        switch (this.f3065c) {
            case 0:
                return ((PowerManager) this.f3067e).isPowerSaveMode() ? 2 : 1;
            default:
                C0003d c0003d = (C0003d) this.f3067e;
                G g2 = (G) c0003d.f216d;
                if (g2.b <= System.currentTimeMillis()) {
                    Context context = (Context) c0003d.b;
                    int iJ = b.j(context, "android.permission.ACCESS_COARSE_LOCATION");
                    Location lastKnownLocation2 = null;
                    LocationManager locationManager = (LocationManager) c0003d.f215c;
                    if (iJ == 0) {
                        try {
                            lastKnownLocation = locationManager.isProviderEnabled("network") ? locationManager.getLastKnownLocation("network") : null;
                        } catch (Exception e2) {
                            Log.d("TwilightManager", "Failed to get last known location", e2);
                        }
                        location = lastKnownLocation;
                    } else {
                        location = null;
                    }
                    if (b.j(context, "android.permission.ACCESS_FINE_LOCATION") == 0) {
                        try {
                            if (locationManager.isProviderEnabled("gps")) {
                                lastKnownLocation2 = locationManager.getLastKnownLocation("gps");
                            }
                        } catch (Exception e3) {
                            Log.d("TwilightManager", "Failed to get last known location", e3);
                        }
                    }
                    if (lastKnownLocation2 == null || location == null ? lastKnownLocation2 != null : lastKnownLocation2.getTime() > location.getTime()) {
                        location = lastKnownLocation2;
                    }
                    z2 = false;
                    if (location != null) {
                        long jCurrentTimeMillis = System.currentTimeMillis();
                        if (F.f2951d == null) {
                            F.f2951d = new F();
                        }
                        F f = F.f2951d;
                        f.a(jCurrentTimeMillis - 86400000, location.getLatitude(), location.getLongitude());
                        f.a(jCurrentTimeMillis, location.getLatitude(), location.getLongitude());
                        z2 = f.f2953c == 1;
                        long j3 = f.b;
                        long j4 = f.f2952a;
                        f.a(jCurrentTimeMillis + 86400000, location.getLatitude(), location.getLongitude());
                        long j5 = f.b;
                        if (j3 == -1 || j4 == -1) {
                            j2 = jCurrentTimeMillis + 43200000;
                        } else {
                            if (jCurrentTimeMillis <= j4) {
                                j5 = jCurrentTimeMillis > j3 ? j4 : j3;
                            }
                            j2 = j5 + 60000;
                        }
                        g2.f2954a = z2;
                        g2.b = j2;
                    } else {
                        Log.i("TwilightManager", "Could not get last known location. This is probably because the app does not have any location permissions. Falling back to hardcoded sunrise/sunset values.");
                        int i2 = Calendar.getInstance().get(11);
                        if (i2 < 6 || i2 >= 22) {
                            z2 = true;
                        }
                    }
                    break;
                } else {
                    z2 = g2.f2954a;
                }
                return z2 ? 2 : 1;
        }
    }

    @Override // androidx.fragment.app.AbstractC0178f
    public final void h() {
        switch (this.f3065c) {
            case 0:
                this.f3066d.t(true, true);
                break;
            default:
                this.f3066d.t(true, true);
                break;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public u(x xVar, Context context) {
        super(xVar);
        this.f3066d = xVar;
        this.f3067e = (PowerManager) context.getApplicationContext().getSystemService("power");
    }
}
