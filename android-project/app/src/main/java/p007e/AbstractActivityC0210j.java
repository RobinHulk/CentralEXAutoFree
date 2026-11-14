package p007e;

import A.e;
import G.a;
import I0.f;
import android.R;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build;
import android.os.Bundle;
import android.util.AttributeSet;
import android.util.Log;
import android.view.ContextThemeWrapper;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import androidx.activity.g;
import androidx.fragment.app.AbstractComponentCallbacksC0187o;
import androidx.fragment.app.C0188p;
import androidx.fragment.app.C0189q;
import androidx.fragment.app.E;
import androidx.fragment.app.M;
import androidx.fragment.app.r;
import androidx.lifecycle.k;
import androidx.lifecycle.l;
import androidx.lifecycle.s;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import p011h.d;
import p011h.i;
import p014j.C0251s;
import p014j.M0;
import p014j.q1;
import p014j.s1;
import p026q.b;
import p026q.m;

/* JADX INFO: renamed from: e.j, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractActivityC0210j extends g implements k {

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public boolean f3047p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public boolean f3048q;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public x f3050s;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final e f3045n = new e(new r(this), 9);

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final s f3046o = new s(this);

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public boolean f3049r = true;

    public AbstractActivityC0210j() {
        this.f1421e.b.e("android:support:fragments", new C0188p(this, 0));
        f(new C0189q(this, 0));
        this.f1421e.b.e("androidx:appcompat", new C0188p(this, 1));
        f(new C0189q(this, 1));
    }

    public static boolean k(E e2) {
        boolean zK = false;
        for (AbstractComponentCallbacksC0187o abstractComponentCallbacksC0187o : e2.f1738c.n()) {
            if (abstractComponentCallbacksC0187o != null) {
                r rVar = abstractComponentCallbacksC0187o.f1905s;
                if ((rVar == null ? null : rVar.f1918g) != null) {
                    zK |= k(abstractComponentCallbacksC0187o.g());
                }
                M m2 = abstractComponentCallbacksC0187o.f1886M;
                l lVar = l.f1959d;
                l lVar2 = l.f1958c;
                if (m2 != null) {
                    m2.f();
                    if (m2.b.b.a(lVar)) {
                        s sVar = abstractComponentCallbacksC0187o.f1886M.b;
                        sVar.c("setCurrentState");
                        sVar.e(lVar2);
                        zK = true;
                    }
                }
                if (abstractComponentCallbacksC0187o.f1885L.b.a(lVar)) {
                    s sVar2 = abstractComponentCallbacksC0187o.f1885L;
                    sVar2.c("setCurrentState");
                    sVar2.e(lVar2);
                    zK = true;
                }
            }
        }
        return zK;
    }

    @Override // android.app.Activity
    public final void addContentView(View view, ViewGroup.LayoutParams layoutParams) {
        j();
        x xVar = (x) i();
        xVar.C();
        ((ViewGroup) xVar.f3086A.findViewById(R.id.content)).addView(view, layoutParams);
        xVar.f3119m.a(xVar.f3118l.getCallback());
    }

    /* JADX WARN: Code duplicated, block: B:110:0x01b2 A[Catch: all -> 0x01a6, TRY_LEAVE, TryCatch #1 {, blocks: (B:101:0x0194, B:103:0x0198, B:109:0x01b0, B:110:0x01b2, B:112:0x01b6, B:118:0x01c6, B:117:0x01bd, B:108:0x01a9), top: B:130:0x0194, inners: #0 }] */
    /* JADX WARN: Code duplicated, block: B:128:0x0198 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:130:0x0194 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:138:0x01b6 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:18:0x003d  */
    /* JADX WARN: Code duplicated, block: B:21:0x0049  */
    /* JADX WARN: Code duplicated, block: B:24:0x004f  */
    /* JADX WARN: Code duplicated, block: B:26:0x007a  */
    /* JADX WARN: Code duplicated, block: B:29:0x0089  */
    /* JADX WARN: Code duplicated, block: B:31:0x0091  */
    /* JADX WARN: Code duplicated, block: B:34:0x0099  */
    /* JADX WARN: Code duplicated, block: B:37:0x00a1  */
    /* JADX WARN: Code duplicated, block: B:40:0x00ac  */
    /* JADX WARN: Code duplicated, block: B:43:0x00b4  */
    /* JADX WARN: Code duplicated, block: B:46:0x00bc  */
    /* JADX WARN: Code duplicated, block: B:49:0x00c4  */
    /* JADX WARN: Code duplicated, block: B:52:0x00cc  */
    /* JADX WARN: Code duplicated, block: B:55:0x00d4  */
    /* JADX WARN: Code duplicated, block: B:58:0x00e0  */
    /* JADX WARN: Code duplicated, block: B:61:0x00ef  */
    /* JADX WARN: Code duplicated, block: B:64:0x00fe  */
    /* JADX WARN: Code duplicated, block: B:67:0x010d  */
    /* JADX WARN: Code duplicated, block: B:70:0x011c  */
    /* JADX WARN: Code duplicated, block: B:73:0x012b  */
    /* JADX WARN: Code duplicated, block: B:76:0x013a  */
    /* JADX WARN: Code duplicated, block: B:79:0x0149  */
    /* JADX WARN: Code duplicated, block: B:82:0x0154  */
    /* JADX WARN: Code duplicated, block: B:85:0x015c  */
    /* JADX WARN: Code duplicated, block: B:88:0x0164  */
    /* JADX WARN: Code duplicated, block: B:91:0x016c  */
    /* JADX WARN: Code duplicated, block: B:92:0x016f  */
    /* JADX WARN: Code duplicated, block: B:96:0x0185  */
    /* JADX WARN: Code duplicated, block: B:98:0x018d  */
    /* JADX WARN: Code duplicated, block: B:99:0x0191  */
    @Override // android.app.Activity, android.view.ContextThemeWrapper, android.content.ContextWrapper
    public final void attachBaseContext(Context context) {
        int i2;
        Configuration configuration;
        Configuration configuration2;
        Configuration configuration3;
        d dVar;
        Resources.Theme theme;
        Method method;
        float f;
        float f2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        int i18;
        int i19;
        int i20;
        int i21;
        int i22;
        int i23;
        int i24;
        int i25;
        int i26;
        int i27;
        int i28;
        int i29;
        int i30;
        int i31;
        int i32;
        int i33;
        int i34;
        int i35;
        int i36;
        int i37;
        int i38;
        int i39;
        int i40;
        int i41;
        int i42;
        x xVar = (x) i();
        xVar.f3100O = true;
        int i43 = xVar.S;
        if (i43 == -100) {
            i43 = n.b;
        }
        int I2 = xVar.I(context, i43);
        if (n.g(context)) {
            n.s(context);
        }
        p031u.e eVarV = x.v(context);
        if (x.f3085k0 && (context instanceof ContextThemeWrapper)) {
            try {
                ((ContextThemeWrapper) context).applyOverrideConfiguration(x.z(context, I2, eVarV, null, false));
            } catch (IllegalStateException unused) {
                if (context instanceof d) {
                    ((d) context).a(x.z(context, I2, eVarV, null, false));
                } else if (x.f3084j0) {
                    i2 = Build.VERSION.SDK_INT;
                    Configuration configuration4 = new Configuration();
                    configuration4.uiMode = -1;
                    configuration4.fontScale = 0.0f;
                    configuration = context.createConfigurationContext(configuration4).getResources().getConfiguration();
                    configuration2 = context.getResources().getConfiguration();
                    configuration.uiMode = configuration2.uiMode;
                    if (configuration.equals(configuration2)) {
                        configuration3 = null;
                    } else {
                        configuration3 = new Configuration();
                        configuration3.fontScale = 0.0f;
                        if (configuration.diff(configuration2) != 0) {
                            f = configuration.fontScale;
                            f2 = configuration2.fontScale;
                            if (f != f2) {
                                configuration3.fontScale = f2;
                            }
                            i3 = configuration.mcc;
                            i4 = configuration2.mcc;
                            if (i3 != i4) {
                                configuration3.mcc = i4;
                            }
                            i5 = configuration.mnc;
                            i6 = configuration2.mnc;
                            if (i5 != i6) {
                                configuration3.mnc = i6;
                            }
                            r.a(configuration, configuration2, configuration3);
                            i7 = configuration.touchscreen;
                            i8 = configuration2.touchscreen;
                            if (i7 != i8) {
                                configuration3.touchscreen = i8;
                            }
                            i9 = configuration.keyboard;
                            i10 = configuration2.keyboard;
                            if (i9 != i10) {
                                configuration3.keyboard = i10;
                            }
                            i11 = configuration.keyboardHidden;
                            i12 = configuration2.keyboardHidden;
                            if (i11 != i12) {
                                configuration3.keyboardHidden = i12;
                            }
                            i13 = configuration.navigation;
                            i14 = configuration2.navigation;
                            if (i13 != i14) {
                                configuration3.navigation = i14;
                            }
                            i15 = configuration.navigationHidden;
                            i16 = configuration2.navigationHidden;
                            if (i15 != i16) {
                                configuration3.navigationHidden = i16;
                            }
                            i17 = configuration.orientation;
                            i18 = configuration2.orientation;
                            if (i17 != i18) {
                                configuration3.orientation = i18;
                            }
                            i19 = configuration.screenLayout & 15;
                            i20 = configuration2.screenLayout & 15;
                            if (i19 != i20) {
                                configuration3.screenLayout |= i20;
                            }
                            i21 = configuration.screenLayout & 192;
                            i22 = configuration2.screenLayout & 192;
                            if (i21 != i22) {
                                configuration3.screenLayout |= i22;
                            }
                            i23 = configuration.screenLayout & 48;
                            i24 = configuration2.screenLayout & 48;
                            if (i23 != i24) {
                                configuration3.screenLayout |= i24;
                            }
                            i25 = configuration.screenLayout & 768;
                            i26 = configuration2.screenLayout & 768;
                            if (i25 != i26) {
                                configuration3.screenLayout |= i26;
                            }
                            i27 = configuration.colorMode & 3;
                            i28 = configuration2.colorMode & 3;
                            if (i27 != i28) {
                                configuration3.colorMode |= i28;
                            }
                            i29 = configuration.colorMode & 12;
                            i30 = configuration2.colorMode & 12;
                            if (i29 != i30) {
                                configuration3.colorMode |= i30;
                            }
                            i31 = configuration.uiMode & 15;
                            i32 = configuration2.uiMode & 15;
                            if (i31 != i32) {
                                configuration3.uiMode |= i32;
                            }
                            i33 = configuration.uiMode & 48;
                            i34 = configuration2.uiMode & 48;
                            if (i33 != i34) {
                                configuration3.uiMode |= i34;
                            }
                            i35 = configuration.screenWidthDp;
                            i36 = configuration2.screenWidthDp;
                            if (i35 != i36) {
                                configuration3.screenWidthDp = i36;
                            }
                            i37 = configuration.screenHeightDp;
                            i38 = configuration2.screenHeightDp;
                            if (i37 != i38) {
                                configuration3.screenHeightDp = i38;
                            }
                            i39 = configuration.smallestScreenWidthDp;
                            i40 = configuration2.smallestScreenWidthDp;
                            if (i39 != i40) {
                                configuration3.smallestScreenWidthDp = i40;
                            }
                            i41 = configuration.densityDpi;
                            i42 = configuration2.densityDpi;
                            if (i41 != i42) {
                                configuration3.densityDpi = i42;
                            }
                        }
                    }
                    Configuration configurationZ = x.z(context, I2, eVarV, configuration3, true);
                    dVar = new d(context, com.ex.auto.R.style.Theme_AppCompat_Empty);
                    dVar.a(configurationZ);
                    if (context.getTheme() != null) {
                        theme = dVar.getTheme();
                        if (i2 >= 29) {
                            m.a(theme);
                        } else {
                            synchronized (b.f4011e) {
                                if (b.f4012g) {
                                    method = b.f;
                                    if (method != null) {
                                        method.invoke(theme, null);
                                    }
                                } else {
                                    Method declaredMethod = Resources.Theme.class.getDeclaredMethod("rebase", null);
                                    b.f = declaredMethod;
                                    declaredMethod.setAccessible(true);
                                    b.f4012g = true;
                                    method = b.f;
                                    if (method != null) {
                                        method.invoke(theme, null);
                                    }
                                }
                            }
                        }
                    }
                    context = dVar;
                }
            }
        } else if (context instanceof d) {
            try {
                ((d) context).a(x.z(context, I2, eVarV, null, false));
            } catch (IllegalStateException unused2) {
                if (x.f3084j0) {
                    i2 = Build.VERSION.SDK_INT;
                    Configuration configuration5 = new Configuration();
                    configuration5.uiMode = -1;
                    configuration5.fontScale = 0.0f;
                    configuration = context.createConfigurationContext(configuration5).getResources().getConfiguration();
                    configuration2 = context.getResources().getConfiguration();
                    configuration.uiMode = configuration2.uiMode;
                    if (configuration.equals(configuration2)) {
                        configuration3 = new Configuration();
                        configuration3.fontScale = 0.0f;
                        if (configuration.diff(configuration2) != 0) {
                            f = configuration.fontScale;
                            f2 = configuration2.fontScale;
                            if (f != f2) {
                                configuration3.fontScale = f2;
                            }
                            i3 = configuration.mcc;
                            i4 = configuration2.mcc;
                            if (i3 != i4) {
                                configuration3.mcc = i4;
                            }
                            i5 = configuration.mnc;
                            i6 = configuration2.mnc;
                            if (i5 != i6) {
                                configuration3.mnc = i6;
                            }
                            r.a(configuration, configuration2, configuration3);
                            i7 = configuration.touchscreen;
                            i8 = configuration2.touchscreen;
                            if (i7 != i8) {
                                configuration3.touchscreen = i8;
                            }
                            i9 = configuration.keyboard;
                            i10 = configuration2.keyboard;
                            if (i9 != i10) {
                                configuration3.keyboard = i10;
                            }
                            i11 = configuration.keyboardHidden;
                            i12 = configuration2.keyboardHidden;
                            if (i11 != i12) {
                                configuration3.keyboardHidden = i12;
                            }
                            i13 = configuration.navigation;
                            i14 = configuration2.navigation;
                            if (i13 != i14) {
                                configuration3.navigation = i14;
                            }
                            i15 = configuration.navigationHidden;
                            i16 = configuration2.navigationHidden;
                            if (i15 != i16) {
                                configuration3.navigationHidden = i16;
                            }
                            i17 = configuration.orientation;
                            i18 = configuration2.orientation;
                            if (i17 != i18) {
                                configuration3.orientation = i18;
                            }
                            i19 = configuration.screenLayout & 15;
                            i20 = configuration2.screenLayout & 15;
                            if (i19 != i20) {
                                configuration3.screenLayout |= i20;
                            }
                            i21 = configuration.screenLayout & 192;
                            i22 = configuration2.screenLayout & 192;
                            if (i21 != i22) {
                                configuration3.screenLayout |= i22;
                            }
                            i23 = configuration.screenLayout & 48;
                            i24 = configuration2.screenLayout & 48;
                            if (i23 != i24) {
                                configuration3.screenLayout |= i24;
                            }
                            i25 = configuration.screenLayout & 768;
                            i26 = configuration2.screenLayout & 768;
                            if (i25 != i26) {
                                configuration3.screenLayout |= i26;
                            }
                            i27 = configuration.colorMode & 3;
                            i28 = configuration2.colorMode & 3;
                            if (i27 != i28) {
                                configuration3.colorMode |= i28;
                            }
                            i29 = configuration.colorMode & 12;
                            i30 = configuration2.colorMode & 12;
                            if (i29 != i30) {
                                configuration3.colorMode |= i30;
                            }
                            i31 = configuration.uiMode & 15;
                            i32 = configuration2.uiMode & 15;
                            if (i31 != i32) {
                                configuration3.uiMode |= i32;
                            }
                            i33 = configuration.uiMode & 48;
                            i34 = configuration2.uiMode & 48;
                            if (i33 != i34) {
                                configuration3.uiMode |= i34;
                            }
                            i35 = configuration.screenWidthDp;
                            i36 = configuration2.screenWidthDp;
                            if (i35 != i36) {
                                configuration3.screenWidthDp = i36;
                            }
                            i37 = configuration.screenHeightDp;
                            i38 = configuration2.screenHeightDp;
                            if (i37 != i38) {
                                configuration3.screenHeightDp = i38;
                            }
                            i39 = configuration.smallestScreenWidthDp;
                            i40 = configuration2.smallestScreenWidthDp;
                            if (i39 != i40) {
                                configuration3.smallestScreenWidthDp = i40;
                            }
                            i41 = configuration.densityDpi;
                            i42 = configuration2.densityDpi;
                            if (i41 != i42) {
                                configuration3.densityDpi = i42;
                            }
                        }
                    } else {
                        configuration3 = null;
                    }
                    Configuration configurationZ2 = x.z(context, I2, eVarV, configuration3, true);
                    dVar = new d(context, com.ex.auto.R.style.Theme_AppCompat_Empty);
                    dVar.a(configurationZ2);
                    try {
                        if (context.getTheme() != null) {
                            theme = dVar.getTheme();
                            if (i2 >= 29) {
                                m.a(theme);
                            } else {
                                synchronized (b.f4011e) {
                                    if (b.f4012g) {
                                        try {
                                            Method declaredMethod2 = Resources.Theme.class.getDeclaredMethod("rebase", null);
                                            b.f = declaredMethod2;
                                            declaredMethod2.setAccessible(true);
                                        } catch (NoSuchMethodException e2) {
                                            Log.i("ResourcesCompat", "Failed to retrieve rebase() method", e2);
                                        }
                                        b.f4012g = true;
                                        method = b.f;
                                        if (method != null) {
                                            try {
                                                method.invoke(theme, null);
                                            } catch (IllegalAccessException | InvocationTargetException e3) {
                                                Log.i("ResourcesCompat", "Failed to invoke rebase() method via reflection", e3);
                                                b.f = null;
                                            }
                                        }
                                    } else {
                                        method = b.f;
                                        if (method != null) {
                                            method.invoke(theme, null);
                                        }
                                    }
                                }
                            }
                        }
                    } catch (NullPointerException unused3) {
                    }
                    context = dVar;
                }
            }
        } else if (x.f3084j0) {
            i2 = Build.VERSION.SDK_INT;
            Configuration configuration6 = new Configuration();
            configuration6.uiMode = -1;
            configuration6.fontScale = 0.0f;
            configuration = context.createConfigurationContext(configuration6).getResources().getConfiguration();
            configuration2 = context.getResources().getConfiguration();
            configuration.uiMode = configuration2.uiMode;
            if (configuration.equals(configuration2)) {
                configuration3 = new Configuration();
                configuration3.fontScale = 0.0f;
                if (configuration.diff(configuration2) != 0) {
                    f = configuration.fontScale;
                    f2 = configuration2.fontScale;
                    if (f != f2) {
                        configuration3.fontScale = f2;
                    }
                    i3 = configuration.mcc;
                    i4 = configuration2.mcc;
                    if (i3 != i4) {
                        configuration3.mcc = i4;
                    }
                    i5 = configuration.mnc;
                    i6 = configuration2.mnc;
                    if (i5 != i6) {
                        configuration3.mnc = i6;
                    }
                    r.a(configuration, configuration2, configuration3);
                    i7 = configuration.touchscreen;
                    i8 = configuration2.touchscreen;
                    if (i7 != i8) {
                        configuration3.touchscreen = i8;
                    }
                    i9 = configuration.keyboard;
                    i10 = configuration2.keyboard;
                    if (i9 != i10) {
                        configuration3.keyboard = i10;
                    }
                    i11 = configuration.keyboardHidden;
                    i12 = configuration2.keyboardHidden;
                    if (i11 != i12) {
                        configuration3.keyboardHidden = i12;
                    }
                    i13 = configuration.navigation;
                    i14 = configuration2.navigation;
                    if (i13 != i14) {
                        configuration3.navigation = i14;
                    }
                    i15 = configuration.navigationHidden;
                    i16 = configuration2.navigationHidden;
                    if (i15 != i16) {
                        configuration3.navigationHidden = i16;
                    }
                    i17 = configuration.orientation;
                    i18 = configuration2.orientation;
                    if (i17 != i18) {
                        configuration3.orientation = i18;
                    }
                    i19 = configuration.screenLayout & 15;
                    i20 = configuration2.screenLayout & 15;
                    if (i19 != i20) {
                        configuration3.screenLayout |= i20;
                    }
                    i21 = configuration.screenLayout & 192;
                    i22 = configuration2.screenLayout & 192;
                    if (i21 != i22) {
                        configuration3.screenLayout |= i22;
                    }
                    i23 = configuration.screenLayout & 48;
                    i24 = configuration2.screenLayout & 48;
                    if (i23 != i24) {
                        configuration3.screenLayout |= i24;
                    }
                    i25 = configuration.screenLayout & 768;
                    i26 = configuration2.screenLayout & 768;
                    if (i25 != i26) {
                        configuration3.screenLayout |= i26;
                    }
                    i27 = configuration.colorMode & 3;
                    i28 = configuration2.colorMode & 3;
                    if (i27 != i28) {
                        configuration3.colorMode |= i28;
                    }
                    i29 = configuration.colorMode & 12;
                    i30 = configuration2.colorMode & 12;
                    if (i29 != i30) {
                        configuration3.colorMode |= i30;
                    }
                    i31 = configuration.uiMode & 15;
                    i32 = configuration2.uiMode & 15;
                    if (i31 != i32) {
                        configuration3.uiMode |= i32;
                    }
                    i33 = configuration.uiMode & 48;
                    i34 = configuration2.uiMode & 48;
                    if (i33 != i34) {
                        configuration3.uiMode |= i34;
                    }
                    i35 = configuration.screenWidthDp;
                    i36 = configuration2.screenWidthDp;
                    if (i35 != i36) {
                        configuration3.screenWidthDp = i36;
                    }
                    i37 = configuration.screenHeightDp;
                    i38 = configuration2.screenHeightDp;
                    if (i37 != i38) {
                        configuration3.screenHeightDp = i38;
                    }
                    i39 = configuration.smallestScreenWidthDp;
                    i40 = configuration2.smallestScreenWidthDp;
                    if (i39 != i40) {
                        configuration3.smallestScreenWidthDp = i40;
                    }
                    i41 = configuration.densityDpi;
                    i42 = configuration2.densityDpi;
                    if (i41 != i42) {
                        configuration3.densityDpi = i42;
                    }
                }
            } else {
                configuration3 = null;
            }
            Configuration configurationZ3 = x.z(context, I2, eVarV, configuration3, true);
            dVar = new d(context, com.ex.auto.R.style.Theme_AppCompat_Empty);
            dVar.a(configurationZ3);
            if (context.getTheme() != null) {
                theme = dVar.getTheme();
                if (i2 >= 29) {
                    m.a(theme);
                } else {
                    synchronized (b.f4011e) {
                        if (b.f4012g) {
                            Method declaredMethod3 = Resources.Theme.class.getDeclaredMethod("rebase", null);
                            b.f = declaredMethod3;
                            declaredMethod3.setAccessible(true);
                            b.f4012g = true;
                            method = b.f;
                            if (method != null) {
                                method.invoke(theme, null);
                            }
                        } else {
                            method = b.f;
                            if (method != null) {
                                method.invoke(theme, null);
                            }
                        }
                    }
                }
            }
            context = dVar;
        }
        super.attachBaseContext(context);
    }

    @Override // android.app.Activity
    public final void closeOptionsMenu() {
        ((x) i()).G();
        if (getWindow().hasFeature(0)) {
            super.closeOptionsMenu();
        }
    }

    @Override // androidx.activity.g, android.app.Activity, android.view.Window.Callback
    public final boolean dispatchKeyEvent(KeyEvent keyEvent) {
        keyEvent.getKeyCode();
        ((x) i()).G();
        return super.dispatchKeyEvent(keyEvent);
    }

    @Override // android.app.Activity
    public final void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        super.dump(str, fileDescriptor, printWriter, strArr);
        printWriter.print(str);
        printWriter.print("Local FragmentActivity ");
        printWriter.print(Integer.toHexString(System.identityHashCode(this)));
        printWriter.println(" State:");
        String str2 = str + "  ";
        printWriter.print(str2);
        printWriter.print("mCreated=");
        printWriter.print(this.f3047p);
        printWriter.print(" mResumed=");
        printWriter.print(this.f3048q);
        printWriter.print(" mStopped=");
        printWriter.print(this.f3049r);
        if (getApplication() != null) {
            new a(this, c()).q(str2, printWriter);
        }
        ((r) this.f3045n.b).f.t(str, fileDescriptor, printWriter, strArr);
    }

    @Override // android.app.Activity
    public final View findViewById(int i2) {
        x xVar = (x) i();
        xVar.C();
        return xVar.f3118l.findViewById(i2);
    }

    @Override // android.app.Activity
    public final MenuInflater getMenuInflater() {
        x xVar = (x) i();
        if (xVar.f3122p == null) {
            xVar.G();
            J j2 = xVar.f3121o;
            xVar.f3122p = new i(j2 != null ? j2.n0() : xVar.f3117k);
        }
        return xVar.f3122p;
    }

    @Override // android.view.ContextThemeWrapper, android.content.ContextWrapper, android.content.Context
    public final Resources getResources() {
        int i2 = s1.f3692a;
        return super.getResources();
    }

    public final n i() {
        if (this.f3050s == null) {
            D d2 = n.f3051a;
            this.f3050s = new x(this, null, this, this);
        }
        return this.f3050s;
    }

    @Override // android.app.Activity
    public final void invalidateOptionsMenu() {
        i().f();
    }

    public final void j() {
        getWindow().getDecorView().setTag(com.ex.auto.R.id.view_tree_lifecycle_owner, this);
        getWindow().getDecorView().setTag(com.ex.auto.R.id.view_tree_view_model_store_owner, this);
        View decorView = getWindow().getDecorView();
        f.e(decorView, "<this>");
        decorView.setTag(com.ex.auto.R.id.view_tree_saved_state_registry_owner, this);
        View decorView2 = getWindow().getDecorView();
        f.e(decorView2, "<this>");
        decorView2.setTag(com.ex.auto.R.id.view_tree_on_back_pressed_dispatcher_owner, this);
    }

    public final void l(Configuration configuration) {
        e eVar = this.f3045n;
        eVar.u();
        super.onConfigurationChanged(configuration);
        ((r) eVar.b).f.h();
    }

    public final void m() {
        super.onDestroy();
        ((r) this.f3045n.b).f.k();
        this.f3046o.d(k.ON_DESTROY);
    }

    public final boolean n(int i2, MenuItem menuItem) {
        if (super.onMenuItemSelected(i2, menuItem)) {
            return true;
        }
        e eVar = this.f3045n;
        if (i2 == 0) {
            return ((r) eVar.b).f.n();
        }
        if (i2 != 6) {
            return false;
        }
        return ((r) eVar.b).f.i();
    }

    public final void o(int i2, Menu menu) {
        if (i2 == 0) {
            ((r) this.f3045n.b).f.o();
        }
        super.onPanelClosed(i2, menu);
    }

    @Override // androidx.activity.g, android.app.Activity
    public final void onActivityResult(int i2, int i3, Intent intent) {
        this.f3045n.u();
        super.onActivityResult(i2, i3, intent);
    }

    @Override // androidx.activity.g, android.app.Activity, android.content.ComponentCallbacks
    public final void onConfigurationChanged(Configuration configuration) {
        l(configuration);
        x xVar = (x) i();
        if (xVar.f3091F && xVar.f3132z) {
            xVar.G();
            J j2 = xVar.f3121o;
            if (j2 != null) {
                j2.q0(j2.f2962c.getResources().getBoolean(com.ex.auto.R.bool.abc_action_bar_embed_tabs));
            }
        }
        C0251s c0251sA = C0251s.a();
        Context context = xVar.f3117k;
        synchronized (c0251sA) {
            M0 m1 = c0251sA.f3681a;
            synchronized (m1) {
                p020m.e eVar = (p020m.e) m1.b.get(context);
                if (eVar != null) {
                    eVar.a();
                }
            }
        }
        xVar.f3102R = new Configuration(xVar.f3117k.getResources().getConfiguration());
        xVar.t(false, false);
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public final void onContentChanged() {
    }

    @Override // androidx.activity.g, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f3046o.d(k.ON_CREATE);
        E e2 = ((r) this.f3045n.b).f;
        e2.f1759y = false;
        e2.f1760z = false;
        e2.f1735F.f1772h = false;
        e2.s(1);
    }

    @Override // androidx.activity.g, android.app.Activity, android.view.Window.Callback
    public final boolean onCreatePanelMenu(int i2, Menu menu) {
        if (i2 != 0) {
            super.onCreatePanelMenu(i2, menu);
            return true;
        }
        super.onCreatePanelMenu(i2, menu);
        getMenuInflater();
        ((r) this.f3045n.b).f.j();
        return true;
    }

    @Override // android.app.Activity, android.view.LayoutInflater.Factory2
    public final View onCreateView(View view, String str, Context context, AttributeSet attributeSet) {
        View viewOnCreateView = ((r) this.f3045n.b).f.f.onCreateView(view, str, context, attributeSet);
        return viewOnCreateView == null ? super.onCreateView(view, str, context, attributeSet) : viewOnCreateView;
    }

    @Override // android.app.Activity
    public void onDestroy() {
        m();
        i().i();
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public final void onLowMemory() {
        super.onLowMemory();
        ((r) this.f3045n.b).f.l();
    }

    @Override // androidx.activity.g, android.app.Activity, android.view.Window.Callback
    public final boolean onMenuItemSelected(int i2, MenuItem menuItem) {
        Intent intentA;
        if (n(i2, menuItem)) {
            return true;
        }
        x xVar = (x) i();
        xVar.G();
        J j2 = xVar.f3121o;
        if (menuItem.getItemId() == 16908332 && j2 != null && (((q1) j2.f2965g).b & 4) != 0 && (intentA = A.b.A(this)) != null) {
            if (!androidx.core.app.d.c(this, intentA)) {
                androidx.core.app.d.b(this, intentA);
                return true;
            }
            ArrayList arrayList = new ArrayList();
            Intent intentA2 = A.b.A(this);
            if (intentA2 == null) {
                intentA2 = A.b.A(this);
            }
            if (intentA2 != null) {
                ComponentName component = intentA2.getComponent();
                if (component == null) {
                    component = intentA2.resolveActivity(getPackageManager());
                }
                int size = arrayList.size();
                try {
                    Intent intentB = A.b.B(this, component);
                    while (intentB != null) {
                        arrayList.add(size, intentB);
                        intentB = A.b.B(this, intentB.getComponent());
                    }
                    arrayList.add(intentA2);
                } catch (PackageManager.NameNotFoundException e2) {
                    Log.e("TaskStackBuilder", "Bad ComponentName while traversing activity parent metadata");
                    throw new IllegalArgumentException(e2);
                }
            }
            if (arrayList.isEmpty()) {
                throw new IllegalStateException("No intents added to TaskStackBuilder; cannot startActivities");
            }
            Intent[] intentArr = (Intent[]) arrayList.toArray(new Intent[0]);
            intentArr[0] = new Intent(intentArr[0]).addFlags(268484608);
            androidx.core.content.a.a(this, intentArr, null);
            try {
                androidx.core.app.a.a(this);
                return true;
            } catch (IllegalStateException unused) {
                finish();
                return true;
            }
        }
        return false;
    }

    @Override // android.app.Activity
    public final void onMultiWindowModeChanged(boolean z2) {
        ((r) this.f3045n.b).f.m(z2);
    }

    @Override // androidx.activity.g, android.app.Activity
    public void onNewIntent(Intent intent) {
        this.f3045n.u();
        super.onNewIntent(intent);
    }

    @Override // androidx.activity.g, android.app.Activity, android.view.Window.Callback
    public final void onPanelClosed(int i2, Menu menu) {
        o(i2, menu);
    }

    @Override // android.app.Activity
    public void onPause() {
        super.onPause();
        this.f3048q = false;
        ((r) this.f3045n.b).f.s(5);
        this.f3046o.d(k.ON_PAUSE);
    }

    @Override // android.app.Activity
    public final void onPictureInPictureModeChanged(boolean z2) {
        ((r) this.f3045n.b).f.q(z2);
    }

    @Override // android.app.Activity
    public final void onPostCreate(Bundle bundle) {
        super.onPostCreate(bundle);
        ((x) i()).C();
    }

    @Override // android.app.Activity
    public final void onPostResume() {
        p();
        x xVar = (x) i();
        xVar.G();
        J j2 = xVar.f3121o;
        if (j2 != null) {
            j2.f2980v = true;
        }
    }

    @Override // androidx.activity.g, android.app.Activity, android.view.Window.Callback
    public final boolean onPreparePanel(int i2, View view, Menu menu) {
        if (i2 != 0) {
            super.onPreparePanel(i2, view, menu);
            return true;
        }
        super.onPreparePanel(0, view, menu);
        ((r) this.f3045n.b).f.r();
        return true;
    }

    @Override // androidx.activity.g, android.app.Activity
    public final void onRequestPermissionsResult(int i2, String[] strArr, int[] iArr) {
        this.f3045n.u();
        super.onRequestPermissionsResult(i2, strArr, iArr);
    }

    @Override // android.app.Activity
    public void onResume() {
        e eVar = this.f3045n;
        eVar.u();
        super.onResume();
        this.f3048q = true;
        ((r) eVar.b).f.w(true);
    }

    @Override // android.app.Activity
    public final void onStart() {
        q();
        ((x) i()).t(true, false);
    }

    @Override // android.app.Activity
    public final void onStateNotSaved() {
        this.f3045n.u();
    }

    @Override // android.app.Activity
    public final void onStop() {
        r();
        x xVar = (x) i();
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

    @Override // android.app.Activity
    public final void onTitleChanged(CharSequence charSequence, int i2) {
        super.onTitleChanged(charSequence, i2);
        i().r(charSequence);
    }

    @Override // android.app.Activity
    public final void openOptionsMenu() {
        ((x) i()).G();
        if (getWindow().hasFeature(0)) {
            super.openOptionsMenu();
        }
    }

    public final void p() {
        super.onPostResume();
        this.f3046o.d(k.ON_RESUME);
        E e2 = ((r) this.f3045n.b).f;
        e2.f1759y = false;
        e2.f1760z = false;
        e2.f1735F.f1772h = false;
        e2.s(7);
    }

    public final void q() {
        e eVar = this.f3045n;
        eVar.u();
        super.onStart();
        this.f3049r = false;
        boolean z2 = this.f3047p;
        r rVar = (r) eVar.b;
        if (!z2) {
            this.f3047p = true;
            E e2 = rVar.f;
            e2.f1759y = false;
            e2.f1760z = false;
            e2.f1735F.f1772h = false;
            e2.s(4);
        }
        rVar.f.w(true);
        this.f3046o.d(k.ON_START);
        E e3 = rVar.f;
        e3.f1759y = false;
        e3.f1760z = false;
        e3.f1735F.f1772h = false;
        e3.s(5);
    }

    public final void r() {
        e eVar;
        super.onStop();
        this.f3049r = true;
        do {
            eVar = this.f3045n;
        } while (k(((r) eVar.b).f));
        E e2 = ((r) eVar.b).f;
        e2.f1760z = true;
        e2.f1735F.f1772h = true;
        e2.s(4);
        this.f3046o.d(k.ON_STOP);
    }

    @Override // android.app.Activity
    public final void setContentView(int i2) {
        j();
        i().m(i2);
    }

    @Override // android.app.Activity, android.view.ContextThemeWrapper, android.content.ContextWrapper, android.content.Context
    public final void setTheme(int i2) {
        super.setTheme(i2);
        ((x) i()).f3103T = i2;
    }

    @Override // androidx.activity.g, android.app.Activity
    public void setContentView(View view) {
        j();
        i().n(view);
    }

    @Override // android.app.Activity, android.view.LayoutInflater.Factory
    public final View onCreateView(String str, Context context, AttributeSet attributeSet) {
        View viewOnCreateView = ((r) this.f3045n.b).f.f.onCreateView(null, str, context, attributeSet);
        return viewOnCreateView == null ? super.onCreateView(str, context, attributeSet) : viewOnCreateView;
    }

    @Override // android.app.Activity
    public final void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        j();
        i().p(view, layoutParams);
    }
}
