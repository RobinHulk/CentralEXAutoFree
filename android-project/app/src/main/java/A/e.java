package A;

import T.RunnableC0147u3;
import T.RunnableC0168z;
import android.animation.Animator;
import android.content.ClipData;
import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.view.ContentInfo;
import android.view.MenuItem;
import android.view.View;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.EditText;
import android.widget.TextView;
import androidx.appcompat.widget.ActionMenuView;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.emoji2.text.h;
import androidx.fragment.app.P;
import androidx.fragment.app.r;
import com.google.android.material.behavior.SwipeDismissBehavior;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import ecarx.xsf.mediacenter.session.PlaybackState;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.WeakHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.LinkedBlockingDeque;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import p012i.C0215e;
import p012i.E;
import p012i.f;
import p012i.j;
import p012i.l;
import p012i.n;
import p012i.x;
import p014j.C0234j;
import p014j.F0;
import p014j.InterfaceC0240m;
import p014j.j1;
import p034y.AbstractC0270d;
import p034y.AbstractC0290y;
import p034y.AbstractC0291z;
import p034y.C0274h;
import p034y.InterfaceC0271e;
import p034y.InterfaceC0273g;
import p034y.InterfaceC0283q;
import p034y.N;
import p034y.i0;
import p034y.j0;
import p035z.p;

/* JADX INFO: loaded from: classes.dex */
public class e implements h, p031u.a, p, F0, x, j, InterfaceC0283q, InterfaceC0271e, InterfaceC0273g {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static e f3c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f4a;
    public Object b;

    public /* synthetic */ e(Object obj, int i2) {
        this.f4a = i2;
        this.b = obj;
    }

    public static e v(boolean z2, int i2, int i3, int i4, int i5) {
        return new e(AccessibilityNodeInfo.CollectionItemInfo.obtain(i2, i3, i4, i5, false, z2), 28);
    }

    @Override // p012i.x
    public void a(l lVar, boolean z2) {
        if (lVar instanceof E) {
            ((E) lVar).f3288z.k().c(false);
        }
        x xVar = ((C0234j) this.b).f3612e;
        if (xVar != null) {
            xVar.a(lVar, z2);
        }
    }

    @Override // p012i.j
    public void b(l lVar) {
        j1 j1Var = ((ActionMenuView) this.b).f1522u;
        if (j1Var != null) {
            j1Var.b(lVar);
        }
    }

    @Override // p034y.InterfaceC0273g
    public ClipData c() {
        return ((ContentInfo) this.b).getClip();
    }

    @Override // p035z.p
    public boolean d(View view) {
        SwipeDismissBehavior swipeDismissBehavior = (SwipeDismissBehavior) this.b;
        if (!swipeDismissBehavior.r(view)) {
            return false;
        }
        WeakHashMap weakHashMap = N.f4222a;
        boolean z2 = AbstractC0291z.d(view) == 1;
        int i2 = swipeDismissBehavior.f2668c;
        view.offsetLeftAndRight((!(i2 == 0 && z2) && (i2 != 1 || z2)) ? view.getWidth() : -view.getWidth());
        view.setAlpha(0.0f);
        return true;
    }

    @Override // p014j.F0
    public void e(l lVar, n nVar) {
        f fVar = (f) this.b;
        fVar.f.removeCallbacksAndMessages(null);
        ArrayList arrayList = fVar.f3312h;
        int size = arrayList.size();
        int i2 = 0;
        while (true) {
            if (i2 >= size) {
                i2 = -1;
                break;
            } else if (lVar == ((C0215e) arrayList.get(i2)).b) {
                break;
            } else {
                i2++;
            }
        }
        if (i2 == -1) {
            return;
        }
        int i3 = i2 + 1;
        fVar.f.postAtTime(new RunnableC0147u3(this, i3 < arrayList.size() ? (C0215e) arrayList.get(i3) : null, nVar, lVar), lVar, SystemClock.uptimeMillis() + 200);
    }

    @Override // p012i.x
    public boolean f(l lVar) {
        C0234j c0234j = (C0234j) this.b;
        if (lVar == c0234j.f3610c) {
            return false;
        }
        ((E) lVar).f3287A.getClass();
        c0234j.getClass();
        x xVar = c0234j.f3612e;
        if (xVar != null) {
            return xVar.f(lVar);
        }
        return false;
    }

    @Override // p034y.InterfaceC0271e
    public C0274h g() {
        return new C0274h(new e(((ContentInfo.Builder) this.b).build()));
    }

    @Override // p014j.F0
    public void h(l lVar, n nVar) {
        ((f) this.b).f.removeCallbacksAndMessages(lVar);
    }

    @Override // p034y.InterfaceC0283q
    public j0 i(View view, j0 j0Var) {
        switch (this.f4a) {
            case 21:
                e eVar = (e) this.b;
                int i2 = j0Var.f4257a.f().f4044d;
                BottomSheetBehavior bottomSheetBehavior = (BottomSheetBehavior) eVar.b;
                bottomSheetBehavior.f2693j = i2;
                bottomSheetBehavior.G();
                break;
            default:
                CoordinatorLayout coordinatorLayout = (CoordinatorLayout) this.b;
                if (!p033x.b.a(coordinatorLayout.f1640n, j0Var)) {
                    coordinatorLayout.f1640n = j0Var;
                    boolean z2 = j0Var.d() > 0;
                    coordinatorLayout.f1641o = z2;
                    coordinatorLayout.setWillNotDraw(!z2 && coordinatorLayout.getBackground() == null);
                    i0 i0Var = j0Var.f4257a;
                    if (!i0Var.j()) {
                        int childCount = coordinatorLayout.getChildCount();
                        for (int i3 = 0; i3 < childCount; i3++) {
                            View childAt = coordinatorLayout.getChildAt(i3);
                            WeakHashMap weakHashMap = N.f4222a;
                            if (!AbstractC0290y.b(childAt) || ((p023o.d) childAt.getLayoutParams()).f3893a == null || !i0Var.j()) {
                            }
                        }
                    }
                    coordinatorLayout.requestLayout();
                }
                break;
        }
        return j0Var;
    }

    @Override // p034y.InterfaceC0273g
    public int j() {
        return ((ContentInfo) this.b).getFlags();
    }

    @Override // p034y.InterfaceC0273g
    public ContentInfo k() {
        return (ContentInfo) this.b;
    }

    @Override // p034y.InterfaceC0271e
    public void l(Bundle bundle) {
        ((ContentInfo.Builder) this.b).setExtras(bundle);
    }

    @Override // p034y.InterfaceC0271e
    public void m(Uri uri) {
        ((ContentInfo.Builder) this.b).setLinkUri(uri);
    }

    @Override // p034y.InterfaceC0273g
    public int n() {
        return ((ContentInfo) this.b).getSource();
    }

    @Override // p012i.j
    public boolean o(l lVar, MenuItem menuItem) {
        InterfaceC0240m interfaceC0240m = ((ActionMenuView) this.b).f1527z;
        if (interfaceC0240m == null) {
            return false;
        }
        Iterator it = ((CopyOnWriteArrayList) ((j1) interfaceC0240m).f3630a.f1584G.f93c).iterator();
        if (!it.hasNext()) {
            return false;
        }
        it.next().getClass();
        throw new ClassCastException();
    }

    @Override // p031u.a
    public void p() {
        switch (this.f4a) {
            case PlaybackState.STATE_ERROR /* 7 */:
                ((Animator) this.b).end();
                break;
            default:
                ((P) this.b).a();
                break;
        }
    }

    @Override // androidx.emoji2.text.h
    public void q(b bVar) {
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(0, 1, 15L, TimeUnit.SECONDS, new LinkedBlockingDeque(), new androidx.emoji2.text.a("EmojiCompatInitializer"));
        threadPoolExecutor.allowCoreThreadTimeOut(true);
        threadPoolExecutor.execute(new RunnableC0168z(this, bVar, threadPoolExecutor, 19));
    }

    @Override // p034y.InterfaceC0271e
    public void r(int i2) {
        ((ContentInfo.Builder) this.b).setFlags(i2);
    }

    public p035z.e s(int i2) {
        return null;
    }

    public p035z.e t(int i2) {
        return null;
    }

    public String toString() {
        switch (this.f4a) {
            case 5:
                return "<" + ((String) this.b) + '>';
            case 27:
                return "ContentInfoCompat{" + ((ContentInfo) this.b) + "}";
            default:
                return super.toString();
        }
    }

    public void u() {
        ((r) this.b).f.H();
    }

    public boolean w(int i2, int i3, Bundle bundle) {
        return false;
    }

    public e(int i2) {
        this.f4a = i2;
        switch (i2) {
            case 25:
                break;
            case 29:
                this.b = new p035z.f(this);
                break;
            default:
                this.b = new Object();
                new Handler(Looper.getMainLooper(), new p027q0.e(this));
                break;
        }
    }

    public e(TextView textView) {
        this.f4a = 3;
        this.b = new G.h(textView);
    }

    public e(EditText editText) {
        this.f4a = 2;
        this.b = new G.a(editText);
    }

    public e(Context context) {
        this.f4a = 6;
        this.b = context.getApplicationContext();
    }

    public e(e eVar, p025p0.e eVar2) {
        this.f4a = 21;
        this.b = eVar;
    }

    public e(ContentInfo contentInfo) {
        this.f4a = 27;
        contentInfo.getClass();
        this.b = AbstractC0270d.e(contentInfo);
    }

    public e(ClipData clipData, int i2) {
        this.f4a = 26;
        this.b = AbstractC0270d.c(clipData, i2);
    }
}
