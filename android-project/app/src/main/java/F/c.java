package F;

import android.os.Build;
import android.view.View;
import java.nio.ByteBuffer;
import p025p0.e;
import p034y.C0267a;
import p034y.C0269c;
import p034y.N;

/* JADX INFO: loaded from: classes.dex */
public abstract class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f86a;
    public int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f87c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Object f88d;

    public c() {
        if (e.f3923a == null) {
            e.f3923a = new e();
        }
    }

    public int a(int i2) {
        if (i2 < this.f87c) {
            return ((ByteBuffer) this.f88d).getShort(this.b + i2);
        }
        return 0;
    }

    public abstract Object b(View view);

    public abstract void c(View view, Object obj);

    public void d(View view, Object obj) {
        Object tag;
        C0269c c0269c;
        if (Build.VERSION.SDK_INT >= this.b) {
            c(view, obj);
            return;
        }
        if (Build.VERSION.SDK_INT >= this.b) {
            tag = b(view);
        } else {
            tag = view.getTag(this.f86a);
            if (!((Class) this.f88d).isInstance(tag)) {
                tag = null;
            }
        }
        if (e(tag, obj)) {
            View.AccessibilityDelegate accessibilityDelegateB = N.b(view);
            if (accessibilityDelegateB == null) {
                c0269c = null;
            } else {
                c0269c = accessibilityDelegateB instanceof C0267a ? ((C0267a) accessibilityDelegateB).f4237a : new C0269c(accessibilityDelegateB);
            }
            if (c0269c == null) {
                c0269c = new C0269c();
            }
            N.i(view, c0269c);
            view.setTag(this.f86a, obj);
            N.d(view, this.f87c);
        }
    }

    public abstract boolean e(Object obj, Object obj2);
}
