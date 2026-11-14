package p023o;

import M.d0;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import java.lang.reflect.Constructor;
import java.util.HashMap;
import java.util.Map;
import p022n.a;

/* JADX INFO: loaded from: classes.dex */
public final class d extends ViewGroup.MarginLayoutParams {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public a f3893a;
    public boolean b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f3894c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f3895d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f3896e;
    public final int f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final int f3897g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f3898h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f3899i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f3900j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public View f3901k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public View f3902l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public boolean f3903m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public boolean f3904n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final Rect f3905o;

    public d() {
        super(-2, -2);
        this.b = false;
        this.f3894c = 0;
        this.f3895d = 0;
        this.f3896e = -1;
        this.f = -1;
        this.f3897g = 0;
        this.f3898h = 0;
        this.f3905o = new Rect();
    }

    public final boolean a(int i2) {
        if (i2 == 0) {
            return this.f3903m;
        }
        if (i2 != 1) {
            return false;
        }
        return this.f3904n;
    }

    public d(Context context, AttributeSet attributeSet) {
        a aVar;
        super(context, attributeSet);
        this.b = false;
        this.f3894c = 0;
        this.f3895d = 0;
        this.f3896e = -1;
        this.f = -1;
        this.f3897g = 0;
        this.f3898h = 0;
        this.f3905o = new Rect();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.b);
        this.f3894c = typedArrayObtainStyledAttributes.getInteger(0, 0);
        this.f = typedArrayObtainStyledAttributes.getResourceId(1, -1);
        this.f3895d = typedArrayObtainStyledAttributes.getInteger(2, 0);
        this.f3896e = typedArrayObtainStyledAttributes.getInteger(6, -1);
        this.f3897g = typedArrayObtainStyledAttributes.getInt(5, 0);
        this.f3898h = typedArrayObtainStyledAttributes.getInt(4, 0);
        boolean zHasValue = typedArrayObtainStyledAttributes.hasValue(3);
        this.b = zHasValue;
        if (zHasValue) {
            String string = typedArrayObtainStyledAttributes.getString(3);
            String str = CoordinatorLayout.f1624t;
            if (TextUtils.isEmpty(string)) {
                aVar = null;
            } else {
                if (string.startsWith(".")) {
                    string = context.getPackageName() + string;
                } else if (string.indexOf(46) < 0) {
                    String str2 = CoordinatorLayout.f1624t;
                    if (!TextUtils.isEmpty(str2)) {
                        string = str2 + '.' + string;
                    }
                }
                try {
                    ThreadLocal threadLocal = CoordinatorLayout.f1626v;
                    Map map = (Map) threadLocal.get();
                    if (map == null) {
                        map = new HashMap();
                        threadLocal.set(map);
                    }
                    Constructor<?> constructor = (Constructor) map.get(string);
                    if (constructor == null) {
                        constructor = Class.forName(string, false, context.getClassLoader()).getConstructor(CoordinatorLayout.f1625u);
                        constructor.setAccessible(true);
                        map.put(string, constructor);
                    }
                    aVar = (a) constructor.newInstance(context, attributeSet);
                } catch (Exception e2) {
                    throw new RuntimeException(d0.e("Could not inflate Behavior subclass ", string), e2);
                }
            }
            this.f3893a = aVar;
        }
        typedArrayObtainStyledAttributes.recycle();
        a aVar2 = this.f3893a;
        if (aVar2 != null) {
            aVar2.c(this);
        }
    }

    public d(d dVar) {
        super((ViewGroup.MarginLayoutParams) dVar);
        this.b = false;
        this.f3894c = 0;
        this.f3895d = 0;
        this.f3896e = -1;
        this.f = -1;
        this.f3897g = 0;
        this.f3898h = 0;
        this.f3905o = new Rect();
    }

    public d(ViewGroup.MarginLayoutParams marginLayoutParams) {
        super(marginLayoutParams);
        this.b = false;
        this.f3894c = 0;
        this.f3895d = 0;
        this.f3896e = -1;
        this.f = -1;
        this.f3897g = 0;
        this.f3898h = 0;
        this.f3905o = new Rect();
    }

    public d(ViewGroup.LayoutParams layoutParams) {
        super(layoutParams);
        this.b = false;
        this.f3894c = 0;
        this.f3895d = 0;
        this.f3896e = -1;
        this.f = -1;
        this.f3897g = 0;
        this.f3898h = 0;
        this.f3905o = new Rect();
    }
}
