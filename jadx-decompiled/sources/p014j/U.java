package p014j;

import android.graphics.Typeface;
import android.widget.TextView;
import java.lang.ref.WeakReference;
import java.util.WeakHashMap;
import p006d0.a;
import p026q.b;
import p034y.A;
import p034y.N;

/* JADX INFO: loaded from: classes.dex */
public final class U extends b {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ int f3496h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ int f3497i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ WeakReference f3498j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final /* synthetic */ Z f3499k;

    public U(Z z2, int i2, int i3, WeakReference weakReference) {
        this.f3499k = z2;
        this.f3496h = i2;
        this.f3497i = i3;
        this.f3498j = weakReference;
    }

    @Override // p026q.b
    public final void d(int i2) {
    }

    @Override // p026q.b
    public final void e(Typeface typeface) {
        int i2 = this.f3496h;
        if (i2 != -1) {
            typeface = Y.a(typeface, i2, (this.f3497i & 2) != 0);
        }
        Z z2 = this.f3499k;
        if (z2.f3515m) {
            z2.f3514l = typeface;
            TextView textView = (TextView) this.f3498j.get();
            if (textView != null) {
                WeakHashMap weakHashMap = N.f4222a;
                if (A.b(textView)) {
                    textView.post(new a(textView, typeface, z2.f3512j));
                } else {
                    textView.setTypeface(typeface, z2.f3512j);
                }
            }
        }
    }
}
