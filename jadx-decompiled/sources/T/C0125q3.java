package T;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.widget.Toast;
import com.ex.auto.MainActivity;
import com.ex.auto.R;

/* JADX INFO: renamed from: T.q3, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0125q3 extends BroadcastReceiver {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1110a;
    public final /* synthetic */ MainActivity b;

    public /* synthetic */ C0125q3(int i2, MainActivity mainActivity) {
        this.f1110a = i2;
        this.b = mainActivity;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        String stringExtra;
        MainActivity mainActivity = this.b;
        switch (this.f1110a) {
            case 0:
                String action = intent != null ? intent.getAction() : null;
                if (action != null) {
                    int iHashCode = action.hashCode();
                    if (iHashCode != -900680536) {
                        if (iHashCode == -310257715) {
                            if (action.equals("com.ex.auto.AUTO_PROXY_APPLIED") && (stringExtra = intent.getStringExtra("ip")) != null) {
                                String string = mainActivity.getString(R.string.k_auto_proxy_applied, stringExtra, Integer.valueOf(intent.getIntExtra("port", 8080)));
                                I0.f.d(string, "getString(...)");
                                int i2 = MainActivity.u0;
                                mainActivity.v("AutoProxy", string);
                                Toast.makeText(mainActivity, string, 0).show();
                            }
                        } else if (iHashCode == 374877271 && action.equals("com.ex.auto.USB_WATCHDOG_APPLIED")) {
                            int i3 = MainActivity.u0;
                            mainActivity.v("AutoUSB", "USB corrigido pelo watchdog");
                            M.d0.l(mainActivity, R.string.k_usb_auto_fixed, mainActivity, 0);
                        }
                        break;
                    } else if (action.equals("com.ex.auto.AUTO_ROUTE_APPLIED")) {
                        boolean booleanExtra = intent.getBooleanExtra("ok", false);
                        String string2 = mainActivity.getString(booleanExtra ? R.string.k_autoroute_applied_ok : R.string.k_autoroute_apply_error);
                        I0.f.b(string2);
                        int i4 = MainActivity.u0;
                        mainActivity.v("AutoRota", string2);
                        if (booleanExtra) {
                            mainActivity.f2359Q = true;
                            mainActivity.q2();
                        }
                        break;
                    }
                }
                break;
            case 1:
                int i5 = MainActivity.u0;
                mainActivity.v1();
                mainActivity.w1();
                break;
            default:
                int i6 = MainActivity.u0;
                mainActivity.x1();
                break;
        }
    }
}
