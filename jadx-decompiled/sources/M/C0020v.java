package M;

import android.view.View;

/* JADX INFO: renamed from: M.v, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0020v {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public C f354a;
    public int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f355c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f356d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f357e;

    public C0020v() {
        d();
    }

    public final void a() {
        this.f355c = this.f356d ? this.f354a.g() : this.f354a.k();
    }

    public final void b(View view, int i2) {
        if (this.f356d) {
            this.f355c = this.f354a.m() + this.f354a.b(view);
        } else {
            this.f355c = this.f354a.e(view);
        }
        this.b = i2;
    }

    public final void c(View view, int i2) {
        int iM = this.f354a.m();
        if (iM >= 0) {
            b(view, i2);
            return;
        }
        this.b = i2;
        if (!this.f356d) {
            int iE = this.f354a.e(view);
            int iK = iE - this.f354a.k();
            this.f355c = iE;
            if (iK > 0) {
                int iG = (this.f354a.g() - Math.min(0, (this.f354a.g() - iM) - this.f354a.b(view))) - (this.f354a.c(view) + iE);
                if (iG < 0) {
                    this.f355c -= Math.min(iK, -iG);
                    return;
                }
                return;
            }
            return;
        }
        int iG2 = (this.f354a.g() - iM) - this.f354a.b(view);
        this.f355c = this.f354a.g() - iG2;
        if (iG2 > 0) {
            int iC = this.f355c - this.f354a.c(view);
            int iK2 = this.f354a.k();
            int iMin = iC - (Math.min(this.f354a.e(view) - iK2, 0) + iK2);
            if (iMin < 0) {
                this.f355c = Math.min(iG2, -iMin) + this.f355c;
            }
        }
    }

    public final void d() {
        this.b = -1;
        this.f355c = Integer.MIN_VALUE;
        this.f356d = false;
        this.f357e = false;
    }

    public final String toString() {
        return "AnchorInfo{mPosition=" + this.b + ", mCoordinate=" + this.f355c + ", mLayoutFromEnd=" + this.f356d + ", mValid=" + this.f357e + '}';
    }
}
