package p014j;

import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.view.View;
import android.view.Window;
import androidx.appcompat.widget.Toolbar;

/* JADX INFO: loaded from: classes.dex */
public final class q1 implements InterfaceC0235j0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Toolbar f3662a;
    public int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public View f3663c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Drawable f3664d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Drawable f3665e;
    public Drawable f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f3666g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public CharSequence f3667h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public CharSequence f3668i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public CharSequence f3669j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Window.Callback f3670k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public boolean f3671l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public C0234j f3672m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f3673n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public Drawable f3674o;

    public final void a(int i2) {
        View view;
        int i3 = this.b ^ i2;
        this.b = i2;
        if (i3 != 0) {
            if ((i3 & 4) != 0) {
                if ((i2 & 4) != 0) {
                    b();
                }
                int i4 = this.b & 4;
                Toolbar toolbar = this.f3662a;
                if (i4 != 0) {
                    Drawable drawable = this.f;
                    if (drawable == null) {
                        drawable = this.f3674o;
                    }
                    toolbar.setNavigationIcon(drawable);
                } else {
                    toolbar.setNavigationIcon((Drawable) null);
                }
            }
            if ((i3 & 3) != 0) {
                c();
            }
            int i5 = i3 & 8;
            Toolbar toolbar2 = this.f3662a;
            if (i5 != 0) {
                if ((i2 & 8) != 0) {
                    toolbar2.setTitle(this.f3667h);
                    toolbar2.setSubtitle(this.f3668i);
                } else {
                    toolbar2.setTitle((CharSequence) null);
                    toolbar2.setSubtitle((CharSequence) null);
                }
            }
            if ((i3 & 16) == 0 || (view = this.f3663c) == null) {
                return;
            }
            if ((i2 & 16) != 0) {
                toolbar2.addView(view);
            } else {
                toolbar2.removeView(view);
            }
        }
    }

    public final void b() {
        if ((this.b & 4) != 0) {
            boolean zIsEmpty = TextUtils.isEmpty(this.f3669j);
            Toolbar toolbar = this.f3662a;
            if (zIsEmpty) {
                toolbar.setNavigationContentDescription(this.f3673n);
            } else {
                toolbar.setNavigationContentDescription(this.f3669j);
            }
        }
    }

    public final void c() {
        Drawable drawable;
        int i2 = this.b;
        if ((i2 & 2) == 0) {
            drawable = null;
        } else if ((i2 & 1) == 0 || (drawable = this.f3665e) == null) {
            drawable = this.f3664d;
        }
        this.f3662a.setLogo(drawable);
    }
}
