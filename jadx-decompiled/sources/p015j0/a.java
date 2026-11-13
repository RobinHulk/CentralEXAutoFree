package p015j0;

import android.content.Context;
import android.graphics.Color;
import android.util.TypedValue;
import com.ex.auto.R;
import p007e.AbstractC0201a;

/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f3731a;
    public final int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f3732c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final float f3733d;

    public a(Context context) {
        TypedValue typedValueN = AbstractC0201a.N(context, R.attr.elevationOverlayEnabled);
        this.f3731a = (typedValueN == null || typedValueN.type != 18 || typedValueN.data == 0) ? false : true;
        TypedValue typedValueN2 = AbstractC0201a.N(context, R.attr.elevationOverlayColor);
        this.b = typedValueN2 != null ? typedValueN2.data : 0;
        TypedValue typedValueN3 = AbstractC0201a.N(context, R.attr.colorSurface);
        this.f3732c = typedValueN3 != null ? typedValueN3.data : 0;
        this.f3733d = context.getResources().getDisplayMetrics().density;
    }

    public final int a(int i2, float f) {
        if (!this.f3731a || p028r.a.d(i2, 255) != this.f3732c) {
            return i2;
        }
        float f2 = this.f3733d;
        float fMin = 0.0f;
        if (f2 > 0.0f && f > 0.0f) {
            fMin = Math.min(((((float) Math.log1p(f / f2)) * 4.5f) + 2.0f) / 100.0f, 1.0f);
        }
        return p028r.a.d(AbstractC0201a.F(p028r.a.d(i2, 255), this.b, fMin), Color.alpha(i2));
    }
}
