package G;

import M.J;
import M.M;
import M.e0;
import M.l0;
import M.o0;
import M.p0;
import android.animation.Animator;
import android.content.Context;
import android.os.Handler;
import android.text.Editable;
import android.text.Selection;
import android.text.TextPaint;
import android.util.SparseIntArray;
import android.view.ActionMode;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.widget.EditText;
import androidx.emoji2.text.q;
import androidx.emoji2.text.t;
import androidx.fragment.app.AbstractComponentCallbacksC0187o;
import androidx.fragment.app.E;
import androidx.lifecycle.G;
import androidx.lifecycle.H;
import androidx.lifecycle.I;
import java.io.PrintWriter;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.WeakHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import p007e.AbstractActivityC0210j;
import p007e.x;
import p012i.l;
import p034y.B;
import p034y.N;
import p034y.V;

/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f92a;
    public Object b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Object f93c;

    public /* synthetic */ a(Object obj, int i2, Object obj2) {
        this.f92a = i2;
        this.f93c = obj;
        this.b = obj2;
    }

    public static boolean b(Editable editable, KeyEvent keyEvent, boolean z2) {
        t[] tVarArr;
        if (!KeyEvent.metaStateHasNoModifiers(keyEvent.getMetaState())) {
            return false;
        }
        int selectionStart = Selection.getSelectionStart(editable);
        int selectionEnd = Selection.getSelectionEnd(editable);
        if (selectionStart != -1 && selectionEnd != -1 && selectionStart == selectionEnd && (tVarArr = (t[]) editable.getSpans(selectionStart, selectionEnd, t.class)) != null && tVarArr.length > 0) {
            for (t tVar : tVarArr) {
                int spanStart = editable.getSpanStart(tVar);
                int spanEnd = editable.getSpanEnd(tVar);
                if ((z2 && spanStart == selectionStart) || ((!z2 && spanEnd == selectionStart) || (selectionStart > spanStart && selectionStart < spanEnd))) {
                    editable.delete(spanStart, spanEnd);
                    return true;
                }
            }
        }
        return false;
    }

    public static int t(int i2, int i3) {
        int i4 = 0;
        int i5 = 0;
        for (int i6 = 0; i6 < i2; i6++) {
            i4++;
            if (i4 == i3) {
                i5++;
                i4 = 0;
            } else if (i4 > i3) {
                i5++;
                i4 = 1;
            }
        }
        return i4 + 1 > i3 ? i5 + 1 : i5;
    }

    public boolean A(p011h.a aVar, l lVar) {
        ViewGroup viewGroup = ((x) this.f93c).f3086A;
        WeakHashMap weakHashMap = N.f4222a;
        B.c(viewGroup);
        q qVar = (q) this.b;
        p011h.f fVarB = qVar.b(aVar);
        p020m.k kVar = (p020m.k) qVar.f1721d;
        Menu b = (Menu) kVar.getOrDefault(lVar, null);
        if (b == null) {
            b = new p012i.B((Context) qVar.b, lVar);
            kVar.put(lVar, b);
        }
        return ((ActionMode.Callback) qVar.f1719a).onPrepareActionMode(fVarB, b);
    }

    public void B(v.f fVar) {
        int i2 = fVar.b;
        Handler handler = (Handler) this.f93c;
        A.e eVar = (A.e) this.b;
        if (i2 != 0) {
            handler.post(new androidx.emoji2.text.g(eVar, i2, 2));
        } else {
            handler.post(new p002b0.c(eVar, 2, fVar.f4146a));
        }
    }

    public J C(e0 e0Var, int i2) {
        p0 p0Var;
        J j2;
        p020m.k kVar = (p020m.k) this.b;
        int iD = kVar.d(e0Var);
        if (iD >= 0 && (p0Var = (p0) kVar.i(iD)) != null) {
            int i3 = p0Var.f333a;
            if ((i3 & i2) != 0) {
                int i4 = i3 & (~i2);
                p0Var.f333a = i4;
                if (i2 == 4) {
                    j2 = p0Var.b;
                } else {
                    if (i2 != 8) {
                        throw new IllegalArgumentException("Must provide flag PRE or POST");
                    }
                    j2 = p0Var.f334c;
                }
                if ((i4 & 12) == 0) {
                    kVar.h(iD);
                    p0Var.f333a = 0;
                    p0Var.b = null;
                    p0Var.f334c = null;
                    p0.f332d.c(p0Var);
                }
                return j2;
            }
        }
        return null;
    }

    public void D(e0 e0Var) {
        p0 p0Var = (p0) ((p020m.k) this.b).getOrDefault(e0Var, null);
        if (p0Var == null) {
            return;
        }
        p0Var.f333a &= -2;
    }

    public void E(e0 e0Var) {
        p020m.e eVar = (p020m.e) this.f93c;
        for (int iE = eVar.e() - 1; iE >= 0; iE--) {
            if (e0Var == eVar.f(iE)) {
                Object[] objArr = eVar.f3852c;
                Object obj = objArr[iE];
                Object obj2 = p020m.e.f3850e;
                if (obj == obj2) {
                    break;
                }
                objArr[iE] = obj2;
                eVar.f3851a = true;
                break;
            }
        }
        p0 p0Var = (p0) ((p020m.k) this.b).remove(e0Var);
        if (p0Var != null) {
            p0Var.f333a = 0;
            p0Var.b = null;
            p0Var.f334c = null;
            p0.f332d.c(p0Var);
        }
    }

    public void a(e0 e0Var, J j2) {
        p020m.k kVar = (p020m.k) this.b;
        p0 p0VarA = (p0) kVar.getOrDefault(e0Var, null);
        if (p0VarA == null) {
            p0VarA = p0.a();
            kVar.put(e0Var, p0VarA);
        }
        p0VarA.f334c = j2;
        p0VarA.f333a |= 8;
    }

    public void c(boolean z2) {
        AbstractComponentCallbacksC0187o abstractComponentCallbacksC0187o = ((E) this.f93c).f1750p;
        if (abstractComponentCallbacksC0187o != null) {
            abstractComponentCallbacksC0187o.j().f1745k.c(true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.b).iterator();
        if (it.hasNext()) {
            if (it.next() != null) {
                throw new ClassCastException();
            }
            if (!z2) {
                throw null;
            }
            throw null;
        }
    }

    public void d(boolean z2) {
        E e2 = (E) this.f93c;
        AbstractActivityC0210j abstractActivityC0210j = e2.f1748n.f1916d;
        AbstractComponentCallbacksC0187o abstractComponentCallbacksC0187o = e2.f1750p;
        if (abstractComponentCallbacksC0187o != null) {
            abstractComponentCallbacksC0187o.j().f1745k.d(true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.b).iterator();
        if (it.hasNext()) {
            if (it.next() != null) {
                throw new ClassCastException();
            }
            if (!z2) {
                throw null;
            }
            throw null;
        }
    }

    public void e(boolean z2) {
        AbstractComponentCallbacksC0187o abstractComponentCallbacksC0187o = ((E) this.f93c).f1750p;
        if (abstractComponentCallbacksC0187o != null) {
            abstractComponentCallbacksC0187o.j().f1745k.e(true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.b).iterator();
        if (it.hasNext()) {
            if (it.next() != null) {
                throw new ClassCastException();
            }
            if (!z2) {
                throw null;
            }
            throw null;
        }
    }

    public void f(boolean z2) {
        AbstractComponentCallbacksC0187o abstractComponentCallbacksC0187o = ((E) this.f93c).f1750p;
        if (abstractComponentCallbacksC0187o != null) {
            abstractComponentCallbacksC0187o.j().f1745k.f(true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.b).iterator();
        if (it.hasNext()) {
            if (it.next() != null) {
                throw new ClassCastException();
            }
            if (!z2) {
                throw null;
            }
            throw null;
        }
    }

    public void g(boolean z2) {
        AbstractComponentCallbacksC0187o abstractComponentCallbacksC0187o = ((E) this.f93c).f1750p;
        if (abstractComponentCallbacksC0187o != null) {
            abstractComponentCallbacksC0187o.j().f1745k.g(true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.b).iterator();
        if (it.hasNext()) {
            if (it.next() != null) {
                throw new ClassCastException();
            }
            if (!z2) {
                throw null;
            }
            throw null;
        }
    }

    public void h(boolean z2) {
        AbstractComponentCallbacksC0187o abstractComponentCallbacksC0187o = ((E) this.f93c).f1750p;
        if (abstractComponentCallbacksC0187o != null) {
            abstractComponentCallbacksC0187o.j().f1745k.h(true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.b).iterator();
        if (it.hasNext()) {
            if (it.next() != null) {
                throw new ClassCastException();
            }
            if (!z2) {
                throw null;
            }
            throw null;
        }
    }

    public void i(boolean z2) {
        E e2 = (E) this.f93c;
        AbstractActivityC0210j abstractActivityC0210j = e2.f1748n.f1916d;
        AbstractComponentCallbacksC0187o abstractComponentCallbacksC0187o = e2.f1750p;
        if (abstractComponentCallbacksC0187o != null) {
            abstractComponentCallbacksC0187o.j().f1745k.i(true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.b).iterator();
        if (it.hasNext()) {
            if (it.next() != null) {
                throw new ClassCastException();
            }
            if (!z2) {
                throw null;
            }
            throw null;
        }
    }

    public void j(boolean z2) {
        AbstractComponentCallbacksC0187o abstractComponentCallbacksC0187o = ((E) this.f93c).f1750p;
        if (abstractComponentCallbacksC0187o != null) {
            abstractComponentCallbacksC0187o.j().f1745k.j(true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.b).iterator();
        if (it.hasNext()) {
            if (it.next() != null) {
                throw new ClassCastException();
            }
            if (!z2) {
                throw null;
            }
            throw null;
        }
    }

    public void k(boolean z2) {
        AbstractComponentCallbacksC0187o abstractComponentCallbacksC0187o = ((E) this.f93c).f1750p;
        if (abstractComponentCallbacksC0187o != null) {
            abstractComponentCallbacksC0187o.j().f1745k.k(true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.b).iterator();
        if (it.hasNext()) {
            if (it.next() != null) {
                throw new ClassCastException();
            }
            if (!z2) {
                throw null;
            }
            throw null;
        }
    }

    public void l(boolean z2) {
        AbstractComponentCallbacksC0187o abstractComponentCallbacksC0187o = ((E) this.f93c).f1750p;
        if (abstractComponentCallbacksC0187o != null) {
            abstractComponentCallbacksC0187o.j().f1745k.l(true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.b).iterator();
        if (it.hasNext()) {
            if (it.next() != null) {
                throw new ClassCastException();
            }
            if (!z2) {
                throw null;
            }
            throw null;
        }
    }

    public void m(boolean z2) {
        AbstractComponentCallbacksC0187o abstractComponentCallbacksC0187o = ((E) this.f93c).f1750p;
        if (abstractComponentCallbacksC0187o != null) {
            abstractComponentCallbacksC0187o.j().f1745k.m(true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.b).iterator();
        if (it.hasNext()) {
            if (it.next() != null) {
                throw new ClassCastException();
            }
            if (!z2) {
                throw null;
            }
            throw null;
        }
    }

    public void n(boolean z2) {
        AbstractComponentCallbacksC0187o abstractComponentCallbacksC0187o = ((E) this.f93c).f1750p;
        if (abstractComponentCallbacksC0187o != null) {
            abstractComponentCallbacksC0187o.j().f1745k.n(true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.b).iterator();
        if (it.hasNext()) {
            if (it.next() != null) {
                throw new ClassCastException();
            }
            if (!z2) {
                throw null;
            }
            throw null;
        }
    }

    public void o(boolean z2) {
        AbstractComponentCallbacksC0187o abstractComponentCallbacksC0187o = ((E) this.f93c).f1750p;
        if (abstractComponentCallbacksC0187o != null) {
            abstractComponentCallbacksC0187o.j().f1745k.o(true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.b).iterator();
        if (it.hasNext()) {
            if (it.next() != null) {
                throw new ClassCastException();
            }
            if (!z2) {
                throw null;
            }
            throw null;
        }
    }

    public void p(boolean z2) {
        AbstractComponentCallbacksC0187o abstractComponentCallbacksC0187o = ((E) this.f93c).f1750p;
        if (abstractComponentCallbacksC0187o != null) {
            abstractComponentCallbacksC0187o.j().f1745k.p(true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.b).iterator();
        if (it.hasNext()) {
            if (it.next() != null) {
                throw new ClassCastException();
            }
            if (!z2) {
                throw null;
            }
            throw null;
        }
    }

    public void q(String str, PrintWriter printWriter) {
        p020m.l lVar = ((K.a) this.f93c).f131c;
        if (lVar.f3874c > 0) {
            printWriter.print(str);
            printWriter.println("Loaders:");
            if (lVar.f3874c <= 0) {
                return;
            }
            if (lVar.b[0] != null) {
                throw new ClassCastException();
            }
            printWriter.print(str);
            printWriter.print("  #");
            printWriter.print(lVar.f3873a[0]);
            printWriter.print(": ");
            throw null;
        }
    }

    public void r(int i2) {
        int[] iArr = (int[]) this.b;
        if (iArr == null) {
            int[] iArr2 = new int[Math.max(i2, 10) + 1];
            this.b = iArr2;
            Arrays.fill(iArr2, -1);
        } else if (i2 >= iArr.length) {
            int length = iArr.length;
            while (length <= i2) {
                length *= 2;
            }
            int[] iArr3 = new int[length];
            this.b = iArr3;
            System.arraycopy(iArr, 0, iArr3, 0, iArr.length);
            int[] iArr4 = (int[]) this.b;
            Arrays.fill(iArr4, iArr.length, iArr4.length, -1);
        }
    }

    public View s(int i2, int i3, int i4, int i5) {
        View viewU;
        M m2 = (M) this.b;
        int iD = m2.d();
        int iC = m2.c();
        int i6 = i3 > i2 ? 1 : -1;
        View view = null;
        while (i2 != i3) {
            switch (m2.f153a) {
                case 0:
                    viewU = m2.b.u(i2);
                    break;
                default:
                    viewU = m2.b.u(i2);
                    break;
            }
            int iB = m2.b(viewU);
            int iA = m2.a(viewU);
            o0 o0Var = (o0) this.f93c;
            o0Var.b = iD;
            o0Var.f328c = iC;
            o0Var.f329d = iB;
            o0Var.f330e = iA;
            if (i4 != 0) {
                o0Var.f327a = i4;
                if (o0Var.a()) {
                    return viewU;
                }
            }
            if (i5 != 0) {
                o0Var.f327a = i5;
                if (o0Var.a()) {
                    view = viewU;
                }
            }
            i2 += i6;
        }
        return view;
    }

    public String toString() {
        int iLastIndexOf;
        switch (this.f92a) {
            case 1:
                StringBuilder sb = new StringBuilder(128);
                sb.append("LoaderManager{");
                sb.append(Integer.toHexString(System.identityHashCode(this)));
                sb.append(" in ");
                Object obj = this.b;
                if (obj == null) {
                    sb.append("null");
                } else {
                    String simpleName = obj.getClass().getSimpleName();
                    if (simpleName.length() <= 0 && (iLastIndexOf = (simpleName = obj.getClass().getName()).lastIndexOf(46)) > 0) {
                        simpleName = simpleName.substring(iLastIndexOf + 1);
                    }
                    sb.append(simpleName);
                    sb.append('{');
                    sb.append(Integer.toHexString(System.identityHashCode(obj)));
                }
                sb.append("}}");
                return sb.toString();
            default:
                return super.toString();
        }
    }

    public boolean u(CharSequence charSequence, int i2, int i3, androidx.emoji2.text.l lVar) {
        if (lVar.f1706c == 0) {
            androidx.emoji2.text.c cVar = (androidx.emoji2.text.c) this.f93c;
            F.a aVarC = lVar.c();
            int iA = aVarC.a(8);
            if (iA != 0) {
                ((ByteBuffer) aVarC.f88d).getShort(iA + aVarC.f86a);
            }
            cVar.getClass();
            ThreadLocal threadLocal = androidx.emoji2.text.c.b;
            if (threadLocal.get() == null) {
                threadLocal.set(new StringBuilder());
            }
            StringBuilder sb = (StringBuilder) threadLocal.get();
            sb.setLength(0);
            while (i2 < i3) {
                sb.append(charSequence.charAt(i2));
                i2++;
            }
            TextPaint textPaint = cVar.f1688a;
            String string = sb.toString();
            int i4 = p028r.e.f4045a;
            lVar.f1706c = p028r.d.a(textPaint, string) ? 2 : 1;
        }
        return lVar.f1706c == 2;
    }

    public void v() {
        ((SparseIntArray) this.b).clear();
    }

    public boolean w(View view) {
        M m2 = (M) this.b;
        int iD = m2.d();
        int iC = m2.c();
        int iB = m2.b(view);
        int iA = m2.a(view);
        o0 o0Var = (o0) this.f93c;
        o0Var.b = iD;
        o0Var.f328c = iC;
        o0Var.f329d = iB;
        o0Var.f330e = iA;
        o0Var.f327a = 24579;
        return o0Var.a();
    }

    public void x(int i2, int i3) {
        int[] iArr = (int[]) this.b;
        if (iArr == null || i2 >= iArr.length) {
            return;
        }
        int i4 = i2 + i3;
        r(i4);
        int[] iArr2 = (int[]) this.b;
        System.arraycopy(iArr2, i2, iArr2, i4, (iArr2.length - i2) - i3);
        Arrays.fill((int[]) this.b, i2, i4, -1);
        ArrayList arrayList = (ArrayList) this.f93c;
        if (arrayList == null) {
            return;
        }
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            l0 l0Var = (l0) ((ArrayList) this.f93c).get(size);
            int i5 = l0Var.f282a;
            if (i5 >= i2) {
                l0Var.f282a = i5 + i3;
            }
        }
    }

    public void y(int i2, int i3) {
        int[] iArr = (int[]) this.b;
        if (iArr == null || i2 >= iArr.length) {
            return;
        }
        int i4 = i2 + i3;
        r(i4);
        int[] iArr2 = (int[]) this.b;
        System.arraycopy(iArr2, i4, iArr2, i2, (iArr2.length - i2) - i3);
        int[] iArr3 = (int[]) this.b;
        Arrays.fill(iArr3, iArr3.length - i3, iArr3.length, -1);
        ArrayList arrayList = (ArrayList) this.f93c;
        if (arrayList == null) {
            return;
        }
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            l0 l0Var = (l0) ((ArrayList) this.f93c).get(size);
            int i5 = l0Var.f282a;
            if (i5 >= i2) {
                if (i5 < i4) {
                    ((ArrayList) this.f93c).remove(size);
                } else {
                    l0Var.f282a = i5 - i3;
                }
            }
        }
    }

    public void z(p011h.a aVar) {
        q qVar = (q) this.b;
        ((ActionMode.Callback) qVar.f1719a).onDestroyActionMode(qVar.b(aVar));
        x xVar = (x) this.f93c;
        if (xVar.f3129w != null) {
            xVar.f3118l.getDecorView().removeCallbacks(xVar.f3130x);
        }
        if (xVar.f3128v != null) {
            V v2 = xVar.f3131y;
            if (v2 != null) {
                v2.b();
            }
            V vA = N.a(xVar.f3128v);
            vA.a(0.0f);
            xVar.f3131y = vA;
            vA.d(new p007e.q(this, 2));
        }
        xVar.f3127u = null;
        ViewGroup viewGroup = xVar.f3086A;
        WeakHashMap weakHashMap = N.f4222a;
        B.c(viewGroup);
        xVar.O();
    }

    public a(A.e eVar, Handler handler) {
        this.f92a = 11;
        this.b = eVar;
        this.f93c = handler;
    }

    public a(androidx.lifecycle.q qVar, I i2) {
        K.a aVar;
        this.f92a = 1;
        this.b = qVar;
        I0.f.e(i2, "store");
        J.a aVar2 = J.a.b;
        I0.f.e(aVar2, "defaultCreationExtras");
        String canonicalName = K.a.class.getCanonicalName();
        if (canonicalName != null) {
            String strConcat = "androidx.lifecycle.ViewModelProvider.DefaultKey:".concat(canonicalName);
            I0.f.e(strConcat, "key");
            HashMap map = i2.f1947a;
            G g2 = (G) map.get(strConcat);
            if (!K.a.class.isInstance(g2)) {
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                linkedHashMap.putAll(aVar2.f127a);
                linkedHashMap.put(H.b, strConcat);
                try {
                    aVar = new K.a();
                } catch (AbstractMethodError unused) {
                    aVar = new K.a();
                }
                g2 = aVar;
                G g3 = (G) map.put(strConcat, g2);
                if (g3 != null) {
                    g3.a();
                }
            } else if (g2 == null) {
                throw new NullPointerException("null cannot be cast to non-null type T of androidx.lifecycle.ViewModelProvider.get");
            }
            this.f93c = (K.a) g2;
            return;
        }
        throw new IllegalArgumentException("Local and anonymous classes can not be ViewModels");
    }

    public a(E e2) {
        this.f92a = 9;
        this.b = new CopyOnWriteArrayList();
        this.f93c = e2;
    }

    public a(Runnable runnable) {
        this.f92a = 12;
        this.f93c = new CopyOnWriteArrayList();
        new HashMap();
        this.b = runnable;
    }

    public a(q qVar, p025p0.e eVar, androidx.emoji2.text.c cVar) {
        this.f92a = 7;
        this.b = qVar;
        this.f93c = cVar;
    }

    public a(M m2) {
        this.f92a = 4;
        this.b = m2;
        o0 o0Var = new o0();
        o0Var.f327a = 0;
        this.f93c = o0Var;
    }

    public a(EditText editText) {
        this.f92a = 0;
        this.b = editText;
        j jVar = new j(editText);
        this.f93c = jVar;
        editText.addTextChangedListener(jVar);
        if (b.b == null) {
            synchronized (b.f94a) {
                try {
                    if (b.b == null) {
                        b bVar = new b();
                        try {
                            b.f95c = Class.forName("android.text.DynamicLayout$ChangeWatcher", false, b.class.getClassLoader());
                        } catch (Throwable unused) {
                        }
                        b.b = bVar;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        editText.setEditableFactory(b.b);
    }

    public a(Animation animation) {
        this.f92a = 8;
        this.b = animation;
        this.f93c = null;
    }

    public a(Animator animator) {
        this.f92a = 8;
        this.b = null;
        this.f93c = animator;
    }

    public a(int i2) {
        this.f92a = i2;
        switch (i2) {
            case 3:
                break;
            case 4:
            default:
                this.b = new SparseIntArray();
                this.f93c = new SparseIntArray();
                break;
            case 5:
                this.b = new p020m.k();
                this.f93c = new p020m.e();
                break;
        }
    }
}
