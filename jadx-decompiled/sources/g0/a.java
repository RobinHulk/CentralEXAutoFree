package g0;

import android.graphics.Typeface;
import com.google.android.material.chip.Chip;
import p007e.AbstractC0201a;

/* JADX INFO: loaded from: classes.dex */
public final class a extends AbstractC0201a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3157a;
    public final /* synthetic */ Object b;

    public /* synthetic */ a(Object obj, int i2) {
        this.f3157a = i2;
        this.b = obj;
    }

    private final void T(int i2) {
    }

    @Override // p007e.AbstractC0201a
    public final void J(int i2) {
        switch (this.f3157a) {
            case 0:
                break;
            default:
                p017k0.h hVar = (p017k0.h) this.b;
                hVar.f3792d = true;
                p017k0.g gVar = (p017k0.g) hVar.f3793e.get();
                if (gVar != null) {
                    e eVar = (e) gVar;
                    eVar.s();
                    eVar.invalidateSelf();
                }
                break;
        }
    }

    @Override // p007e.AbstractC0201a
    public final void K(Typeface typeface, boolean z2) {
        switch (this.f3157a) {
            case 0:
                Chip chip = (Chip) this.b;
                e eVar = chip.f2725e;
                chip.setText(eVar.f3166C0 ? eVar.f3169E : chip.getText());
                chip.requestLayout();
                chip.invalidate();
                break;
            default:
                if (!z2) {
                    p017k0.h hVar = (p017k0.h) this.b;
                    hVar.f3792d = true;
                    p017k0.g gVar = (p017k0.g) hVar.f3793e.get();
                    if (gVar != null) {
                        e eVar2 = (e) gVar;
                        eVar2.s();
                        eVar2.invalidateSelf();
                    }
                    break;
                }
                break;
        }
    }
}
