package T;

import android.content.pm.ActivityInfo;
import android.content.pm.ResolveInfo;
import android.os.Handler;
import android.util.Log;
import com.ecarx.eas.sdk.ECarXApiClient;
import com.ex.auto.CentralWatchdogService;
import com.ex.auto.MainActivity;
import com.ex.auto.QuickAccessFloaterService;
import com.sun.mail.iap.Response;
import ecarx.xsf.mediacenter.session.PlaybackState;
import java.util.Arrays;
import java.util.List;
import java.util.Map;

/* JADX INFO: renamed from: T.a3, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class C0029a3 implements H0.l, ECarXApiClient.Callback, H0.p {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f883a;

    public /* synthetic */ C0029a3(int i2) {
        this.f883a = i2;
    }

    @Override // H0.l
    public Object b(Object obj) {
        boolean z2 = true;
        switch (this.f883a) {
            case 0:
                String str = (String) obj;
                int i2 = MainActivity.u0;
                I0.f.e(str, "it");
                return O0.j.X0(str).toString();
            case 1:
                String str2 = (String) obj;
                int i3 = MainActivity.u0;
                I0.f.e(str2, "it");
                if (!O0.s.w0(str2, "MONITOR_") && !O0.j.x0(str2, "FALHOU", false) && !O0.j.x0(str2, "ERRO", false)) {
                    z2 = false;
                }
                return Boolean.valueOf(z2);
            case 2:
                Byte b = (Byte) obj;
                b.byteValue();
                int i4 = MainActivity.u0;
                return String.format("%02x", Arrays.copyOf(new Object[]{b}, 1));
            case 3:
                ((Boolean) obj).getClass();
                int i5 = MainActivity.u0;
                int[] iArr = CentralWatchdogService.d2;
                CentralWatchdogService centralWatchdogService = CentralWatchdogService.g2;
                if (centralWatchdogService != null) {
                    centralWatchdogService.f2190a.post(new RunnableC0169z0(centralWatchdogService, 9));
                }
                return v0.e.f4161c;
            case 4:
                ((Boolean) obj).getClass();
                int i6 = MainActivity.u0;
                int[] iArr2 = CentralWatchdogService.d2;
                CentralWatchdogService centralWatchdogService2 = CentralWatchdogService.g2;
                if (centralWatchdogService2 != null) {
                    centralWatchdogService2.f2190a.post(new RunnableC0169z0(centralWatchdogService2, 11));
                }
                List list = QuickAccessFloaterService.f2436j0;
                QuickAccessFloaterService quickAccessFloaterService = QuickAccessFloaterService.f2438l0;
                if (quickAccessFloaterService != null) {
                    quickAccessFloaterService.H();
                }
                return v0.e.f4161c;
            case 5:
            case 11:
            case Response.BAD /* 12 */:
            case 14:
            default:
                return ((ActivityInfo) obj).packageName;
            case 6:
                Byte b2 = (Byte) obj;
                b2.byteValue();
                return String.format("%02x", Arrays.copyOf(new Object[]{b2}, 1));
            case PlaybackState.STATE_ERROR /* 7 */:
                Map.Entry entry = (Map.Entry) obj;
                I0.f.e(entry, "it");
                return ((String) entry.getKey()) + '=' + ((Number) entry.getValue()).intValue();
            case Response.NO /* 8 */:
                String str3 = (String) obj;
                List list2 = QuickAccessFloaterService.f2436j0;
                I0.f.e(str3, "it");
                return O0.j.X0(str3).toString();
            case 9:
                String str4 = (String) obj;
                List list3 = QuickAccessFloaterService.f2436j0;
                I0.f.e(str4, "it");
                return Boolean.valueOf(O0.s.w0(str4, "RUNNING:"));
            case 10:
                String str5 = (String) obj;
                List list4 = QuickAccessFloaterService.f2436j0;
                I0.f.e(str5, "it");
                return "am force-stop '" + str5 + '\'';
            case 13:
                String str6 = (String) obj;
                I0.f.e(str6, "s");
                return "'" + O0.s.v0(str6, "'", "'\\''") + '\'';
            case 15:
                return ((ResolveInfo) obj).activityInfo;
        }
    }

    @Override // H0.p
    public Object c(Object obj, Object obj2) {
        int i2 = this.f883a;
        String str = (String) obj;
        int iIntValue = ((Integer) obj2).intValue();
        switch (i2) {
            case 11:
                I0.f.e(str, "c");
                return AbstractC0120p4.a(iIntValue, str);
            case Response.BAD /* 12 */:
                I0.f.e(str, "c");
                return AbstractC0120p4.a(iIntValue, str);
            default:
                I0.f.e(str, "c");
                try {
                    return new I1(5555).b(iIntValue, str);
                } catch (Exception e2) {
                    return "ADB_FAIL: " + e2.getMessage();
                }
        }
    }

    @Override // com.ecarx.eas.sdk.ECarXApiClient.Callback
    public void onAPIReady(boolean z2) {
        Log.i("MediaCenterBridge", "onAPIReady: " + z2);
        if (B3.f496g) {
            return;
        }
        if (z2) {
            Handler handler = B3.f500k;
            if (handler != null) {
                handler.post(new RunnableC0026a0(4));
                return;
            }
            return;
        }
        Handler handler2 = B3.f500k;
        if (handler2 != null) {
            handler2.postDelayed(new RunnableC0026a0(5), 2000L);
        }
    }
}
