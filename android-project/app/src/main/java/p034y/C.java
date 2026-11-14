package p034y;

import android.os.Build;
import android.view.View;
import android.view.WindowInsets;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes.dex */
public final class C implements View.OnApplyWindowInsetsListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public j0 f4219a = null;
    public final /* synthetic */ View b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ InterfaceC0283q f4220c;

    public C(View view, InterfaceC0283q interfaceC0283q) {
        this.b = view;
        this.f4220c = interfaceC0283q;
    }

    @Override // android.view.View.OnApplyWindowInsetsListener
    public WindowInsets onApplyWindowInsets(View view, WindowInsets windowInsets) {
        j0 j0VarG = j0.g(windowInsets, view);
        int i2 = Build.VERSION.SDK_INT;
        InterfaceC0283q interfaceC0283q = this.f4220c;
        if (i2 < 30) {
            D.a(windowInsets, this.b);
            if (j0VarG.equals(this.f4219a)) {
                return interfaceC0283q.i(view, j0VarG).f();
            }
        }
        this.f4219a = j0VarG;
        j0 j0VarI = interfaceC0283q.i(view, j0VarG);
        if (i2 >= 30) {
            return j0VarI.f();
        }
        WeakHashMap weakHashMap = N.f4222a;
        B.c(view);
        return j0VarI.f();
    }
}
