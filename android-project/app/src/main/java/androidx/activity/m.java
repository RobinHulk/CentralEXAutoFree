package androidx.activity;

import T.T0;
import android.window.OnBackInvokedCallback;
import android.window.OnBackInvokedDispatcher;
import androidx.fragment.app.E;
import androidx.fragment.app.x;
import androidx.lifecycle.q;
import androidx.lifecycle.s;
import java.util.ArrayDeque;
import java.util.Iterator;
import p007e.AbstractC0201a;

/* JADX INFO: loaded from: classes.dex */
public final class m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Runnable f1432a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final i f1433c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final OnBackInvokedCallback f1434d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public OnBackInvokedDispatcher f1435e;
    public final ArrayDeque b = new ArrayDeque();
    public boolean f = false;

    public m(Runnable runnable) {
        this.f1432a = runnable;
        if (AbstractC0201a.D()) {
            this.f1433c = new i(this);
            this.f1434d = k.a(new T0(this, 15));
        }
    }

    public final void a(q qVar, x xVar) {
        s sVarD = qVar.d();
        if (sVarD.b == androidx.lifecycle.l.f1957a) {
            return;
        }
        xVar.b.add(new OnBackPressedDispatcher$LifecycleOnBackPressedCancellable(this, sVarD, xVar));
        if (AbstractC0201a.D()) {
            c();
            xVar.f1930c = this.f1433c;
        }
    }

    public final void b() {
        Iterator itDescendingIterator = this.b.descendingIterator();
        while (itDescendingIterator.hasNext()) {
            x xVar = (x) itDescendingIterator.next();
            if (xVar.f1929a) {
                E e2 = xVar.f1931d;
                e2.w(true);
                if (e2.f1742h.f1929a) {
                    e2.I();
                    return;
                } else {
                    e2.f1741g.b();
                    return;
                }
            }
        }
        Runnable runnable = this.f1432a;
        if (runnable != null) {
            runnable.run();
        }
    }

    public final void c() {
        boolean z2;
        Iterator itDescendingIterator = this.b.descendingIterator();
        while (true) {
            if (!itDescendingIterator.hasNext()) {
                z2 = false;
                break;
            } else if (((x) itDescendingIterator.next()).f1929a) {
                z2 = true;
                break;
            }
        }
        OnBackInvokedDispatcher onBackInvokedDispatcher = this.f1435e;
        if (onBackInvokedDispatcher != null) {
            if (z2 && !this.f) {
                k.b(onBackInvokedDispatcher, 0, this.f1434d);
                this.f = true;
            } else {
                if (z2 || !this.f) {
                    return;
                }
                k.c(onBackInvokedDispatcher, this.f1434d);
                this.f = false;
            }
        }
    }
}
