package p019l0;

import B.c;
import android.R;
import android.content.res.ColorStateList;
import p007e.AbstractC0201a;
import p014j.C;

/* JADX INFO: loaded from: classes.dex */
public final class a extends C {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final int[][] f3834g = {new int[]{R.attr.state_enabled, R.attr.state_checked}, new int[]{R.attr.state_enabled, -16842912}, new int[]{-16842910, R.attr.state_checked}, new int[]{-16842910, -16842912}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public ColorStateList f3835e;
    public boolean f;

    private ColorStateList getMaterialThemeColorsTintList() {
        if (this.f3835e == null) {
            int iV = AbstractC0201a.v(this, com.ex.auto.R.attr.colorControlActivated);
            int iV2 = AbstractC0201a.v(this, com.ex.auto.R.attr.colorOnSurface);
            int iV3 = AbstractC0201a.v(this, com.ex.auto.R.attr.colorSurface);
            this.f3835e = new ColorStateList(f3834g, new int[]{AbstractC0201a.F(iV3, iV, 1.0f), AbstractC0201a.F(iV3, iV2, 0.54f), AbstractC0201a.F(iV3, iV2, 0.38f), AbstractC0201a.F(iV3, iV2, 0.38f)});
        }
        return this.f3835e;
    }

    @Override // android.widget.TextView, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.f && c.a(this) == null) {
            setUseMaterialThemeColors(true);
        }
    }

    public void setUseMaterialThemeColors(boolean z2) {
        this.f = z2;
        if (z2) {
            c.c(this, getMaterialThemeColorsTintList());
        } else {
            c.c(this, null);
        }
    }
}
