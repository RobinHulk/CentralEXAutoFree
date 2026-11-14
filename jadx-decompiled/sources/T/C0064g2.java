package T;

import android.widget.CompoundButton;
import com.ex.auto.MainActivity;
import com.google.android.material.switchmaterial.SwitchMaterial;

/* JADX INFO: renamed from: T.g2, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class C0064g2 implements CompoundButton.OnCheckedChangeListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f972a;
    public final /* synthetic */ MainActivity b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f973c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Object f974d;

    public /* synthetic */ C0064g2(MainActivity mainActivity, Object obj, Object obj2, int i2) {
        this.f972a = i2;
        this.b = mainActivity;
        this.f973c = obj;
        this.f974d = obj2;
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public final void onCheckedChanged(CompoundButton compoundButton, final boolean z2) {
        switch (this.f972a) {
            case 0:
                MainActivity mainActivity = this.b;
                if (!mainActivity.S) {
                    mainActivity.B0().edit().putBoolean((String) this.f973c, z2).apply();
                    H0.l lVar = (H0.l) this.f974d;
                    if (lVar != null) {
                        lVar.b(Boolean.valueOf(z2));
                    }
                    break;
                }
                break;
            default:
                final MainActivity mainActivity2 = this.b;
                if (!mainActivity2.S) {
                    Boolean boolValueOf = Boolean.valueOf(z2);
                    final SwitchMaterial switchMaterial = (SwitchMaterial) this.f974d;
                    ((H0.p) this.f973c).c(boolValueOf, new H0.a() { // from class: T.A2
                        @Override // H0.a
                        public final Object a() {
                            MainActivity mainActivity3 = mainActivity2;
                            mainActivity3.S = true;
                            switchMaterial.setChecked(true ^ z2);
                            mainActivity3.S = false;
                            return v0.e.f4161c;
                        }
                    });
                    break;
                }
                break;
        }
    }
}
