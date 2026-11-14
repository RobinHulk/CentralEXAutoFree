package p008e0;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.RippleDrawable;
import com.ex.auto.R;
import com.google.android.material.button.MaterialButton;
import p007e.AbstractC0201a;
import p025p0.f;
import p025p0.g;
import p025p0.k;
import p025p0.u;

/* JADX INFO: loaded from: classes.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final MaterialButton f3138a;
    public k b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f3139c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f3140d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f3141e;
    public int f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f3142g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f3143h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public PorterDuff.Mode f3144i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public ColorStateList f3145j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public ColorStateList f3146k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public ColorStateList f3147l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public g f3148m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public boolean f3149n = false;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public boolean f3150o = false;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public boolean f3151p = false;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public boolean f3152q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public RippleDrawable f3153r;

    public c(MaterialButton materialButton, k kVar) {
        this.f3138a = materialButton;
        this.b = kVar;
    }

    public final u a() {
        RippleDrawable rippleDrawable = this.f3153r;
        if (rippleDrawable == null || rippleDrawable.getNumberOfLayers() <= 1) {
            return null;
        }
        return this.f3153r.getNumberOfLayers() > 2 ? (u) this.f3153r.getDrawable(2) : (u) this.f3153r.getDrawable(1);
    }

    public final g b(boolean z2) {
        RippleDrawable rippleDrawable = this.f3153r;
        if (rippleDrawable == null || rippleDrawable.getNumberOfLayers() <= 0) {
            return null;
        }
        return (g) ((LayerDrawable) ((InsetDrawable) this.f3153r.getDrawable(0)).getDrawable()).getDrawable(!z2 ? 1 : 0);
    }

    public final void c(k kVar) {
        this.b = kVar;
        if (b(false) != null) {
            b(false).setShapeAppearanceModel(kVar);
        }
        if (b(true) != null) {
            b(true).setShapeAppearanceModel(kVar);
        }
        if (a() != null) {
            a().setShapeAppearanceModel(kVar);
        }
    }

    public final void d() {
        g gVarB = b(false);
        g gVarB2 = b(true);
        if (gVarB != null) {
            float f = this.f3143h;
            ColorStateList colorStateList = this.f3146k;
            gVarB.f3939a.f3931j = f;
            gVarB.invalidateSelf();
            f fVar = gVarB.f3939a;
            if (fVar.f3926d != colorStateList) {
                fVar.f3926d = colorStateList;
                gVarB.onStateChange(gVarB.getState());
            }
            if (gVarB2 != null) {
                float f2 = this.f3143h;
                int iV = this.f3149n ? AbstractC0201a.v(this.f3138a, R.attr.colorSurface) : 0;
                gVarB2.f3939a.f3931j = f2;
                gVarB2.invalidateSelf();
                ColorStateList colorStateListValueOf = ColorStateList.valueOf(iV);
                f fVar2 = gVarB2.f3939a;
                if (fVar2.f3926d != colorStateListValueOf) {
                    fVar2.f3926d = colorStateListValueOf;
                    gVarB2.onStateChange(gVarB2.getState());
                }
            }
        }
    }
}
