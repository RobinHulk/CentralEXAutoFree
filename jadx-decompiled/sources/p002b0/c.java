package p002b0;

import E.e;
import android.graphics.Typeface;
import android.view.View;
import android.widget.AutoCompleteTextView;
import com.google.android.material.behavior.SwipeDismissBehavior;
import java.util.WeakHashMap;
import p014j.Q0;
import p026q.b;
import p029r0.k;
import p034y.AbstractC0290y;
import p034y.N;

/* JADX INFO: loaded from: classes.dex */
public final class c implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2101a;
    public final Object b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f2102c;

    public /* synthetic */ c(Object obj, int i2, Object obj2) {
        this.f2101a = i2;
        this.b = obj;
        this.f2102c = obj2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Object obj = this.f2102c;
        Object obj2 = this.b;
        switch (this.f2101a) {
            case 0:
                e eVar = ((SwipeDismissBehavior) obj).f2667a;
                if (eVar != null && eVar.f()) {
                    WeakHashMap weakHashMap = N.f4222a;
                    AbstractC0290y.m((View) obj2, this);
                    break;
                }
                break;
            case 1:
                boolean zIsPopupShowing = ((AutoCompleteTextView) obj2).isPopupShowing();
                Q0 q1 = (Q0) obj;
                ((k) q1.b).g(zIsPopupShowing);
                ((k) q1.b).f4077i = zIsPopupShowing;
                break;
            case 2:
                b bVar = (b) ((A.e) obj2).b;
                if (bVar != null) {
                    bVar.e((Typeface) obj);
                }
                break;
            default:
                ((v.e) obj2).a(obj);
                break;
        }
    }

    public c(Q0 q1, AutoCompleteTextView autoCompleteTextView) {
        this.f2101a = 1;
        this.f2102c = q1;
        this.b = autoCompleteTextView;
    }

    public c(SwipeDismissBehavior swipeDismissBehavior, View view, boolean z2) {
        this.f2101a = 0;
        this.f2102c = swipeDismissBehavior;
        this.b = view;
    }
}
