package M;

import android.util.Log;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.WeakHashMap;
import p034y.AbstractC0290y;

/* JADX INFO: loaded from: classes.dex */
public abstract class e0 {

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static final List f219s = Collections.emptyList();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final View f220a;
    public WeakReference b;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f227j;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public RecyclerView f235r;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f221c = -1;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f222d = -1;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public long f223e = -1;
    public int f = -1;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f224g = -1;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public e0 f225h = null;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public e0 f226i = null;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final ArrayList f228k = null;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final List f229l = null;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f230m = 0;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public V f231n = null;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public boolean f232o = false;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f233p = 0;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f234q = -1;

    public e0(View view) {
        if (view == null) {
            throw new IllegalArgumentException("itemView may not be null");
        }
        this.f220a = view;
    }

    public final void a(int i2) {
        this.f227j = i2 | this.f227j;
    }

    public final int b() {
        int i2 = this.f224g;
        return i2 == -1 ? this.f221c : i2;
    }

    public final List c() {
        ArrayList arrayList;
        return ((this.f227j & 1024) != 0 || (arrayList = this.f228k) == null || arrayList.size() == 0) ? f219s : this.f229l;
    }

    public final boolean d(int i2) {
        return (i2 & this.f227j) != 0;
    }

    public final boolean e() {
        View view = this.f220a;
        return (view.getParent() == null || view.getParent() == this.f235r) ? false : true;
    }

    public final boolean f() {
        return (this.f227j & 1) != 0;
    }

    public final boolean g() {
        return (this.f227j & 4) != 0;
    }

    public final boolean h() {
        if ((this.f227j & 16) == 0) {
            WeakHashMap weakHashMap = p034y.N.f4222a;
            if (!AbstractC0290y.i(this.f220a)) {
                return true;
            }
        }
        return false;
    }

    public final boolean i() {
        return (this.f227j & 8) != 0;
    }

    public final boolean j() {
        return this.f231n != null;
    }

    public final boolean k() {
        return (this.f227j & 256) != 0;
    }

    public final boolean l() {
        return (this.f227j & 2) != 0;
    }

    public final void m(int i2, boolean z2) {
        if (this.f222d == -1) {
            this.f222d = this.f221c;
        }
        if (this.f224g == -1) {
            this.f224g = this.f221c;
        }
        if (z2) {
            this.f224g += i2;
        }
        this.f221c += i2;
        View view = this.f220a;
        if (view.getLayoutParams() != null) {
            ((P) view.getLayoutParams()).f171c = true;
        }
    }

    public final void n() {
        this.f227j = 0;
        this.f221c = -1;
        this.f222d = -1;
        this.f223e = -1L;
        this.f224g = -1;
        this.f230m = 0;
        this.f225h = null;
        this.f226i = null;
        ArrayList arrayList = this.f228k;
        if (arrayList != null) {
            arrayList.clear();
        }
        this.f227j &= -1025;
        this.f233p = 0;
        this.f234q = -1;
        RecyclerView.j(this);
    }

    public final void o(boolean z2) {
        int i2 = this.f230m;
        int i3 = z2 ? i2 - 1 : i2 + 1;
        this.f230m = i3;
        if (i3 < 0) {
            this.f230m = 0;
            Log.e("View", "isRecyclable decremented below 0: unmatched pair of setIsRecyable() calls for " + this);
            return;
        }
        if (!z2 && i3 == 1) {
            this.f227j |= 16;
        } else if (z2 && i3 == 0) {
            this.f227j &= -17;
        }
    }

    public final boolean p() {
        return (this.f227j & 128) != 0;
    }

    public final boolean q() {
        return (this.f227j & 32) != 0;
    }

    public final String toString() {
        StringBuilder sbI = d0.i(getClass().isAnonymousClass() ? "ViewHolder" : getClass().getSimpleName(), "{");
        sbI.append(Integer.toHexString(hashCode()));
        sbI.append(" position=");
        sbI.append(this.f221c);
        sbI.append(" id=");
        sbI.append(this.f223e);
        sbI.append(", oldPos=");
        sbI.append(this.f222d);
        sbI.append(", pLpos:");
        sbI.append(this.f224g);
        StringBuilder sb = new StringBuilder(sbI.toString());
        if (j()) {
            sb.append(" scrap ");
            sb.append(this.f232o ? "[changeScrap]" : "[attachedScrap]");
        }
        if (g()) {
            sb.append(" invalid");
        }
        if (!f()) {
            sb.append(" unbound");
        }
        if ((this.f227j & 2) != 0) {
            sb.append(" update");
        }
        if (i()) {
            sb.append(" removed");
        }
        if (p()) {
            sb.append(" ignored");
        }
        if (k()) {
            sb.append(" tmpDetached");
        }
        if (!h()) {
            sb.append(" not recyclable(" + this.f230m + ")");
        }
        if ((this.f227j & 512) != 0 || g()) {
            sb.append(" undefined adapter position");
        }
        if (this.f220a.getParent() == null) {
            sb.append(" no parent");
        }
        sb.append("}");
        return sb.toString();
    }
}
