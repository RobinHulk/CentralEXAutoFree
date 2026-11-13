package T;

import android.view.View;
import android.widget.CheckBox;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.ex.auto.AppPipFloaterService;
import com.ex.auto.HomeFloatingWidgetsService;
import com.ex.auto.MainActivity;
import com.ex.auto.QuickAccessFloaterService;
import com.ex.auto.R;
import com.ex.auto.SplitFloaterService;
import java.util.List;
import p007e.C0205e;

/* JADX INFO: renamed from: T.u, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class ViewOnClickListenerC0143u implements View.OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1156a;
    public final /* synthetic */ Object b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f1157c;

    public /* synthetic */ ViewOnClickListenerC0143u(Object obj, int i2, Object obj2) {
        this.f1156a = i2;
        this.b = obj;
        this.f1157c = obj2;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i2 = 1;
        int i3 = 0;
        switch (this.f1156a) {
            case 0:
                AppPipFloaterService appPipFloaterService = AppPipFloaterService.f2114u;
                ((AppPipFloaterService) this.b).e((String) this.f1157c);
                break;
            case 1:
                List list = HomeFloatingWidgetsService.f2262Q;
                String str = ((B1) this.f1157c).f480a;
                ((HomeFloatingWidgetsService) this.b).getClass();
                new Thread(new T0(str, 3)).start();
                break;
            case 2:
                int i4 = MainActivity.u0;
                MainActivity mainActivity = (MainActivity) this.b;
                boolean z2 = mainActivity.B0().getBoolean("aeb_restore_on_boot", false);
                TextView textView = (TextView) this.f1157c;
                if (!z2) {
                    C0081j1 c0081j1 = new C0081j1(mainActivity);
                    String string = mainActivity.getString(R.string.k_aeb_restore_title);
                    C0205e c0205e = (C0205e) c0081j1.b;
                    c0205e.f2991d = string;
                    c0205e.f = mainActivity.getString(R.string.k_aeb_explanation) + "\n\n" + mainActivity.getString(R.string.k_aeb_reapply_question) + "\n\n" + mainActivity.getString(R.string.k_use_responsibly_message);
                    c0081j1.h(mainActivity.getString(R.string.common_confirm), new DialogInterfaceOnClickListenerC0055f(mainActivity, 2, textView));
                    c0081j1.f(mainActivity.getString(R.string.common_cancel), null);
                    TextView textView2 = (TextView) c0081j1.j().findViewById(android.R.id.message);
                    if (textView2 != null) {
                        textView2.setTextColor(-1);
                    }
                } else {
                    mainActivity.B0().edit().putBoolean("aeb_restore_on_boot", false).apply();
                    MainActivity.J(mainActivity, textView);
                }
                break;
            case 3:
                int i5 = MainActivity.u0;
                MainActivity mainActivity2 = (MainActivity) this.b;
                String string2 = mainActivity2.getString(R.string.k_escolher_app);
                I0.f.d(string2, "getString(...)");
                C c2 = (C) this.f1157c;
                mainActivity2.l0(string2, c2.b, new S2(mainActivity2, c2, i2));
                break;
            case 4:
                List list2 = QuickAccessFloaterService.f2436j0;
                ((H0.a) this.b).a();
                ((QuickAccessFloaterService) this.f1157c).M(3000L);
                break;
            case 5:
                List list3 = QuickAccessFloaterService.f2436j0;
                CheckBox checkBox = (CheckBox) this.b;
                checkBox.setChecked(true ^ checkBox.isChecked());
                ((C0072h4) this.f1157c).b(Boolean.valueOf(checkBox.isChecked()));
                break;
            default:
                SplitFloaterService splitFloaterService = (SplitFloaterService) this.b;
                String str2 = (String) this.f1157c;
                if (!splitFloaterService.f2517o) {
                    LinearLayout linearLayout = splitFloaterService.f2508e;
                    if (linearLayout != null) {
                        linearLayout.setVisibility(8);
                    }
                    splitFloaterService.f2516n = false;
                    splitFloaterService.f2517o = true;
                    splitFloaterService.h();
                    String string3 = splitFloaterService.getString(R.string.k_opening);
                    I0.f.d(string3, "getString(...)");
                    splitFloaterService.g(string3);
                    new Thread(new u4(splitFloaterService, str2, i3)).start();
                } else {
                    String string4 = splitFloaterService.getString(R.string.k_toast_wait_processing);
                    I0.f.d(string4, "getString(...)");
                    splitFloaterService.g(string4);
                }
                break;
        }
    }
}
