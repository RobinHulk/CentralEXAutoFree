package p034y;

import A.e;
import android.os.Bundle;
import android.text.Spanned;
import android.text.style.ClickableSpan;
import android.util.Log;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeProvider;
import com.ex.auto.R;
import java.lang.ref.WeakReference;
import java.util.Collections;
import java.util.List;
import p035z.d;
import p035z.p;

/* JADX INFO: renamed from: y.c, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public class C0269c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final View.AccessibilityDelegate f4238c = new View.AccessibilityDelegate();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final View.AccessibilityDelegate f4239a;
    public final C0267a b;

    public C0269c() {
        this(f4238c);
    }

    public boolean a(View view, AccessibilityEvent accessibilityEvent) {
        return this.f4239a.dispatchPopulateAccessibilityEvent(view, accessibilityEvent);
    }

    public e b(View view) {
        AccessibilityNodeProvider accessibilityNodeProviderA = AbstractC0268b.a(this.f4239a, view);
        if (accessibilityNodeProviderA != null) {
            return new e(accessibilityNodeProviderA, 29);
        }
        return null;
    }

    public void c(View view, AccessibilityEvent accessibilityEvent) {
        this.f4239a.onInitializeAccessibilityEvent(view, accessibilityEvent);
    }

    public void d(View view, p035z.e eVar) {
        this.f4239a.onInitializeAccessibilityNodeInfo(view, eVar.f4278a);
    }

    public void e(View view, AccessibilityEvent accessibilityEvent) {
        this.f4239a.onPopulateAccessibilityEvent(view, accessibilityEvent);
    }

    public boolean f(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
        return this.f4239a.onRequestSendAccessibilityEvent(viewGroup, view, accessibilityEvent);
    }

    public boolean g(View view, int i2, Bundle bundle) {
        boolean zB;
        WeakReference weakReference;
        ClickableSpan clickableSpan;
        List listEmptyList = (List) view.getTag(R.id.tag_accessibility_actions);
        if (listEmptyList == null) {
            listEmptyList = Collections.emptyList();
        }
        boolean z2 = false;
        int i3 = 0;
        while (true) {
            if (i3 < listEmptyList.size()) {
                d dVar = (d) listEmptyList.get(i3);
                if (dVar.a() == i2) {
                    p pVar = dVar.f4277d;
                    if (pVar != null) {
                        Class cls = dVar.f4276c;
                        if (cls != null) {
                            try {
                                if (cls.getDeclaredConstructor(null).newInstance(null) == null) {
                                    throw null;
                                }
                                throw new ClassCastException();
                            } catch (Exception e2) {
                                Log.e("A11yActionCompat", "Failed to execute command with argument class ViewCommandArgument: ".concat(cls.getName()), e2);
                            }
                        }
                        zB = pVar.d(view);
                        break;
                    }
                } else {
                    i3++;
                }
            }
            zB = false;
            break;
        }
        if (!zB) {
            zB = AbstractC0268b.b(this.f4239a, view, i2, bundle);
        }
        if (zB || i2 != R.id.accessibility_action_clickable_span || bundle == null) {
            return zB;
        }
        int i4 = bundle.getInt("ACCESSIBILITY_CLICKABLE_SPAN_ID", -1);
        SparseArray sparseArray = (SparseArray) view.getTag(R.id.tag_accessibility_clickable_spans);
        if (sparseArray != null && (weakReference = (WeakReference) sparseArray.get(i4)) != null && (clickableSpan = (ClickableSpan) weakReference.get()) != null) {
            CharSequence text = view.createAccessibilityNodeInfo().getText();
            ClickableSpan[] clickableSpanArr = text instanceof Spanned ? (ClickableSpan[]) ((Spanned) text).getSpans(0, text.length(), ClickableSpan.class) : null;
            for (int i5 = 0; clickableSpanArr != null && i5 < clickableSpanArr.length; i5++) {
                if (clickableSpan.equals(clickableSpanArr[i5])) {
                    clickableSpan.onClick(view);
                    z2 = true;
                    break;
                }
            }
        }
        return z2;
    }

    public void h(View view, int i2) {
        this.f4239a.sendAccessibilityEvent(view, i2);
    }

    public void i(View view, AccessibilityEvent accessibilityEvent) {
        this.f4239a.sendAccessibilityEventUnchecked(view, accessibilityEvent);
    }

    public C0269c(View.AccessibilityDelegate accessibilityDelegate) {
        this.f4239a = accessibilityDelegate;
        this.b = new C0267a(this);
    }
}
