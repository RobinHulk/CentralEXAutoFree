package p014j;

import A.b;
import A.e;
import android.content.res.TypedArray;
import android.text.InputFilter;
import android.util.AttributeSet;
import android.widget.TextView;
import p005d.a;

/* JADX INFO: renamed from: j.v, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0257v {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final TextView f3700a;
    public final e b;

    public C0257v(TextView textView) {
        this.f3700a = textView;
        this.b = new e(textView);
    }

    public final InputFilter[] a(InputFilter[] inputFilterArr) {
        return ((b) this.b.b).y(inputFilterArr);
    }

    public final void b(AttributeSet attributeSet, int i2) {
        TypedArray typedArrayObtainStyledAttributes = this.f3700a.getContext().obtainStyledAttributes(attributeSet, a.f2912i, i2, 0);
        try {
            boolean z2 = typedArrayObtainStyledAttributes.hasValue(14) ? typedArrayObtainStyledAttributes.getBoolean(14, true) : true;
            typedArrayObtainStyledAttributes.recycle();
            d(z2);
        } catch (Throwable th) {
            typedArrayObtainStyledAttributes.recycle();
            throw th;
        }
    }

    public final void c(boolean z2) {
        ((b) this.b.b).c0(z2);
    }

    public final void d(boolean z2) {
        ((b) this.b.b).d0(z2);
    }
}
