package T;

import android.widget.Button;
import com.ex.auto.MainActivity;
import com.ex.auto.R;
import p012i.C0215e;

/* JADX INFO: renamed from: T.u3, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class RunnableC0147u3 implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1166a = 1;
    public final /* synthetic */ Object b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f1167c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Object f1168d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f1169e;

    public RunnableC0147u3(A.e eVar, C0215e c0215e, p012i.n nVar, p012i.l lVar) {
        this.f1169e = eVar;
        this.b = c0215e;
        this.f1167c = nVar;
        this.f1168d = lVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f1166a) {
            case 0:
                I0.k kVar = (I0.k) this.b;
                int i2 = kVar.f124a;
                Button button = (Button) this.f1167c;
                MainActivity mainActivity = (MainActivity) this.f1169e;
                if (i2 > 0) {
                    button.setText(mainActivity.getString(R.string.k_hold_to_restore_adb, Integer.valueOf(i2)));
                    kVar.f124a--;
                    mainActivity.f2387v.postDelayed(this, 1000L);
                    return;
                }
                button.setText((String) this.f1168d);
                U.a aVar = mainActivity.f2384t;
                if (aVar == null) {
                    I0.f.h("binding");
                    throw null;
                }
                aVar.f1291c.setEnabled(false);
                mainActivity.f2388w.execute(new G2(1, mainActivity));
                return;
            default:
                C0215e c0215e = (C0215e) this.b;
                if (c0215e != null) {
                    A.e eVar = (A.e) this.f1169e;
                    ((p012i.f) eVar.b).f3330z = true;
                    c0215e.b.c(false);
                    ((p012i.f) eVar.b).f3330z = false;
                }
                p012i.n nVar = (p012i.n) this.f1167c;
                if (nVar.isEnabled() && nVar.hasSubMenu()) {
                    ((p012i.l) this.f1168d).q(nVar, null, 4);
                    return;
                }
                return;
        }
    }

    public RunnableC0147u3(I0.k kVar, Button button, String str, MainActivity mainActivity) {
        this.b = kVar;
        this.f1167c = button;
        this.f1168d = str;
        this.f1169e = mainActivity;
    }
}
