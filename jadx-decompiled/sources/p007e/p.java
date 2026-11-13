package p007e;

import android.content.Context;
import android.graphics.Rect;
import android.os.Build;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowInsets;
import android.widget.FrameLayout;
import androidx.appcompat.widget.ActionBarContextView;
import androidx.core.content.c;
import com.ex.auto.R;
import java.lang.reflect.Method;
import java.util.WeakHashMap;
import p012i.l;
import p012i.x;
import p014j.InterfaceC0231h0;
import p014j.u1;
import p034y.AbstractC0290y;
import p034y.B;
import p034y.E;
import p034y.InterfaceC0283q;
import p034y.N;
import p034y.Y;
import p034y.Z;
import p034y.a0;
import p034y.b0;
import p034y.j0;

/* JADX INFO: loaded from: classes.dex */
public final class p implements InterfaceC0283q, InterfaceC0231h0, x {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3059a;
    public final /* synthetic */ x b;

    public /* synthetic */ p(x xVar, int i2) {
        this.f3059a = i2;
        this.b = xVar;
    }

    @Override // p012i.x
    public void a(l lVar, boolean z2) {
        w wVar;
        switch (this.f3059a) {
            case 2:
                this.b.x(lVar);
                break;
            default:
                l lVarK = lVar.k();
                int i2 = 0;
                boolean z3 = lVarK != lVar;
                if (z3) {
                    lVar = lVarK;
                }
                x xVar = this.b;
                w[] wVarArr = xVar.f3097L;
                int length = wVarArr != null ? wVarArr.length : 0;
                while (true) {
                    if (i2 >= length) {
                        wVar = null;
                    } else {
                        wVar = wVarArr[i2];
                        if (wVar == null || wVar.f3074h != lVar) {
                            i2++;
                        }
                    }
                }
                if (wVar != null) {
                    if (!z3) {
                        xVar.y(wVar, z2);
                    } else {
                        xVar.w(wVar.f3069a, wVar, lVarK);
                        xVar.y(wVar, true);
                    }
                }
                break;
        }
    }

    @Override // p012i.x
    public boolean f(l lVar) {
        Window.Callback callback;
        switch (this.f3059a) {
            case 2:
                Window.Callback callback2 = this.b.f3118l.getCallback();
                if (callback2 != null) {
                    callback2.onMenuOpened(108, lVar);
                }
                break;
            default:
                if (lVar == lVar.k()) {
                    x xVar = this.b;
                    if (xVar.f3091F && (callback = xVar.f3118l.getCallback()) != null && !xVar.f3101Q) {
                        callback.onMenuOpened(108, lVar);
                        break;
                    }
                }
                break;
        }
        return true;
    }

    @Override // p034y.InterfaceC0283q
    public j0 i(View view, j0 j0Var) {
        boolean z2;
        j0 j0VarB;
        b0 z3;
        boolean z4;
        boolean z5;
        int iD = j0Var.d();
        x xVar = this.b;
        xVar.getClass();
        int iD2 = j0Var.d();
        ActionBarContextView actionBarContextView = xVar.f3128v;
        if (actionBarContextView == null || !(actionBarContextView.getLayoutParams() instanceof ViewGroup.MarginLayoutParams)) {
            z2 = false;
        } else {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) xVar.f3128v.getLayoutParams();
            if (xVar.f3128v.isShown()) {
                if (xVar.f3111c0 == null) {
                    xVar.f3111c0 = new Rect();
                    xVar.f3112d0 = new Rect();
                }
                Rect rect = xVar.f3111c0;
                Rect rect2 = xVar.f3112d0;
                rect.set(j0Var.b(), j0Var.d(), j0Var.c(), j0Var.a());
                ViewGroup viewGroup = xVar.f3086A;
                Method method = u1.f3699a;
                if (method != null) {
                    try {
                        method.invoke(viewGroup, rect, rect2);
                    } catch (Exception e2) {
                        Log.d("ViewUtils", "Could not invoke computeFitSystemWindows", e2);
                    }
                }
                int i2 = rect.top;
                int i3 = rect.left;
                int i4 = rect.right;
                ViewGroup viewGroup2 = xVar.f3086A;
                WeakHashMap weakHashMap = N.f4222a;
                j0 j0VarA = E.a(viewGroup2);
                int iB = j0VarA == null ? 0 : j0VarA.b();
                int iC = j0VarA == null ? 0 : j0VarA.c();
                if (marginLayoutParams.topMargin == i2 && marginLayoutParams.leftMargin == i3 && marginLayoutParams.rightMargin == i4) {
                    z5 = false;
                } else {
                    marginLayoutParams.topMargin = i2;
                    marginLayoutParams.leftMargin = i3;
                    marginLayoutParams.rightMargin = i4;
                    z5 = true;
                }
                Context context = xVar.f3117k;
                if (i2 <= 0 || xVar.f3088C != null) {
                    View view2 = xVar.f3088C;
                    if (view2 != null) {
                        ViewGroup.MarginLayoutParams marginLayoutParams2 = (ViewGroup.MarginLayoutParams) view2.getLayoutParams();
                        int i5 = marginLayoutParams2.height;
                        int i6 = marginLayoutParams.topMargin;
                        if (i5 != i6 || marginLayoutParams2.leftMargin != iB || marginLayoutParams2.rightMargin != iC) {
                            marginLayoutParams2.height = i6;
                            marginLayoutParams2.leftMargin = iB;
                            marginLayoutParams2.rightMargin = iC;
                            xVar.f3088C.setLayoutParams(marginLayoutParams2);
                        }
                    }
                } else {
                    View view3 = new View(context);
                    xVar.f3088C = view3;
                    view3.setVisibility(8);
                    FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, marginLayoutParams.topMargin, 51);
                    layoutParams.leftMargin = iB;
                    layoutParams.rightMargin = iC;
                    xVar.f3086A.addView(xVar.f3088C, -1, layoutParams);
                }
                View view4 = xVar.f3088C;
                boolean z6 = view4 != null;
                if (z6 && view4.getVisibility() != 0) {
                    View view5 = xVar.f3088C;
                    view5.setBackgroundColor((AbstractC0290y.g(view5) & 8192) != 0 ? c.a(context, R.color.abc_decor_view_status_guard_light) : c.a(context, R.color.abc_decor_view_status_guard));
                }
                if (!xVar.f3093H && z6) {
                    iD2 = 0;
                }
                z2 = z6;
                z4 = z5;
            } else if (marginLayoutParams.topMargin != 0) {
                marginLayoutParams.topMargin = 0;
                z2 = false;
                z4 = true;
            } else {
                z2 = false;
                z4 = false;
            }
            if (z4) {
                xVar.f3128v.setLayoutParams(marginLayoutParams);
            }
        }
        View view6 = xVar.f3088C;
        if (view6 != null) {
            view6.setVisibility(z2 ? 0 : 8);
        }
        if (iD != iD2) {
            int iB2 = j0Var.b();
            int iC2 = j0Var.c();
            int iA = j0Var.a();
            int i7 = Build.VERSION.SDK_INT;
            if (i7 >= 30) {
                z3 = new a0(j0Var);
            } else {
                z3 = i7 >= 29 ? new Z(j0Var) : new Y(j0Var);
            }
            z3.d(p028r.c.a(iB2, iD2, iC2, iA));
            j0VarB = z3.b();
        } else {
            j0VarB = j0Var;
        }
        WeakHashMap weakHashMap2 = N.f4222a;
        WindowInsets windowInsetsF = j0VarB.f();
        if (windowInsetsF == null) {
            return j0VarB;
        }
        WindowInsets windowInsetsB = B.b(view, windowInsetsF);
        return !windowInsetsB.equals(windowInsetsF) ? j0.g(windowInsetsB, view) : j0VarB;
    }
}
