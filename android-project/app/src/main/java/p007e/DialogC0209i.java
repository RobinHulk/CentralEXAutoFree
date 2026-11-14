package p007e;

import I0.f;
import T.T0;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.TextView;
import android.window.OnBackInvokedDispatcher;
import androidx.activity.m;
import androidx.appcompat.app.AlertController$RecycleListView;
import androidx.core.widget.NestedScrollView;
import androidx.lifecycle.k;
import androidx.lifecycle.q;
import androidx.lifecycle.s;
import com.ex.auto.R;
import com.google.android.material.datepicker.j;
import java.util.WeakHashMap;
import p014j.C0260w0;
import p034y.E;
import p034y.N;

/* JADX INFO: renamed from: e.i, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class DialogC0209i extends Dialog implements DialogInterface, k, q {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public s f3041a;
    public final m b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public x f3042c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final y f3043d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final C0208h f3044e;

    public DialogC0209i(ContextThemeWrapper contextThemeWrapper, int i2) {
        int i3;
        int i4 = i(contextThemeWrapper, i2);
        if (i4 == 0) {
            TypedValue typedValue = new TypedValue();
            contextThemeWrapper.getTheme().resolveAttribute(R.attr.dialogTheme, typedValue, true);
            i3 = typedValue.resourceId;
        } else {
            i3 = i4;
        }
        super(contextThemeWrapper, i3);
        this.b = new m(new T0(this, 14));
        this.f3043d = new y(this);
        n nVarC = c();
        if (i4 == 0) {
            TypedValue typedValue2 = new TypedValue();
            contextThemeWrapper.getTheme().resolveAttribute(R.attr.dialogTheme, typedValue2, true);
            i4 = typedValue2.resourceId;
        }
        ((x) nVarC).f3103T = i4;
        nVarC.h();
        this.f3044e = new C0208h(getContext(), this, getWindow());
    }

    public static void a(DialogC0209i dialogC0209i) {
        f.e(dialogC0209i, "this$0");
        super.onBackPressed();
    }

    public static int i(Context context, int i2) {
        if (((i2 >>> 24) & 255) >= 1) {
            return i2;
        }
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(R.attr.alertDialogTheme, typedValue, true);
        return typedValue.resourceId;
    }

    @Override // android.app.Dialog
    public final void addContentView(View view, ViewGroup.LayoutParams layoutParams) {
        x xVar = (x) c();
        xVar.C();
        ((ViewGroup) xVar.f3086A.findViewById(android.R.id.content)).addView(view, layoutParams);
        xVar.f3119m.a(xVar.f3118l.getCallback());
    }

    public final n c() {
        if (this.f3042c == null) {
            D d2 = n.f3051a;
            this.f3042c = new x(getContext(), getWindow(), this, this);
        }
        return this.f3042c;
    }

    @Override // androidx.lifecycle.q
    public final s d() {
        return e();
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public final void dismiss() {
        super.dismiss();
        c().i();
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public final boolean dispatchKeyEvent(KeyEvent keyEvent) {
        getWindow().getDecorView();
        y yVar = this.f3043d;
        if (yVar == null) {
            return false;
        }
        return super.dispatchKeyEvent(keyEvent);
    }

    public final s e() {
        s sVar = this.f3041a;
        if (sVar != null) {
            return sVar;
        }
        s sVar2 = new s(this);
        this.f3041a = sVar2;
        return sVar2;
    }

    public final void f(Bundle bundle) {
        super.onCreate(bundle);
        if (Build.VERSION.SDK_INT >= 33) {
            OnBackInvokedDispatcher onBackInvokedDispatcher = getOnBackInvokedDispatcher();
            m mVar = this.b;
            mVar.f1435e = onBackInvokedDispatcher;
            mVar.c();
        }
        e().d(k.ON_CREATE);
    }

    @Override // android.app.Dialog
    public final View findViewById(int i2) {
        x xVar = (x) c();
        xVar.C();
        return xVar.f3118l.findViewById(i2);
    }

    public final void g(Bundle bundle) {
        c().e();
        f(bundle);
        c().h();
    }

    public final void h() {
        e().d(k.ON_DESTROY);
        this.f3041a = null;
        super.onStop();
    }

    @Override // android.app.Dialog
    public final void invalidateOptionsMenu() {
        c().f();
    }

    public final void j(CharSequence charSequence) {
        super.setTitle(charSequence);
        c().r(charSequence);
    }

    @Override // android.app.Dialog
    public final void onBackPressed() {
        this.b.b();
    }

    @Override // android.app.Dialog
    public final void onCreate(Bundle bundle) {
        int i2;
        int i3;
        ListAdapter listAdapter;
        View viewFindViewById;
        g(bundle);
        C0208h c0208h = this.f3044e;
        c0208h.b.setContentView(c0208h.f3040z);
        Window window = c0208h.f3018c;
        View viewFindViewById2 = window.findViewById(R.id.parentPanel);
        View viewFindViewById3 = viewFindViewById2.findViewById(R.id.topPanel);
        View viewFindViewById4 = viewFindViewById2.findViewById(R.id.contentPanel);
        View viewFindViewById5 = viewFindViewById2.findViewById(R.id.buttonPanel);
        ViewGroup viewGroup = (ViewGroup) viewFindViewById2.findViewById(R.id.customPanel);
        View view = c0208h.f3021g;
        if (view == null) {
            view = null;
        }
        boolean z2 = view != null;
        if (!z2 || !C0208h.a(view)) {
            window.setFlags(131072, 131072);
        }
        if (z2) {
            FrameLayout frameLayout = (FrameLayout) window.findViewById(R.id.custom);
            frameLayout.addView(view, new ViewGroup.LayoutParams(-1, -1));
            if (c0208h.f3022h) {
                frameLayout.setPadding(0, 0, 0, 0);
            }
            if (c0208h.f != null) {
                ((LinearLayout.LayoutParams) ((C0260w0) viewGroup.getLayoutParams())).weight = 0.0f;
            }
        } else {
            viewGroup.setVisibility(8);
        }
        View viewFindViewById6 = viewGroup.findViewById(R.id.topPanel);
        View viewFindViewById7 = viewGroup.findViewById(R.id.contentPanel);
        View viewFindViewById8 = viewGroup.findViewById(R.id.buttonPanel);
        ViewGroup viewGroupB = C0208h.b(viewFindViewById6, viewFindViewById3);
        ViewGroup viewGroupB2 = C0208h.b(viewFindViewById7, viewFindViewById4);
        ViewGroup viewGroupB3 = C0208h.b(viewFindViewById8, viewFindViewById5);
        NestedScrollView nestedScrollView = (NestedScrollView) window.findViewById(R.id.scrollView);
        c0208h.f3032r = nestedScrollView;
        nestedScrollView.setFocusable(false);
        c0208h.f3032r.setNestedScrollingEnabled(false);
        TextView textView = (TextView) viewGroupB2.findViewById(android.R.id.message);
        c0208h.f3036v = textView;
        if (textView != null) {
            CharSequence charSequence = c0208h.f3020e;
            if (charSequence != null) {
                textView.setText(charSequence);
            } else {
                textView.setVisibility(8);
                c0208h.f3032r.removeView(c0208h.f3036v);
                if (c0208h.f != null) {
                    ViewGroup viewGroup2 = (ViewGroup) c0208h.f3032r.getParent();
                    int iIndexOfChild = viewGroup2.indexOfChild(c0208h.f3032r);
                    viewGroup2.removeViewAt(iIndexOfChild);
                    viewGroup2.addView(c0208h.f, iIndexOfChild, new ViewGroup.LayoutParams(-1, -1));
                } else {
                    viewGroupB2.setVisibility(8);
                }
            }
        }
        Button button = (Button) viewGroupB3.findViewById(android.R.id.button1);
        c0208h.f3023i = button;
        j jVar = c0208h.f3016G;
        button.setOnClickListener(jVar);
        if (TextUtils.isEmpty(c0208h.f3024j)) {
            c0208h.f3023i.setVisibility(8);
            i2 = 0;
        } else {
            c0208h.f3023i.setText(c0208h.f3024j);
            c0208h.f3023i.setVisibility(0);
            i2 = 1;
        }
        Button button2 = (Button) viewGroupB3.findViewById(android.R.id.button2);
        c0208h.f3026l = button2;
        button2.setOnClickListener(jVar);
        if (TextUtils.isEmpty(c0208h.f3027m)) {
            c0208h.f3026l.setVisibility(8);
        } else {
            c0208h.f3026l.setText(c0208h.f3027m);
            c0208h.f3026l.setVisibility(0);
            i2 |= 2;
        }
        Button button3 = (Button) viewGroupB3.findViewById(android.R.id.button3);
        c0208h.f3029o = button3;
        button3.setOnClickListener(jVar);
        if (TextUtils.isEmpty(c0208h.f3030p)) {
            c0208h.f3029o.setVisibility(8);
        } else {
            c0208h.f3029o.setText(c0208h.f3030p);
            c0208h.f3029o.setVisibility(0);
            i2 |= 4;
        }
        TypedValue typedValue = new TypedValue();
        c0208h.f3017a.getTheme().resolveAttribute(R.attr.alertDialogCenterButtons, typedValue, true);
        if (typedValue.data == 0) {
            i3 = 2;
        } else if (i2 == 1) {
            Button button4 = c0208h.f3023i;
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) button4.getLayoutParams();
            layoutParams.gravity = 1;
            layoutParams.weight = 0.5f;
            button4.setLayoutParams(layoutParams);
            i3 = 2;
        } else {
            i3 = 2;
            if (i2 == 2) {
                Button button5 = c0208h.f3026l;
                LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) button5.getLayoutParams();
                layoutParams2.gravity = 1;
                layoutParams2.weight = 0.5f;
                button5.setLayoutParams(layoutParams2);
            } else if (i2 == 4) {
                Button button6 = c0208h.f3029o;
                LinearLayout.LayoutParams layoutParams3 = (LinearLayout.LayoutParams) button6.getLayoutParams();
                layoutParams3.gravity = 1;
                layoutParams3.weight = 0.5f;
                button6.setLayoutParams(layoutParams3);
            }
        }
        if (i2 == 0) {
            viewGroupB3.setVisibility(8);
        }
        if (c0208h.f3037w != null) {
            viewGroupB.addView(c0208h.f3037w, 0, new ViewGroup.LayoutParams(-1, -2));
            window.findViewById(R.id.title_template).setVisibility(8);
        } else {
            c0208h.f3034t = (ImageView) window.findViewById(android.R.id.icon);
            if (TextUtils.isEmpty(c0208h.f3019d) || !c0208h.f3014E) {
                window.findViewById(R.id.title_template).setVisibility(8);
                c0208h.f3034t.setVisibility(8);
                viewGroupB.setVisibility(8);
            } else {
                TextView textView2 = (TextView) window.findViewById(R.id.alertTitle);
                c0208h.f3035u = textView2;
                textView2.setText(c0208h.f3019d);
                Drawable drawable = c0208h.f3033s;
                if (drawable != null) {
                    c0208h.f3034t.setImageDrawable(drawable);
                } else {
                    c0208h.f3035u.setPadding(c0208h.f3034t.getPaddingLeft(), c0208h.f3034t.getPaddingTop(), c0208h.f3034t.getPaddingRight(), c0208h.f3034t.getPaddingBottom());
                    c0208h.f3034t.setVisibility(8);
                }
            }
        }
        boolean z3 = viewGroup.getVisibility() != 8;
        int i4 = (viewGroupB == null || viewGroupB.getVisibility() == 8) ? 0 : 1;
        boolean z4 = viewGroupB3.getVisibility() != 8;
        if (!z4 && (viewFindViewById = viewGroupB2.findViewById(R.id.textSpacerNoButtons)) != null) {
            viewFindViewById.setVisibility(0);
        }
        if (i4 != 0) {
            NestedScrollView nestedScrollView2 = c0208h.f3032r;
            if (nestedScrollView2 != null) {
                nestedScrollView2.setClipToPadding(true);
            }
            View viewFindViewById9 = (c0208h.f3020e == null && c0208h.f == null) ? null : viewGroupB.findViewById(R.id.titleDividerNoCustom);
            if (viewFindViewById9 != null) {
                viewFindViewById9.setVisibility(0);
            }
        } else {
            View viewFindViewById10 = viewGroupB2.findViewById(R.id.textSpacerNoTitle);
            if (viewFindViewById10 != null) {
                viewFindViewById10.setVisibility(0);
            }
        }
        AlertController$RecycleListView alertController$RecycleListView = c0208h.f;
        if (alertController$RecycleListView != null) {
            alertController$RecycleListView.getClass();
            if (!z4 || i4 == 0) {
                alertController$RecycleListView.setPadding(alertController$RecycleListView.getPaddingLeft(), i4 != 0 ? alertController$RecycleListView.getPaddingTop() : alertController$RecycleListView.f1438a, alertController$RecycleListView.getPaddingRight(), z4 ? alertController$RecycleListView.getPaddingBottom() : alertController$RecycleListView.b);
            }
        }
        if (!z3) {
            View view2 = c0208h.f;
            if (view2 == null) {
                view2 = c0208h.f3032r;
            }
            if (view2 != null) {
                int i5 = z4 ? i3 : 0;
                View viewFindViewById11 = window.findViewById(R.id.scrollIndicatorUp);
                View viewFindViewById12 = window.findViewById(R.id.scrollIndicatorDown);
                WeakHashMap weakHashMap = N.f4222a;
                E.d(view2, i4 | i5, 3);
                if (viewFindViewById11 != null) {
                    viewGroupB2.removeView(viewFindViewById11);
                }
                if (viewFindViewById12 != null) {
                    viewGroupB2.removeView(viewFindViewById12);
                }
            }
        }
        AlertController$RecycleListView alertController$RecycleListView2 = c0208h.f;
        if (alertController$RecycleListView2 == null || (listAdapter = c0208h.f3038x) == null) {
            return;
        }
        alertController$RecycleListView2.setAdapter(listAdapter);
        int i6 = c0208h.f3039y;
        if (i6 > -1) {
            alertController$RecycleListView2.setItemChecked(i6, true);
            alertController$RecycleListView2.setSelection(i6);
        }
    }

    @Override // android.app.Dialog, android.view.KeyEvent.Callback
    public final boolean onKeyDown(int i2, KeyEvent keyEvent) {
        NestedScrollView nestedScrollView = this.f3044e.f3032r;
        if (nestedScrollView == null || !nestedScrollView.j(keyEvent)) {
            return super.onKeyDown(i2, keyEvent);
        }
        return true;
    }

    @Override // android.app.Dialog, android.view.KeyEvent.Callback
    public final boolean onKeyUp(int i2, KeyEvent keyEvent) {
        NestedScrollView nestedScrollView = this.f3044e.f3032r;
        if (nestedScrollView == null || !nestedScrollView.j(keyEvent)) {
            return super.onKeyUp(i2, keyEvent);
        }
        return true;
    }

    @Override // android.app.Dialog
    public final void onStart() {
        super.onStart();
        e().d(k.ON_RESUME);
    }

    @Override // android.app.Dialog
    public final void onStop() {
        h();
        x xVar = (x) c();
        xVar.G();
        J j2 = xVar.f3121o;
        if (j2 != null) {
            j2.f2980v = false;
            p011h.k kVar = j2.f2979u;
            if (kVar != null) {
                kVar.a();
            }
        }
    }

    @Override // android.app.Dialog
    public final void setContentView(int i2) {
        c().m(i2);
    }

    @Override // android.app.Dialog
    public final void setTitle(int i2) {
        super.setTitle(i2);
        c().r(getContext().getString(i2));
    }

    @Override // android.app.Dialog
    public final void setContentView(View view) {
        c().n(view);
    }

    @Override // android.app.Dialog
    public final void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        c().p(view, layoutParams);
    }

    @Override // android.app.Dialog
    public final void setTitle(CharSequence charSequence) {
        j(charSequence);
        C0208h c0208h = this.f3044e;
        c0208h.f3019d = charSequence;
        TextView textView = c0208h.f3035u;
        if (textView != null) {
            textView.setText(charSequence);
        }
    }
}
