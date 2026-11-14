package M;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.ViewGroup;

/* JADX INFO: loaded from: classes.dex */
public class P extends ViewGroup.MarginLayoutParams {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public e0 f170a;
    public final Rect b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f171c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f172d;

    public P(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.b = new Rect();
        this.f171c = true;
        this.f172d = false;
    }

    public P(int i2, int i3) {
        super(i2, i3);
        this.b = new Rect();
        this.f171c = true;
        this.f172d = false;
    }

    public P(ViewGroup.MarginLayoutParams marginLayoutParams) {
        super(marginLayoutParams);
        this.b = new Rect();
        this.f171c = true;
        this.f172d = false;
    }

    public P(ViewGroup.LayoutParams layoutParams) {
        super(layoutParams);
        this.b = new Rect();
        this.f171c = true;
        this.f172d = false;
    }

    public P(P p2) {
        super((ViewGroup.LayoutParams) p2);
        this.b = new Rect();
        this.f171c = true;
        this.f172d = false;
    }
}
