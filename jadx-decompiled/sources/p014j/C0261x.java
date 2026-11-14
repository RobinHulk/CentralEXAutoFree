package p014j;

import B.g;
import M.C0003d;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.ImageView;
import p005d.a;
import p007e.AbstractC0201a;
import p034y.N;

/* JADX INFO: renamed from: j.x, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0261x {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ImageView f3710a;
    public g1 b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f3711c = 0;

    public C0261x(ImageView imageView) {
        this.f3710a = imageView;
    }

    public final void a() {
        g1 g1Var;
        ImageView imageView = this.f3710a;
        Drawable drawable = imageView.getDrawable();
        if (drawable != null) {
            AbstractC0241m0.a(drawable);
        }
        if (drawable == null || (g1Var = this.b) == null) {
            return;
        }
        C0251s.e(drawable, g1Var, imageView.getDrawableState());
    }

    public final void b(AttributeSet attributeSet, int i2) {
        int resourceId;
        ImageView imageView = this.f3710a;
        Context context = imageView.getContext();
        int[] iArr = a.f;
        C0003d c0003dV = C0003d.v(context, attributeSet, iArr, i2);
        N.h(imageView, imageView.getContext(), iArr, attributeSet, (TypedArray) c0003dV.f215c, i2);
        try {
            Drawable drawable = imageView.getDrawable();
            TypedArray typedArray = (TypedArray) c0003dV.f215c;
            if (drawable == null && (resourceId = typedArray.getResourceId(1, -1)) != -1 && (drawable = AbstractC0201a.A(imageView.getContext(), resourceId)) != null) {
                imageView.setImageDrawable(drawable);
            }
            if (drawable != null) {
                AbstractC0241m0.a(drawable);
            }
            if (typedArray.hasValue(2)) {
                g.c(imageView, c0003dV.j(2));
            }
            if (typedArray.hasValue(3)) {
                g.d(imageView, AbstractC0241m0.c(typedArray.getInt(3, -1), null));
            }
        } finally {
            c0003dV.w();
        }
    }
}
