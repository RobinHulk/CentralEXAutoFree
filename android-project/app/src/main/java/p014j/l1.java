package p014j;

import android.content.Context;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.appcompat.widget.Toolbar;
import java.util.ArrayList;
import p011h.b;
import p012i.E;
import p012i.l;
import p012i.n;
import p012i.y;

/* JADX INFO: loaded from: classes.dex */
public final class l1 implements y {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public l f3639a;
    public n b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Toolbar f3640c;

    public l1(Toolbar toolbar) {
        this.f3640c = toolbar;
    }

    @Override // p012i.y
    public final void a(l lVar, boolean z2) {
    }

    @Override // p012i.y
    public final boolean c(n nVar) {
        Toolbar toolbar = this.f3640c;
        KeyEvent.Callback callback = toolbar.f1600i;
        if (callback instanceof b) {
            ((b) callback).d();
        }
        toolbar.removeView(toolbar.f1600i);
        toolbar.removeView(toolbar.f1599h);
        toolbar.f1600i = null;
        ArrayList arrayList = toolbar.f1582E;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            toolbar.addView((View) arrayList.get(size));
        }
        arrayList.clear();
        this.b = null;
        toolbar.requestLayout();
        nVar.f3367C = false;
        nVar.f3379n.p(false);
        toolbar.u();
        return true;
    }

    @Override // p012i.y
    public final boolean d() {
        return false;
    }

    @Override // p012i.y
    public final void e(Context context, l lVar) {
        n nVar;
        l lVar2 = this.f3639a;
        if (lVar2 != null && (nVar = this.b) != null) {
            lVar2.d(nVar);
        }
        this.f3639a = lVar;
    }

    @Override // p012i.y
    public final boolean h(n nVar) {
        Toolbar toolbar = this.f3640c;
        toolbar.c();
        ViewParent parent = toolbar.f1599h.getParent();
        if (parent != toolbar) {
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(toolbar.f1599h);
            }
            toolbar.addView(toolbar.f1599h);
        }
        View actionView = nVar.getActionView();
        toolbar.f1600i = actionView;
        this.b = nVar;
        ViewParent parent2 = actionView.getParent();
        if (parent2 != toolbar) {
            if (parent2 instanceof ViewGroup) {
                ((ViewGroup) parent2).removeView(toolbar.f1600i);
            }
            m1 m1VarH = Toolbar.h();
            m1VarH.f3643a = (toolbar.f1605n & 112) | 8388611;
            m1VarH.b = 2;
            toolbar.f1600i.setLayoutParams(m1VarH);
            toolbar.addView(toolbar.f1600i);
        }
        for (int childCount = toolbar.getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = toolbar.getChildAt(childCount);
            if (((m1) childAt.getLayoutParams()).b != 2 && childAt != toolbar.f1594a) {
                toolbar.removeViewAt(childCount);
                toolbar.f1582E.add(childAt);
            }
        }
        toolbar.requestLayout();
        nVar.f3367C = true;
        nVar.f3379n.p(false);
        KeyEvent.Callback callback = toolbar.f1600i;
        if (callback instanceof b) {
            ((b) callback).b();
        }
        toolbar.u();
        return true;
    }

    @Override // p012i.y
    public final void i() {
        if (this.b != null) {
            l lVar = this.f3639a;
            if (lVar != null) {
                int size = lVar.f.size();
                for (int i2 = 0; i2 < size; i2++) {
                    if (this.f3639a.getItem(i2) == this.b) {
                        return;
                    }
                }
            }
            c(this.b);
        }
    }

    @Override // p012i.y
    public final boolean j(E e2) {
        return false;
    }
}
