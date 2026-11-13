package androidx.fragment.app;

import android.util.Log;
import java.util.HashMap;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public final class G extends androidx.lifecycle.G {
    public final boolean f;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final HashMap f1768c = new HashMap();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final HashMap f1769d = new HashMap();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final HashMap f1770e = new HashMap();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f1771g = false;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f1772h = false;

    public G(boolean z2) {
        this.f = z2;
    }

    @Override // androidx.lifecycle.G
    public final void a() {
        if (Log.isLoggable("FragmentManager", 3)) {
            Log.d("FragmentManager", "onCleared called for " + this);
        }
        this.f1771g = true;
    }

    public final void b(AbstractComponentCallbacksC0187o abstractComponentCallbacksC0187o) {
        if (this.f1772h) {
            if (Log.isLoggable("FragmentManager", 2)) {
                Log.v("FragmentManager", "Ignoring removeRetainedFragment as the state is already saved");
            }
        } else {
            if (this.f1768c.remove(abstractComponentCallbacksC0187o.f1892e) == null || !Log.isLoggable("FragmentManager", 2)) {
                return;
            }
            Log.v("FragmentManager", "Updating retained Fragments: Removed " + abstractComponentCallbacksC0187o);
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || G.class != obj.getClass()) {
            return false;
        }
        G g2 = (G) obj;
        return this.f1768c.equals(g2.f1768c) && this.f1769d.equals(g2.f1769d) && this.f1770e.equals(g2.f1770e);
    }

    public final int hashCode() {
        return this.f1770e.hashCode() + ((this.f1769d.hashCode() + (this.f1768c.hashCode() * 31)) * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("FragmentManagerViewModel{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append("} Fragments (");
        Iterator it = this.f1768c.values().iterator();
        while (it.hasNext()) {
            sb.append(it.next());
            if (it.hasNext()) {
                sb.append(", ");
            }
        }
        sb.append(") Child Non Config (");
        Iterator it2 = this.f1769d.keySet().iterator();
        while (it2.hasNext()) {
            sb.append((String) it2.next());
            if (it2.hasNext()) {
                sb.append(", ");
            }
        }
        sb.append(") ViewModelStores (");
        Iterator it3 = this.f1770e.keySet().iterator();
        while (it3.hasNext()) {
            sb.append((String) it3.next());
            if (it3.hasNext()) {
                sb.append(", ");
            }
        }
        sb.append(')');
        return sb.toString();
    }
}
