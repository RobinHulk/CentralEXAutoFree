package androidx.activity;

import T.T0;
import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.Application;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.os.Trace;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.Window;
import androidx.lifecycle.A;
import androidx.lifecycle.C;
import androidx.lifecycle.E;
import androidx.lifecycle.H;
import androidx.lifecycle.I;
import androidx.lifecycle.InterfaceC0198h;
import androidx.lifecycle.J;
import androidx.lifecycle.SavedStateHandleAttacher;
import androidx.lifecycle.o;
import androidx.lifecycle.q;
import androidx.lifecycle.s;
import com.ex.auto.R;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Random;
import java.util.WeakHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicInteger;
import p007e.AbstractActivityC0210j;
import p007e.AbstractC0201a;
import p034y.InterfaceC0277k;
import p034y.N;

/* JADX INFO: loaded from: classes.dex */
public abstract class g extends Activity implements J, InterfaceC0198h, N.f, q, InterfaceC0277k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public s f1418a = new s(this);
    public final p000a.a b = new p000a.a();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final G.a f1419c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final s f1420d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final N.e f1421e;
    public I f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final m f1422g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final d f1423h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final CopyOnWriteArrayList f1424i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final CopyOnWriteArrayList f1425j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final CopyOnWriteArrayList f1426k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final CopyOnWriteArrayList f1427l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final CopyOnWriteArrayList f1428m;

    public g() {
        N.c cVar;
        String str;
        final AbstractActivityC0210j abstractActivityC0210j = (AbstractActivityC0210j) this;
        this.f1419c = new G.a(new T0(abstractActivityC0210j, 13));
        s sVar = new s(this);
        this.f1420d = sVar;
        N.e eVar = new N.e(this);
        this.f1421e = eVar;
        this.f1422g = new m(new B.b(abstractActivityC0210j, 13));
        new AtomicInteger();
        this.f1423h = new d();
        this.f1424i = new CopyOnWriteArrayList();
        this.f1425j = new CopyOnWriteArrayList();
        this.f1426k = new CopyOnWriteArrayList();
        this.f1427l = new CopyOnWriteArrayList();
        this.f1428m = new CopyOnWriteArrayList();
        sVar.a(new o() { // from class: androidx.activity.ComponentActivity$3
            @Override // androidx.lifecycle.o
            public final void b(q qVar, androidx.lifecycle.k kVar) {
                if (kVar == androidx.lifecycle.k.ON_STOP) {
                    Window window = abstractActivityC0210j.getWindow();
                    View viewPeekDecorView = window != null ? window.peekDecorView() : null;
                    if (viewPeekDecorView != null) {
                        viewPeekDecorView.cancelPendingInputEvents();
                    }
                }
            }
        });
        sVar.a(new o() { // from class: androidx.activity.ComponentActivity$4
            @Override // androidx.lifecycle.o
            public final void b(q qVar, androidx.lifecycle.k kVar) {
                if (kVar == androidx.lifecycle.k.ON_DESTROY) {
                    abstractActivityC0210j.b.b = null;
                    if (abstractActivityC0210j.isChangingConfigurations()) {
                        return;
                    }
                    abstractActivityC0210j.c().a();
                }
            }
        });
        sVar.a(new o() { // from class: androidx.activity.ComponentActivity$5
            @Override // androidx.lifecycle.o
            public final void b(q qVar, androidx.lifecycle.k kVar) {
                AbstractActivityC0210j abstractActivityC0210j2 = abstractActivityC0210j;
                if (abstractActivityC0210j2.f == null) {
                    f fVar = (f) abstractActivityC0210j2.getLastNonConfigurationInstance();
                    if (fVar != null) {
                        abstractActivityC0210j2.f = fVar.f1417a;
                    }
                    if (abstractActivityC0210j2.f == null) {
                        abstractActivityC0210j2.f = new I();
                    }
                }
                abstractActivityC0210j2.f1420d.f(this);
            }
        });
        eVar.a();
        androidx.lifecycle.l lVar = sVar.b;
        I0.f.d(lVar, "lifecycle.currentState");
        if (lVar != androidx.lifecycle.l.b && lVar != androidx.lifecycle.l.f1958c) {
            throw new IllegalArgumentException("Failed requirement.");
        }
        N.d dVar = eVar.b;
        dVar.getClass();
        Iterator it = ((p018l.f) dVar.f390d).iterator();
        do {
            p018l.b bVar = (p018l.b) it;
            if (!bVar.hasNext()) {
                cVar = null;
                break;
            }
            Map.Entry entry = (Map.Entry) bVar.next();
            I0.f.d(entry, "components");
            str = (String) entry.getKey();
            cVar = (N.c) entry.getValue();
        } while (!I0.f.a(str, "androidx.lifecycle.internal.SavedStateHandlesProvider"));
        if (cVar == null) {
            E e2 = new E(this.f1421e.b, this);
            this.f1421e.b.e("androidx.lifecycle.internal.SavedStateHandlesProvider", e2);
            this.f1420d.a(new SavedStateHandleAttacher(e2));
        }
        this.f1421e.b.e("android:support:activity-result", new N.c() { // from class: androidx.activity.b
            @Override // N.c
            public final Bundle a() {
                AbstractActivityC0210j abstractActivityC0210j2 = abstractActivityC0210j;
                Bundle bundle = new Bundle();
                d dVar2 = abstractActivityC0210j2.f1423h;
                dVar2.getClass();
                HashMap map = dVar2.f1412c;
                bundle.putIntegerArrayList("KEY_COMPONENT_ACTIVITY_REGISTERED_RCS", new ArrayList<>(map.values()));
                bundle.putStringArrayList("KEY_COMPONENT_ACTIVITY_REGISTERED_KEYS", new ArrayList<>(map.keySet()));
                bundle.putStringArrayList("KEY_COMPONENT_ACTIVITY_LAUNCHED_KEYS", new ArrayList<>(dVar2.f1414e));
                bundle.putBundle("KEY_COMPONENT_ACTIVITY_PENDING_RESULT", (Bundle) dVar2.f1416h.clone());
                bundle.putSerializable("KEY_COMPONENT_ACTIVITY_RANDOM_OBJECT", dVar2.f1411a);
                return bundle;
            }
        });
        f(new p000a.b() { // from class: androidx.activity.c
            @Override // p000a.b
            public final void a() {
                AbstractActivityC0210j abstractActivityC0210j2 = abstractActivityC0210j;
                Bundle bundleC = abstractActivityC0210j2.f1421e.b.c("android:support:activity-result");
                if (bundleC != null) {
                    d dVar2 = abstractActivityC0210j2.f1423h;
                    dVar2.getClass();
                    ArrayList<Integer> integerArrayList = bundleC.getIntegerArrayList("KEY_COMPONENT_ACTIVITY_REGISTERED_RCS");
                    ArrayList<String> stringArrayList = bundleC.getStringArrayList("KEY_COMPONENT_ACTIVITY_REGISTERED_KEYS");
                    if (stringArrayList == null || integerArrayList == null) {
                        return;
                    }
                    dVar2.f1414e = bundleC.getStringArrayList("KEY_COMPONENT_ACTIVITY_LAUNCHED_KEYS");
                    dVar2.f1411a = (Random) bundleC.getSerializable("KEY_COMPONENT_ACTIVITY_RANDOM_OBJECT");
                    Bundle bundle = bundleC.getBundle("KEY_COMPONENT_ACTIVITY_PENDING_RESULT");
                    Bundle bundle2 = dVar2.f1416h;
                    bundle2.putAll(bundle);
                    for (int i2 = 0; i2 < stringArrayList.size(); i2++) {
                        String str2 = stringArrayList.get(i2);
                        HashMap map = dVar2.f1412c;
                        boolean zContainsKey = map.containsKey(str2);
                        HashMap map2 = dVar2.b;
                        if (zContainsKey) {
                            Integer num = (Integer) map.remove(str2);
                            if (!bundle2.containsKey(str2)) {
                                map2.remove(num);
                            }
                        }
                        Integer num2 = integerArrayList.get(i2);
                        num2.intValue();
                        String str3 = stringArrayList.get(i2);
                        map2.put(num2, str3);
                        map.put(str3, num2);
                    }
                }
            }
        });
    }

    @Override // androidx.lifecycle.InterfaceC0198h
    public final J.b a() {
        J.c cVar = new J.c(J.a.b);
        Application application = getApplication();
        LinkedHashMap linkedHashMap = cVar.f127a;
        if (application != null) {
            linkedHashMap.put(H.f1946a, getApplication());
        }
        linkedHashMap.put(C.f1936a, this);
        linkedHashMap.put(C.b, this);
        if (getIntent() != null && getIntent().getExtras() != null) {
            linkedHashMap.put(C.f1937c, getIntent().getExtras());
        }
        return cVar;
    }

    @Override // N.f
    public final N.d b() {
        return this.f1421e.b;
    }

    @Override // androidx.lifecycle.J
    public final I c() {
        if (getApplication() == null) {
            throw new IllegalStateException("Your activity is not yet attached to the Application instance. You can't request ViewModel before onCreate call.");
        }
        if (this.f == null) {
            f fVar = (f) getLastNonConfigurationInstance();
            if (fVar != null) {
                this.f = fVar.f1417a;
            }
            if (this.f == null) {
                this.f = new I();
            }
        }
        return this.f;
    }

    @Override // androidx.lifecycle.q
    public final s d() {
        return this.f1420d;
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        if (getWindow().getDecorView() != null) {
            WeakHashMap weakHashMap = N.f4222a;
        }
        return super.dispatchKeyEvent(keyEvent);
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public final boolean dispatchKeyShortcutEvent(KeyEvent keyEvent) {
        if (getWindow().getDecorView() != null) {
            WeakHashMap weakHashMap = N.f4222a;
        }
        return super.dispatchKeyShortcutEvent(keyEvent);
    }

    public final void f(p000a.b bVar) {
        p000a.a aVar = this.b;
        if (aVar.b != null) {
            bVar.a();
        }
        aVar.f1397a.add(bVar);
    }

    public final void g(Bundle bundle) {
        super.onCreate(bundle);
        A.c(this);
    }

    public final void h(Bundle bundle) {
        s sVar = this.f1418a;
        sVar.c("markState");
        androidx.lifecycle.l lVar = androidx.lifecycle.l.f1958c;
        sVar.c("setCurrentState");
        sVar.e(lVar);
        super.onSaveInstanceState(bundle);
    }

    @Override // android.app.Activity
    public void onActivityResult(int i2, int i3, Intent intent) {
        if (this.f1423h.a(i2, i3, intent)) {
            return;
        }
        super.onActivityResult(i2, i3, intent);
    }

    @Override // android.app.Activity
    public final void onBackPressed() {
        this.f1422g.b();
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        Iterator it = this.f1424i.iterator();
        while (it.hasNext()) {
            ((p033x.a) it.next()).a(configuration);
        }
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        this.f1421e.b(bundle);
        p000a.a aVar = this.b;
        aVar.b = this;
        Iterator it = aVar.f1397a.iterator();
        while (it.hasNext()) {
            ((p000a.b) it.next()).a();
        }
        g(bundle);
        A.c(this);
        if (AbstractC0201a.D()) {
            m mVar = this.f1422g;
            mVar.f1435e = e.a(this);
            mVar.c();
        }
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean onCreatePanelMenu(int i2, Menu menu) {
        if (i2 != 0) {
            return true;
        }
        super.onCreatePanelMenu(i2, menu);
        getMenuInflater();
        Iterator it = ((CopyOnWriteArrayList) this.f1419c.f93c).iterator();
        if (!it.hasNext()) {
            return true;
        }
        it.next().getClass();
        throw new ClassCastException();
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean onMenuItemSelected(int i2, MenuItem menuItem) {
        if (super.onMenuItemSelected(i2, menuItem)) {
            return true;
        }
        if (i2 != 0) {
            return false;
        }
        Iterator it = ((CopyOnWriteArrayList) this.f1419c.f93c).iterator();
        if (!it.hasNext()) {
            return false;
        }
        it.next().getClass();
        throw new ClassCastException();
    }

    @Override // android.app.Activity
    public final void onMultiWindowModeChanged(boolean z2, Configuration configuration) {
        super.onMultiWindowModeChanged(z2, configuration);
        Iterator it = this.f1427l.iterator();
        while (it.hasNext()) {
            ((p033x.a) it.next()).a(new p025p0.e());
        }
    }

    @Override // android.app.Activity
    public void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        Iterator it = this.f1426k.iterator();
        while (it.hasNext()) {
            ((p033x.a) it.next()).a(intent);
        }
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onPanelClosed(int i2, Menu menu) {
        Iterator it = ((CopyOnWriteArrayList) this.f1419c.f93c).iterator();
        if (it.hasNext()) {
            it.next().getClass();
            throw new ClassCastException();
        }
        super.onPanelClosed(i2, menu);
    }

    @Override // android.app.Activity
    public final void onPictureInPictureModeChanged(boolean z2, Configuration configuration) {
        super.onPictureInPictureModeChanged(z2, configuration);
        Iterator it = this.f1428m.iterator();
        while (it.hasNext()) {
            ((p033x.a) it.next()).a(new p025p0.e());
        }
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean onPreparePanel(int i2, View view, Menu menu) {
        if (i2 != 0) {
            return true;
        }
        super.onPreparePanel(i2, view, menu);
        Iterator it = ((CopyOnWriteArrayList) this.f1419c.f93c).iterator();
        if (!it.hasNext()) {
            return true;
        }
        it.next().getClass();
        throw new ClassCastException();
    }

    @Override // android.app.Activity
    public void onRequestPermissionsResult(int i2, String[] strArr, int[] iArr) {
        if (this.f1423h.a(i2, -1, new Intent().putExtra("androidx.activity.result.contract.extra.PERMISSIONS", strArr).putExtra("androidx.activity.result.contract.extra.PERMISSION_GRANT_RESULTS", iArr))) {
            return;
        }
        super.onRequestPermissionsResult(i2, strArr, iArr);
    }

    @Override // android.app.Activity
    public final Object onRetainNonConfigurationInstance() {
        f fVar;
        I i2 = this.f;
        if (i2 == null && (fVar = (f) getLastNonConfigurationInstance()) != null) {
            i2 = fVar.f1417a;
        }
        if (i2 == null) {
            return null;
        }
        f fVar2 = new f();
        fVar2.f1417a = i2;
        return fVar2;
    }

    @Override // android.app.Activity
    public final void onSaveInstanceState(Bundle bundle) {
        s sVar = this.f1420d;
        if (sVar != null) {
            androidx.lifecycle.l lVar = androidx.lifecycle.l.f1958c;
            sVar.c("setCurrentState");
            sVar.e(lVar);
        }
        h(bundle);
        this.f1421e.c(bundle);
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks2
    public final void onTrimMemory(int i2) {
        super.onTrimMemory(i2);
        Iterator it = this.f1425j.iterator();
        while (it.hasNext()) {
            ((p033x.a) it.next()).a(Integer.valueOf(i2));
        }
    }

    @Override // android.app.Activity
    public final void reportFullyDrawn() {
        try {
            if (A.b.H()) {
                Trace.beginSection("reportFullyDrawn() for ComponentActivity");
            }
            super.reportFullyDrawn();
        } finally {
            Trace.endSection();
        }
    }

    @Override // android.app.Activity
    public void setContentView(@SuppressLint({"UnknownNullness", "MissingNullability"}) View view) {
        getWindow().getDecorView().setTag(R.id.view_tree_lifecycle_owner, this);
        getWindow().getDecorView().setTag(R.id.view_tree_view_model_store_owner, this);
        View decorView = getWindow().getDecorView();
        I0.f.e(decorView, "<this>");
        decorView.setTag(R.id.view_tree_saved_state_registry_owner, this);
        View decorView2 = getWindow().getDecorView();
        I0.f.e(decorView2, "<this>");
        decorView2.setTag(R.id.view_tree_on_back_pressed_dispatcher_owner, this);
        super.setContentView(view);
    }
}
