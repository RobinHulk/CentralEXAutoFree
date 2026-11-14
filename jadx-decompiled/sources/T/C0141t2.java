package T;

import android.widget.TextView;
import com.ex.auto.MainActivity;

/* JADX INFO: renamed from: T.t2, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class C0141t2 implements H0.l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1152a;
    public final /* synthetic */ MainActivity b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ TextView f1153c;

    public /* synthetic */ C0141t2(MainActivity mainActivity, TextView textView, int i2) {
        this.f1152a = i2;
        this.b = mainActivity;
        this.f1153c = textView;
    }

    @Override // H0.l
    public final Object b(Object obj) {
        TextView textView = this.f1153c;
        MainActivity mainActivity = this.b;
        String str = (String) obj;
        switch (this.f1152a) {
            case 0:
                int i2 = MainActivity.u0;
                I0.f.e(str, "progress");
                mainActivity.f2387v.post(new RunnableC0168z(mainActivity, textView, str, 11));
                break;
            default:
                int i3 = MainActivity.u0;
                I0.f.e(str, "txt");
                mainActivity.f2387v.post(new RunnableC0053e3(textView, str, 0));
                break;
        }
        return v0.e.f4161c;
    }
}
