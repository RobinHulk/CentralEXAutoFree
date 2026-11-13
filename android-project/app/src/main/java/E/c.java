package E;

import android.graphics.Rect;
import java.util.Comparator;

/* JADX INFO: loaded from: classes.dex */
public final class c implements Comparator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Rect f61a = new Rect();
    public final Rect b = new Rect();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f62c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final p025p0.e f63d;

    public c(boolean z2, p025p0.e eVar) {
        this.f62c = z2;
        this.f63d = eVar;
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        this.f63d.getClass();
        Rect rect = this.f61a;
        ((p035z.e) obj).d(rect);
        Rect rect2 = this.b;
        ((p035z.e) obj2).d(rect2);
        int i2 = rect.top;
        int i3 = rect2.top;
        if (i2 < i3) {
            return -1;
        }
        if (i2 > i3) {
            return 1;
        }
        int i4 = rect.left;
        int i5 = rect2.left;
        boolean z2 = this.f62c;
        if (i4 < i5) {
            return z2 ? 1 : -1;
        }
        if (i4 > i5) {
            return z2 ? -1 : 1;
        }
        int i6 = rect.bottom;
        int i7 = rect2.bottom;
        if (i6 < i7) {
            return -1;
        }
        if (i6 > i7) {
            return 1;
        }
        int i8 = rect.right;
        int i9 = rect2.right;
        if (i8 < i9) {
            return z2 ? 1 : -1;
        }
        if (i8 > i9) {
            return z2 ? -1 : 1;
        }
        return 0;
    }
}
