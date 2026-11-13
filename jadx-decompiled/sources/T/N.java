package T;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.util.Log;
import android.widget.TextView;
import androidx.fragment.app.AbstractC0178f;
import com.ex.auto.BlackoutFloaterService;
import com.ex.auto.HomeFloatingWidgetsService;
import com.ex.auto.WifiFloaterService;
import com.geely.hvacstepperv2.TempStepperService;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class N extends BroadcastReceiver {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f696a;
    public final /* synthetic */ Object b;

    public /* synthetic */ N(Object obj, int i2) {
        this.f696a = i2;
        this.b = obj;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        Object obj = this.b;
        switch (this.f696a) {
            case 0:
                BlackoutFloaterService blackoutFloaterService = (BlackoutFloaterService) obj;
                if (blackoutFloaterService.f2138c) {
                    Log.i("BlackoutFloater", "Volume (broadcast) alterado — restaurando backlight");
                    blackoutFloaterService.e();
                }
                break;
            case 1:
                List list = HomeFloatingWidgetsService.f2262Q;
                ((HomeFloatingWidgetsService) obj).r();
                break;
            case 2:
                I0.f.e(context, "ctx");
                I0.f.e(intent, "intent");
                TextView textView = ((WifiFloaterService) obj).f2569c;
                if (textView != null) {
                    textView.setAlpha(intent.getIntExtra("alpha", 100) / 100.0f);
                }
                break;
            case 3:
                if ("com.geely.hvacstepperv2.PRESETS_CHANGED".equals(intent.getAction())) {
                    ((TempStepperService) obj).f2649n.post(new T0(this, 11));
                }
                break;
            default:
                ((AbstractC0178f) obj).h();
                break;
        }
    }
}
