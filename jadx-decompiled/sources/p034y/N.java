package p034y;

import B.u;
import android.content.Context;
import android.content.res.TypedArray;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import com.ex.auto.R;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.WeakHashMap;
import java.util.concurrent.atomic.AtomicInteger;
import p014j.C0255u;
import p035z.d;
import p035z.p;

/* JADX INFO: loaded from: classes.dex */
public abstract class N {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static WeakHashMap f4222a;
    public static Field b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static boolean f4223c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final C0286u f4224d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final ViewTreeObserverOnGlobalLayoutListenerC0288w f4225e;

    static {
        new AtomicInteger(1);
        f4222a = null;
        f4223c = false;
        f4224d = new C0286u();
        f4225e = new ViewTreeObserverOnGlobalLayoutListenerC0288w();
    }

    public static V a(View view) {
        if (f4222a == null) {
            f4222a = new WeakHashMap();
        }
        V v2 = (V) f4222a.get(view);
        if (v2 != null) {
            return v2;
        }
        V v3 = new V(view);
        f4222a.put(view, v3);
        return v3;
    }

    public static View.AccessibilityDelegate b(View view) {
        if (Build.VERSION.SDK_INT >= 29) {
            return I.a(view);
        }
        if (f4223c) {
            return null;
        }
        if (b == null) {
            try {
                Field declaredField = View.class.getDeclaredField("mAccessibilityDelegate");
                b = declaredField;
                declaredField.setAccessible(true);
            } catch (Throwable unused) {
                f4223c = true;
                return null;
            }
        }
        try {
            Object obj = b.get(view);
            if (obj instanceof View.AccessibilityDelegate) {
                return (View.AccessibilityDelegate) obj;
            }
            return null;
        } catch (Throwable unused2) {
            f4223c = true;
            return null;
        }
    }

    public static String[] c(C0255u c0255u) {
        return Build.VERSION.SDK_INT >= 31 ? K.a(c0255u) : (String[]) c0255u.getTag(R.id.tag_on_receive_content_mime_types);
    }

    public static void d(View view, int i2) {
        AccessibilityManager accessibilityManager = (AccessibilityManager) view.getContext().getSystemService("accessibility");
        if (accessibilityManager.isEnabled()) {
            boolean z2 = H.b(view) != null && view.isShown() && view.getWindowVisibility() == 0;
            if (A.a(view) != 0 || z2) {
                AccessibilityEvent accessibilityEventObtain = AccessibilityEvent.obtain();
                accessibilityEventObtain.setEventType(z2 ? 32 : 2048);
                A.g(accessibilityEventObtain, i2);
                if (z2) {
                    accessibilityEventObtain.getText().add(H.b(view));
                    if (AbstractC0290y.c(view) == 0) {
                        AbstractC0290y.s(view, 1);
                    }
                    for (ViewParent parent = view.getParent(); parent instanceof View; parent = parent.getParent()) {
                        if (AbstractC0290y.c((View) parent) == 4) {
                            AbstractC0290y.s(view, 2);
                            break;
                        }
                    }
                }
                view.sendAccessibilityEventUnchecked(accessibilityEventObtain);
                return;
            }
            if (i2 != 32) {
                if (view.getParent() != null) {
                    try {
                        A.e(view.getParent(), view, view, i2);
                        return;
                    } catch (AbstractMethodError e2) {
                        Log.e("ViewCompat", view.getParent().getClass().getSimpleName().concat(" does not fully implement ViewParent"), e2);
                        return;
                    }
                }
                return;
            }
            AccessibilityEvent accessibilityEventObtain2 = AccessibilityEvent.obtain();
            view.onInitializeAccessibilityEvent(accessibilityEventObtain2);
            accessibilityEventObtain2.setEventType(32);
            A.g(accessibilityEventObtain2, i2);
            accessibilityEventObtain2.setSource(view);
            view.onPopulateAccessibilityEvent(accessibilityEventObtain2);
            accessibilityEventObtain2.getText().add(H.b(view));
            accessibilityManager.sendAccessibilityEvent(accessibilityEventObtain2);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static C0274h e(View view, C0274h c0274h) {
        if (Log.isLoggable("ViewCompat", 3)) {
            Log.d("ViewCompat", "performReceiveContent: " + c0274h + ", view=" + view.getClass().getSimpleName() + "[" + view.getId() + "]");
        }
        if (Build.VERSION.SDK_INT >= 31) {
            return K.b(view, c0274h);
        }
        r rVar = (r) view.getTag(R.id.tag_on_receive_content_listener);
        InterfaceC0284s interfaceC0284s = f4224d;
        if (rVar == null) {
            if (view instanceof InterfaceC0284s) {
                interfaceC0284s = (InterfaceC0284s) view;
            }
            return interfaceC0284s.a(c0274h);
        }
        C0274h c0274hA = ((u) rVar).a(view, c0274h);
        if (c0274hA == null) {
            return null;
        }
        if (view instanceof InterfaceC0284s) {
            interfaceC0284s = (InterfaceC0284s) view;
        }
        return interfaceC0284s.a(c0274hA);
    }

    public static void f(View view, int i2) {
        ArrayList arrayList = (ArrayList) view.getTag(R.id.tag_accessibility_actions);
        if (arrayList == null) {
            arrayList = new ArrayList();
            view.setTag(R.id.tag_accessibility_actions, arrayList);
        }
        for (int i3 = 0; i3 < arrayList.size(); i3++) {
            if (((d) arrayList.get(i3)).a() == i2) {
                arrayList.remove(i3);
                return;
            }
        }
    }

    public static void g(View view, d dVar, p pVar) {
        C0269c c0269c = null;
        d dVar2 = new d(null, dVar.b, pVar, dVar.f4276c);
        View.AccessibilityDelegate accessibilityDelegateB = b(view);
        if (accessibilityDelegateB != null) {
            c0269c = accessibilityDelegateB instanceof C0267a ? ((C0267a) accessibilityDelegateB).f4237a : new C0269c(accessibilityDelegateB);
        }
        if (c0269c == null) {
            c0269c = new C0269c();
        }
        i(view, c0269c);
        f(view, dVar2.a());
        ArrayList arrayList = (ArrayList) view.getTag(R.id.tag_accessibility_actions);
        if (arrayList == null) {
            arrayList = new ArrayList();
            view.setTag(R.id.tag_accessibility_actions, arrayList);
        }
        arrayList.add(dVar2);
        d(view, 0);
    }

    public static void h(View view, Context context, int[] iArr, AttributeSet attributeSet, TypedArray typedArray, int i2) {
        if (Build.VERSION.SDK_INT >= 29) {
            I.c(view, context, iArr, attributeSet, typedArray, i2, 0);
        }
    }

    public static void i(View view, C0269c c0269c) {
        if (c0269c == null && (b(view) instanceof C0267a)) {
            c0269c = new C0269c();
        }
        view.setAccessibilityDelegate(c0269c == null ? null : c0269c.b);
    }

    public static void j(View view, CharSequence charSequence) {
        new C0287v(R.id.tag_accessibility_pane_title, CharSequence.class, 8, 28, 1).d(view, charSequence);
        ViewTreeObserverOnGlobalLayoutListenerC0288w viewTreeObserverOnGlobalLayoutListenerC0288w = f4225e;
        if (charSequence == null) {
            viewTreeObserverOnGlobalLayoutListenerC0288w.f4265a.remove(view);
            view.removeOnAttachStateChangeListener(viewTreeObserverOnGlobalLayoutListenerC0288w);
            AbstractC0290y.o(view.getViewTreeObserver(), viewTreeObserverOnGlobalLayoutListenerC0288w);
        } else {
            viewTreeObserverOnGlobalLayoutListenerC0288w.f4265a.put(view, Boolean.valueOf(view.isShown() && view.getWindowVisibility() == 0));
            view.addOnAttachStateChangeListener(viewTreeObserverOnGlobalLayoutListenerC0288w);
            if (A.b(view)) {
                view.getViewTreeObserver().addOnGlobalLayoutListener(viewTreeObserverOnGlobalLayoutListenerC0288w);
            }
        }
    }
}
