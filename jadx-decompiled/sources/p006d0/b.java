package p006d0;

import android.view.View;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes.dex */
public final class b extends A.b {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ BottomSheetBehavior f2933c;

    public b(BottomSheetBehavior bottomSheetBehavior) {
        this.f2933c = bottomSheetBehavior;
    }

    @Override // A.b
    public final int E() {
        BottomSheetBehavior bottomSheetBehavior = this.f2933c;
        return bottomSheetBehavior.f2705v ? bottomSheetBehavior.f2676F : bottomSheetBehavior.f2703t;
    }

    @Override // A.b
    public final void S(int i2) {
        if (i2 == 1) {
            BottomSheetBehavior bottomSheetBehavior = this.f2933c;
            if (bottomSheetBehavior.f2707x) {
                bottomSheetBehavior.z(1);
            }
        }
    }

    @Override // A.b
    public final void T(View view, int i2, int i3) {
        this.f2933c.u(i3);
    }

    /* JADX WARN: Code duplicated, block: B:22:0x004b  */
    @Override // A.b
    public final void U(View view, float f, float f2) {
        int i2;
        int i3 = 6;
        BottomSheetBehavior bottomSheetBehavior = this.f2933c;
        if (f2 < 0.0f) {
            if (bottomSheetBehavior.b) {
                i2 = bottomSheetBehavior.f2700q;
            } else {
                int top = view.getTop();
                int i4 = bottomSheetBehavior.f2701r;
                if (top > i4) {
                    i2 = i4;
                } else {
                    i2 = bottomSheetBehavior.f2699p;
                }
            }
            i3 = 3;
        } else if (bottomSheetBehavior.f2705v && bottomSheetBehavior.B(view, f2)) {
            if (Math.abs(f) >= Math.abs(f2) || f2 <= 500.0f) {
                if (view.getTop() > (bottomSheetBehavior.w() + bottomSheetBehavior.f2676F) / 2) {
                    i2 = bottomSheetBehavior.f2676F;
                    i3 = 5;
                } else {
                    if (bottomSheetBehavior.b) {
                        i2 = bottomSheetBehavior.f2700q;
                    } else if (Math.abs(view.getTop() - bottomSheetBehavior.f2699p) < Math.abs(view.getTop() - bottomSheetBehavior.f2701r)) {
                        i2 = bottomSheetBehavior.f2699p;
                    } else {
                        i2 = bottomSheetBehavior.f2701r;
                    }
                    i3 = 3;
                }
            } else {
                i2 = bottomSheetBehavior.f2676F;
                i3 = 5;
            }
        } else if (f2 == 0.0f || Math.abs(f) > Math.abs(f2)) {
            int top2 = view.getTop();
            if (!bottomSheetBehavior.b) {
                int i5 = bottomSheetBehavior.f2701r;
                if (top2 < i5) {
                    if (top2 < Math.abs(top2 - bottomSheetBehavior.f2703t)) {
                        i2 = bottomSheetBehavior.f2699p;
                        i3 = 3;
                    } else {
                        i2 = bottomSheetBehavior.f2701r;
                    }
                } else if (Math.abs(top2 - i5) < Math.abs(top2 - bottomSheetBehavior.f2703t)) {
                    i2 = bottomSheetBehavior.f2701r;
                } else {
                    i2 = bottomSheetBehavior.f2703t;
                    i3 = 4;
                }
            } else if (Math.abs(top2 - bottomSheetBehavior.f2700q) < Math.abs(top2 - bottomSheetBehavior.f2703t)) {
                i2 = bottomSheetBehavior.f2700q;
                i3 = 3;
            } else {
                i2 = bottomSheetBehavior.f2703t;
                i3 = 4;
            }
        } else {
            if (bottomSheetBehavior.b) {
                i2 = bottomSheetBehavior.f2703t;
            } else {
                int top3 = view.getTop();
                if (Math.abs(top3 - bottomSheetBehavior.f2701r) < Math.abs(top3 - bottomSheetBehavior.f2703t)) {
                    i2 = bottomSheetBehavior.f2701r;
                } else {
                    i2 = bottomSheetBehavior.f2703t;
                }
            }
            i3 = 4;
        }
        bottomSheetBehavior.C(view, i3, i2, true);
    }

    @Override // A.b
    public final boolean h0(View view, int i2) {
        BottomSheetBehavior bottomSheetBehavior = this.f2933c;
        int i3 = bottomSheetBehavior.f2708y;
        if (i3 == 1 || bottomSheetBehavior.f2683M) {
            return false;
        }
        if (i3 == 3 && bottomSheetBehavior.f2681K == i2) {
            WeakReference weakReference = bottomSheetBehavior.f2678H;
            View view2 = weakReference != null ? (View) weakReference.get() : null;
            if (view2 != null && view2.canScrollVertically(-1)) {
                return false;
            }
        }
        WeakReference weakReference2 = bottomSheetBehavior.f2677G;
        return weakReference2 != null && weakReference2.get() == view;
    }

    @Override // A.b
    public final int k(View view, int i2) {
        return view.getLeft();
    }

    @Override // A.b
    public final int l(View view, int i2) {
        BottomSheetBehavior bottomSheetBehavior = this.f2933c;
        int iW = bottomSheetBehavior.w();
        int i3 = bottomSheetBehavior.f2705v ? bottomSheetBehavior.f2676F : bottomSheetBehavior.f2703t;
        if (i2 < iW) {
            return iW;
        }
        return i2 > i3 ? i3 : i2;
    }
}
