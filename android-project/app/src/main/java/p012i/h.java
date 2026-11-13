package p012i;

import T.C0081j1;
import android.content.Context;
import android.content.ContextWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.WindowManager;
import android.widget.AdapterView;
import androidx.appcompat.view.menu.ExpandedMenuView;
import p007e.C0205e;
import p007e.DialogC0209i;

/* JADX INFO: loaded from: classes.dex */
public final class h implements y, AdapterView.OnItemClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Context f3332a;
    public LayoutInflater b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public l f3333c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public ExpandedMenuView f3334d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public x f3335e;
    public g f;

    public h(ContextWrapper contextWrapper) {
        this.f3332a = contextWrapper;
        this.b = LayoutInflater.from(contextWrapper);
    }

    @Override // p012i.y
    public final void a(l lVar, boolean z2) {
        x xVar = this.f3335e;
        if (xVar != null) {
            xVar.a(lVar, z2);
        }
    }

    @Override // p012i.y
    public final boolean c(n nVar) {
        return false;
    }

    @Override // p012i.y
    public final boolean d() {
        return false;
    }

    @Override // p012i.y
    public final void e(Context context, l lVar) {
        if (this.f3332a != null) {
            this.f3332a = context;
            if (this.b == null) {
                this.b = LayoutInflater.from(context);
            }
        }
        this.f3333c = lVar;
        g gVar = this.f;
        if (gVar != null) {
            gVar.notifyDataSetChanged();
        }
    }

    @Override // p012i.y
    public final void g(x xVar) {
        throw null;
    }

    @Override // p012i.y
    public final boolean h(n nVar) {
        return false;
    }

    @Override // p012i.y
    public final void i() {
        g gVar = this.f;
        if (gVar != null) {
            gVar.notifyDataSetChanged();
        }
    }

    @Override // p012i.y
    public final boolean j(E e2) {
        if (!e2.hasVisibleItems()) {
            return false;
        }
        m mVar = new m();
        mVar.f3363a = e2;
        Context context = e2.f3341a;
        C0081j1 c0081j1 = new C0081j1(context);
        C0205e c0205e = (C0205e) c0081j1.b;
        h hVar = new h(c0205e.f2989a);
        mVar.f3364c = hVar;
        hVar.f3335e = mVar;
        e2.b(hVar, context);
        h hVar2 = mVar.f3364c;
        if (hVar2.f == null) {
            hVar2.f = new g(hVar2);
        }
        c0205e.f3001o = hVar2.f;
        c0205e.f3002p = mVar;
        View view = e2.f3353o;
        if (view != null) {
            c0205e.f2992e = view;
        } else {
            c0205e.f2990c = e2.f3352n;
            c0205e.f2991d = e2.f3351m;
        }
        c0205e.f2999m = mVar;
        DialogC0209i dialogC0209iB = c0081j1.b();
        mVar.b = dialogC0209iB;
        dialogC0209iB.setOnDismissListener(mVar);
        WindowManager.LayoutParams attributes = mVar.b.getWindow().getAttributes();
        attributes.type = 1003;
        attributes.flags |= 131072;
        mVar.b.show();
        x xVar = this.f3335e;
        if (xVar == null) {
            return true;
        }
        xVar.f(e2);
        return true;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public final void onItemClick(AdapterView adapterView, View view, int i2, long j2) {
        this.f3333c.q(this.f.getItem(i2), this, 0);
    }
}
