package p011h;

import M.d0;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.util.Log;
import android.view.InflateException;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import p012i.n;
import p012i.o;
import p012i.s;
import p030t.a;
import p034y.AbstractC0279m;

/* JADX INFO: loaded from: classes.dex */
public final class h {

    /* JADX INFO: renamed from: A, reason: collision with root package name */
    public CharSequence f3229A;

    /* JADX INFO: renamed from: B, reason: collision with root package name */
    public CharSequence f3230B;

    /* JADX INFO: renamed from: E, reason: collision with root package name */
    public final /* synthetic */ i f3233E;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Menu f3234a;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f3239h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f3240i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f3241j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public CharSequence f3242k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public CharSequence f3243l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f3244m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public char f3245n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f3246o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public char f3247p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f3248q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public int f3249r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public boolean f3250s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public boolean f3251t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public boolean f3252u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public int f3253v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public int f3254w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public String f3255x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public String f3256y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public o f3257z;

    /* JADX INFO: renamed from: C, reason: collision with root package name */
    public ColorStateList f3231C = null;

    /* JADX INFO: renamed from: D, reason: collision with root package name */
    public PorterDuff.Mode f3232D = null;
    public int b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f3235c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f3236d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f3237e = 0;
    public boolean f = true;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f3238g = true;

    public h(i iVar, Menu menu) {
        this.f3233E = iVar;
        this.f3234a = menu;
    }

    public final Object a(String str, Class[] clsArr, Object[] objArr) {
        try {
            Constructor<?> constructor = Class.forName(str, false, this.f3233E.f3260c.getClassLoader()).getConstructor(clsArr);
            constructor.setAccessible(true);
            return constructor.newInstance(objArr);
        } catch (Exception e2) {
            Log.w("SupportMenuInflater", "Cannot instantiate class: " + str, e2);
            return null;
        }
    }

    public final void b(MenuItem menuItem) {
        boolean z2 = false;
        menuItem.setChecked(this.f3250s).setVisible(this.f3251t).setEnabled(this.f3252u).setCheckable(this.f3249r >= 1).setTitleCondensed(this.f3243l).setIcon(this.f3244m);
        int i2 = this.f3253v;
        if (i2 >= 0) {
            menuItem.setShowAsAction(i2);
        }
        String str = this.f3256y;
        i iVar = this.f3233E;
        if (str != null) {
            if (iVar.f3260c.isRestricted()) {
                throw new IllegalStateException("The android:onClick attribute cannot be used within a restricted context");
            }
            if (iVar.f3261d == null) {
                iVar.f3261d = i.a(iVar.f3260c);
            }
            Object obj = iVar.f3261d;
            String str2 = this.f3256y;
            g gVar = new g();
            gVar.f3228a = obj;
            Class<?> cls = obj.getClass();
            try {
                gVar.b = cls.getMethod(str2, g.f3227c);
                menuItem.setOnMenuItemClickListener(gVar);
            } catch (Exception e2) {
                StringBuilder sbJ = d0.j("Couldn't resolve menu item onClick handler ", str2, " in class ");
                sbJ.append(cls.getName());
                InflateException inflateException = new InflateException(sbJ.toString());
                inflateException.initCause(e2);
                throw inflateException;
            }
        }
        if (this.f3249r >= 2) {
            if (menuItem instanceof n) {
                n nVar = (n) menuItem;
                nVar.f3389x = (nVar.f3389x & (-5)) | 4;
            } else if (menuItem instanceof s) {
                s sVar = (s) menuItem;
                try {
                    Method method = sVar.f3398d;
                    a aVar = sVar.f3397c;
                    if (method == null) {
                        sVar.f3398d = aVar.getClass().getDeclaredMethod("setExclusiveCheckable", Boolean.TYPE);
                    }
                    sVar.f3398d.invoke(aVar, Boolean.TRUE);
                } catch (Exception e3) {
                    Log.w("MenuItemWrapper", "Error while calling setExclusiveCheckable", e3);
                }
            }
        }
        String str3 = this.f3255x;
        if (str3 != null) {
            menuItem.setActionView((View) a(str3, i.f3258e, iVar.f3259a));
            z2 = true;
        }
        int i3 = this.f3254w;
        if (i3 > 0) {
            if (z2) {
                Log.w("SupportMenuInflater", "Ignoring attribute 'itemActionViewLayout'. Action view already specified.");
            } else {
                menuItem.setActionView(i3);
            }
        }
        o oVar = this.f3257z;
        if (oVar != null) {
            if (menuItem instanceof a) {
                ((a) menuItem).a(oVar);
            } else {
                Log.w("MenuItemCompat", "setActionProvider: item does not implement SupportMenuItem; ignoring");
            }
        }
        CharSequence charSequence = this.f3229A;
        boolean z3 = menuItem instanceof a;
        if (z3) {
            ((a) menuItem).setContentDescription(charSequence);
        } else {
            AbstractC0279m.h(menuItem, charSequence);
        }
        CharSequence charSequence2 = this.f3230B;
        if (z3) {
            ((a) menuItem).setTooltipText(charSequence2);
        } else {
            AbstractC0279m.m(menuItem, charSequence2);
        }
        char c2 = this.f3245n;
        int i4 = this.f3246o;
        if (z3) {
            ((a) menuItem).setAlphabeticShortcut(c2, i4);
        } else {
            AbstractC0279m.g(menuItem, c2, i4);
        }
        char c3 = this.f3247p;
        int i5 = this.f3248q;
        if (z3) {
            ((a) menuItem).setNumericShortcut(c3, i5);
        } else {
            AbstractC0279m.k(menuItem, c3, i5);
        }
        PorterDuff.Mode mode = this.f3232D;
        if (mode != null) {
            if (z3) {
                ((a) menuItem).setIconTintMode(mode);
            } else {
                AbstractC0279m.j(menuItem, mode);
            }
        }
        ColorStateList colorStateList = this.f3231C;
        if (colorStateList != null) {
            if (z3) {
                ((a) menuItem).setIconTintList(colorStateList);
            } else {
                AbstractC0279m.i(menuItem, colorStateList);
            }
        }
    }
}
