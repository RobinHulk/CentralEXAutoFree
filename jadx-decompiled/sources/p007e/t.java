package p007e;

import B.p;
import android.content.Context;
import android.content.res.Resources;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.ActionMode;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.SearchEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.view.accessibility.AccessibilityEvent;
import android.widget.PopupWindow;
import androidx.appcompat.widget.ActionBarContextView;
import androidx.appcompat.widget.ViewStubCompat;
import androidx.emoji2.text.q;
import com.ex.auto.R;
import java.util.ArrayList;
import java.util.List;
import java.util.WeakHashMap;
import p011h.a;
import p011h.d;
import p011h.e;
import p011h.m;
import p011h.n;
import p012i.l;
import p034y.A;
import p034y.B;
import p034y.N;
import p034y.V;

/* JADX INFO: loaded from: classes.dex */
public final class t implements Window.Callback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Window.Callback f3061a;
    public boolean b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f3062c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f3063d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ x f3064e;

    public t(x xVar, Window.Callback callback) {
        this.f3064e = xVar;
        if (callback == null) {
            throw new IllegalArgumentException("Window callback may not be null");
        }
        this.f3061a = callback;
    }

    public final void a(Window.Callback callback) {
        try {
            this.b = true;
            callback.onContentChanged();
        } finally {
            this.b = false;
        }
    }

    public final boolean b(int i2, Menu menu) {
        return this.f3061a.onMenuOpened(i2, menu);
    }

    public final void c(int i2, Menu menu) {
        this.f3061a.onPanelClosed(i2, menu);
    }

    public final void d(List list, Menu menu, int i2) {
        m.a(this.f3061a, list, menu, i2);
    }

    @Override // android.view.Window.Callback
    public final boolean dispatchGenericMotionEvent(MotionEvent motionEvent) {
        return this.f3061a.dispatchGenericMotionEvent(motionEvent);
    }

    @Override // android.view.Window.Callback
    public final boolean dispatchKeyEvent(KeyEvent keyEvent) {
        boolean z2 = this.f3062c;
        Window.Callback callback = this.f3061a;
        if (z2) {
            return callback.dispatchKeyEvent(keyEvent);
        }
        return this.f3064e.A(keyEvent) || callback.dispatchKeyEvent(keyEvent);
    }

    /* JADX WARN: Code duplicated, block: B:17:0x003b  */
    /* JADX WARN: Code duplicated, block: B:18:0x003d  */
    /* JADX WARN: Code duplicated, block: B:25:0x0052  */
    /* JADX WARN: Code duplicated, block: B:27:0x0056  */
    @Override // android.view.Window.Callback
    public final boolean dispatchKeyShortcutEvent(KeyEvent keyEvent) {
        w wVar;
        boolean z2;
        boolean zL;
        l lVar;
        boolean zPerformShortcut;
        if (this.f3061a.dispatchKeyShortcutEvent(keyEvent)) {
            return true;
        }
        int keyCode = keyEvent.getKeyCode();
        x xVar = this.f3064e;
        xVar.G();
        J j2 = xVar.f3121o;
        if (j2 == null) {
            wVar = xVar.f3098M;
            if (wVar == null && xVar.L(wVar, keyEvent.getKeyCode(), keyEvent)) {
                w wVar2 = xVar.f3098M;
                if (wVar2 != null) {
                    wVar2.f3078l = true;
                }
            } else {
                if (xVar.f3098M == null) {
                    w wVarF = xVar.F(0);
                    xVar.M(wVarF, keyEvent);
                    zL = xVar.L(wVarF, keyEvent.getKeyCode(), keyEvent);
                    wVarF.f3077k = false;
                    if (zL) {
                    }
                }
                z2 = false;
            }
            z2 = true;
        } else {
            I i2 = j2.f2969k;
            if (i2 == null || (lVar = i2.f2957d) == null) {
                zPerformShortcut = false;
            } else {
                lVar.setQwertyMode(KeyCharacterMap.load(keyEvent.getDeviceId()).getKeyboardType() != 1);
                zPerformShortcut = lVar.performShortcut(keyCode, keyEvent, 0);
            }
            if (zPerformShortcut) {
                z2 = true;
            } else {
                wVar = xVar.f3098M;
                if (wVar == null) {
                    if (xVar.f3098M == null) {
                        w wVarF2 = xVar.F(0);
                        xVar.M(wVarF2, keyEvent);
                        zL = xVar.L(wVarF2, keyEvent.getKeyCode(), keyEvent);
                        wVarF2.f3077k = false;
                        if (zL) {
                            z2 = true;
                        }
                    }
                    z2 = false;
                } else {
                    if (xVar.f3098M == null) {
                        w wVarF3 = xVar.F(0);
                        xVar.M(wVarF3, keyEvent);
                        zL = xVar.L(wVarF3, keyEvent.getKeyCode(), keyEvent);
                        wVarF3.f3077k = false;
                        if (zL) {
                            z2 = true;
                        }
                    }
                    z2 = false;
                }
            }
        }
        return z2;
    }

    @Override // android.view.Window.Callback
    public final boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        return this.f3061a.dispatchPopulateAccessibilityEvent(accessibilityEvent);
    }

    @Override // android.view.Window.Callback
    public final boolean dispatchTouchEvent(MotionEvent motionEvent) {
        return this.f3061a.dispatchTouchEvent(motionEvent);
    }

    @Override // android.view.Window.Callback
    public final boolean dispatchTrackballEvent(MotionEvent motionEvent) {
        return this.f3061a.dispatchTrackballEvent(motionEvent);
    }

    @Override // android.view.Window.Callback
    public final void onActionModeFinished(ActionMode actionMode) {
        this.f3061a.onActionModeFinished(actionMode);
    }

    @Override // android.view.Window.Callback
    public final void onActionModeStarted(ActionMode actionMode) {
        this.f3061a.onActionModeStarted(actionMode);
    }

    @Override // android.view.Window.Callback
    public final void onAttachedToWindow() {
        this.f3061a.onAttachedToWindow();
    }

    @Override // android.view.Window.Callback
    public final void onContentChanged() {
        if (this.b) {
            this.f3061a.onContentChanged();
        }
    }

    @Override // android.view.Window.Callback
    public final boolean onCreatePanelMenu(int i2, Menu menu) {
        if (i2 != 0 || (menu instanceof l)) {
            return this.f3061a.onCreatePanelMenu(i2, menu);
        }
        return false;
    }

    @Override // android.view.Window.Callback
    public final View onCreatePanelView(int i2) {
        return this.f3061a.onCreatePanelView(i2);
    }

    @Override // android.view.Window.Callback
    public final void onDetachedFromWindow() {
        this.f3061a.onDetachedFromWindow();
    }

    @Override // android.view.Window.Callback
    public final boolean onMenuItemSelected(int i2, MenuItem menuItem) {
        return this.f3061a.onMenuItemSelected(i2, menuItem);
    }

    @Override // android.view.Window.Callback
    public final boolean onMenuOpened(int i2, Menu menu) {
        b(i2, menu);
        x xVar = this.f3064e;
        if (i2 == 108) {
            xVar.G();
            J j2 = xVar.f3121o;
            if (j2 != null && true != j2.f2972n) {
                j2.f2972n = true;
                ArrayList arrayList = j2.f2973o;
                if (arrayList.size() > 0) {
                    arrayList.get(0).getClass();
                    throw new ClassCastException();
                }
            }
        } else {
            xVar.getClass();
        }
        return true;
    }

    @Override // android.view.Window.Callback
    public final void onPanelClosed(int i2, Menu menu) {
        if (this.f3063d) {
            this.f3061a.onPanelClosed(i2, menu);
            return;
        }
        c(i2, menu);
        x xVar = this.f3064e;
        if (i2 != 108) {
            if (i2 != 0) {
                xVar.getClass();
                return;
            }
            w wVarF = xVar.F(i2);
            if (wVarF.f3079m) {
                xVar.y(wVarF, false);
                return;
            }
            return;
        }
        xVar.G();
        J j2 = xVar.f3121o;
        if (j2 == null || !j2.f2972n) {
            return;
        }
        j2.f2972n = false;
        ArrayList arrayList = j2.f2973o;
        if (arrayList.size() <= 0) {
            return;
        }
        arrayList.get(0).getClass();
        throw new ClassCastException();
    }

    @Override // android.view.Window.Callback
    public final void onPointerCaptureChanged(boolean z2) {
        n.a(this.f3061a, z2);
    }

    @Override // android.view.Window.Callback
    public final boolean onPreparePanel(int i2, View view, Menu menu) {
        l lVar = menu instanceof l ? (l) menu : null;
        if (i2 == 0 && lVar == null) {
            return false;
        }
        if (lVar != null) {
            lVar.f3362x = true;
        }
        boolean zOnPreparePanel = this.f3061a.onPreparePanel(i2, view, menu);
        if (lVar != null) {
            lVar.f3362x = false;
        }
        return zOnPreparePanel;
    }

    @Override // android.view.Window.Callback
    public final void onProvideKeyboardShortcuts(List list, Menu menu, int i2) {
        l lVar = this.f3064e.F(0).f3074h;
        if (lVar != null) {
            d(list, lVar, i2);
        } else {
            d(list, menu, i2);
        }
    }

    @Override // android.view.Window.Callback
    public final boolean onSearchRequested(SearchEvent searchEvent) {
        return p011h.l.a(this.f3061a, searchEvent);
    }

    @Override // android.view.Window.Callback
    public final void onWindowAttributesChanged(WindowManager.LayoutParams layoutParams) {
        this.f3061a.onWindowAttributesChanged(layoutParams);
    }

    @Override // android.view.Window.Callback
    public final void onWindowFocusChanged(boolean z2) {
        this.f3061a.onWindowFocusChanged(z2);
    }

    /* JADX WARN: Code duplicated, block: B:64:0x0192  */
    @Override // android.view.Window.Callback
    public final ActionMode onWindowStartingActionMode(ActionMode.Callback callback, int i2) {
        boolean z2;
        ViewGroup viewGroup;
        int i3 = 1;
        x xVar = this.f3064e;
        xVar.getClass();
        if (i2 != 0) {
            return p011h.l.b(this.f3061a, callback, i2);
        }
        q qVar = new q(xVar.f3117k, callback);
        a aVar = xVar.f3127u;
        if (aVar != null) {
            aVar.a();
        }
        G.a aVar2 = new G.a(xVar, 10, qVar);
        xVar.G();
        J j2 = xVar.f3121o;
        if (j2 != null) {
            I i4 = j2.f2969k;
            if (i4 != null) {
                i4.a();
            }
            j2.f2964e.setHideOnContentScrollEnabled(false);
            j2.f2966h.e();
            I i5 = new I(j2, j2.f2966h.getContext(), aVar2);
            l lVar = i5.f2957d;
            lVar.w();
            try {
                boolean zD = ((q) i5.f2958e.b).d(i5, lVar);
                lVar.v();
                if (zD) {
                    j2.f2969k = i5;
                    i5.h();
                    j2.f2966h.c(i5);
                    j2.m0(true);
                } else {
                    i5 = null;
                }
                xVar.f3127u = i5;
            } catch (Throwable th) {
                lVar.v();
                throw th;
            }
        }
        if (xVar.f3127u == null) {
            V v2 = xVar.f3131y;
            if (v2 != null) {
                v2.b();
            }
            a aVar3 = xVar.f3127u;
            if (aVar3 != null) {
                aVar3.a();
            }
            if (xVar.f3128v == null) {
                boolean z3 = xVar.f3094I;
                Context context = xVar.f3117k;
                if (z3) {
                    TypedValue typedValue = new TypedValue();
                    Resources.Theme theme = context.getTheme();
                    theme.resolveAttribute(R.attr.actionBarTheme, typedValue, true);
                    if (typedValue.resourceId != 0) {
                        Resources.Theme themeNewTheme = context.getResources().newTheme();
                        themeNewTheme.setTo(theme);
                        themeNewTheme.applyStyle(typedValue.resourceId, true);
                        d dVar = new d(context, 0);
                        dVar.getTheme().setTo(themeNewTheme);
                        context = dVar;
                    }
                    xVar.f3128v = new ActionBarContextView(context, null);
                    PopupWindow popupWindow = new PopupWindow(context, (AttributeSet) null, R.attr.actionModePopupWindowStyle);
                    xVar.f3129w = popupWindow;
                    p.d(popupWindow, 2);
                    xVar.f3129w.setContentView(xVar.f3128v);
                    xVar.f3129w.setWidth(-1);
                    context.getTheme().resolveAttribute(R.attr.actionBarSize, typedValue, true);
                    xVar.f3128v.setContentHeight(TypedValue.complexToDimensionPixelSize(typedValue.data, context.getResources().getDisplayMetrics()));
                    xVar.f3129w.setHeight(-2);
                    xVar.f3130x = new o(xVar, i3);
                } else {
                    ViewStubCompat viewStubCompat = (ViewStubCompat) xVar.f3086A.findViewById(R.id.action_mode_bar_stub);
                    if (viewStubCompat != null) {
                        xVar.G();
                        J j3 = xVar.f3121o;
                        Context contextN0 = j3 != null ? j3.n0() : null;
                        if (contextN0 != null) {
                            context = contextN0;
                        }
                        viewStubCompat.setLayoutInflater(LayoutInflater.from(context));
                        xVar.f3128v = (ActionBarContextView) viewStubCompat.a();
                    }
                }
            }
            if (xVar.f3128v != null) {
                V v3 = xVar.f3131y;
                if (v3 != null) {
                    v3.b();
                }
                xVar.f3128v.e();
                Context context2 = xVar.f3128v.getContext();
                ActionBarContextView actionBarContextView = xVar.f3128v;
                e eVar = new e();
                eVar.f3221c = context2;
                eVar.f3222d = actionBarContextView;
                eVar.f3223e = aVar2;
                l lVar2 = new l(actionBarContextView.getContext());
                lVar2.f3350l = 1;
                eVar.f3225h = lVar2;
                lVar2.f3344e = eVar;
                if (((q) aVar2.b).d(eVar, lVar2)) {
                    eVar.h();
                    xVar.f3128v.c(eVar);
                    xVar.f3127u = eVar;
                    if (!xVar.f3132z || (viewGroup = xVar.f3086A) == null) {
                        z2 = false;
                    } else {
                        WeakHashMap weakHashMap = N.f4222a;
                        if (A.c(viewGroup)) {
                            z2 = true;
                        } else {
                            z2 = false;
                        }
                    }
                    if (z2) {
                        xVar.f3128v.setAlpha(0.0f);
                        V vA = N.a(xVar.f3128v);
                        vA.a(1.0f);
                        xVar.f3131y = vA;
                        vA.d(new q(xVar, i3));
                    } else {
                        xVar.f3128v.setAlpha(1.0f);
                        xVar.f3128v.setVisibility(0);
                        if (xVar.f3128v.getParent() instanceof View) {
                            View view = (View) xVar.f3128v.getParent();
                            WeakHashMap weakHashMap2 = N.f4222a;
                            B.c(view);
                        }
                    }
                    if (xVar.f3129w != null) {
                        xVar.f3118l.getDecorView().post(xVar.f3130x);
                    }
                } else {
                    xVar.f3127u = null;
                }
            }
            xVar.O();
            xVar.f3127u = xVar.f3127u;
        }
        xVar.O();
        a aVar4 = xVar.f3127u;
        if (aVar4 != null) {
            return qVar.b(aVar4);
        }
        return null;
    }

    @Override // android.view.Window.Callback
    public final boolean onSearchRequested() {
        return this.f3061a.onSearchRequested();
    }

    @Override // android.view.Window.Callback
    public final ActionMode onWindowStartingActionMode(ActionMode.Callback callback) {
        return null;
    }
}
