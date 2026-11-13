package T;

import android.widget.CompoundButton;
import com.ex.auto.MainActivity;

/* JADX INFO: renamed from: T.d2, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class C0046d2 implements CompoundButton.OnCheckedChangeListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f934a;
    public final /* synthetic */ Object b;

    public /* synthetic */ C0046d2(Object obj, int i2) {
        this.f934a = i2;
        this.b = obj;
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public final void onCheckedChanged(CompoundButton compoundButton, boolean z2) {
        Object obj = this.b;
        switch (this.f934a) {
            case 0:
                MainActivity mainActivity = (MainActivity) obj;
                U.a aVar = mainActivity.f2384t;
                if (aVar == null) {
                    I0.f.h("binding");
                    throw null;
                }
                aVar.q2.setEnabled(false);
                mainActivity.f2388w.execute(new RunnableC0040c2(mainActivity, z2, 3));
                return;
            default:
                int i2 = MainActivity.u0;
                ((H0.l) obj).b(Boolean.valueOf(z2));
                return;
        }
    }
}
