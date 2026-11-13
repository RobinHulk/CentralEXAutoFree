package M;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Paint;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.location.LocationManager;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.AbstractComponentCallbacksC0187o;
import androidx.fragment.app.C0177e;
import androidx.recyclerview.widget.RecyclerView;
import com.ex.auto.R;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.WeakHashMap;
import p007e.AbstractC0201a;
import p014j.C0251s;
import p034y.AbstractC0290y;

/* JADX INFO: renamed from: M.d, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0003d implements p031u.a {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static C0003d f213e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f214a;
    public final Object b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Object f215c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Object f216d;

    public C0003d() {
        this.f214a = 2;
        this.f216d = new ArrayList();
        this.b = new HashMap();
    }

    public static C0003d v(Context context, AttributeSet attributeSet, int[] iArr, int i2) {
        return new C0003d(context, context.obtainStyledAttributes(attributeSet, iArr, i2, 0));
    }

    public void a(AbstractComponentCallbacksC0187o abstractComponentCallbacksC0187o) {
        if (((ArrayList) this.f216d).contains(abstractComponentCallbacksC0187o)) {
            throw new IllegalStateException("Fragment already added: " + abstractComponentCallbacksC0187o);
        }
        synchronized (((ArrayList) this.f216d)) {
            ((ArrayList) this.f216d).add(abstractComponentCallbacksC0187o);
        }
        abstractComponentCallbacksC0187o.f1897k = true;
    }

    public void b(View view, int i2, boolean z2) {
        RecyclerView recyclerView = ((E) this.b).f146a;
        int childCount = i2 < 0 ? recyclerView.getChildCount() : o(i2);
        ((C0002c) this.f215c).e(childCount, z2);
        if (z2) {
            s(view);
        }
        recyclerView.addView(view, childCount);
        RecyclerView.I(view);
    }

    public void c(View view, int i2, ViewGroup.LayoutParams layoutParams, boolean z2) {
        RecyclerView recyclerView = ((E) this.b).f146a;
        int childCount = i2 < 0 ? recyclerView.getChildCount() : o(i2);
        ((C0002c) this.f215c).e(childCount, z2);
        if (z2) {
            s(view);
        }
        e0 e0VarI = RecyclerView.I(view);
        if (e0VarI != null) {
            if (!e0VarI.k() && !e0VarI.p()) {
                throw new IllegalArgumentException("Called attach on a child which is not detached: " + e0VarI + recyclerView.y());
            }
            e0VarI.f227j &= -257;
        }
        recyclerView.attachViewToParent(view, childCount, layoutParams);
    }

    public void d(int i2) {
        e0 e0VarI;
        int iO = o(i2);
        ((C0002c) this.f215c).f(iO);
        RecyclerView recyclerView = ((E) this.b).f146a;
        View childAt = recyclerView.getChildAt(iO);
        if (childAt != null && (e0VarI = RecyclerView.I(childAt)) != null) {
            if (e0VarI.k() && !e0VarI.p()) {
                throw new IllegalArgumentException("called detach on an already detached child " + e0VarI + recyclerView.y());
            }
            e0VarI.a(256);
        }
        recyclerView.detachViewFromParent(iO);
    }

    public AbstractComponentCallbacksC0187o e(String str) {
        androidx.fragment.app.K k2 = (androidx.fragment.app.K) ((HashMap) this.b).get(str);
        if (k2 != null) {
            return k2.f1786c;
        }
        return null;
    }

    public AbstractComponentCallbacksC0187o f(String str) {
        for (androidx.fragment.app.K k2 : ((HashMap) this.b).values()) {
            if (k2 != null) {
                AbstractComponentCallbacksC0187o abstractComponentCallbacksC0187oF = k2.f1786c;
                if (!str.equals(abstractComponentCallbacksC0187oF.f1892e)) {
                    abstractComponentCallbacksC0187oF = abstractComponentCallbacksC0187oF.f1906t.f1738c.f(str);
                }
                if (abstractComponentCallbacksC0187oF != null) {
                    return abstractComponentCallbacksC0187oF;
                }
            }
        }
        return null;
    }

    public ArrayList g() {
        ArrayList arrayList = new ArrayList();
        for (androidx.fragment.app.K k2 : ((HashMap) this.b).values()) {
            if (k2 != null) {
                arrayList.add(k2);
            }
        }
        return arrayList;
    }

    public View h(int i2) {
        return ((E) this.b).f146a.getChildAt(o(i2));
    }

    public int i() {
        return ((E) this.b).f146a.getChildCount() - ((ArrayList) this.f216d).size();
    }

    public ColorStateList j(int i2) {
        int resourceId;
        ColorStateList colorStateListW;
        TypedArray typedArray = (TypedArray) this.f215c;
        return (!typedArray.hasValue(i2) || (resourceId = typedArray.getResourceId(i2, 0)) == 0 || (colorStateListW = AbstractC0201a.w((Context) this.b, resourceId)) == null) ? typedArray.getColorStateList(i2) : colorStateListW;
    }

    public Drawable k(int i2) {
        int resourceId;
        TypedArray typedArray = (TypedArray) this.f215c;
        return (!typedArray.hasValue(i2) || (resourceId = typedArray.getResourceId(i2, 0)) == 0) ? typedArray.getDrawable(i2) : AbstractC0201a.A((Context) this.b, resourceId);
    }

    public Drawable l(int i2) {
        int resourceId;
        Drawable drawableD;
        if (!((TypedArray) this.f215c).hasValue(i2) || (resourceId = ((TypedArray) this.f215c).getResourceId(i2, 0)) == 0) {
            return null;
        }
        C0251s c0251sA = C0251s.a();
        Context context = (Context) this.b;
        synchronized (c0251sA) {
            drawableD = c0251sA.f3681a.d(context, resourceId, true);
        }
        return drawableD;
    }

    public Typeface m(int i2, int i3, p014j.U u2) {
        int resourceId = ((TypedArray) this.f215c).getResourceId(i2, 0);
        if (resourceId == 0) {
            return null;
        }
        if (((TypedValue) this.f216d) == null) {
            this.f216d = new TypedValue();
        }
        TypedValue typedValue = (TypedValue) this.f216d;
        ThreadLocal threadLocal = p026q.n.f4025a;
        Context context = (Context) this.b;
        if (context.isRestricted()) {
            return null;
        }
        return p026q.n.a(context, resourceId, typedValue, i3, u2, true);
    }

    public List n() {
        ArrayList arrayList;
        if (((ArrayList) this.f216d).isEmpty()) {
            return Collections.emptyList();
        }
        synchronized (((ArrayList) this.f216d)) {
            arrayList = new ArrayList((ArrayList) this.f216d);
        }
        return arrayList;
    }

    public int o(int i2) {
        if (i2 < 0) {
            return -1;
        }
        int childCount = ((E) this.b).f146a.getChildCount();
        int i3 = i2;
        while (i3 < childCount) {
            C0002c c0002c = (C0002c) this.f215c;
            int iB = i2 - (i3 - c0002c.b(i3));
            if (iB == 0) {
                while (c0002c.d(i3)) {
                    i3++;
                }
                return i3;
            }
            i3 += iB;
        }
        return -1;
    }

    @Override // p031u.a
    public void p() {
        View view = (View) this.b;
        view.clearAnimation();
        ((ViewGroup) this.f215c).endViewTransition(view);
        ((C0177e) this.f216d).d();
    }

    public View q(int i2) {
        return ((E) this.b).f146a.getChildAt(i2);
    }

    public int r() {
        return ((E) this.b).f146a.getChildCount();
    }

    public void s(View view) {
        ((ArrayList) this.f216d).add(view);
        E e2 = (E) this.b;
        e0 e0VarI = RecyclerView.I(view);
        if (e0VarI != null) {
            int i2 = e0VarI.f234q;
            View view2 = e0VarI.f220a;
            if (i2 != -1) {
                e0VarI.f233p = i2;
            } else {
                WeakHashMap weakHashMap = p034y.N.f4222a;
                e0VarI.f233p = AbstractC0290y.c(view2);
            }
            RecyclerView recyclerView = e2.f146a;
            if (recyclerView.L()) {
                e0VarI.f234q = 4;
                recyclerView.f2060p0.add(e0VarI);
            } else {
                WeakHashMap weakHashMap2 = p034y.N.f4222a;
                AbstractC0290y.s(view2, 4);
            }
        }
    }

    public void t(androidx.fragment.app.K k2) {
        AbstractComponentCallbacksC0187o abstractComponentCallbacksC0187o = k2.f1786c;
        String str = abstractComponentCallbacksC0187o.f1892e;
        HashMap map = (HashMap) this.b;
        if (map.get(str) != null) {
            return;
        }
        map.put(abstractComponentCallbacksC0187o.f1892e, k2);
        if (Log.isLoggable("FragmentManager", 2)) {
            Log.v("FragmentManager", "Added fragment to active set " + abstractComponentCallbacksC0187o);
        }
    }

    public String toString() {
        switch (this.f214a) {
            case 0:
                return ((C0002c) this.f215c).toString() + ", hidden list:" + ((ArrayList) this.f216d).size();
            default:
                return super.toString();
        }
    }

    public void u(androidx.fragment.app.K k2) {
        AbstractComponentCallbacksC0187o abstractComponentCallbacksC0187o = k2.f1786c;
        if (abstractComponentCallbacksC0187o.f1874A) {
            ((androidx.fragment.app.G) this.f215c).b(abstractComponentCallbacksC0187o);
        }
        if (((androidx.fragment.app.K) ((HashMap) this.b).put(abstractComponentCallbacksC0187o.f1892e, null)) != null && Log.isLoggable("FragmentManager", 2)) {
            Log.v("FragmentManager", "Removed fragment from active set " + abstractComponentCallbacksC0187o);
        }
    }

    public void w() {
        ((TypedArray) this.f215c).recycle();
    }

    public void x(View view) {
        if (((ArrayList) this.f216d).remove(view)) {
            E e2 = (E) this.b;
            e0 e0VarI = RecyclerView.I(view);
            if (e0VarI != null) {
                int i2 = e0VarI.f233p;
                RecyclerView recyclerView = e2.f146a;
                if (recyclerView.L()) {
                    e0VarI.f234q = i2;
                    recyclerView.f2060p0.add(e0VarI);
                } else {
                    WeakHashMap weakHashMap = p034y.N.f4222a;
                    AbstractC0290y.s(e0VarI.f220a, i2);
                }
                e0VarI.f233p = 0;
            }
        }
    }

    public C0003d(E e2) {
        this.f214a = 0;
        this.b = e2;
        this.f215c = new C0002c();
        this.f216d = new ArrayList();
    }

    public C0003d(Context context, TypedArray typedArray) {
        this.f214a = 5;
        this.b = context;
        this.f215c = typedArray;
    }

    public C0003d(Context context, LocationManager locationManager) {
        this.f214a = 4;
        this.f216d = new p007e.G();
        this.b = context;
        this.f215c = locationManager;
    }

    public C0003d(Context context) {
        this.f214a = 3;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(AbstractC0201a.O(context, R.attr.materialCalendarStyle, com.google.android.material.datepicker.l.class.getCanonicalName()), Y.a.f1374j);
        com.google.android.material.datepicker.c.b(context, typedArrayObtainStyledAttributes.getResourceId(3, 0));
        this.f216d = com.google.android.material.datepicker.c.b(context, typedArrayObtainStyledAttributes.getResourceId(1, 0));
        com.google.android.material.datepicker.c.b(context, typedArrayObtainStyledAttributes.getResourceId(2, 0));
        com.google.android.material.datepicker.c.b(context, typedArrayObtainStyledAttributes.getResourceId(4, 0));
        ColorStateList colorStateListY = AbstractC0201a.y(context, typedArrayObtainStyledAttributes, 5);
        this.b = com.google.android.material.datepicker.c.b(context, typedArrayObtainStyledAttributes.getResourceId(7, 0));
        com.google.android.material.datepicker.c.b(context, typedArrayObtainStyledAttributes.getResourceId(6, 0));
        this.f215c = com.google.android.material.datepicker.c.b(context, typedArrayObtainStyledAttributes.getResourceId(8, 0));
        new Paint().setColor(colorStateListY.getDefaultColor());
        typedArrayObtainStyledAttributes.recycle();
    }

    public C0003d(View view, ViewGroup viewGroup, C0177e c0177e) {
        this.f214a = 1;
        this.b = view;
        this.f215c = viewGroup;
        this.f216d = c0177e;
    }
}
