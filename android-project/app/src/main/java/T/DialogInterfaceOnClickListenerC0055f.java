package T;

import android.car.hardware.property.CarPropertyManager;
import android.content.DialogInterface;
import android.widget.RadioButton;
import android.widget.TextView;
import com.ex.auto.AcProgramEditActivity;
import com.ex.auto.MainActivity;
import com.ex.auto.QuickAccessFloaterService;
import com.ex.auto.R;
import com.ex.auto.TempBattPillFloaterService;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: renamed from: T.f, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class DialogInterfaceOnClickListenerC0055f implements DialogInterface.OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f953a;
    public final /* synthetic */ Object b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f954c;

    public /* synthetic */ DialogInterfaceOnClickListenerC0055f(Object obj, int i2, Object obj2) {
        this.f953a = i2;
        this.b = obj;
        this.f954c = obj2;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i2) {
        String str;
        int i3 = 0;
        switch (this.f953a) {
            case 0:
                AcProgramEditActivity acProgramEditActivity = (AcProgramEditActivity) this.b;
                acProgramEditActivity.f2108u.add(new C0091l("recirc", ((RadioButton) this.f954c).isChecked() ? 1.0d : 0.0d));
                acProgramEditActivity.t();
                return;
            case 1:
                MainActivity mainActivity = (MainActivity) this.b;
                U.a aVar = mainActivity.f2384t;
                if (aVar == null) {
                    I0.f.h("binding");
                    throw null;
                }
                aVar.f1311n.setEnabled(false);
                U.a aVar2 = mainActivity.f2384t;
                if (aVar2 == null) {
                    I0.f.h("binding");
                    throw null;
                }
                aVar2.R2.setText(mainActivity.getString(R.string.update_downloading));
                mainActivity.f2388w.execute(new U2(mainActivity, (C0119p3) this.f954c, i3));
                return;
            case 2:
                int i4 = MainActivity.u0;
                MainActivity mainActivity2 = (MainActivity) this.b;
                mainActivity2.B0().edit().putBoolean("aeb_restore_on_boot", true).apply();
                MainActivity.J(mainActivity2, (TextView) this.f954c);
                return;
            case 3:
                int i5 = MainActivity.u0;
                if (i2 == 0) {
                    str = "";
                } else {
                    str = (String) ((v0.a) ((List) this.f954c).get(i2 - 1)).f4155a;
                }
                ((H0.l) this.b).b(str);
                return;
            case 4:
                List list = QuickAccessFloaterService.f2436j0;
                QuickAccessFloaterService quickAccessFloaterService = (QuickAccessFloaterService) this.b;
                quickAccessFloaterService.getClass();
                new Thread(new H((CarPropertyManager) this.f954c, 28, quickAccessFloaterService)).start();
                return;
            default:
                TempBattPillFloaterService tempBattPillFloaterService = (TempBattPillFloaterService) this.b;
                ArrayList arrayList = (ArrayList) this.f954c;
                TempBattPillFloaterService tempBattPillFloaterService2 = TempBattPillFloaterService.f2524u;
                int iIntValue = ((Number) arrayList.get(i2)).intValue();
                tempBattPillFloaterService.getClass();
                C0085k c0085kT = Y.T(tempBattPillFloaterService, iIntValue);
                if (c0085kT == null) {
                    return;
                }
                tempBattPillFloaterService.f2528e.removeCallbacks(tempBattPillFloaterService.f2536n);
                tempBattPillFloaterService.f2534l = c0085kT;
                tempBattPillFloaterService.f2535m = 0;
                tempBattPillFloaterService.f2533k = Integer.valueOf(iIntValue);
                TextView textView = tempBattPillFloaterService.f2526c;
                if (textView != null) {
                    textView.setTextColor(-16711936);
                }
                tempBattPillFloaterService.f2528e.post(tempBattPillFloaterService.f2536n);
                return;
        }
    }
}
