package p007e;

import android.R;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import java.lang.reflect.Constructor;
import p014j.C;
import p014j.C0219b0;
import p014j.C0242n;
import p014j.C0244o;
import p014j.C0246p;
import p020m.k;

/* JADX INFO: loaded from: classes.dex */
public class A {
    public static final Class[] b = {Context.class, AttributeSet.class};

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final int[] f2941c = {R.attr.onClick};

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final int[] f2942d = {R.attr.accessibilityHeading};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final int[] f2943e = {R.attr.accessibilityPaneTitle};
    public static final int[] f = {R.attr.screenReaderFocusable};

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final String[] f2944g = {"android.widget.", "android.view.", "android.webkit."};

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final k f2945h = new k();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object[] f2946a = new Object[2];

    public C0242n a(Context context, AttributeSet attributeSet) {
        return new C0242n(context, attributeSet);
    }

    public C0244o b(Context context, AttributeSet attributeSet) {
        return new C0244o(context, attributeSet, com.ex.auto.R.attr.buttonStyle);
    }

    public C0246p c(Context context, AttributeSet attributeSet) {
        return new C0246p(context, attributeSet, com.ex.auto.R.attr.checkboxStyle);
    }

    public C d(Context context, AttributeSet attributeSet) {
        return new C(context, attributeSet);
    }

    public C0219b0 e(Context context, AttributeSet attributeSet) {
        return new C0219b0(context, attributeSet);
    }

    public final View f(Context context, String str, String str2) {
        String strConcat;
        k kVar = f2945h;
        Constructor constructor = (Constructor) kVar.getOrDefault(str, null);
        if (constructor == null) {
            if (str2 != null) {
                try {
                    strConcat = str2.concat(str);
                } catch (Exception unused) {
                    return null;
                }
            } else {
                strConcat = str;
            }
            constructor = Class.forName(strConcat, false, context.getClassLoader()).asSubclass(View.class).getConstructor(b);
            kVar.put(str, constructor);
        }
        constructor.setAccessible(true);
        return (View) constructor.newInstance(this.f2946a);
    }
}
