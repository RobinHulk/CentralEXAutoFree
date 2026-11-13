package p014j;

import android.content.Context;
import android.graphics.drawable.Drawable;
import com.ex.auto.R;
import p012i.C0212b;
import s.b;

/* JADX INFO: renamed from: j.i, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0232i extends C0263y implements InterfaceC0236k {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ C0234j f3607d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0232i(C0234j c0234j, Context context) {
        super(context, null, R.attr.actionOverflowButtonStyle);
        this.f3607d = c0234j;
        setClickable(true);
        setFocusable(true);
        setVisibility(0);
        setEnabled(true);
        r1.a(this, getContentDescription());
        setOnTouchListener(new C0212b(this, this));
    }

    @Override // p014j.InterfaceC0236k
    public final boolean a() {
        return false;
    }

    @Override // p014j.InterfaceC0236k
    public final boolean b() {
        return false;
    }

    @Override // android.view.View
    public final boolean performClick() {
        if (super.performClick()) {
            return true;
        }
        playSoundEffect(0);
        this.f3607d.l();
        return true;
    }

    @Override // android.widget.ImageView
    public final boolean setFrame(int i2, int i3, int i4, int i5) {
        boolean frame = super.setFrame(i2, i3, i4, i5);
        Drawable drawable = getDrawable();
        Drawable background = getBackground();
        if (drawable != null && background != null) {
            int width = getWidth();
            int height = getHeight();
            int iMax = Math.max(width, height) / 2;
            int paddingLeft = (width + (getPaddingLeft() - getPaddingRight())) / 2;
            int paddingTop = (height + (getPaddingTop() - getPaddingBottom())) / 2;
            b.f(background, paddingLeft - iMax, paddingTop - iMax, paddingLeft + iMax, paddingTop + iMax);
        }
        return frame;
    }
}
