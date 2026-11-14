package p007e;

import A.b;
import M.C0003d;
import android.R;
import android.app.Activity;
import android.app.Dialog;
import android.app.UiModeManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.location.LocationManager;
import android.media.AudioManager;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.AndroidRuntimeException;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.PopupWindow;
import android.widget.TextView;
import android.window.OnBackInvokedCallback;
import android.window.OnBackInvokedDispatcher;
import androidx.appcompat.widget.ActionBarContextView;
import androidx.appcompat.widget.ActionBarOverlayLayout;
import androidx.appcompat.widget.ActionMenuView;
import androidx.appcompat.widget.ContentFrameLayout;
import androidx.appcompat.widget.Toolbar;
import androidx.fragment.app.AbstractC0178f;
import androidx.lifecycle.q;
import java.lang.ref.WeakReference;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.LinkedHashSet;
import java.util.Locale;
import java.util.WeakHashMap;
import p011h.a;
import p011h.i;
import p012i.h;
import p012i.j;
import p012i.l;
import p012i.n;
import p014j.C0226f;
import p014j.C0234j;
import p014j.C0251s;
import p014j.InterfaceC0233i0;
import p014j.InterfaceC0235j0;
import p014j.l1;
import p014j.q1;
import p014j.u1;
import p020m.k;
import p031u.d;
import p031u.e;
import p031u.f;
import p034y.A;
import p034y.AbstractC0290y;
import p034y.D;
import p034y.InterfaceC0277k;
import p034y.N;
import p034y.V;

/* JADX INFO: loaded from: classes.dex */
public final class x extends n implements j, LayoutInflater.Factory2 {
    public static final k h0 = new k();

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    public static final int[] f3083i0 = {R.attr.windowBackground};

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    public static final boolean f3084j0 = !"robolectric".equals(Build.FINGERPRINT);

    /* JADX INFO: renamed from: k0, reason: collision with root package name */
    public static final boolean f3085k0 = true;

    /* JADX INFO: renamed from: A, reason: collision with root package name */
    public ViewGroup f3086A;

    /* JADX INFO: renamed from: B, reason: collision with root package name */
    public TextView f3087B;

    /* JADX INFO: renamed from: C, reason: collision with root package name */
    public View f3088C;

    /* JADX INFO: renamed from: D, reason: collision with root package name */
    public boolean f3089D;

    /* JADX INFO: renamed from: E, reason: collision with root package name */
    public boolean f3090E;

    /* JADX INFO: renamed from: F, reason: collision with root package name */
    public boolean f3091F;

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public boolean f3092G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public boolean f3093H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public boolean f3094I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public boolean f3095J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public boolean f3096K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public w[] f3097L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public w f3098M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public boolean f3099N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public boolean f3100O;
    public boolean P;

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public boolean f3101Q;

    /* JADX INFO: renamed from: R, reason: collision with root package name */
    public Configuration f3102R;
    public final int S;

    /* JADX INFO: renamed from: T, reason: collision with root package name */
    public int f3103T;

    /* JADX INFO: renamed from: U, reason: collision with root package name */
    public int f3104U;
    public boolean V;

    /* JADX INFO: renamed from: W, reason: collision with root package name */
    public u f3105W;

    /* JADX INFO: renamed from: X, reason: collision with root package name */
    public u f3106X;

    /* JADX INFO: renamed from: Y, reason: collision with root package name */
    public boolean f3107Y;

    /* JADX INFO: renamed from: Z, reason: collision with root package name */
    public int f3108Z;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public boolean f3110b0;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public Rect f3111c0;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    public Rect f3112d0;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    public A f3113e0;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    public OnBackInvokedDispatcher f3114f0;

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    public OnBackInvokedCallback f3115g0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final Object f3116j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final Context f3117k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public Window f3118l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public t f3119m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final Object f3120n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public J f3121o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public i f3122p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public CharSequence f3123q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public InterfaceC0233i0 f3124r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public p f3125s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public p f3126t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public a f3127u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public ActionBarContextView f3128v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public PopupWindow f3129w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public o f3130x;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public boolean f3132z;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public V f3131y = null;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public final o f3109a0 = new o(this, 0);

    public x(Context context, Window window, k kVar, Object obj) {
        AbstractActivityC0210j abstractActivityC0210j;
        this.S = -100;
        this.f3117k = context;
        this.f3116j = obj;
        if (obj instanceof Dialog) {
            while (true) {
                if (context != null) {
                    if (context instanceof AbstractActivityC0210j) {
                        abstractActivityC0210j = (AbstractActivityC0210j) context;
                        break;
                    } else if (context instanceof ContextWrapper) {
                        context = ((ContextWrapper) context).getBaseContext();
                    }
                }
                abstractActivityC0210j = null;
                break;
            }
            if (abstractActivityC0210j != null) {
                this.S = ((x) abstractActivityC0210j.i()).S;
            }
        }
        if (this.S == -100) {
            k kVar2 = h0;
            Integer num = (Integer) kVar2.getOrDefault(this.f3116j.getClass().getName(), null);
            if (num != null) {
                this.S = num.intValue();
                kVar2.remove(this.f3116j.getClass().getName());
            }
        }
        if (window != null) {
            u(window);
        }
        C0251s.d();
    }

    public static e v(Context context) {
        e eVar;
        e eVar2;
        if (Build.VERSION.SDK_INT >= 33 || (eVar = n.f3052c) == null) {
            return null;
        }
        e eVarB = r.b(context.getApplicationContext().getResources().getConfiguration());
        if (eVar.b()) {
            eVar2 = e.b;
        } else {
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            int i2 = 0;
            while (true) {
                f fVar = eVar.f4137a;
                if (i2 >= eVarB.f4137a.f4138a.size() + fVar.f4138a.size()) {
                    break;
                }
                Locale locale = i2 < fVar.f4138a.size() ? fVar.f4138a.get(i2) : eVarB.f4137a.f4138a.get(i2 - fVar.f4138a.size());
                if (locale != null) {
                    linkedHashSet.add(locale);
                }
                i2++;
            }
            eVar2 = new e(new f(d.a((Locale[]) linkedHashSet.toArray(new Locale[linkedHashSet.size()]))));
        }
        return eVar2.b() ? eVarB : eVar2;
    }

    public static Configuration z(Context context, int i2, e eVar, Configuration configuration, boolean z2) {
        int i3;
        if (i2 == 1) {
            i3 = 16;
        } else if (i2 != 2) {
            i3 = z2 ? 0 : context.getApplicationContext().getResources().getConfiguration().uiMode & 48;
        } else {
            i3 = 32;
        }
        Configuration configuration2 = new Configuration();
        configuration2.fontScale = 0.0f;
        if (configuration != null) {
            configuration2.setTo(configuration);
        }
        configuration2.uiMode = i3 | (configuration2.uiMode & (-49));
        if (eVar != null) {
            r.d(configuration2, eVar);
        }
        return configuration2;
    }

    /* JADX WARN: Code duplicated, block: B:75:0x00ff  */
    /* JADX WARN: Code duplicated, block: B:88:0x011d  */
    public final boolean A(KeyEvent keyEvent) {
        boolean z2;
        boolean z3;
        boolean zM;
        ActionMenuView actionMenuView;
        C0234j c0234j;
        C0234j c0234j2;
        C0234j c0234j3;
        Object obj = this.f3116j;
        if (((obj instanceof InterfaceC0277k) || (obj instanceof DialogC0209i)) && this.f3118l.getDecorView() != null) {
            WeakHashMap weakHashMap = N.f4222a;
        }
        if (keyEvent.getKeyCode() == 82) {
            t tVar = this.f3119m;
            Window.Callback callback = this.f3118l.getCallback();
            tVar.getClass();
            try {
                tVar.f3062c = true;
                boolean zDispatchKeyEvent = callback.dispatchKeyEvent(keyEvent);
                tVar.f3062c = false;
                if (zDispatchKeyEvent) {
                    return true;
                }
            } catch (Throwable th) {
                tVar.f3062c = false;
                throw th;
            }
        }
        int keyCode = keyEvent.getKeyCode();
        if (keyEvent.getAction() == 0) {
            if (keyCode == 4) {
                this.f3099N = (keyEvent.getFlags() & 128) != 0;
            } else if (keyCode == 82) {
                if (keyEvent.getRepeatCount() != 0) {
                    return true;
                }
                w wVarF = F(0);
                if (wVarF.f3079m) {
                    return true;
                }
                M(wVarF, keyEvent);
                return true;
            }
        } else if (keyCode != 4) {
            if (keyCode == 82) {
                if (this.f3127u != null) {
                    return true;
                }
                w wVarF2 = F(0);
                InterfaceC0233i0 interfaceC0233i0 = this.f3124r;
                Context context = this.f3117k;
                if (interfaceC0233i0 != null) {
                    ActionBarOverlayLayout actionBarOverlayLayout = (ActionBarOverlayLayout) interfaceC0233i0;
                    actionBarOverlayLayout.k();
                    Toolbar toolbar = ((q1) actionBarOverlayLayout.f1496e).f3662a;
                    if (toolbar.getVisibility() != 0 || (actionMenuView = toolbar.f1594a) == null || !actionMenuView.f1520s || ViewConfiguration.get(context).hasPermanentMenuKey()) {
                        z2 = wVarF2.f3079m;
                        if (!z2 || wVarF2.f3078l) {
                            y(wVarF2, true);
                            z3 = z2;
                        } else {
                            if (wVarF2.f3077k) {
                                if (wVarF2.f3081o) {
                                    wVarF2.f3077k = false;
                                    zM = M(wVarF2, keyEvent);
                                } else {
                                    zM = true;
                                }
                                if (zM) {
                                    K(wVarF2, keyEvent);
                                    z3 = true;
                                }
                            }
                            z3 = false;
                        }
                    } else {
                        ActionBarOverlayLayout actionBarOverlayLayout2 = (ActionBarOverlayLayout) this.f3124r;
                        actionBarOverlayLayout2.k();
                        ActionMenuView actionMenuView2 = ((q1) actionBarOverlayLayout2.f1496e).f3662a.f1594a;
                        if (actionMenuView2 == null || (c0234j2 = actionMenuView2.f1521t) == null || !c0234j2.k()) {
                            if (!this.f3101Q && M(wVarF2, keyEvent)) {
                                ActionBarOverlayLayout actionBarOverlayLayout3 = (ActionBarOverlayLayout) this.f3124r;
                                actionBarOverlayLayout3.k();
                                ActionMenuView actionMenuView3 = ((q1) actionBarOverlayLayout3.f1496e).f3662a.f1594a;
                                if (actionMenuView3 != null && (c0234j = actionMenuView3.f1521t) != null && c0234j.l()) {
                                    z3 = true;
                                }
                            }
                            z3 = false;
                        } else {
                            ActionBarOverlayLayout actionBarOverlayLayout4 = (ActionBarOverlayLayout) this.f3124r;
                            actionBarOverlayLayout4.k();
                            ActionMenuView actionMenuView4 = ((q1) actionBarOverlayLayout4.f1496e).f3662a.f1594a;
                            if (actionMenuView4 == null || (c0234j3 = actionMenuView4.f1521t) == null || !c0234j3.f()) {
                                z3 = false;
                            } else {
                                z3 = true;
                            }
                        }
                    }
                } else {
                    z2 = wVarF2.f3079m;
                    if (z2) {
                    }
                    y(wVarF2, true);
                    z3 = z2;
                }
                if (!z3) {
                    return true;
                }
                AudioManager audioManager = (AudioManager) context.getApplicationContext().getSystemService("audio");
                if (audioManager != null) {
                    audioManager.playSoundEffect(0);
                    return true;
                }
                Log.w("AppCompatDelegate", "Couldn't get audio manager");
                return true;
            }
        } else if (J()) {
            return true;
        }
        return false;
    }

    public final void B(int i2) {
        w wVarF = F(i2);
        if (wVarF.f3074h != null) {
            Bundle bundle = new Bundle();
            wVarF.f3074h.t(bundle);
            if (bundle.size() > 0) {
                wVarF.f3082p = bundle;
            }
            wVarF.f3074h.w();
            wVarF.f3074h.clear();
        }
        wVarF.f3081o = true;
        wVarF.f3080n = true;
        if ((i2 == 108 || i2 == 0) && this.f3124r != null) {
            w wVarF2 = F(0);
            wVarF2.f3077k = false;
            M(wVarF2, null);
        }
    }

    public final void C() {
        ViewGroup viewGroup;
        int i2 = 1;
        int i3 = 0;
        if (this.f3132z) {
            return;
        }
        int[] iArr = p005d.a.f2913j;
        Context context = this.f3117k;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(iArr);
        if (!typedArrayObtainStyledAttributes.hasValue(117)) {
            typedArrayObtainStyledAttributes.recycle();
            throw new IllegalStateException("You need to use a Theme.AppCompat theme (or descendant) with this activity.");
        }
        if (typedArrayObtainStyledAttributes.getBoolean(126, false)) {
            k(1);
        } else if (typedArrayObtainStyledAttributes.getBoolean(117, false)) {
            k(108);
        }
        if (typedArrayObtainStyledAttributes.getBoolean(118, false)) {
            k(109);
        }
        if (typedArrayObtainStyledAttributes.getBoolean(119, false)) {
            k(10);
        }
        this.f3094I = typedArrayObtainStyledAttributes.getBoolean(0, false);
        typedArrayObtainStyledAttributes.recycle();
        D();
        this.f3118l.getDecorView();
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(context);
        if (this.f3095J) {
            viewGroup = this.f3093H ? (ViewGroup) layoutInflaterFrom.inflate(com.ex.auto.R.layout.abc_screen_simple_overlay_action_mode, (ViewGroup) null) : (ViewGroup) layoutInflaterFrom.inflate(com.ex.auto.R.layout.abc_screen_simple, (ViewGroup) null);
        } else if (this.f3094I) {
            viewGroup = (ViewGroup) layoutInflaterFrom.inflate(com.ex.auto.R.layout.abc_dialog_title_material, (ViewGroup) null);
            this.f3092G = false;
            this.f3091F = false;
        } else if (this.f3091F) {
            TypedValue typedValue = new TypedValue();
            context.getTheme().resolveAttribute(com.ex.auto.R.attr.actionBarTheme, typedValue, true);
            viewGroup = (ViewGroup) LayoutInflater.from(typedValue.resourceId != 0 ? new p011h.d(context, typedValue.resourceId) : context).inflate(com.ex.auto.R.layout.abc_screen_toolbar, (ViewGroup) null);
            InterfaceC0233i0 interfaceC0233i0 = (InterfaceC0233i0) viewGroup.findViewById(com.ex.auto.R.id.decor_content_parent);
            this.f3124r = interfaceC0233i0;
            interfaceC0233i0.setWindowCallback(this.f3118l.getCallback());
            if (this.f3092G) {
                ((ActionBarOverlayLayout) this.f3124r).j(109);
            }
            if (this.f3089D) {
                ((ActionBarOverlayLayout) this.f3124r).j(2);
            }
            if (this.f3090E) {
                ((ActionBarOverlayLayout) this.f3124r).j(5);
            }
        } else {
            viewGroup = null;
        }
        if (viewGroup == null) {
            throw new IllegalArgumentException("AppCompat does not support the current theme features: { windowActionBar: " + this.f3091F + ", windowActionBarOverlay: " + this.f3092G + ", android:windowIsFloating: " + this.f3094I + ", windowActionModeOverlay: " + this.f3093H + ", windowNoTitle: " + this.f3095J + " }");
        }
        p pVar = new p(this, i3);
        WeakHashMap weakHashMap = N.f4222a;
        D.u(viewGroup, pVar);
        if (this.f3124r == null) {
            this.f3087B = (TextView) viewGroup.findViewById(com.ex.auto.R.id.title);
        }
        Method method = u1.f3699a;
        try {
            Method method2 = viewGroup.getClass().getMethod("makeOptionalFitsSystemWindows", null);
            if (!method2.isAccessible()) {
                method2.setAccessible(true);
            }
            method2.invoke(viewGroup, null);
        } catch (IllegalAccessException e2) {
            Log.d("ViewUtils", "Could not invoke makeOptionalFitsSystemWindows", e2);
        } catch (NoSuchMethodException unused) {
            Log.d("ViewUtils", "Could not find method makeOptionalFitsSystemWindows. Oh well...");
        } catch (InvocationTargetException e3) {
            Log.d("ViewUtils", "Could not invoke makeOptionalFitsSystemWindows", e3);
        }
        ContentFrameLayout contentFrameLayout = (ContentFrameLayout) viewGroup.findViewById(com.ex.auto.R.id.action_bar_activity_content);
        ViewGroup viewGroup2 = (ViewGroup) this.f3118l.findViewById(R.id.content);
        if (viewGroup2 != null) {
            while (viewGroup2.getChildCount() > 0) {
                View childAt = viewGroup2.getChildAt(0);
                viewGroup2.removeViewAt(0);
                contentFrameLayout.addView(childAt);
            }
            viewGroup2.setId(-1);
            contentFrameLayout.setId(R.id.content);
            if (viewGroup2 instanceof FrameLayout) {
                ((FrameLayout) viewGroup2).setForeground(null);
            }
        }
        this.f3118l.setContentView(viewGroup);
        contentFrameLayout.setAttachListener(new p(this, i2));
        this.f3086A = viewGroup;
        Object obj = this.f3116j;
        CharSequence title = obj instanceof Activity ? ((Activity) obj).getTitle() : this.f3123q;
        if (!TextUtils.isEmpty(title)) {
            InterfaceC0233i0 interfaceC0233i1 = this.f3124r;
            if (interfaceC0233i1 != null) {
                interfaceC0233i1.setWindowTitle(title);
            } else {
                J j2 = this.f3121o;
                if (j2 != null) {
                    q1 q1Var = (q1) j2.f2965g;
                    if (!q1Var.f3666g) {
                        q1Var.f3667h = title;
                        if ((q1Var.b & 8) != 0) {
                            Toolbar toolbar = q1Var.f3662a;
                            toolbar.setTitle(title);
                            if (q1Var.f3666g) {
                                N.j(toolbar.getRootView(), title);
                            }
                        }
                    }
                } else {
                    TextView textView = this.f3087B;
                    if (textView != null) {
                        textView.setText(title);
                    }
                }
            }
        }
        ContentFrameLayout contentFrameLayout2 = (ContentFrameLayout) this.f3086A.findViewById(R.id.content);
        View decorView = this.f3118l.getDecorView();
        contentFrameLayout2.f1535g.set(decorView.getPaddingLeft(), decorView.getPaddingTop(), decorView.getPaddingRight(), decorView.getPaddingBottom());
        WeakHashMap weakHashMap2 = N.f4222a;
        if (A.c(contentFrameLayout2)) {
            contentFrameLayout2.requestLayout();
        }
        TypedArray typedArrayObtainStyledAttributes2 = context.obtainStyledAttributes(iArr);
        typedArrayObtainStyledAttributes2.getValue(124, contentFrameLayout2.getMinWidthMajor());
        typedArrayObtainStyledAttributes2.getValue(125, contentFrameLayout2.getMinWidthMinor());
        if (typedArrayObtainStyledAttributes2.hasValue(122)) {
            typedArrayObtainStyledAttributes2.getValue(122, contentFrameLayout2.getFixedWidthMajor());
        }
        if (typedArrayObtainStyledAttributes2.hasValue(123)) {
            typedArrayObtainStyledAttributes2.getValue(123, contentFrameLayout2.getFixedWidthMinor());
        }
        if (typedArrayObtainStyledAttributes2.hasValue(120)) {
            typedArrayObtainStyledAttributes2.getValue(120, contentFrameLayout2.getFixedHeightMajor());
        }
        if (typedArrayObtainStyledAttributes2.hasValue(121)) {
            typedArrayObtainStyledAttributes2.getValue(121, contentFrameLayout2.getFixedHeightMinor());
        }
        typedArrayObtainStyledAttributes2.recycle();
        contentFrameLayout2.requestLayout();
        this.f3132z = true;
        w wVarF = F(0);
        if (this.f3101Q || wVarF.f3074h != null) {
            return;
        }
        H(108);
    }

    public final void D() {
        if (this.f3118l == null) {
            Object obj = this.f3116j;
            if (obj instanceof Activity) {
                u(((Activity) obj).getWindow());
            }
        }
        if (this.f3118l == null) {
            throw new IllegalStateException("We have not been given a Window");
        }
    }

    public final AbstractC0178f E(Context context) {
        if (this.f3105W == null) {
            if (C0003d.f213e == null) {
                Context applicationContext = context.getApplicationContext();
                C0003d.f213e = new C0003d(applicationContext, (LocationManager) applicationContext.getSystemService("location"));
            }
            this.f3105W = new u(this, C0003d.f213e);
        }
        return this.f3105W;
    }

    public final w F(int i2) {
        w[] wVarArr = this.f3097L;
        if (wVarArr == null || wVarArr.length <= i2) {
            w[] wVarArr2 = new w[i2 + 1];
            if (wVarArr != null) {
                System.arraycopy(wVarArr, 0, wVarArr2, 0, wVarArr.length);
            }
            this.f3097L = wVarArr2;
            wVarArr = wVarArr2;
        }
        w wVar = wVarArr[i2];
        if (wVar != null) {
            return wVar;
        }
        w wVar2 = new w();
        wVar2.f3069a = i2;
        wVar2.f3080n = false;
        wVarArr[i2] = wVar2;
        return wVar2;
    }

    public final void G() {
        C();
        if (this.f3091F && this.f3121o == null) {
            Object obj = this.f3116j;
            if (obj instanceof Activity) {
                this.f3121o = new J((Activity) obj, this.f3092G);
            } else if (obj instanceof Dialog) {
                this.f3121o = new J((Dialog) obj);
            }
            J j2 = this.f3121o;
            if (j2 != null) {
                j2.p0(this.f3110b0);
            }
        }
    }

    public final void H(int i2) {
        this.f3108Z = (1 << i2) | this.f3108Z;
        if (this.f3107Y) {
            return;
        }
        View decorView = this.f3118l.getDecorView();
        o oVar = this.f3109a0;
        WeakHashMap weakHashMap = N.f4222a;
        AbstractC0290y.m(decorView, oVar);
        this.f3107Y = true;
    }

    public final int I(Context context, int i2) {
        if (i2 == -100) {
            return -1;
        }
        if (i2 != -1) {
            if (i2 == 0) {
                if (((UiModeManager) context.getApplicationContext().getSystemService("uimode")).getNightMode() == 0) {
                    return -1;
                }
                return E(context).f();
            }
            if (i2 != 1 && i2 != 2) {
                if (i2 != 3) {
                    throw new IllegalStateException("Unknown value set for night mode. Please use one of the MODE_NIGHT values from AppCompatDelegate.");
                }
                if (this.f3106X == null) {
                    this.f3106X = new u(this, context);
                }
                return this.f3106X.f();
            }
        }
        return i2;
    }

    public final boolean J() {
        InterfaceC0235j0 interfaceC0235j0;
        l1 l1Var;
        boolean z2 = this.f3099N;
        this.f3099N = false;
        w wVarF = F(0);
        if (wVarF.f3079m) {
            if (!z2) {
                y(wVarF, true);
            }
            return true;
        }
        a aVar = this.f3127u;
        if (aVar != null) {
            aVar.a();
            return true;
        }
        G();
        J j2 = this.f3121o;
        if (j2 == null || (interfaceC0235j0 = j2.f2965g) == null || (l1Var = ((q1) interfaceC0235j0).f3662a.f1589L) == null || l1Var.b == null) {
            return false;
        }
        l1 l1Var2 = ((q1) interfaceC0235j0).f3662a.f1589L;
        n nVar = l1Var2 == null ? null : l1Var2.b;
        if (nVar != null) {
            nVar.collapseActionView();
        }
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:100:0x01d1  */
    /* JADX WARN: Code duplicated, block: B:104:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x0173, code lost:
    
        if (r3.f.getCount() > 0) goto L88;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void K(p007e.w r18, android.view.KeyEvent r19) {
        /*
            Method dump skipped, instruction units count: 472
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p007e.x.K(e.w, android.view.KeyEvent):void");
    }

    public final boolean L(w wVar, int i2, KeyEvent keyEvent) {
        l lVar;
        if (keyEvent.isSystem()) {
            return false;
        }
        if ((wVar.f3077k || M(wVar, keyEvent)) && (lVar = wVar.f3074h) != null) {
            return lVar.performShortcut(i2, keyEvent, 1);
        }
        return false;
    }

    public final boolean M(w wVar, KeyEvent keyEvent) {
        InterfaceC0233i0 interfaceC0233i0;
        InterfaceC0233i0 interfaceC0233i1;
        Resources.Theme themeNewTheme;
        InterfaceC0233i0 interfaceC0233i2;
        InterfaceC0233i0 interfaceC0233i3;
        if (this.f3101Q) {
            return false;
        }
        if (wVar.f3077k) {
            return true;
        }
        w wVar2 = this.f3098M;
        if (wVar2 != null && wVar2 != wVar) {
            y(wVar2, false);
        }
        Window.Callback callback = this.f3118l.getCallback();
        int i2 = wVar.f3069a;
        if (callback != null) {
            wVar.f3073g = callback.onCreatePanelView(i2);
        }
        boolean z2 = i2 == 0 || i2 == 108;
        if (z2 && (interfaceC0233i3 = this.f3124r) != null) {
            ActionBarOverlayLayout actionBarOverlayLayout = (ActionBarOverlayLayout) interfaceC0233i3;
            actionBarOverlayLayout.k();
            ((q1) actionBarOverlayLayout.f1496e).f3671l = true;
        }
        if (wVar.f3073g == null) {
            l lVar = wVar.f3074h;
            if (lVar == null || wVar.f3081o) {
                if (lVar == null) {
                    Context context = this.f3117k;
                    if ((i2 == 0 || i2 == 108) && this.f3124r != null) {
                        TypedValue typedValue = new TypedValue();
                        Resources.Theme theme = context.getTheme();
                        theme.resolveAttribute(com.ex.auto.R.attr.actionBarTheme, typedValue, true);
                        if (typedValue.resourceId != 0) {
                            themeNewTheme = context.getResources().newTheme();
                            themeNewTheme.setTo(theme);
                            themeNewTheme.applyStyle(typedValue.resourceId, true);
                            themeNewTheme.resolveAttribute(com.ex.auto.R.attr.actionBarWidgetTheme, typedValue, true);
                        } else {
                            theme.resolveAttribute(com.ex.auto.R.attr.actionBarWidgetTheme, typedValue, true);
                            themeNewTheme = null;
                        }
                        if (typedValue.resourceId != 0) {
                            if (themeNewTheme == null) {
                                themeNewTheme = context.getResources().newTheme();
                                themeNewTheme.setTo(theme);
                            }
                            themeNewTheme.applyStyle(typedValue.resourceId, true);
                        }
                        if (themeNewTheme != null) {
                            p011h.d dVar = new p011h.d(context, 0);
                            dVar.getTheme().setTo(themeNewTheme);
                            context = dVar;
                        }
                    }
                    l lVar2 = new l(context);
                    lVar2.f3344e = this;
                    l lVar3 = wVar.f3074h;
                    if (lVar2 != lVar3) {
                        if (lVar3 != null) {
                            lVar3.r(wVar.f3075i);
                        }
                        wVar.f3074h = lVar2;
                        h hVar = wVar.f3075i;
                        if (hVar != null) {
                            lVar2.b(hVar, lVar2.f3341a);
                        }
                    }
                    if (wVar.f3074h == null) {
                        return false;
                    }
                }
                if (z2 && (interfaceC0233i1 = this.f3124r) != null) {
                    if (this.f3125s == null) {
                        this.f3125s = new p(this, 2);
                    }
                    ((ActionBarOverlayLayout) interfaceC0233i1).l(wVar.f3074h, this.f3125s);
                }
                wVar.f3074h.w();
                if (!callback.onCreatePanelMenu(i2, wVar.f3074h)) {
                    l lVar4 = wVar.f3074h;
                    if (lVar4 != null) {
                        if (lVar4 != null) {
                            lVar4.r(wVar.f3075i);
                        }
                        wVar.f3074h = null;
                    }
                    if (z2 && (interfaceC0233i0 = this.f3124r) != null) {
                        ((ActionBarOverlayLayout) interfaceC0233i0).l(null, this.f3125s);
                    }
                    return false;
                }
                wVar.f3081o = false;
            }
            wVar.f3074h.w();
            Bundle bundle = wVar.f3082p;
            if (bundle != null) {
                wVar.f3074h.s(bundle);
                wVar.f3082p = null;
            }
            if (!callback.onPreparePanel(0, wVar.f3073g, wVar.f3074h)) {
                if (z2 && (interfaceC0233i2 = this.f3124r) != null) {
                    ((ActionBarOverlayLayout) interfaceC0233i2).l(null, this.f3125s);
                }
                wVar.f3074h.v();
                return false;
            }
            wVar.f3074h.setQwertyMode(KeyCharacterMap.load(keyEvent != null ? keyEvent.getDeviceId() : -1).getKeyboardType() != 1);
            wVar.f3074h.v();
        }
        wVar.f3077k = true;
        wVar.f3078l = false;
        this.f3098M = wVar;
        return true;
    }

    public final void N() {
        if (this.f3132z) {
            throw new AndroidRuntimeException("Window feature must be requested before adding content");
        }
    }

    public final void O() {
        OnBackInvokedCallback onBackInvokedCallback;
        if (Build.VERSION.SDK_INT >= 33) {
            boolean z2 = false;
            if (this.f3114f0 != null && (F(0).f3079m || this.f3127u != null)) {
                z2 = true;
            }
            if (z2 && this.f3115g0 == null) {
                this.f3115g0 = s.b(this.f3114f0, this);
            } else {
                if (z2 || (onBackInvokedCallback = this.f3115g0) == null) {
                    return;
                }
                s.c(this.f3114f0, onBackInvokedCallback);
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0048, code lost:
    
        if (r6.k() != false) goto L20;
     */
    @Override // p012i.j
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void b(p012i.l r6) {
        /*
            Method dump skipped, instruction units count: 246
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p007e.x.b(i.l):void");
    }

    @Override // p007e.n
    public final void e() {
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(this.f3117k);
        if (layoutInflaterFrom.getFactory() == null) {
            layoutInflaterFrom.setFactory2(this);
        } else {
            if (layoutInflaterFrom.getFactory2() instanceof x) {
                return;
            }
            Log.i("AppCompatDelegate", "The Activity's LayoutInflater already has a Factory installed so we can not install AppCompat's");
        }
    }

    @Override // p007e.n
    public final void f() {
        if (this.f3121o != null) {
            G();
            this.f3121o.getClass();
            H(0);
        }
    }

    @Override // p007e.n
    public final void h() {
        String strC;
        this.f3100O = true;
        t(false, true);
        D();
        Object obj = this.f3116j;
        if (obj instanceof Activity) {
            try {
                Activity activity = (Activity) obj;
                try {
                    strC = b.C(activity, activity.getComponentName());
                } catch (PackageManager.NameNotFoundException e2) {
                    throw new IllegalArgumentException(e2);
                }
            } catch (IllegalArgumentException unused) {
                strC = null;
            }
            if (strC != null) {
                J j2 = this.f3121o;
                if (j2 == null) {
                    this.f3110b0 = true;
                } else {
                    j2.p0(true);
                }
            }
            synchronized (n.f3056h) {
                n.j(this);
                n.f3055g.add(new WeakReference(this));
            }
        }
        this.f3102R = new Configuration(this.f3117k.getResources().getConfiguration());
        this.P = true;
    }

    /* JADX WARN: Code duplicated, block: B:22:0x004d  */
    @Override // p007e.n
    public final void i() {
        if (this.f3116j instanceof Activity) {
            synchronized (n.f3056h) {
                n.j(this);
            }
        }
        if (this.f3107Y) {
            this.f3118l.getDecorView().removeCallbacks(this.f3109a0);
        }
        this.f3101Q = true;
        if (this.S != -100) {
            Object obj = this.f3116j;
            if ((obj instanceof Activity) && ((Activity) obj).isChangingConfigurations()) {
                h0.put(this.f3116j.getClass().getName(), Integer.valueOf(this.S));
            } else {
                h0.remove(this.f3116j.getClass().getName());
            }
        } else {
            h0.remove(this.f3116j.getClass().getName());
        }
        u uVar = this.f3105W;
        if (uVar != null) {
            uVar.c();
        }
        u uVar2 = this.f3106X;
        if (uVar2 != null) {
            uVar2.c();
        }
    }

    @Override // p007e.n
    public final boolean k(int i2) {
        if (i2 == 8) {
            Log.i("AppCompatDelegate", "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR id when requesting this feature.");
            i2 = 108;
        } else if (i2 == 9) {
            Log.i("AppCompatDelegate", "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY id when requesting this feature.");
            i2 = 109;
        }
        if (this.f3095J && i2 == 108) {
            return false;
        }
        if (this.f3091F && i2 == 1) {
            this.f3091F = false;
        }
        if (i2 == 1) {
            N();
            this.f3095J = true;
            return true;
        }
        if (i2 == 2) {
            N();
            this.f3089D = true;
            return true;
        }
        if (i2 == 5) {
            N();
            this.f3090E = true;
            return true;
        }
        if (i2 == 10) {
            N();
            this.f3093H = true;
            return true;
        }
        if (i2 == 108) {
            N();
            this.f3091F = true;
            return true;
        }
        if (i2 != 109) {
            return this.f3118l.requestFeature(i2);
        }
        N();
        this.f3092G = true;
        return true;
    }

    @Override // p007e.n
    public final void m(int i2) {
        C();
        ViewGroup viewGroup = (ViewGroup) this.f3086A.findViewById(R.id.content);
        viewGroup.removeAllViews();
        LayoutInflater.from(this.f3117k).inflate(i2, viewGroup);
        this.f3119m.a(this.f3118l.getCallback());
    }

    @Override // p007e.n
    public final void n(View view) {
        C();
        ViewGroup viewGroup = (ViewGroup) this.f3086A.findViewById(R.id.content);
        viewGroup.removeAllViews();
        viewGroup.addView(view);
        this.f3119m.a(this.f3118l.getCallback());
    }

    /* JADX WARN: Code duplicated, block: B:20:0x002a  */
    @Override // p012i.j
    public final boolean o(l lVar, MenuItem menuItem) {
        w wVar;
        Window.Callback callback = this.f3118l.getCallback();
        if (callback != null && !this.f3101Q) {
            l lVarK = lVar.k();
            w[] wVarArr = this.f3097L;
            int length = wVarArr != null ? wVarArr.length : 0;
            for (int i2 = 0; i2 < length; i2++) {
                wVar = wVarArr[i2];
                if (wVar != null && wVar.f3074h == lVarK) {
                    if (wVar != null) {
                        return callback.onMenuItemSelected(wVar.f3069a, menuItem);
                    }
                }
            }
            wVar = null;
            if (wVar != null) {
                return callback.onMenuItemSelected(wVar.f3069a, menuItem);
            }
        }
        return false;
    }

    /* JADX WARN: Failed to calculate best type for var: r0v1 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r0v1 ??, new type: e.A
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.calculateFromBounds(FixTypesVisitor.java:159)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.setBestType(FixTypesVisitor.java:136)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.deduceType(FixTypesVisitor.java:241)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryDeduceTypes(FixTypesVisitor.java:224)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
    Caused by: java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.InsnArg.getType()" because "arg" is null
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
    	... 6 more
     */
    /* JADX WARN: Failed to calculate best type for var: r0v1 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r0v1 ??, new type: e.A
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$2(TypeInferenceVisitor.java:103)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1597)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
    Caused by: java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.InsnArg.getType()" because "arg" is null
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
    	... 7 more
     */
    /* JADX WARN: Failed to calculate best type for var: r0v7 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r0v7 ??, new type: android.content.res.TypedArray
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$2(TypeInferenceVisitor.java:103)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1597)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
    Caused by: java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.InsnArg.getType()" because "arg" is null
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
    	... 7 more
     */
    /* JADX WARN: Failed to calculate best type for var: r0v9 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r0v9 ??, new type: android.content.res.TypedArray
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$2(TypeInferenceVisitor.java:103)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1597)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
    Caused by: java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.InsnArg.getType()" because "arg" is null
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
    	... 7 more
     */
    /* JADX WARN: Failed to calculate best type for var: r10v4 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r10v4 ??, new type: android.content.Context
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$2(TypeInferenceVisitor.java:103)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1597)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
    Caused by: java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.InsnArg.getType()" because "arg" is null
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
    	... 7 more
     */
    /* JADX WARN: Failed to calculate best type for var: r20v0 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r20v0 ??, new type: android.content.Context
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$2(TypeInferenceVisitor.java:103)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1597)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
    Caused by: java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.InsnArg.getType()" because "arg" is null
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
    	... 7 more
     */
    /* JADX WARN: Failed to set immutable type for var: r20v0 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r20v0 ??, new type: android.content.Context
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.applyWithWiderIgnSame(TypeUpdate.java:73)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setImmutableType(TypeInferenceVisitor.java:111)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$1(TypeInferenceVisitor.java:102)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1597)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:102)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
    Caused by: java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.InsnArg.getType()" because "arg" is null
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
    	... 6 more
     */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    /*  JADX ERROR: Types fix failed
        jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r10v3 ??, new type: android.content.Context
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.applyWithWiderAllow(TypeUpdate.java:66)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryWiderObjects(FixTypesVisitor.java:795)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.deduceType(FixTypesVisitor.java:249)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryDeduceTypes(FixTypesVisitor.java:224)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
        Caused by: java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.InsnArg.getType()" because "arg" is null
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
        	... 5 more
        */
    @Override // android.view.LayoutInflater.Factory2
    public final android.view.View onCreateView(android.view.View r18, java.lang.String r19, android.content.Context r20, android.util.AttributeSet r21) {
        /*
            Method dump skipped, instruction units count: 742
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p007e.x.onCreateView(android.view.View, java.lang.String, android.content.Context, android.util.AttributeSet):android.view.View");
    }

    @Override // p007e.n
    public final void p(View view, ViewGroup.LayoutParams layoutParams) {
        C();
        ViewGroup viewGroup = (ViewGroup) this.f3086A.findViewById(R.id.content);
        viewGroup.removeAllViews();
        viewGroup.addView(view, layoutParams);
        this.f3119m.a(this.f3118l.getCallback());
    }

    @Override // p007e.n
    public final void r(CharSequence charSequence) {
        this.f3123q = charSequence;
        InterfaceC0233i0 interfaceC0233i0 = this.f3124r;
        if (interfaceC0233i0 != null) {
            interfaceC0233i0.setWindowTitle(charSequence);
            return;
        }
        J j2 = this.f3121o;
        if (j2 == null) {
            TextView textView = this.f3087B;
            if (textView != null) {
                textView.setText(charSequence);
                return;
            }
            return;
        }
        q1 q1Var = (q1) j2.f2965g;
        if (q1Var.f3666g) {
            return;
        }
        q1Var.f3667h = charSequence;
        if ((q1Var.b & 8) != 0) {
            Toolbar toolbar = q1Var.f3662a;
            toolbar.setTitle(charSequence);
            if (q1Var.f3666g) {
                N.j(toolbar.getRootView(), charSequence);
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:62:0x00c8  */
    /* JADX WARN: Multi-variable type inference failed */
    public final boolean t(boolean z2, boolean z3) {
        int i2;
        boolean z4;
        if (this.f3101Q) {
            return false;
        }
        int i3 = this.S;
        if (i3 == -100) {
            i3 = n.b;
        }
        Context context = this.f3117k;
        int I2 = I(context, i3);
        int i4 = Build.VERSION.SDK_INT;
        e eVarV = i4 < 33 ? v(context) : null;
        if (!z3 && eVarV != null) {
            eVarV = r.b(context.getResources().getConfiguration());
        }
        Configuration configurationZ = z(context, I2, eVarV, null, false);
        boolean z5 = this.V;
        Object obj = this.f3116j;
        boolean z6 = true;
        if (z5 || !(obj instanceof Activity)) {
            this.V = true;
            i2 = this.f3104U;
        } else {
            PackageManager packageManager = context.getPackageManager();
            if (packageManager == null) {
                i2 = 0;
            } else {
                try {
                    ActivityInfo activityInfo = packageManager.getActivityInfo(new ComponentName(context, obj.getClass()), i4 >= 29 ? 269221888 : 786432);
                    if (activityInfo != null) {
                        this.f3104U = activityInfo.configChanges;
                    }
                } catch (PackageManager.NameNotFoundException e2) {
                    Log.d("AppCompatDelegate", "Exception while getting ActivityInfo", e2);
                    this.f3104U = 0;
                }
                this.V = true;
                i2 = this.f3104U;
            }
        }
        Configuration configuration = this.f3102R;
        if (configuration == null) {
            configuration = context.getResources().getConfiguration();
        }
        int i5 = configuration.uiMode & 48;
        int i6 = configurationZ.uiMode & 48;
        e eVarB = r.b(configuration);
        e eVarB2 = eVarV == null ? null : r.b(configurationZ);
        int i7 = i5 != i6 ? 512 : 0;
        if (eVarB2 != null && !eVarB.equals(eVarB2)) {
            i7 |= 8196;
        }
        if (((~i2) & i7) != 0 && z2 && this.f3100O && ((f3084j0 || this.P) && (obj instanceof Activity))) {
            Activity activity = (Activity) obj;
            if (activity.isChild()) {
                z4 = false;
            } else {
                activity.recreate();
                z4 = true;
            }
        } else {
            z4 = false;
        }
        if (z4 || i7 == 0) {
            z6 = z4;
        } else {
            boolean z7 = (i7 & i2) == i7;
            Resources resources = context.getResources();
            Configuration configuration2 = new Configuration(resources.getConfiguration());
            configuration2.uiMode = (resources.getConfiguration().uiMode & (-49)) | i6;
            if (eVarB2 != null) {
                r.d(configuration2, eVarB2);
            }
            resources.updateConfiguration(configuration2, null);
            int i8 = this.f3103T;
            if (i8 != 0) {
                context.setTheme(i8);
                context.getTheme().applyStyle(this.f3103T, true);
            }
            if (z7 && (obj instanceof Activity)) {
                Activity activity2 = (Activity) obj;
                if (activity2 instanceof q) {
                    if (((q) activity2).d().b.a(androidx.lifecycle.l.f1958c)) {
                        activity2.onConfigurationChanged(configuration2);
                    }
                } else if (this.P && !this.f3101Q) {
                    activity2.onConfigurationChanged(configuration2);
                }
            }
        }
        if (z6 && (obj instanceof AbstractActivityC0210j)) {
            if ((i7 & 512) != 0) {
            }
            if ((i7 & 4) != 0) {
            }
        }
        if (z6 && eVarB2 != null) {
            r.c(r.b(context.getResources().getConfiguration()));
        }
        if (i3 == 0) {
            E(context).i();
        } else {
            u uVar = this.f3105W;
            if (uVar != null) {
                uVar.c();
            }
        }
        if (i3 == 3) {
            if (this.f3106X == null) {
                this.f3106X = new u(this, context);
            }
            this.f3106X.i();
        } else {
            u uVar2 = this.f3106X;
            if (uVar2 != null) {
                uVar2.c();
            }
        }
        return z6;
    }

    /* JADX WARN: Code duplicated, block: B:34:0x0074  */
    public final void u(Window window) {
        Drawable drawableD;
        OnBackInvokedDispatcher onBackInvokedDispatcher;
        OnBackInvokedCallback onBackInvokedCallback;
        int resourceId;
        if (this.f3118l != null) {
            throw new IllegalStateException("AppCompat has already installed itself into the Window");
        }
        Window.Callback callback = window.getCallback();
        if (callback instanceof t) {
            throw new IllegalStateException("AppCompat has already installed itself into the Window");
        }
        t tVar = new t(this, callback);
        this.f3119m = tVar;
        window.setCallback(tVar);
        int[] iArr = f3083i0;
        Context context = this.f3117k;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes((AttributeSet) null, iArr);
        if (!typedArrayObtainStyledAttributes.hasValue(0) || (resourceId = typedArrayObtainStyledAttributes.getResourceId(0, 0)) == 0) {
            drawableD = null;
        } else {
            C0251s c0251sA = C0251s.a();
            synchronized (c0251sA) {
                drawableD = c0251sA.f3681a.d(context, resourceId, true);
            }
        }
        if (drawableD != null) {
            window.setBackgroundDrawable(drawableD);
        }
        typedArrayObtainStyledAttributes.recycle();
        this.f3118l = window;
        if (Build.VERSION.SDK_INT < 33 || (onBackInvokedDispatcher = this.f3114f0) != null) {
            return;
        }
        if (onBackInvokedDispatcher != null && (onBackInvokedCallback = this.f3115g0) != null) {
            s.c(onBackInvokedDispatcher, onBackInvokedCallback);
            this.f3115g0 = null;
        }
        Object obj = this.f3116j;
        if (obj instanceof Activity) {
            Activity activity = (Activity) obj;
            if (activity.getWindow() != null) {
                this.f3114f0 = s.a(activity);
            } else {
                this.f3114f0 = null;
            }
        } else {
            this.f3114f0 = null;
        }
        O();
    }

    public final void w(int i2, w wVar, l lVar) {
        if (lVar == null) {
            if (wVar == null && i2 >= 0) {
                w[] wVarArr = this.f3097L;
                if (i2 < wVarArr.length) {
                    wVar = wVarArr[i2];
                }
            }
            if (wVar != null) {
                lVar = wVar.f3074h;
            }
        }
        if ((wVar == null || wVar.f3079m) && !this.f3101Q) {
            t tVar = this.f3119m;
            Window.Callback callback = this.f3118l.getCallback();
            tVar.getClass();
            try {
                tVar.f3063d = true;
                callback.onPanelClosed(i2, lVar);
            } finally {
                tVar.f3063d = false;
            }
        }
    }

    public final void x(l lVar) {
        C0234j c0234j;
        if (this.f3096K) {
            return;
        }
        this.f3096K = true;
        ActionBarOverlayLayout actionBarOverlayLayout = (ActionBarOverlayLayout) this.f3124r;
        actionBarOverlayLayout.k();
        ActionMenuView actionMenuView = ((q1) actionBarOverlayLayout.f1496e).f3662a.f1594a;
        if (actionMenuView != null && (c0234j = actionMenuView.f1521t) != null) {
            c0234j.f();
            C0226f c0226f = c0234j.f3626t;
            if (c0226f != null && c0226f.b()) {
                c0226f.f3407i.dismiss();
            }
        }
        Window.Callback callback = this.f3118l.getCallback();
        if (callback != null && !this.f3101Q) {
            callback.onPanelClosed(108, lVar);
        }
        this.f3096K = false;
    }

    public final void y(w wVar, boolean z2) {
        v vVar;
        InterfaceC0233i0 interfaceC0233i0;
        C0234j c0234j;
        if (z2 && wVar.f3069a == 0 && (interfaceC0233i0 = this.f3124r) != null) {
            ActionBarOverlayLayout actionBarOverlayLayout = (ActionBarOverlayLayout) interfaceC0233i0;
            actionBarOverlayLayout.k();
            ActionMenuView actionMenuView = ((q1) actionBarOverlayLayout.f1496e).f3662a.f1594a;
            if (actionMenuView != null && (c0234j = actionMenuView.f1521t) != null && c0234j.k()) {
                x(wVar.f3074h);
                return;
            }
        }
        WindowManager windowManager = (WindowManager) this.f3117k.getSystemService("window");
        if (windowManager != null && wVar.f3079m && (vVar = wVar.f3072e) != null) {
            windowManager.removeView(vVar);
            if (z2) {
                w(wVar.f3069a, wVar, null);
            }
        }
        wVar.f3077k = false;
        wVar.f3078l = false;
        wVar.f3079m = false;
        wVar.f = null;
        wVar.f3080n = true;
        if (this.f3098M == wVar) {
            this.f3098M = null;
        }
        if (wVar.f3069a == 0) {
            O();
        }
    }

    @Override // android.view.LayoutInflater.Factory
    public final View onCreateView(String str, Context context, AttributeSet attributeSet) {
        return onCreateView(null, str, context, attributeSet);
    }
}
