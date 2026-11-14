package T;

import android.view.View;
import com.ex.auto.MainActivity;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class K2 implements View.OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f657a = 1;
    public final /* synthetic */ MainActivity b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ String f658c;

    public /* synthetic */ K2(MainActivity mainActivity, String str) {
        this.b = mainActivity;
        this.f658c = str;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        String str = this.f658c;
        MainActivity mainActivity = this.b;
        switch (this.f657a) {
            case 0:
                int i2 = MainActivity.u0;
                if (!I0.f.a(str, "split_screen")) {
                    mainActivity.v0();
                } else {
                    mainActivity.x0();
                }
                break;
            default:
                int i3 = MainActivity.u0;
                C0076i2 c0076i2 = new C0076i2(9, mainActivity);
                mainActivity.getClass();
                mainActivity.f2388w.execute(new RunnableC0168z(mainActivity, str, c0076i2, 10));
                break;
        }
    }

    public /* synthetic */ K2(String str, MainActivity mainActivity) {
        this.f658c = str;
        this.b = mainActivity;
    }
}
