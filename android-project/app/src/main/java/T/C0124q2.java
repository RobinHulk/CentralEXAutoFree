package T;

import android.widget.LinearLayout;
import android.widget.TextView;
import com.ex.auto.MainActivity;
import com.ex.auto.R;

/* JADX INFO: renamed from: T.q2, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class C0124q2 implements H0.l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1107a = 0;
    public final /* synthetic */ MainActivity b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ LinearLayout f1108c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ float f1109d;

    public /* synthetic */ C0124q2(LinearLayout linearLayout, MainActivity mainActivity, float f) {
        this.f1108c = linearLayout;
        this.b = mainActivity;
        this.f1109d = f;
    }

    @Override // H0.l
    public final Object b(Object obj) {
        LinearLayout linearLayout = this.f1108c;
        float f = this.f1109d;
        MainActivity mainActivity = this.b;
        LinearLayout linearLayout2 = (LinearLayout) obj;
        switch (this.f1107a) {
            case 0:
                int i2 = MainActivity.u0;
                I0.f.e(linearLayout2, "$this$addCard");
                linearLayout2.addView(linearLayout, new LinearLayout.LayoutParams(-1, -2));
                String string = mainActivity.getString(R.string.k_drag_to_see_qa_resize_hint);
                I0.f.d(string, "getString(...)");
                linearLayout2.addView(MainActivity.F(mainActivity, f, string));
                break;
            default:
                int i3 = MainActivity.u0;
                I0.f.e(linearLayout2, "$this$addCard");
                String string2 = mainActivity.getString(R.string.k_qa_preview_header);
                I0.f.d(string2, "getString(...)");
                linearLayout2.addView(MainActivity.G(mainActivity, string2));
                String string3 = mainActivity.getString(R.string.k_floating_side_menu_desc);
                I0.f.d(string3, "getString(...)");
                linearLayout2.addView(MainActivity.F(mainActivity, f, string3));
                LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
                layoutParams.topMargin = (int) (12 * f);
                linearLayout2.addView(linearLayout, layoutParams);
                String string4 = mainActivity.getString(R.string.k_qa_preview_hint);
                I0.f.d(string4, "getString(...)");
                TextView textViewF = MainActivity.F(mainActivity, f, string4);
                textViewF.setPadding(0, (int) (8 * f), 0, 0);
                linearLayout2.addView(textViewF);
                break;
        }
        return v0.e.f4161c;
    }

    public /* synthetic */ C0124q2(MainActivity mainActivity, LinearLayout linearLayout, float f) {
        this.b = mainActivity;
        this.f1108c = linearLayout;
        this.f1109d = f;
    }
}
