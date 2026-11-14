package N0;

import T.C0029a3;
import android.content.pm.ActivityInfo;
import java.util.HashSet;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public final class b extends w0.a {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Iterator f395c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final HashSet f396d;

    public b(Iterator it, C0029a3 c0029a3) {
        I0.f.e(it, "source");
        this.f395c = it;
        this.f396d = new HashSet();
    }

    @Override // w0.a
    public final void a() {
        Object next;
        do {
            Iterator it = this.f395c;
            if (!it.hasNext()) {
                this.f4180a = 2;
                return;
            } else {
                next = it.next();
            }
        } while (!this.f396d.add(((ActivityInfo) next).packageName));
        this.b = next;
        this.f4180a = 1;
    }
}
